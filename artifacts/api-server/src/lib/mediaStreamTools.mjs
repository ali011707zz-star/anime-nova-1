export async function fetchWithHeaderTimeout(
  fetchImpl,
  input,
  init = {},
  timeoutMs = 35_000,
) {
  const timeoutController = new AbortController();
  const signals = [];
  if (init.signal) signals.push(init.signal);
  signals.push(timeoutController.signal);
  const signal = signals.length === 1 ? signals[0] : AbortSignal.any(signals);
  const timer = setTimeout(
    () => timeoutController.abort(new Error("Upstream response headers timed out")),
    Math.max(1, timeoutMs),
  );

  try {
    return await fetchImpl(input, { ...init, signal });
  } finally {
    // The deadline covers connection/headers only. The response body can be a
    // long-lived media stream and must remain governed by the caller's signal.
    clearTimeout(timer);
  }
}

export function startDelayedAbortableRequest(delayMs, externalSignal, request) {
  const controller = new AbortController();
  let timer = null;
  let settled = false;
  let resolveRequest = () => {};
  let detachExternalAbort = () => {};

  const cancel = () => {
    if (timer !== null) {
      clearTimeout(timer);
      timer = null;
    }
    if (!controller.signal.aborted) controller.abort();
    detachExternalAbort();
    if (!settled) {
      settled = true;
      resolveRequest(null);
    }
  };

  const promise = new Promise(resolve => {
    resolveRequest = resolve;
    timer = setTimeout(async () => {
      timer = null;
      try {
        const result = await request(controller.signal);
        if (settled) {
          try { await result?.body?.cancel?.(); } catch {}
          return;
        }
        settled = true;
        // Keep the parent listener while the response body is streaming. A
        // client disconnect must still abort the winning hedge's body.
        resolve(result ?? null);
      } catch {
        if (settled) return;
        settled = true;
        detachExternalAbort();
        resolve(null);
      }
    }, Math.max(0, delayMs));
  });

  if (externalSignal) {
    const onAbort = () => cancel();
    detachExternalAbort = () => externalSignal.removeEventListener("abort", onAbort);
    if (externalSignal.aborted) cancel();
    else externalSignal.addEventListener("abort", onAbort, { once: true });
  }

  return {
    promise,
    cancel,
    dispose: detachExternalAbort,
  };
}

export async function inspectReadableBody(body, maxPrefixBytes = 4096) {
  const reader = body ? body.getReader() : null;
  const limit = Math.max(0, Math.floor(maxPrefixBytes));
  const chunks = [];
  let length = 0;
  let remainder = Buffer.alloc(0);
  let done = reader === null;

  try {
    while (reader && !done && length < limit) {
      const result = await reader.read();
      if (result.done) {
        done = true;
        break;
      }
      if (!result.value?.byteLength) continue;

      const chunk = Buffer.from(result.value);
      const take = Math.min(limit - length, chunk.length);
      if (take > 0) {
        chunks.push(chunk.subarray(0, take));
        length += take;
      }
      if (take < chunk.length) {
        remainder = chunk.subarray(take);
        break;
      }
    }
  } catch (error) {
    if (reader) {
      try { await reader.cancel(); } catch {}
      try { reader.releaseLock(); } catch {}
    }
    throw error;
  }

  return {
    reader,
    prefix: Buffer.concat(chunks, length),
    remainder,
    done,
    consumed: false,
  };
}

function claimSnapshot(snapshot) {
  if (!snapshot || snapshot.consumed) {
    throw new Error("Inspected response body can only be consumed once");
  }
  snapshot.consumed = true;
}

async function releaseSnapshotReader(snapshot, cancel) {
  const reader = snapshot.reader;
  snapshot.reader = null;
  if (!reader) return;
  if (cancel) {
    try { await reader.cancel(); } catch {}
  }
  try { reader.releaseLock(); } catch {}
}

export async function collectInspectedBody(snapshot, maxBytes = Number.POSITIVE_INFINITY) {
  claimSnapshot(snapshot);
  const parts = [];
  let total = 0;
  let complete = snapshot.done;

  const append = value => {
    if (!value?.byteLength) return;
    if (total + value.byteLength > maxBytes) {
      throw new RangeError("Response body exceeded the inspection limit");
    }
    const copy = Buffer.from(value);
    parts.push(copy);
    total += copy.length;
  };

  try {
    append(snapshot.prefix);
    append(snapshot.remainder);
    const reader = snapshot.reader;
    while (reader && !complete) {
      const result = await reader.read();
      if (result.done) {
        complete = true;
        break;
      }
      append(result.value);
    }
    return Buffer.concat(parts, total);
  } finally {
    await releaseSnapshotReader(snapshot, !complete);
  }
}

export async function* streamInspectedBody(snapshot) {
  claimSnapshot(snapshot);
  let complete = snapshot.done;
  try {
    if (snapshot.prefix.byteLength) yield snapshot.prefix;
    if (snapshot.remainder.byteLength) yield snapshot.remainder;

    const reader = snapshot.reader;
    while (reader && !complete) {
      const result = await reader.read();
      if (result.done) {
        complete = true;
        break;
      }
      if (result.value?.byteLength) yield Buffer.from(result.value);
    }
  } finally {
    await releaseSnapshotReader(snapshot, !complete);
  }
}

export async function cancelInspectedBody(snapshot) {
  if (!snapshot || snapshot.consumed) return;
  snapshot.consumed = true;
  await releaseSnapshotReader(snapshot, true);
}

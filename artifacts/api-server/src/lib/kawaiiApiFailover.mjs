const RETRYABLE_STATUS = (status) =>
  status === 408 || status === 429 || (Number.isFinite(status) && status >= 500);

function notify(callback, event) {
  try {
    callback?.(event);
  } catch {
    // Diagnostics must not change provider resolution.
  }
}

/**
 * Resolve Kawaii API aliases in order, with one bounded request per host.
 * Only the primary host has a legacy query-parameter compatibility URL.
 */
export function createKawaiiApiResolver({
  fetchImpl = globalThis.fetch,
  cooldownMs = 30_000,
  now = Date.now,
} = {}) {
  const cooldowns = new Map();

  async function request(url, base, headers, signal, timeoutMs) {
    if (signal.aborted) return { outcome: "aborted", elapsedMs: 0 };

    const controller = new AbortController();
    let requestTimedOut = false;
    const abortFromBudget = () => controller.abort();
    signal.addEventListener("abort", abortFromBudget, { once: true });
    const timeout = setTimeout(() => {
      requestTimedOut = true;
      controller.abort();
    }, timeoutMs);
    const startedAt = now();

    try {
      const response = await fetchImpl(url, {
        headers: { ...headers, Referer: `${base}/` },
        signal: controller.signal,
      });
      if (!response.ok) {
        return { outcome: "http_error", status: response.status, elapsedMs: now() - startedAt };
      }
      try {
        return {
          outcome: "payload",
          status: response.status,
          payload: await response.json(),
          elapsedMs: now() - startedAt,
        };
      } catch {
        return { outcome: "invalid_json", status: response.status, elapsedMs: now() - startedAt };
      }
    } catch {
      const outcome = signal.aborted
        ? "budget_timeout"
        : requestTimedOut
          ? "timeout"
          : "network_error";
      return { outcome, elapsedMs: now() - startedAt };
    } finally {
      clearTimeout(timeout);
      signal.removeEventListener("abort", abortFromBudget);
    }
  }

  async function resolve({
    endpoints,
    headers = {},
    parentSignal,
    timeoutMs = 5_000,
    budgetMs = 14_000,
    maxRequests = 4,
    validate,
    onAttempt,
  }) {
    const controller = new AbortController();
    let budgetExpired = false;
    const abortFromParent = () => controller.abort();
    if (parentSignal?.aborted) controller.abort();
    else parentSignal?.addEventListener("abort", abortFromParent, { once: true });
    const budgetTimer = setTimeout(() => {
      budgetExpired = true;
      controller.abort();
    }, budgetMs);
    const signal = controller.signal;
    const requestLimit = Math.max(1, Math.min(4, Math.floor(maxRequests) || 4));
    let requestCount = 0;

    try {
      for (const endpoint of endpoints.slice(0, 3)) {
        if (requestCount >= requestLimit || signal.aborted) break;
        const cooledUntil = cooldowns.get(endpoint.base) || 0;
        if (cooledUntil > now()) {
          notify(onAttempt, {
            base: endpoint.base,
            outcome: "cooldown_skip",
            status: 0,
            elapsedMs: 0,
          });
          continue;
        }

        const candidateUrls = [endpoint.url];
        let compatibilityAdded = false;
        while (candidateUrls.length && requestCount < requestLimit && !signal.aborted) {
          const url = candidateUrls.shift();
          requestCount++;
          const result = await request(url, endpoint.base, headers, signal, timeoutMs);
          let value = null;
          if (result.outcome === "payload") {
            try {
              value = validate?.(result.payload, endpoint.base) ?? null;
            } catch {
              value = null;
            }
          }
          const outcome = value
            ? "accepted"
            : result.outcome === "payload"
              ? "invalid_payload"
              : result.outcome;
          notify(onAttempt, {
            base: endpoint.base,
            endpoint: url === endpoint.url ? "primary" : "compat",
            outcome,
            status: result.status || 0,
            elapsedMs: result.elapsedMs,
          });

          if (value) {
            cooldowns.delete(endpoint.base);
            return { base: endpoint.base, value };
          }
          if (signal.aborted) break;

          const transient =
            result.outcome === "timeout" ||
            result.outcome === "budget_timeout" ||
            result.outcome === "network_error" ||
            (result.outcome === "http_error" && RETRYABLE_STATUS(result.status));
          if (transient) {
            cooldowns.set(endpoint.base, now() + cooldownMs);
            break;
          }

          const canTryCompatibility =
            !compatibilityAdded &&
            endpoint.fallbackUrl &&
            (result.outcome === "invalid_json" ||
              outcome === "invalid_payload" ||
              (result.outcome === "http_error" && (result.status === 400 || result.status === 404)));
          if (canTryCompatibility) {
            candidateUrls.push(endpoint.fallbackUrl);
            compatibilityAdded = true;
          } else {
            break;
          }
        }
      }
      return null;
    } finally {
      clearTimeout(budgetTimer);
      parentSignal?.removeEventListener("abort", abortFromParent);
      // Keep the local flag observable to debuggers without logging request data.
      void budgetExpired;
    }
  }

  return {
    resolve,
    clearCooldowns() {
      cooldowns.clear();
    },
  };
}

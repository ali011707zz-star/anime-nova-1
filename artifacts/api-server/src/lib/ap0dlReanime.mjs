import { execFile as execFileCallback } from "node:child_process";
import { promisify } from "node:util";

const execFile = promisify(execFileCallback);
const DEFAULT_TIMEOUT_MS = 70_000;
const MAX_OUTPUT_BYTES = 4 * 1024 * 1024;

export function buildAp0dlGrabArgs(watchUrl, episodeNumber) {
  const episode = Number(episodeNumber);
  let parsed;
  try {
    parsed = new URL(String(watchUrl || ""));
  } catch {
    throw new TypeError("A valid Re:Anime watch URL is required");
  }

  if (
    parsed.protocol !== "https:" ||
    parsed.hostname.toLowerCase() !== "reanime.to" ||
    !parsed.pathname.startsWith("/watch/") ||
    parsed.username ||
    parsed.password ||
    !Number.isInteger(episode) ||
    episode < 1
  ) {
    throw new TypeError("A Re:Anime watch URL and positive integer episode are required");
  }

  return ["--log", "error", "grab", parsed.toString(), "--range", String(episode)];
}

export function parseAp0dlGrabOutput(stdout, episodeNumber) {
  const expectedEpisode = Number(episodeNumber);
  const lines = String(stdout || "").split(/\r?\n/).map(line => line.trim()).filter(Boolean);
  const rows = lines.map((line) => {
    let payload;
    try {
      payload = JSON.parse(line);
    } catch {
      throw new Error("ap0dl returned malformed JSON");
    }
    if (!payload || typeof payload !== "object" || Array.isArray(payload)) {
      throw new Error("ap0dl returned an invalid result");
    }
    return payload;
  });

  return rows.find(row =>
    row.provider === "reanime" &&
    Number(row.episode) === expectedEpisode &&
    Array.isArray(row.streams),
  ) || null;
}

export async function runAp0dlGrab({
  watchUrl,
  episodeNumber,
  timeoutMs = DEFAULT_TIMEOUT_MS,
  binary = process.env.AP0DL_BIN?.trim() || "ap0dl",
} = {}) {
  const args = buildAp0dlGrabArgs(watchUrl, episodeNumber);
  if (!binary || binary.includes("\0")) throw new TypeError("AP0DL_BIN is invalid");

  const { stdout } = await execFile(binary, args, {
    timeout: timeoutMs,
    maxBuffer: MAX_OUTPUT_BYTES,
    killSignal: "SIGTERM",
    encoding: "utf8",
    env: {
      ...process.env,
      AP0DL_DEFAULT_PROVIDER: "reanime",
    },
  });

  const result = parseAp0dlGrabOutput(stdout, episodeNumber);
  if (!result) throw new Error("ap0dl returned no Re:Anime result for the requested episode");
  return result;
}

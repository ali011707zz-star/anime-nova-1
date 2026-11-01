import { webcrypto } from "node:crypto";
import { Buffer } from "node:buffer";

const enc = new TextEncoder();
const dec = new TextDecoder();
const FLIX_BASE = "https://flixcloud.cc";

type ReanimeEmbedData = {
  url: string;
  subtitles?: unknown;
  manifestKey: string;
};

function base64Bytes(value: string): Uint8Array {
  return new Uint8Array(Buffer.from(value, "base64"));
}

async function sha256Hex(value: string): Promise<string> {
  const digest = await webcrypto.subtle.digest("SHA-256", enc.encode(value));
  return Array.from(new Uint8Array(digest))
    .map(byte => byte.toString(16).padStart(2, "0"))
    .join("");
}

function deriveFields(seed: string) {
  return (async () => {
    let e = seed;
    for (let i = 0; i < 3; i++) e = await sha256Hex(`${e}${i}`);
    let l = e;
    for (let i = 0; i < 3; i++) l = await sha256Hex(`${l}${i}`);
    return {
      keyField: `kf_${e.substring(8, 16)}`,
      ivField: `ivf_${e.substring(16, 24)}`,
      containerName: `cd_${e.substring(24, 32)}`,
      arrayName: `ad_${e.substring(32, 40)}`,
      objectName: `od_${e.substring(40, 48)}`,
      tokenField: `${e.substring(48, 64)}_${e.substring(56, 64)}`,
      keyFrag2Field: `${l.substring(0, 16)}_${l.substring(16, 24)}`,
    };
  })();
}

function extractSsrObject(html: string): string {
  const marker = html.match(/\{type:"data",data:(\{)/);
  if (!marker || marker.index === undefined) {
    throw new Error("Reanime SSR data block not found");
  }

  let depth = 0;
  const start = html.indexOf("{", marker.index + marker[0].length - 1);
  for (let i = start; i < html.length; i++) {
    if (html[i] === "{") depth++;
    else if (html[i] === "}" && --depth === 0) return html.slice(start, i + 1);
  }
  throw new Error("Reanime SSR data block is incomplete");
}

/**
 * The embed page contains a JavaScript object literal rather than JSON.
 * This parser intentionally supports only the literal shapes used by the
 * upstream Reanime page, avoiding eval in the API process.
 */
function parseJsLiteral(source: string): unknown {
  let index = 0;

  function whitespace() {
    while (index < source.length && /\s/.test(source[index])) index++;
  }

  function string(quote: '"' | "'"): string {
    let result = "";
    index++;
    while (index < source.length && source[index] !== quote) {
      if (source[index] === "\\") {
        index++;
        const escaped = source[index++];
        result += escaped === "n" ? "\n"
          : escaped === "r" ? "\r"
            : escaped === "t" ? "\t"
              : escaped;
      } else {
        result += source[index++];
      }
    }
    if (source[index] !== quote) throw new Error("Unterminated Reanime string");
    index++;
    return result;
  }

  function value(): any {
    whitespace();
    const current = source[index];
    if (current === "{") return object();
    if (current === "[") return array();
    if (current === '"' || current === "'") return string(current);
    if (source.startsWith("true", index)) {
      index += 4;
      return true;
    }
    if (source.startsWith("false", index)) {
      index += 5;
      return false;
    }
    if (source.startsWith("null", index) || source.startsWith("undefined", index)) {
      index += source.startsWith("null", index) ? 4 : 9;
      return null;
    }
    if (source.startsWith("!0", index)) {
      index += 2;
      return true;
    }
    if (source.startsWith("!1", index)) {
      index += 2;
      return false;
    }

    const number = source.slice(index).match(/^-?[\d.]+(?:[eE][+-]?\d+)?/);
    if (number) {
      index += number[0].length;
      return Number(number[0]);
    }
    throw new Error(`Invalid Reanime literal near ${source.slice(index, index + 24)}`);
  }

  function key(): string {
    whitespace();
    if (source[index] === '"' || source[index] === "'") return string(source[index]);
    const match = source.slice(index).match(/^[A-Za-z_$][\w$-]*/);
    if (!match) throw new Error("Invalid Reanime object key");
    index += match[0].length;
    return match[0];
  }

  function object(): Record<string, unknown> {
    const result: Record<string, unknown> = {};
    index++;
    whitespace();
    while (index < source.length && source[index] !== "}") {
      const name = key();
      whitespace();
      if (source[index++] !== ":") throw new Error("Invalid Reanime object");
      result[name] = value();
      whitespace();
      if (source[index] === ",") {
        index++;
        whitespace();
      } else if (source[index] !== "}") {
        throw new Error("Invalid Reanime object separator");
      }
    }
    if (source[index] !== "}") throw new Error("Unterminated Reanime object");
    index++;
    return result;
  }

  function array(): unknown[] {
    const result: unknown[] = [];
    index++;
    whitespace();
    while (index < source.length && source[index] !== "]") {
      result.push(value());
      whitespace();
      if (source[index] === ",") {
        index++;
        whitespace();
      } else if (source[index] !== "]") {
        throw new Error("Invalid Reanime array separator");
      }
    }
    if (source[index] !== "]") throw new Error("Unterminated Reanime array");
    index++;
    return result;
  }

  return value();
}

function parseWasmDecrypt(wasmBytes: Uint8Array) {
  let position = 8;
  while (position < wasmBytes.length) {
    const sectionId = wasmBytes[position++];
    let size = 0;
    let shift = 0;
    let byte: number;
    do {
      byte = wasmBytes[position++];
      size |= (byte & 127) << shift;
      shift += 7;
    } while (byte & 128);
    if (sectionId === 10) {
      position++;
      let bodySize = 0;
      let bodyShift = 0;
      let bodyByte: number;
      do {
        bodyByte = wasmBytes[position++];
        bodySize |= (bodyByte & 127) << bodyShift;
        bodyShift += 7;
      } while (bodyByte & 128);
      position += bodySize;
      break;
    }
    position += size;
  }

  let resultSize = 0;
  let resultShift = 0;
  let resultByte: number;
  do {
    resultByte = wasmBytes[position++];
    resultSize |= (resultByte & 127) << resultShift;
    resultShift += 7;
  } while (resultByte & 128);
  const code = wasmBytes.slice(position, position + resultSize);

  function leb(bytes: Uint8Array, start: number): [number, number] {
    let result = 0;
    let shift = 0;
    let byte: number;
    do {
      byte = bytes[start++];
      result |= (byte & 127) << shift;
      shift += 7;
    } while (byte & 128);
    return [result, start];
  }

  const xorEnd = [32, 2, 32, 5, 106, 45, 0, 0, 115, 33, 6];
  let transformStart = -1;
  outer:
  for (let i = 0; i < code.length - xorEnd.length; i++) {
    for (let j = 0; j < xorEnd.length; j++) {
      if (code[i + j] !== xorEnd[j]) continue outer;
    }
    transformStart = i + xorEnd.length;
    break;
  }
  if (transformStart < 0) throw new Error("Reanime WASM transform not found");

  let transformEnd = -1;
  let step = 36;
  for (let i = transformStart; i < code.length - 4; i++) {
    if (code[i] === 32 && code[i + 1] === 5 && code[i + 2] === 65) {
      const [value, next] = leb(code, i + 3);
      if (code[next] === 108) {
        transformEnd = i;
        step = value;
        break;
      }
    }
  }
  if (transformEnd < 0) throw new Error("Reanime WASM keystream not found");

  const transformCode = code.slice(transformStart, transformEnd);
  return {
    step,
    transform(input: number): number {
      let local = input & 255;
      const stack: number[] = [];
      let i = 0;
      while (i < transformCode.length) {
        const op = transformCode[i++];
        if (op === 32) {
          const [slot, next] = leb(transformCode, i);
          i = next;
          stack.push(slot === 6 ? local : 0);
        } else if (op === 33) {
          const [slot, next] = leb(transformCode, i);
          i = next;
          const value = stack.pop() ?? 0;
          if (slot === 6) local = value & 255;
        } else if (op === 65) {
          const [value, next] = leb(transformCode, i);
          i = next;
          stack.push(value);
        } else if (op === 106 || op === 107 || op === 113 || op === 114 || op === 115 || op === 116 || op === 118) {
          const right = stack.pop() ?? 0;
          const left = stack.pop() ?? 0;
          if (op === 106) stack.push((left + right) & 255);
          if (op === 107) stack.push((left - right + 256) & 255);
          if (op === 113) stack.push(left & right & 255);
          if (op === 114) stack.push((left | right) & 255);
          if (op === 115) stack.push((left ^ right) & 255);
          if (op === 116) stack.push((left << (right & 7)) & 255);
          if (op === 118) stack.push((left >>> (right & 7)) & 255);
        }
      }
      return local;
    },
  };
}

async function runWasmDecrypt(
  wasmBytes: Uint8Array,
  fragment: Uint8Array,
  keyFragment: Uint8Array,
  tokenBytes: Uint8Array,
  seedInt: number,
): Promise<{ decryptedKey: Uint8Array; manifestKey: Uint8Array }> {
  // Reanime's player keeps the second WASM output as `window.__pk`. The
  // custom FlixCloud HLS loader XOR-decodes every encrypted manifest with
  // those 32 bytes before parsing it.
  const instantiated = await WebAssembly.instantiate(wasmBytes, {});
  const instance = "instance" in instantiated ? instantiated.instance : instantiated;
  const exports = instance.exports as WebAssembly.Exports & {
    memory: WebAssembly.Memory;
    _s: (seed: number) => void;
    _r: (fragment: number, keyFragment: number, token: number, output: number, length: number) => void;
    _c: () => number;
  };
  const length = fragment.length;
  const fragmentPtr = 1000;
  const keyFragmentPtr = fragmentPtr + length;
  const tokenPtr = keyFragmentPtr + length;
  const outputPtr = tokenPtr + length;
  const requiredBytes = outputPtr + length;
  while (exports.memory.buffer.byteLength < requiredBytes) exports.memory.grow(1);
  const memory = new Uint8Array(exports.memory.buffer);
  memory.set(fragment, fragmentPtr);
  memory.set(keyFragment, keyFragmentPtr);
  memory.set(tokenBytes, tokenPtr);
  exports._s(seedInt);
  exports._r(fragmentPtr, keyFragmentPtr, tokenPtr, outputPtr, length);
  const decryptedKey = memory.slice(outputPtr, outputPtr + length);
  const manifestKeyPtr = exports._c();
  const manifestKey = memory.slice(manifestKeyPtr, manifestKeyPtr + 32);
  return { decryptedKey, manifestKey };
}

export async function decryptReanimeEmbed(
  html: string,
  fetchImpl: typeof fetch = fetch,
): Promise<ReanimeEmbedData> {
  const data = parseJsLiteral(extractSsrObject(html)) as Record<string, any>;
  const seed = data.obfuscation_seed;
  if (typeof seed !== "string" || !seed) throw new Error("Reanime obfuscation seed missing");

  const fields = await deriveFields(seed);
  const container = data.obfuscated_crypto_data?.[fields.containerName];
  const object = container?.[fields.arrayName]?.[0]?.[fields.objectName];
  const keyFragment = object?.[fields.keyField];
  const iv = object?.[fields.ivField];
  const keyFragment2 = data[fields.keyFrag2Field];
  const token = data[fields.tokenField];
  if (!container || !object || !keyFragment || !iv || !keyFragment2 || !token) {
    throw new Error("Reanime embed crypto fields are incomplete");
  }

  const tokenResponse = await fetchImpl(`${FLIX_BASE}/api/m3u8/${token}`, {
    headers: {
      Accept: "application/json",
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      Referer: "https://reanime.to/",
    },
    signal: AbortSignal.timeout(20_000),
  });
  if (!tokenResponse.ok) throw new Error(`Reanime token API returned ${tokenResponse.status}`);
  const tokenData = await tokenResponse.json() as Record<string, string>;
  const videoBytes = base64Bytes(tokenData[(await sha256Hex(`${token}vid`)).substring(0, 10)] || "");
  const tokenBytes = base64Bytes(tokenData[(await sha256Hex(`${token}key`)).substring(0, 10)] || "");
  const wasmBytes = base64Bytes(data.w_payload || "");
  if (!videoBytes.length || !tokenBytes.length || !wasmBytes.length) {
    throw new Error("Reanime embed token payload is incomplete");
  }

  const { decryptedKey, manifestKey } = await runWasmDecrypt(
    wasmBytes,
    base64Bytes(keyFragment),
    base64Bytes(keyFragment2),
    tokenBytes,
    parseInt(seed.substring(0, 8), 16),
  );
  const derivedBits = new Uint8Array(await webcrypto.subtle.deriveBits(
    { name: "PBKDF2", salt: enc.encode(seed), iterations: 1000, hash: "SHA-256" },
    await webcrypto.subtle.importKey("raw", decryptedKey, { name: "PBKDF2" }, false, ["deriveBits"]),
    256,
  ));
  for (let i = 0; i < 32; i++) derivedBits[i] ^= seed.charCodeAt(i % seed.length);
  const aesKeyBytes = new Uint8Array(await webcrypto.subtle.digest("SHA-256", derivedBits));
  const aesKey = await webcrypto.subtle.importKey("raw", aesKeyBytes, { name: "AES-CBC" }, false, ["decrypt"]);
  const plain = await webcrypto.subtle.decrypt(
    { name: "AES-CBC", iv: base64Bytes(iv) },
    aesKey,
    videoBytes,
  );
  const url = dec.decode(plain).trim().replace(/\0+$/, "");
  if (!url.startsWith("http")) throw new Error("Reanime returned an invalid stream URL");
  return {
    url,
    subtitles: data.subtitles,
    manifestKey: Buffer.from(manifestKey).toString("base64"),
  };
}
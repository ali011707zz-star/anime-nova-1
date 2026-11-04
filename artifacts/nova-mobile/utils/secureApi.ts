import AsyncStorage from "@react-native-async-storage/async-storage";
import * as SecureStore from "expo-secure-store";
import { Platform } from "react-native";
import Constants from "expo-constants";
import { getBaseUrl } from "./baseUrl";
import { getRuntimeIntegrity } from "./runtimeIntegrity";

const TOKEN_KEY = "nova_anon_token";
const TOKEN_EXP_KEY = "nova_anon_token_exp";
const USER_TOKEN_KEY = "nova_user_token";
const DOWNLOAD_TOKEN_KEY = "nova_download_token";
const DOWNLOAD_TOKEN_EXP_KEY = "nova_download_token_exp";

// معرّف ثابت للتطبيق (Client Identifier)
const CLIENT_ID = "nova-anime-mobile-v1";
const APP_VERSION = Constants.expoConfig?.version || "1.0.0";
const APP_PACKAGE =
  Constants.expoConfig?.android?.package ||
  Constants.expoConfig?.ios?.bundleIdentifier ||
  "com.nova.anime";
const APP_UA = `NovaAnime/${APP_VERSION} (Mobile)`;

let _cachedToken: string | null = null;
let _cachedExp: number = 0;
let _cachedDownloadToken: string | null = null;
let _cachedDownloadExp: number = 0;
let _cachedUserToken: string | null | undefined = undefined;
let _cachedExpoFetch: typeof fetch | null = null;

// Singleton: يمنع 20+ طلب token متوازٍ عند فتح شاشة المشاهدة
let _inflightFetch: Promise<string | null> | null = null;

async function getExpoFetch(): Promise<typeof fetch> {
  if (_cachedExpoFetch) return _cachedExpoFetch;
  try {
    const mod = await import("expo/fetch");
    if (typeof mod?.fetch === "function") {
      _cachedExpoFetch = mod.fetch as unknown as typeof fetch;
      return _cachedExpoFetch;
    }
  } catch {}
  return fetch;
}

// Pre-warm expo/fetch module at startup
void getExpoFetch();

async function secureGet(key: string): Promise<string | null> {
  try {
    if (Platform.OS === "web") return AsyncStorage.getItem(key);
    return SecureStore.getItemAsync(key);
  } catch {
    return null;
  }
}

async function secureSet(key: string, value: string): Promise<void> {
  try {
    if (Platform.OS === "web") await AsyncStorage.setItem(key, value);
    else await SecureStore.setItemAsync(key, value);
  } catch {}
}

async function secureDelete(key: string): Promise<void> {
  try {
    if (Platform.OS === "web") await AsyncStorage.removeItem(key);
    else await SecureStore.deleteItemAsync(key);
  } catch {}
}

async function getStoredToken(): Promise<string | null> {
  const [token, expStr] = await Promise.all([
    secureGet(TOKEN_KEY),
    secureGet(TOKEN_EXP_KEY),
  ]);
  if (!token || !expStr) return null;
  const exp = parseInt(expStr, 10);
  if (isNaN(exp) || Date.now() / 1000 > exp - 60) return null;
  _cachedToken = token;
  _cachedExp = exp;
  return token;
}

async function getUserTokenCached(): Promise<string | null> {
  if (_cachedUserToken !== undefined) return _cachedUserToken;
  _cachedUserToken = await secureGet(USER_TOKEN_KEY);
  return _cachedUserToken;
}

async function doFetchFreshToken(): Promise<string | null> {
  const MAX_RETRIES = 3;
  const TIMEOUTS = [4000, 7000, 12000];
  for (let attempt = 0; attempt < MAX_RETRIES; attempt++) {
    try {
      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), TIMEOUTS[attempt]);
      const res = await fetch(`${getBaseUrl()}/api/auth/anon-token`, {
        method: "POST",
        signal: controller.signal,
        headers: {
          "Content-Type": "application/json",
          "X-Nova-Client": CLIENT_ID,
          "X-Nova-Version": APP_VERSION,
          "X-Nova-Package": APP_PACKAGE,
          "User-Agent": APP_UA,
        },
      });
      clearTimeout(timer);
      if (!res.ok) continue;
      const data = await res.json();
      if (!data.token || !data.exp) continue;
      _cachedToken = data.token;
      _cachedExp = Number(data.exp);
      void Promise.all([
        secureSet(TOKEN_KEY, data.token),
        secureSet(TOKEN_EXP_KEY, data.exp.toString()),
      ]);
      if (data.downloadToken && data.downloadExp) {
        _cachedDownloadToken = String(data.downloadToken);
        _cachedDownloadExp = Number(data.downloadExp);
        void Promise.all([
          secureSet(DOWNLOAD_TOKEN_KEY, _cachedDownloadToken),
          secureSet(DOWNLOAD_TOKEN_EXP_KEY, _cachedDownloadExp.toString()),
        ]);
      }
      return data.token;
    } catch {
      if (attempt < MAX_RETRIES - 1) {
        await new Promise(r => setTimeout(r, 600 * (attempt + 1)));
      }
    }
  }
  return null;
}

/**
 * Singleton wrapper — إذا كان هناك طلب token جارٍ بالفعل (من طلب متوازٍ آخر)
 * ننتظره بدلاً من إطلاق طلب جديد. هذا يمنع 20+ طلب متوازٍ عند فتح شاشة المشاهدة.
 */
async function fetchFreshToken(): Promise<string | null> {
  if (_inflightFetch) return _inflightFetch;
  _inflightFetch = doFetchFreshToken().finally(() => { _inflightFetch = null; });
  return _inflightFetch;
}

export async function getAuthToken(): Promise<string | null> {
  if (!getRuntimeIntegrity().trusted) {
    throw new Error("Untrusted runtime");
  }
  if (_cachedToken && Date.now() / 1000 < _cachedExp - 60) return _cachedToken;
  const stored = await getStoredToken();
  if (stored) return stored;
  return fetchFreshToken();
}

export async function getDownloadToken(): Promise<string | null> {
  if (!getRuntimeIntegrity().trusted) {
    throw new Error("Untrusted runtime");
  }
  if (_cachedDownloadToken && Date.now() / 1000 < _cachedDownloadExp - 60) {
    return _cachedDownloadToken;
  }
  const [stored, expStr] = await Promise.all([
    secureGet(DOWNLOAD_TOKEN_KEY),
    secureGet(DOWNLOAD_TOKEN_EXP_KEY),
  ]);
  const exp = Number(expStr);
  if (stored && Number.isFinite(exp) && Date.now() / 1000 < exp - 60) {
    _cachedDownloadToken = stored;
    _cachedDownloadExp = exp;
    return stored;
  }
  await fetchFreshToken();
  return _cachedDownloadToken;
}

/** Pre-warm: يُستدعى قبل الطلبات المتوازية لضمان وجود توكن صالح */
export async function warmAuthToken(): Promise<void> {
  if (_cachedToken && Date.now() / 1000 < _cachedExp - 60) return;
  await getAuthToken();
}

export async function invalidateToken(): Promise<void> {
  _cachedToken = null;
  _cachedExp = 0;
  _cachedDownloadToken = null;
  _cachedDownloadExp = 0;
  await Promise.all([
    secureDelete(TOKEN_KEY),
    secureDelete(TOKEN_EXP_KEY),
    secureDelete(DOWNLOAD_TOKEN_KEY),
    secureDelete(DOWNLOAD_TOKEN_EXP_KEY),
  ]);
}

export async function setUserAuthToken(token: string | null): Promise<void> {
  _cachedUserToken = token;
  if (token) await secureSet(USER_TOKEN_KEY, token);
  else await secureDelete(USER_TOKEN_KEY);
}

export async function clearUserAuthToken(): Promise<void> {
  _cachedUserToken = null;
  await secureDelete(USER_TOKEN_KEY);
}

export async function secureFetch(
  url: string,
  options: RequestInit = {}
): Promise<Response> {
  if (!getRuntimeIntegrity().trusted) {
    throw new Error("Untrusted runtime");
  }
  const [token, userToken] = await Promise.all([getAuthToken(), getUserTokenCached()]);
  const buildHeaders = (tok: string | null): Record<string, string> => {
    const h: Record<string, string> = {
      ...(options.headers as Record<string, string> || {}),
      "X-Nova-Client": CLIENT_ID,
      "X-Nova-Version": APP_VERSION,
      "X-Nova-Package": APP_PACKAGE,
      "User-Agent": APP_UA,
    };
    if (tok) h["X-App-Token"] = tok;
    if (userToken) h["X-User-Token"] = userToken;
    return h;
  };

  const res = await fetch(url, { ...options, headers: buildHeaders(token) });

  // إذا رفض السيرفر التوكن (منتهي الصلاحية أثناء الجلسة) → جدّد وأعد المحاولة مرة واحدة
  if (res.status === 403) {
    try {
      const body = await res.clone().json();
      if (body?.code === "INVALID_TOKEN") {
        await invalidateToken();
        const fresh = await fetchFreshToken();
        // أعد المحاولة فقط إذا حصلنا على توكن جديد فعلاً (تجنّب طلب ثانٍ بدون توكن)
        if (fresh) return fetch(url, { ...options, headers: buildHeaders(fresh) });
      }
    } catch { /* ليس JSON أو خطأ آخر — أعد الرد الأصلي */ }
  }

  return res;
}

export async function secureStreamFetch(
  url: string,
  options: RequestInit = {}
): Promise<Response> {
  if (!getRuntimeIntegrity().trusted) {
    throw new Error("Untrusted runtime");
  }
  const [token, expoFetch] = await Promise.all([getAuthToken(), getExpoFetch()]);
  const headers: Record<string, string> = {
    ...(options.headers as Record<string, string> || {}),
    Accept: "text/event-stream",
    "X-Nova-Client": CLIENT_ID,
    "X-Nova-Version": APP_VERSION,
    "X-Nova-Package": APP_PACKAGE,
    "User-Agent": APP_UA,
  };
  if (token) headers["X-App-Token"] = token;
  const { body: _body, signal: _signal, ...restOpts } = options;
  const body = _body === null ? undefined : _body;
  const signal = _signal === null ? undefined : _signal;
  const res = await (expoFetch(url, { ...restOpts, body, signal, headers }) as unknown as Promise<Response>);
  if (res.status === 403) {
    await invalidateToken();
    const fresh = await fetchFreshToken();
    if (fresh) {
      headers["X-App-Token"] = fresh;
      return expoFetch(url, { ...restOpts, body, signal, headers }) as unknown as Response;
    }
  }
  return res;
}

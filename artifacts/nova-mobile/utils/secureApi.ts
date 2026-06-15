import AsyncStorage from "@react-native-async-storage/async-storage";
import * as SecureStore from "expo-secure-store";
import { Platform } from "react-native";
import { getBaseUrl } from "./api";

const TOKEN_KEY = "nova_anon_token";
const TOKEN_EXP_KEY = "nova_anon_token_exp";

// معرّف ثابت للتطبيق (Client Identifier)
const CLIENT_ID = "nova-anime-mobile-v1";
const APP_UA = "NovaAnime/1.0 (Expo; Mobile)";

let _cachedToken: string | null = null;
let _cachedExp: number = 0;

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
  const token = await secureGet(TOKEN_KEY);
  const expStr = await secureGet(TOKEN_EXP_KEY);
  if (!token || !expStr) return null;
  const exp = parseInt(expStr, 10);
  if (isNaN(exp) || Date.now() / 1000 > exp - 60) return null;
  return token;
}

async function fetchFreshToken(): Promise<string | null> {
  try {
    const res = await fetch(`${getBaseUrl()}/api/auth/anon-token`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Nova-Client": CLIENT_ID,
        "User-Agent": APP_UA,
      },
    });
    if (!res.ok) return null;
    const data = await res.json();
    if (!data.token || !data.exp) return null;
    _cachedToken = data.token;
    _cachedExp = data.exp;
    await secureSet(TOKEN_KEY, data.token);
    await secureSet(TOKEN_EXP_KEY, data.exp.toString());
    return data.token;
  } catch {
    return null;
  }
}

export async function getAuthToken(): Promise<string | null> {
  if (_cachedToken && Date.now() / 1000 < _cachedExp - 60) return _cachedToken;
  const stored = await getStoredToken();
  if (stored) { _cachedToken = stored; return stored; }
  return fetchFreshToken();
}

export async function invalidateToken(): Promise<void> {
  _cachedToken = null;
  _cachedExp = 0;
  await secureDelete(TOKEN_KEY);
  await secureDelete(TOKEN_EXP_KEY);
}

export async function secureFetch(
  url: string,
  options: RequestInit = {}
): Promise<Response> {
  const token = await getAuthToken();
  const headers: Record<string, string> = {
    ...(options.headers as Record<string, string> || {}),
    "X-Nova-Client": CLIENT_ID,
    "User-Agent": APP_UA,
  };
  if (token) headers["X-App-Token"] = token;
  return fetch(url, { ...options, headers });
}

export async function secureStreamFetch(
  url: string,
  options: RequestInit = {}
): Promise<Response> {
  const token = await getAuthToken();
  const { fetch: expoFetch } = await import("expo/fetch");
  const headers: Record<string, string> = {
    ...(options.headers as Record<string, string> || {}),
    Accept: "text/event-stream",
    "X-Nova-Client": CLIENT_ID,
    "User-Agent": APP_UA,
  };
  if (token) headers["X-App-Token"] = token;
  return expoFetch(url, { ...options, headers }) as unknown as Response;
}

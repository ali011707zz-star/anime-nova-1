// إدارة توكن المصادقة للتطبيق (يُجدَّد تلقائياً قبل الانتهاء بـ 60 ثانية)

const NOVA_CLIENT_ID = "nova-anime-web-v1";

interface TokenCache {
  token: string;
  exp: number;       // Unix timestamp (ثواني)
}

let _cache: TokenCache | null = null;
let _inflight: Promise<string> | null = null;

async function fetchToken(): Promise<string> {
  try {
    const res = await fetch("/api/auth/anon-token", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Nova-Client": NOVA_CLIENT_ID,
      },
    });
    if (!res.ok) return "";
    const data = (await res.json()) as { token: string; exp: number };
    _cache = { token: data.token, exp: data.exp };
    return data.token;
  } catch {
    return "";
  }
}

/**
 * أعد التوكن الحالي (أو اجلب واحداً جديداً إذا انتهى أو قارب على الانتهاء).
 * آمن للاستخدام المتزامن — يدمج الطلبات الجارية.
 */
export async function getAppToken(): Promise<string> {
  const now = Math.floor(Date.now() / 1000);
  if (_cache && _cache.exp - now > 60) return _cache.token;
  if (_inflight) return _inflight;
  _inflight = fetchToken().finally(() => { _inflight = null; });
  return _inflight;
}

/**
 * أعد headers تحتوي توكن المصادقة + Client-ID جاهزة للـ fetch.
 * الاستخدام: fetch(url, { ...await authHeaders(), signal })
 */
export async function authHeaders(): Promise<{ headers: Record<string, string> }> {
  const token = await getAppToken();
  const headers: Record<string, string> = {
    "X-Nova-Client": NOVA_CLIENT_ID,
  };
  if (token) headers["X-App-Token"] = token;
  return { headers };
}

/**
 * أعد query param للـ SSE (لأن EventSource لا يدعم custom headers)
 */
export async function authQueryParam(): Promise<string> {
  const token = await getAppToken();
  return token ? `&_tok=${encodeURIComponent(token)}&_client=${NOVA_CLIENT_ID}` : "";
}

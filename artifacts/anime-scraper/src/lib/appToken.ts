// إدارة توكن المصادقة للتطبيق (يُجدَّد تلقائياً قبل الانتهاء بـ 60 ثانية)

interface TokenCache {
  token: string;
  exp: number;       // Unix timestamp (ثواني)
}

let _cache: TokenCache | null = null;
let _inflight: Promise<string> | null = null;

async function fetchToken(): Promise<string> {
  try {
    const { API_BASE } = await import("./apiBase");
    const res = await fetch(API_BASE + "/api/auth/anon-token", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
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
  // إذا كان التوكن صالحاً لأكثر من 60 ثانية → أعده فوراً
  if (_cache && _cache.exp - now > 60) return _cache.token;

  // دمج الطلبات المتزامنة
  if (_inflight) return _inflight;
  _inflight = fetchToken().finally(() => { _inflight = null; });
  return _inflight;
}

/**
 * أعد headers تحتوي توكن المصادقة جاهزة للـ fetch.
 * الاستخدام: fetch(url, { ...await authHeaders(), signal })
 */
export async function authHeaders(): Promise<{ headers: Record<string, string> }> {
  const token = await getAppToken();
  return { headers: token ? { "X-App-Token": token } : {} };
}

import { useEffect, useRef, useState } from "react";
import { Tv, CheckCircle2, ShieldCheck, AlertCircle, ArrowRight } from "lucide-react";
import { useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { API_BASE } from "@/lib/apiBase";

declare const __GOOGLE_CLIENT_ID__: string;

const PENDING_TV_CODE_KEY = "nova-tv-pending-code";

function normalizeTvCode(value: string): string {
  return value
    .replace(/[٠-٩]/g, digit => String(digit.charCodeAt(0) - 0x0660))
    .replace(/[۰-۹]/g, digit => String(digit.charCodeAt(0) - 0x06f0))
    .replace(/\D/g, "")
    .slice(0, 6);
}

export default function TvActivate() {
  const [, navigate] = useLocation();
  const { user, loading: authLoading } = useAuth();
  const [code, setCode] = useState("");
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState("");
  const [approvedDeviceName, setApprovedDeviceName] = useState<string | null>(null);
  const autoApprovedRef = useRef(false);

  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    if (params.get("approved") === "1") {
      try {
        sessionStorage.removeItem(PENDING_TV_CODE_KEY);
        localStorage.removeItem(PENDING_TV_CODE_KEY);
      } catch {}
      setApprovedDeviceName("جهاز التلفاز");
    }
    const urlCode = normalizeTvCode(params.get("code") || "");
    const storedCode = normalizeTvCode(
      sessionStorage.getItem(PENDING_TV_CODE_KEY) ||
      localStorage.getItem(PENDING_TV_CODE_KEY) ||
      "",
    );
    const initial = urlCode || storedCode;
    if (initial) {
      setCode(initial);
      try {
        sessionStorage.setItem(PENDING_TV_CODE_KEY, initial);
        localStorage.setItem(PENDING_TV_CODE_KEY, initial);
      } catch {}
      if (initial.length === 6) {
        fetch(`${API_BASE}/api/device-link/tv-session/prepare`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({ code: initial }),
        }).catch(() => {});
      }
    }
  }, []);

  const approveTvCode = async (targetCode: string) => {
    const normalized = normalizeTvCode(targetCode);
    if (normalized.length !== 6) {
      setError("أدخل رمز التلفاز المكوّن من 6 أرقام");
      return;
    }
    setSubmitting(true);
    setError("");
    try {
      const res = await fetch(`${API_BASE}/api/device-link/tv-session/approve`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ code: normalized }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok) {
        setError(data.error || "تعذّر ربط التلفاز. تأكد من الرمز وحاول مرة أخرى.");
        return;
      }
      try {
        sessionStorage.removeItem(PENDING_TV_CODE_KEY);
        localStorage.removeItem(PENDING_TV_CODE_KEY);
      } catch {}
      setApprovedDeviceName(data.deviceName || "جهاز التلفاز");
    } catch {
      setError("تعذّر الاتصال بالخادم. تحقق من الإنترنت وحاول مجدداً.");
    } finally {
      setSubmitting(false);
    }
  };

  useEffect(() => {
    if (authLoading || !user || autoApprovedRef.current || approvedDeviceName) return;
    const params = new URLSearchParams(window.location.search);
    const urlCode = normalizeTvCode(params.get("code") || "");
    const shouldAuto = params.get("auto") === "1" || urlCode.length === 6;
    const normalized = normalizeTvCode(code || urlCode);
    if (shouldAuto && normalized.length === 6) {
      autoApprovedRef.current = true;
      void approveTvCode(normalized);
    }
  }, [authLoading, user, code, approvedDeviceName]);

  const handleGoogleSignInForTv = () => {
    const normalized = normalizeTvCode(code);
    if (normalized.length !== 6) {
      setError("أدخل رمز التلفاز المكوّن من 6 أرقام أولاً");
      return;
    }
    try {
      sessionStorage.setItem(PENDING_TV_CODE_KEY, normalized);
      localStorage.setItem(PENDING_TV_CODE_KEY, normalized);
    } catch {}
    fetch(`${API_BASE}/api/device-link/tv-session/prepare`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      credentials: "include",
      body: JSON.stringify({ code: normalized }),
    }).catch(() => {});
    const GOOGLE_CLIENT_ID_FALLBACK = "413058110781-r8otf4jg4v1e7akp4ujii01brj3hv8kg.apps.googleusercontent.com";
    const clientId = (typeof __GOOGLE_CLIENT_ID__ !== "undefined" && __GOOGLE_CLIENT_ID__) ? __GOOGLE_CLIENT_ID__ : GOOGLE_CLIENT_ID_FALLBACK;
    if (!clientId) {
      navigate("/auth");
      return;
    }
    const redirectUri = `${window.location.origin}/auth/callback`;
    const params = new URLSearchParams({
      client_id: clientId,
      redirect_uri: redirectUri,
      response_type: "token",
      scope: "openid email profile",
      prompt: "select_account",
      state: `tv:${normalized}`,
    });
    window.location.href = `https://accounts.google.com/o/oauth2/v2/auth?${params.toString()}`;
  };

  return (
    <div className="min-h-screen bg-[#09090B] text-white flex flex-col items-center justify-center px-4 py-10" dir="rtl">
      <div
        className="w-full max-w-md rounded-3xl p-6 sm:p-8 border"
        style={{
          background: "linear-gradient(180deg, #12101F 0%, #0B0A10 100%)",
          borderColor: "rgba(56, 189, 248, 0.25)",
          boxShadow: "0 24px 64px rgba(0,0,0,0.85), 0 0 60px rgba(6, 182, 212, 0.12)",
        }}
      >
        <div className="flex items-center justify-between mb-6">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 rounded-2xl flex items-center justify-center bg-cyan-500/15 border border-cyan-400/35">
              <Tv className="w-6 h-6 text-cyan-400" />
            </div>
            <div>
              <h1 className="text-lg font-black font-['Cairo'] text-white">تسجيل دخول التلفاز</h1>
              <p className="text-xs text-white/50 font-['Cairo']">Anime NOVA — بوابة Google للتلفاز</p>
            </div>
          </div>
          <button
            type="button"
            onClick={() => navigate("/")}
            className="p-2 rounded-xl bg-white/5 border border-white/10 text-white/60 hover:text-white"
            aria-label="العودة للرئيسية"
          >
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>

        {approvedDeviceName ? (
          <div className="text-center py-6 space-y-4">
            <div className="w-16 h-16 rounded-full bg-emerald-500/15 border border-emerald-500/40 flex items-center justify-center mx-auto">
              <CheckCircle2 className="w-9 h-9 text-emerald-400" />
            </div>
            <h2 className="text-xl font-black font-['Cairo'] text-emerald-400">
              تم تسجيل الدخول على التلفاز بنجاح!
            </h2>
            <p className="text-sm text-white/70 font-['Cairo'] leading-relaxed">
              تم ربط <span className="text-white font-bold">{approvedDeviceName}</span> بحسابك في Google. ستنتقل شاشة التلفاز تلقائياً إلى حسابك خلال لحظات.
            </p>
            <button
              type="button"
              onClick={() => navigate("/")}
              className="w-full py-3.5 rounded-2xl font-bold font-['Cairo'] text-sm bg-white/10 hover:bg-white/15 border border-white/15 text-white transition-all"
            >
              العودة إلى الموقع
            </button>
          </div>
        ) : (
          <div className="space-y-5">
            <div>
              <label htmlFor="tv-code-input" className="block text-xs font-bold font-['Cairo'] text-cyan-400 mb-2">
                رمز التلفاز المكوّن من 6 أرقام
              </label>
              <input
                id="tv-code-input"
                type="text"
                inputMode="numeric"
                maxLength={6}
                value={code}
                onChange={(e) => {
                  setCode(normalizeTvCode(e.target.value));
                  setError("");
                }}
                placeholder="000000"
                dir="ltr"
                className="w-full h-16 text-center text-3xl font-black tracking-[0.35em] rounded-2xl bg-black/50 border-2 border-white/15 focus:border-cyan-400 text-white outline-none transition-all"
              />
              <p className="text-[11px] text-white/45 font-['Cairo'] mt-2 leading-relaxed">
                أدخل الرمز الظاهر على شاشة التلفاز في صفحة «المتابعة باستخدام Google».
              </p>
            </div>

            {error && (
              <div className="flex items-center gap-2 px-4 py-3 rounded-2xl bg-red-500/10 border border-red-500/30 text-red-400 text-xs font-bold font-['Cairo']">
                <AlertCircle className="w-4 h-4 shrink-0" />
                <span>{error}</span>
              </div>
            )}

            {authLoading ? (
              <div className="py-6 flex justify-center">
                <div className="w-6 h-6 border-2 border-cyan-400 border-t-transparent rounded-full animate-spin" />
              </div>
            ) : user ? (
              <div className="space-y-3">
                <div className="p-3.5 rounded-2xl bg-white/5 border border-white/10 flex items-center justify-between">
                  <div className="text-right">
                    <p className="text-xs text-white/50 font-['Cairo']">مسجّل الدخول بحساب:</p>
                    <p className="text-sm font-bold font-['Cairo'] text-white">{user.displayName || user.email}</p>
                    {user.email && <p className="text-[11px] text-white/40">{user.email}</p>}
                  </div>
                  <ShieldCheck className="w-5 h-5 text-cyan-400 shrink-0" />
                </div>

                <button
                  type="button"
                  disabled={submitting || code.length !== 6}
                  onClick={() => void approveTvCode(code)}
                  className="w-full py-4 rounded-2xl font-black font-['Cairo'] text-sm text-slate-950 bg-cyan-400 hover:bg-cyan-300 disabled:opacity-50 transition-all flex items-center justify-center gap-2 shadow-lg shadow-cyan-500/20"
                >
                  {submitting ? "جاري ربط التلفاز..." : "تأكيد تسجيل الدخول على التلفاز الآن"}
                </button>
              </div>
            ) : (
              <div className="space-y-3">
                <button
                  type="button"
                  disabled={submitting || code.length !== 6}
                  onClick={handleGoogleSignInForTv}
                  className="w-full py-4 rounded-2xl font-black font-['Cairo'] text-sm bg-white text-slate-900 hover:bg-slate-100 disabled:opacity-50 transition-all flex items-center justify-center gap-2.5 shadow-lg"
                >
                  <svg width="18" height="18" viewBox="0 0 18 18" fill="none">
                    <path d="M17.64 9.2c0-.637-.057-1.251-.164-1.84H9v3.481h4.844c-.209 1.125-.843 2.078-1.796 2.717v2.258h2.908c1.702-1.567 2.684-3.875 2.684-6.615z" fill="#4285F4"/>
                    <path d="M9 18c2.43 0 4.467-.806 5.956-2.18l-2.908-2.259c-.806.54-1.837.86-3.048.86-2.344 0-4.328-1.584-5.036-3.711H.957v2.332C2.438 15.983 5.482 18 9 18z" fill="#34A853"/>
                    <path d="M3.964 10.71A5.41 5.41 0 0 1 3.682 9c0-.593.102-1.17.282-1.71V4.958H.957A8.996 8.996 0 0 0 0 9c0 1.452.348 2.827.957 4.042l3.007-2.332z" fill="#FBBC05"/>
                    <path d="M9 3.58c1.321 0 2.508.454 3.44 1.345l2.582-2.58C13.463.891 11.426 0 9 0 5.482 0 2.438 2.017.957 4.958L3.964 6.29C4.672 4.163 6.656 3.58 9 3.58z" fill="#EA4335"/>
                  </svg>
                  <span>المتابعة باستخدام Google لتسجيل دخول التلفاز</span>
                </button>
                <p className="text-[11px] text-center text-white/40 font-['Cairo']">
                  بمجرد اختيار حسابك في Google، سيتم تسجيل دخول التلفاز تلقائياً.
                </p>
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
}

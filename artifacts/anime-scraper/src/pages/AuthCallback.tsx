/**
 * AuthCallback.tsx
 * ─────────────────────────────────────────────────────
 * صفحة /auth/callback — تستقبل redirects من Google وGitHub OAuth
 *
 * Google (implicit flow):
 *   /auth/callback#access_token=...&token_type=bearer
 *
 * GitHub (authorization code flow):
 *   /auth/callback?code=...&state=github
 * ─────────────────────────────────────────────────────
 */
import { useEffect, useState } from "react";
import { useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";

export default function AuthCallback() {
  const [, navigate] = useLocation();
  const { refreshUser } = useAuth();
  const [status,   setStatus]   = useState<"loading" | "error">("loading");
  const [errorMsg, setErrorMsg] = useState("");

  useEffect(() => {
    const qParams = new URLSearchParams(window.location.search);
    const state   = qParams.get("state");

    /* ── خطأ صريح من GitHub / Google ── */
    const qError     = qParams.get("error");
    const qErrorDesc = qParams.get("error_description");
    if (qError) {
      setErrorMsg(qErrorDesc || qError || "خطأ غير معروف");
      setStatus("error");
      setTimeout(() => navigate("/auth"), 3000);
      return;
    }

    /* ══════════════════════════════════════════════
       مسار GitHub — code في query string
    ══════════════════════════════════════════════ */
    if (state === "github") {
      const code = qParams.get("code");
      if (!code) {
        setErrorMsg("لم يصل code من GitHub");
        setStatus("error");
        setTimeout(() => navigate("/auth"), 3000);
        return;
      }

      const redirectUri = `${window.location.origin}/auth/callback`;
      fetch(API_BASE + "/api/auth/github/token", {
        method : "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body   : JSON.stringify({ code, redirectUri }),
      })
        .then(async r => {
          const data = await r.json();
          if (!r.ok) {
            setErrorMsg(data.error || "فشل تسجيل الدخول بـ GitHub");
            setStatus("error");
            setTimeout(() => navigate("/auth"), 3000);
            return;
          }
          await refreshUser();
          navigate("/");
        })
        .catch(() => {
          setErrorMsg("خطأ في الاتصال بالخادم");
          setStatus("error");
          setTimeout(() => navigate("/auth"), 3000);
        });
      return;
    }

    /* ══════════════════════════════════════════════
       مسار Google — access_token في URL hash
    ══════════════════════════════════════════════ */
    const hash        = window.location.hash.slice(1);
    const hashParams  = new URLSearchParams(hash);
    const accessToken = hashParams.get("access_token");
    const hashError   = hashParams.get("error");
    const hashErrDesc = hashParams.get("error_description");

    if (hashError) {
      setErrorMsg(hashErrDesc || hashError || "خطأ غير معروف");
      setStatus("error");
      setTimeout(() => navigate("/auth"), 3000);
      return;
    }

    if (!accessToken) {
      setErrorMsg("لم يصل access_token. تأكد من إعداد OAuth بشكل صحيح.");
      setStatus("error");
      setTimeout(() => navigate("/auth"), 3000);
      return;
    }

    fetch(API_BASE + "/api/auth/google/token", {
      method : "POST",
      headers: { "Content-Type": "application/json" },
      credentials: "include",
      body   : JSON.stringify({ accessToken }),
    })
      .then(async r => {
        const data = await r.json();
        if (!r.ok) {
          setErrorMsg(data.error || "فشل تسجيل الدخول بـ Google");
          setStatus("error");
          setTimeout(() => navigate("/auth"), 3000);
          return;
        }
        await refreshUser();
        navigate("/");
      })
      .catch(() => {
        setErrorMsg("خطأ في الاتصال بالخادم");
        setStatus("error");
        setTimeout(() => navigate("/auth"), 3000);
      });
  }, []); // eslint-disable-line react-hooks/exhaustive-deps

  const providerName = new URLSearchParams(window.location.search).get("state") === "github"
    ? "GitHub" : "Google";

  return (
    <div className="fixed inset-0 bg-[#09090B] flex flex-col items-center justify-center gap-5" dir="rtl">
      {status === "loading" ? (
        <>
          <div className="w-16 h-16 rounded-2xl flex items-center justify-center"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 0 40px rgba(124,58,237,0.4)" }}>
            <div className="w-8 h-8 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          </div>
          <div className="text-center">
            <p className="text-white font-black font-['Cairo'] text-lg">جاري تسجيل الدخول...</p>
            <p className="text-white/35 text-sm font-['Cairo'] mt-1">نتحقق من حساب {providerName}</p>
          </div>
        </>
      ) : (
        <>
          <div className="w-16 h-16 rounded-2xl flex items-center justify-center bg-red-500/15 border border-red-500/25">
            <span className="text-3xl">⚠️</span>
          </div>
          <div className="text-center px-6">
            <p className="text-white font-black font-['Cairo'] text-lg">فشل تسجيل الدخول</p>
            <p className="text-red-400/80 text-sm font-['Cairo'] mt-1">{errorMsg}</p>
            <p className="text-white/25 text-xs font-['Cairo'] mt-3">سيتم توجيهك لصفحة الدخول...</p>
          </div>
        </>
      )}
    </div>
  );
}

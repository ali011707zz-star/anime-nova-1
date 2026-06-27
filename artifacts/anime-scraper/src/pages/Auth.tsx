import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  X, Eye, EyeOff, Mail, Lock, User, Sparkles,
  ArrowLeft, RefreshCw, ShieldCheck,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";
import { useLocation } from "wouter";

declare const __GOOGLE_CLIENT_ID__: string;
declare const __GITHUB_CLIENT_ID__: string;

/** فتح Google OAuth مباشرةً */
async function signInWithGoogle() {
  const clientId = __GOOGLE_CLIENT_ID__;
  if (!clientId) {
    alert("تسجيل الدخول بـ Google غير مفعّل حالياً. يرجى استخدام البريد الإلكتروني.");
    return;
  }
  const redirectUri = `${window.location.origin}/auth/callback`;
  const params = new URLSearchParams({
    client_id: clientId,
    redirect_uri: redirectUri,
    response_type: "token",
    scope: "openid email profile",
    prompt: "select_account",
  });
  window.location.href = `https://accounts.google.com/o/oauth2/v2/auth?${params.toString()}`;
}

/** فتح GitHub OAuth — بديل مجاني بدون Google Cloud */
async function signInWithGitHub() {
  const clientId = __GITHUB_CLIENT_ID__;
  if (!clientId) {
    alert("تسجيل الدخول بـ GitHub غير مفعّل حالياً. أضف GITHUB_CLIENT_ID في متغيرات البيئة.");
    return;
  }
  const redirectUri = `${window.location.origin}/auth/callback`;
  const params = new URLSearchParams({
    client_id   : clientId,
    redirect_uri: redirectUri,
    scope       : "user:email",
    state       : "github",
  });
  window.location.href = `https://github.com/login/oauth/authorize?${params.toString()}`;
}

/* ═══════════════════════════════════════════════
   AUTH PAGE  (standalone full-screen)
═══════════════════════════════════════════════ */
export default function AuthPage() {
  const [, navigate] = useLocation();
  return (
    <div className="fixed inset-0 z-50 bg-[#09090B] overflow-y-auto" dir="rtl">
      <AuthContent onClose={() => navigate("/")} />
    </div>
  );
}

/* ═══════════════════════════════════════════════
   AUTH MODAL  (bottom sheet overlay)
═══════════════════════════════════════════════ */
export function AuthModal({ onClose }: { onClose: () => void }) {
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center px-4" dir="rtl">
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0"
        style={{ background: "rgba(0,0,0,0.88)", backdropFilter: "blur(24px)" }}
        onClick={onClose}
      />
      <motion.div
        initial={{ opacity: 0, scale: 0.95, y: 24 }}
        animate={{ opacity: 1, scale: 1, y: 0 }}
        exit={{ opacity: 0, scale: 0.95, y: 24 }}
        transition={{ type: "spring", stiffness: 340, damping: 30 }}
        className="relative w-full max-w-sm flex flex-col overflow-hidden"
        style={{
          maxHeight: "92dvh",
          background: "linear-gradient(180deg, #0E0C1A 0%, #09090B 100%)",
          borderRadius: "2.2rem",
          border: "1.5px solid rgba(139,92,246,0.22)",
          boxShadow: "0 32px 80px rgba(0,0,0,0.95), 0 0 80px rgba(124,58,237,0.10)",
        }}
        onClick={e => e.stopPropagation()}
      >
        <div className="h-[2px] shrink-0" style={{ background: "linear-gradient(90deg,transparent,#7C3AED,#A78BFA,#EC4899,transparent)" }} />
        <div className="overflow-y-auto flex-1">
          <AuthContent onClose={onClose} isModal />
        </div>
      </motion.div>
    </div>
  );
}

/* ═══════════════════════════════════════════════
   SHARED AUTH CONTENT
═══════════════════════════════════════════════ */
type Flow = "login" | "signup" | "verify" | "forgot" | "reset";

function AuthContent({ onClose, isModal }: { onClose: () => void; isModal?: boolean }) {
  const { signIn, signUp } = useAuth();
  const [flow,      setFlow]      = useState<Flow>("login");
  const [email,     setEmail]     = useState("");
  const [password,  setPassword]  = useState("");
  const [newPass,   setNewPass]   = useState("");
  const [name,      setName]      = useState("");
  const [code,      setCode]      = useState(["", "", "", "", "", ""]);
  const [showPass,  setShowPass]  = useState(false);
  const [loading,   setLoading]   = useState(false);
  const [error,     setError]     = useState("");
  const [success,   setSuccess]   = useState("");
  const [cooldown,  setCooldown]  = useState(0);
  const codeRefs = [
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
  ];
  const cooldownRef = useRef<ReturnType<typeof setInterval> | null>(null);

  /* إيقاف العدّ التنازلي عند إلغاء التركيب */
  useEffect(() => () => { if (cooldownRef.current) clearInterval(cooldownRef.current); }, []);

  const startCooldown = (secs = 60) => {
    setCooldown(secs);
    if (cooldownRef.current) clearInterval(cooldownRef.current);
    cooldownRef.current = setInterval(() => {
      setCooldown(p => { if (p <= 1) { clearInterval(cooldownRef.current!); return 0; } return p - 1; });
    }, 1000);
  };

  const iClass = "w-full bg-white/5 border border-white/8 rounded-2xl px-4 py-3.5 text-white text-[13.5px] font-['Cairo'] placeholder-white/20 outline-none focus:border-violet-500/50 transition-all";

  /* ── إرسال الكود ── */
  const sendCode = async (type: "signup" | "reset" = "signup") => {
    if (!email.trim()) { setError("أدخل بريدك الإلكتروني أولاً"); return false; }
    setLoading(true); setError("");
    try {
      const res = await fetch(API_BASE + "/api/auth/send-verify-code", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email: email.trim().toLowerCase(), type }),
      });
      const data = await res.json();
      if (!res.ok) { setError(data.error || "حدث خطأ"); setLoading(false); return false; }
      startCooldown(60);
      setLoading(false);
      return true;
    } catch {
      setError("تعذّر الوصول للخادم"); setLoading(false); return false;
    }
  };

  /* ── نموذج تسجيل الدخول ── */
  const submitLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    if (!email.trim() || !password.trim()) { setError("يرجى تعبئة جميع الحقول"); return; }
    setLoading(true);
    const result = await signIn(email.trim(), password);
    setLoading(false);
    if (result.error) setError(result.error);
    else onClose();
  };

  /* ── إرسال كود التسجيل ── */
  const submitSignupRequest = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    if (!email.trim()) { setError("أدخل بريدك الإلكتروني"); return; }
    if (password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); return; }
    const ok = await sendCode("signup");
    if (ok) { setCode(["", "", "", "", "", ""]); setFlow("verify"); setTimeout(() => codeRefs[0].current?.focus(), 300); }
  };

  /* ── إتمام التسجيل بعد التحقق ── */
  const submitSignupVerify = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    const fullCode = code.join("");
    if (fullCode.length < 6) { setError("أدخل الكود المكوّن من 6 أرقام"); return; }
    setLoading(true);
    const result = await signUp(email.trim(), password, name.trim() || undefined, fullCode);
    setLoading(false);
    if (result.error) setError(result.error);
    else onClose();
  };

  /* ── إرسال كود إعادة تعيين ── */
  const submitForgot = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    if (!email.trim()) { setError("أدخل بريدك الإلكتروني"); return; }
    const ok = await sendCode("reset");
    if (ok) { setCode(["", "", "", "", "", ""]); setFlow("reset"); setTimeout(() => codeRefs[0].current?.focus(), 300); }
  };

  /* ── إتمام إعادة التعيين ── */
  const submitReset = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    const fullCode = code.join("");
    if (fullCode.length < 6) { setError("أدخل الكود المكوّن من 6 أرقام"); return; }
    if (newPass.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); return; }
    setLoading(true);
    try {
      const res = await fetch(API_BASE + "/api/auth/reset-password", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email: email.trim().toLowerCase(), verifyCode: fullCode, newPassword: newPass }),
      });
      const data = await res.json();
      setLoading(false);
      if (!res.ok) { setError(data.error || "حدث خطأ"); return; }
      setSuccess("✅ تم تغيير كلمة المرور بنجاح! سجّل دخولك الآن.");
      setTimeout(() => { setFlow("login"); setSuccess(""); setCode(["", "", "", "", "", ""]); }, 2500);
    } catch { setLoading(false); setError("تعذّر الوصول للخادم"); }
  };

  /* ── إدخال الكود رقماً رقماً ── */
  const handleCodeInput = (i: number, val: string) => {
    const digit = val.replace(/\D/g, "").slice(-1);
    const next = [...code]; next[i] = digit;
    setCode(next);
    setError("");
    if (digit && i < 5) setTimeout(() => codeRefs[i + 1].current?.focus(), 0);
  };
  const handleCodeKey = (i: number, e: React.KeyboardEvent) => {
    if (e.key === "Backspace" && !code[i] && i > 0) { codeRefs[i - 1].current?.focus(); }
    if (e.key === "Enter") {
      const full = code.join("");
      if (full.length === 6) {
        if (flow === "verify") submitSignupVerify(e as any);
        if (flow === "reset") submitReset(e as any);
      }
    }
  };
  const handleCodePaste = (e: React.ClipboardEvent) => {
    const digits = e.clipboardData.getData("text").replace(/\D/g, "").slice(0, 6);
    if (digits.length > 0) {
      const next = digits.split("").concat(Array(6).fill("")).slice(0, 6);
      setCode(next);
      setTimeout(() => codeRefs[Math.min(digits.length, 5)].current?.focus(), 0);
    }
  };

  /* ── عنوان كل مرحلة ── */
  const titles: Record<Flow, { title: string; sub: string }> = {
    login:  { title: "Anime NOVA", sub: "مرحباً بعودتك" },
    signup: { title: "Anime NOVA", sub: "أنشئ حسابك مجاناً" },
    verify: { title: "تأكيد البريد", sub: `أُرسل كود إلى ${email}` },
    forgot: { title: "نسيت كلمة المرور", sub: "سنرسل لك كود إعادة تعيين" },
    reset:  { title: "إعادة تعيين", sub: `أُرسل كود إلى ${email}` },
  };
  const { title, sub } = titles[flow];

  return (
    <div className="px-5 pb-8 pt-4">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div className="flex items-center gap-2.5">
          <div className="w-9 h-9 rounded-2xl flex items-center justify-center"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 0 20px rgba(124,58,237,0.35)" }}>
            {flow === "verify" || flow === "reset"
              ? <ShieldCheck className="w-4 h-4 text-white" />
              : <Sparkles className="w-4 h-4 text-white" />}
          </div>
          <div>
            <p className="text-[15px] font-black font-['Cairo'] text-white">{title}</p>
            <p className="text-[10px] text-white/35 font-['Cairo'] truncate max-w-[200px]">{sub}</p>
          </div>
        </div>
        <button onClick={onClose}
          className="w-8 h-8 rounded-xl flex items-center justify-center"
          style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.09)" }}>
          <X className="w-3.5 h-3.5 text-white/40" />
        </button>
      </div>

      {/* ── رسالة نجاح ── */}
      <AnimatePresence>
        {success && (
          <motion.div initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
            className="mb-4 px-4 py-3 rounded-2xl text-center"
            style={{ background: "rgba(34,197,94,0.10)", border: "1px solid rgba(34,197,94,0.22)" }}>
            <p className="text-[12px] text-green-400 font-bold font-['Cairo']">{success}</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══════════════════════════════════════════
          TABS (login / signup only)
      ══════════════════════════════════════════ */}
      {(flow === "login" || flow === "signup") && (
        <div className="flex gap-1 p-1 rounded-2xl mb-6"
          style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.06)" }}>
          {(["login", "signup"] as const).map(t => (
            <button key={t} onClick={() => { setFlow(t); setError(""); }}
              className="flex-1 py-2.5 rounded-xl font-black font-['Cairo'] text-[12.5px] transition-all"
              style={flow === t ? {
                background: "linear-gradient(135deg,rgba(124,58,237,0.5),rgba(79,70,229,0.5))",
                color: "white", border: "1px solid rgba(139,92,246,0.3)",
                boxShadow: "0 2px 12px rgba(124,58,237,0.2)",
              } : { color: "rgba(255,255,255,0.35)" }}>
              {t === "login" ? "تسجيل الدخول" : "حساب جديد"}
            </button>
          ))}
        </div>
      )}

      {/* OAuth buttons hidden temporarily — will be added later */}

      {/* ══════════════════════════════════════════
          LOGIN
      ══════════════════════════════════════════ */}
      {flow === "login" && (
        <form onSubmit={submitLogin} className="flex flex-col gap-3">
          <div className="relative">
            <Mail className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type="email" value={email} onChange={e => setEmail(e.target.value)}
              placeholder="البريد الإلكتروني" className={iClass} style={{ paddingRight: "2.75rem" }}
              autoComplete="email" />
          </div>
          <div className="relative">
            <Lock className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type={showPass ? "text" : "password"} value={password} onChange={e => setPassword(e.target.value)}
              placeholder="كلمة المرور" className={iClass} style={{ paddingRight: "2.75rem", paddingLeft: "3rem" }}
              autoComplete="current-password" />
            <button type="button" onClick={() => setShowPass(p => !p)}
              className="absolute left-4 top-1/2 -translate-y-1/2 text-white/25">
              {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <ErrorBox error={error} />
          <SubmitBtn loading={loading} label="تسجيل الدخول" />
          <button type="button" onClick={() => { setFlow("forgot"); setError(""); setSuccess(""); }}
            className="text-[11px] text-violet-400/70 font-['Cairo'] text-center mt-1 active:opacity-60 transition-opacity">
            نسيت كلمة المرور؟
          </button>
        </form>
      )}

      {/* ══════════════════════════════════════════
          SIGNUP — المرحلة الأولى
      ══════════════════════════════════════════ */}
      {flow === "signup" && (
        <form onSubmit={submitSignupRequest} className="flex flex-col gap-3">
          <div className="relative">
            <User className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type="text" value={name} onChange={e => setName(e.target.value)}
              placeholder="الاسم (اختياري)" className={iClass} style={{ paddingRight: "2.75rem" }} />
          </div>
          <div className="relative">
            <Mail className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type="email" value={email} onChange={e => setEmail(e.target.value)}
              placeholder="البريد الإلكتروني" className={iClass} style={{ paddingRight: "2.75rem" }}
              autoComplete="email" />
          </div>
          <div className="relative">
            <Lock className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type={showPass ? "text" : "password"} value={password} onChange={e => setPassword(e.target.value)}
              placeholder="كلمة المرور (6 أحرف على الأقل)" className={iClass}
              style={{ paddingRight: "2.75rem", paddingLeft: "3rem" }} autoComplete="new-password" />
            <button type="button" onClick={() => setShowPass(p => !p)}
              className="absolute left-4 top-1/2 -translate-y-1/2 text-white/25">
              {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <ErrorBox error={error} />
          <SubmitBtn loading={loading} label="أرسل كود التحقق" />
          <p className="text-center text-[10.5px] text-white/25 font-['Cairo'] mt-1 leading-5">
            بإنشاء حساب أنت توافق على شروط الاستخدام
          </p>
        </form>
      )}

      {/* ══════════════════════════════════════════
          VERIFY — إدخال الكود (للتسجيل)
      ══════════════════════════════════════════ */}
      {flow === "verify" && (
        <form onSubmit={submitSignupVerify} className="flex flex-col gap-4">
          <CodeInfo email={email} />
          <CodeInput code={code} refs={codeRefs} onChange={handleCodeInput} onKeyDown={handleCodeKey} onPaste={handleCodePaste} />
          <ErrorBox error={error} />
          <SubmitBtn loading={loading} label="تحقّق وأنشئ الحساب" />
          <ResendBtn cooldown={cooldown} loading={loading} onResend={() => sendCode("signup")} />
          <BackBtn onClick={() => { setFlow("signup"); setError(""); }} />
        </form>
      )}

      {/* ══════════════════════════════════════════
          FORGOT — إدخال البريد لإعادة التعيين
      ══════════════════════════════════════════ */}
      {flow === "forgot" && (
        <form onSubmit={submitForgot} className="flex flex-col gap-3">
          <div className="relative">
            <Mail className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type="email" value={email} onChange={e => setEmail(e.target.value)}
              placeholder="البريد الإلكتروني" className={iClass} style={{ paddingRight: "2.75rem" }}
              autoComplete="email" />
          </div>
          <ErrorBox error={error} />
          <SubmitBtn loading={loading} label="أرسل كود إعادة التعيين" />
          <BackBtn onClick={() => { setFlow("login"); setError(""); }} />
        </form>
      )}

      {/* ══════════════════════════════════════════
          RESET — إدخال الكود + كلمة مرور جديدة
      ══════════════════════════════════════════ */}
      {flow === "reset" && (
        <form onSubmit={submitReset} className="flex flex-col gap-4">
          <CodeInfo email={email} />
          <CodeInput code={code} refs={codeRefs} onChange={handleCodeInput} onKeyDown={handleCodeKey} onPaste={handleCodePaste} />
          <div className="relative">
            <Lock className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input type={showPass ? "text" : "password"} value={newPass} onChange={e => setNewPass(e.target.value)}
              placeholder="كلمة المرور الجديدة" className={iClass}
              style={{ paddingRight: "2.75rem", paddingLeft: "3rem" }} autoComplete="new-password" />
            <button type="button" onClick={() => setShowPass(p => !p)}
              className="absolute left-4 top-1/2 -translate-y-1/2 text-white/25">
              {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <ErrorBox error={error} />
          <SubmitBtn loading={loading} label="إعادة تعيين كلمة المرور" />
          <ResendBtn cooldown={cooldown} loading={loading} onResend={() => sendCode("reset")} />
          <BackBtn onClick={() => { setFlow("forgot"); setError(""); }} />
        </form>
      )}
    </div>
  );
}

/* ── sub-components ──────────────────────────────────────────── */

function ErrorBox({ error }: { error: string }) {
  return (
    <AnimatePresence>
      {error && (
        <motion.div initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
          className="flex items-center gap-2 px-4 py-3 rounded-xl"
          style={{ background: "rgba(239,68,68,0.1)", border: "1px solid rgba(239,68,68,0.2)" }}>
          <span className="text-[11.5px] text-red-400 font-['Cairo'] font-bold">{error}</span>
        </motion.div>
      )}
    </AnimatePresence>
  );
}

function SubmitBtn({ loading, label }: { loading: boolean; label: string }) {
  return (
    <button type="submit" disabled={loading}
      className="w-full py-4 rounded-2xl font-black font-['Cairo'] text-[13.5px] text-white flex items-center justify-center gap-2 mt-1 active:scale-[0.98] transition-transform"
      style={{
        background: loading ? "rgba(124,58,237,0.4)" : "linear-gradient(135deg,#7C3AED,#4F46E5)",
        boxShadow: loading ? "none" : "0 4px 24px rgba(124,58,237,0.4)",
      }}>
      {loading
        ? <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
        : <>{label}<ArrowLeft className="w-4 h-4" /></>}
    </button>
  );
}

function BackBtn({ onClick }: { onClick: () => void }) {
  return (
    <button type="button" onClick={onClick}
      className="text-[11px] text-white/30 font-['Cairo'] text-center mt-1 active:opacity-60 transition-opacity">
      ← رجوع
    </button>
  );
}

function ResendBtn({ cooldown, loading, onResend }: { cooldown: number; loading: boolean; onResend: () => void }) {
  return (
    <button type="button" disabled={cooldown > 0 || loading} onClick={onResend}
      className="flex items-center justify-center gap-1.5 text-[11.5px] font-bold font-['Cairo'] mx-auto transition-all disabled:opacity-40"
      style={{ color: cooldown > 0 ? "rgba(255,255,255,0.30)" : "#A78BFA" }}>
      <RefreshCw className="w-3.5 h-3.5" />
      {cooldown > 0 ? `إعادة الإرسال بعد ${cooldown}ث` : "أعد إرسال الكود"}
    </button>
  );
}

function CodeInfo({ email }: { email: string }) {
  return (
    <div className="rounded-2xl px-4 py-3 text-center"
      style={{ background: "rgba(139,92,246,0.08)", border: "1px solid rgba(139,92,246,0.18)" }}>
      <p className="text-[12px] text-white/60 font-['Cairo'] leading-relaxed">
        أُرسل كود مكوّن من <span className="text-violet-300 font-black">6 أرقام</span> إلى<br />
        <span className="text-violet-200 font-black">{email}</span>
      </p>
    </div>
  );
}

function CodeInput({ code, refs, onChange, onKeyDown, onPaste }: {
  code: string[];
  refs: React.RefObject<HTMLInputElement | null>[];
  onChange: (i: number, v: string) => void;
  onKeyDown: (i: number, e: React.KeyboardEvent) => void;
  onPaste: (e: React.ClipboardEvent) => void;
}) {
  return (
    <div className="flex gap-2.5 justify-center" dir="ltr">
      {code.map((digit, i) => (
        <input key={i} ref={refs[i]}
          type="text" inputMode="numeric" pattern="[0-9]*"
          maxLength={1} value={digit}
          onChange={e => onChange(i, e.target.value)}
          onKeyDown={e => onKeyDown(i, e)}
          onPaste={i === 0 ? onPaste : undefined}
          className="w-12 h-14 text-center text-[22px] font-black font-mono rounded-2xl outline-none transition-all"
          style={{
            background: digit ? "rgba(124,58,237,0.18)" : "rgba(255,255,255,0.05)",
            border: digit ? "1.5px solid rgba(124,58,237,0.50)" : "1.5px solid rgba(255,255,255,0.09)",
            color: "#A78BFA",
            boxShadow: digit ? "0 0 16px rgba(124,58,237,0.25)" : "none",
          }}
        />
      ))}
    </div>
  );
}

function GoogleBtn() {
  const [loading, setLoading] = useState(false);
  return (
    <button
      type="button"
      disabled={loading}
      onClick={async () => { setLoading(true); await signInWithGoogle(); setLoading(false); }}
      className="w-full flex items-center justify-center gap-2 py-3 rounded-2xl font-bold font-['Cairo'] text-[12px] transition-all active:scale-[0.98] disabled:opacity-60"
      style={{
        background: "rgba(255,255,255,0.05)",
        border: "1.5px solid rgba(255,255,255,0.10)",
        color: "rgba(255,255,255,0.85)",
      }}
    >
      {loading ? (
        <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
      ) : (
        <svg width="16" height="16" viewBox="0 0 18 18" fill="none">
          <path d="M17.64 9.2c0-.637-.057-1.251-.164-1.84H9v3.481h4.844c-.209 1.125-.843 2.078-1.796 2.717v2.258h2.908c1.702-1.567 2.684-3.875 2.684-6.615z" fill="#4285F4"/>
          <path d="M9 18c2.43 0 4.467-.806 5.956-2.18l-2.908-2.259c-.806.54-1.837.86-3.048.86-2.344 0-4.328-1.584-5.036-3.711H.957v2.332C2.438 15.983 5.482 18 9 18z" fill="#34A853"/>
          <path d="M3.964 10.71A5.41 5.41 0 0 1 3.682 9c0-.593.102-1.17.282-1.71V4.958H.957A8.996 8.996 0 0 0 0 9c0 1.452.348 2.827.957 4.042l3.007-2.332z" fill="#FBBC05"/>
          <path d="M9 3.58c1.321 0 2.508.454 3.44 1.345l2.582-2.58C13.463.891 11.426 0 9 0 5.482 0 2.438 2.017.957 4.958L3.964 6.29C4.672 4.163 6.656 3.58 9 3.58z" fill="#EA4335"/>
        </svg>
      )}
      {loading ? "جاري..." : "Google"}
    </button>
  );
}

function GithubBtn() {
  const [loading, setLoading] = useState(false);
  return (
    <button
      type="button"
      disabled={loading}
      onClick={async () => { setLoading(true); await signInWithGitHub(); setLoading(false); }}
      className="w-full flex items-center justify-center gap-2 py-3 rounded-2xl font-bold font-['Cairo'] text-[12px] transition-all active:scale-[0.98] disabled:opacity-60"
      style={{
        background: "rgba(255,255,255,0.05)",
        border: "1.5px solid rgba(255,255,255,0.10)",
        color: "rgba(255,255,255,0.85)",
      }}
    >
      {loading ? (
        <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
      ) : (
        <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
          <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"/>
        </svg>
      )}
      {loading ? "جاري..." : "GitHub"}
    </button>
  );
}

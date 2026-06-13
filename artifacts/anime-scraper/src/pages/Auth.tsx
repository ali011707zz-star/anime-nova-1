import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  X, Eye, EyeOff, Mail, Lock, User, Sparkles,
  ArrowLeft, RefreshCw, ShieldCheck,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";
import { useLocation } from "wouter";

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
    <div className="fixed inset-0 z-50 flex items-end justify-center" dir="rtl">
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0"
        style={{ background: "rgba(0,0,0,0.88)", backdropFilter: "blur(24px)" }}
        onClick={onClose}
      />
      <motion.div
        initial={{ opacity: 0, y: 100 }}
        animate={{ opacity: 1, y: 0 }}
        exit={{ opacity: 0, y: 100 }}
        transition={{ type: "spring", stiffness: 340, damping: 30 }}
        className="relative w-full max-w-md flex flex-col overflow-hidden"
        style={{
          maxHeight: "92dvh",
          background: "linear-gradient(180deg, #0E0C1A 0%, #09090B 100%)",
          borderRadius: "2.2rem 2.2rem 0 0",
          border: "1.5px solid rgba(139,92,246,0.22)",
          borderBottom: "none",
          boxShadow: "0 -32px 80px rgba(0,0,0,0.95), 0 0 80px rgba(124,58,237,0.08)",
        }}
        onClick={e => e.stopPropagation()}
      >
        <div className="h-[2px] shrink-0" style={{ background: "linear-gradient(90deg,transparent,#7C3AED,#A78BFA,#EC4899,transparent)" }} />
        <div className="flex justify-center pt-3.5 pb-0.5 shrink-0">
          <div className="w-10 h-[3.5px] rounded-full bg-white/10" />
        </div>
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
  const [previewUrl, setPreviewUrl] = useState("");
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
      const res = await fetch("/api/auth/send-verify-code", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email: email.trim().toLowerCase(), type }),
      });
      const data = await res.json();
      if (!res.ok) { setError(data.error || "حدث خطأ"); setLoading(false); return false; }
      startCooldown(60);
      if (data.previewUrl) setPreviewUrl(data.previewUrl);
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
      const res = await fetch("/api/auth/reset-password", {
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
    login:  { title: "Nova Anime", sub: "مرحباً بعودتك" },
    signup: { title: "Nova Anime", sub: "أنشئ حسابك مجاناً" },
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
          <CodeInfo email={email} previewUrl={previewUrl} />
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
          <CodeInfo email={email} previewUrl={previewUrl} />
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

function CodeInfo({ email, previewUrl }: { email: string; previewUrl: string }) {
  return (
    <div className="rounded-2xl px-4 py-3 text-center"
      style={{ background: "rgba(139,92,246,0.08)", border: "1px solid rgba(139,92,246,0.18)" }}>
      <p className="text-[12px] text-white/60 font-['Cairo'] leading-relaxed">
        أُرسل كود مكوّن من <span className="text-violet-300 font-black">6 أرقام</span> إلى<br />
        <span className="text-violet-200 font-black">{email}</span>
      </p>
      {previewUrl && (
        <a href={previewUrl} target="_blank" rel="noopener noreferrer"
          className="inline-block mt-2 text-[10.5px] text-amber-400/80 underline font-['Cairo']">
          🔗 وضع الاختبار — اضغط لمعاينة البريد
        </a>
      )}
    </div>
  );
}

function CodeInput({ code, refs, onChange, onKeyDown, onPaste }: {
  code: string[];
  refs: React.RefObject<HTMLInputElement>[];
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

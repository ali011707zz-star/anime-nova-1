import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Eye, EyeOff, Mail, Lock, User, Sparkles, ArrowLeft, ShieldCheck, RefreshCw, ChevronRight } from "lucide-react";
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
/* ── Generate a fixed-display invite code (shown to user, must retype) ── */
function makeInviteCode(): string {
  const chars = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
  let code = "NOVA-";
  for (let i = 0; i < 4; i++) code += chars[Math.floor(Math.random() * chars.length)];
  return code;
}
const INVITE_CODE = makeInviteCode();

function AuthContent({ onClose, isModal }: { onClose: () => void; isModal?: boolean }) {
  const { emailSignIn, emailSignUp, signIn, refreshUser } = useAuth();
  const [tab,         setTab]        = useState<"login" | "signup">("login");
  const [email,       setEmail]      = useState("");
  const [password,    setPassword]   = useState("");
  const [name,        setName]       = useState("");
  const [inviteInput, setInviteInput] = useState("");
  const [showPass,    setShowPass]   = useState(false);
  const [loading,     setLoading]    = useState(false);
  const [error,       setError]      = useState("");
  const [success,     setSuccess]    = useState("");

  /* ── Verification state ── */
  const [verifying,     setVerifying]     = useState(false);
  const [verifyEmail,   setVerifyEmail]   = useState("");
  const [code,          setCode]          = useState(["", "", "", "", "", ""]);
  const [verifyLoading, setVerifyLoading] = useState(false);
  const [verifyError,   setVerifyError]   = useState("");
  const [resendLoading, setResendLoading] = useState(false);
  const [resendMsg,     setResendMsg]     = useState("");
  const codeRefs = [
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
    useRef<HTMLInputElement>(null), useRef<HTMLInputElement>(null),
  ];

  /* focus first box when verification screen opens */
  useEffect(() => {
    if (verifying) setTimeout(() => codeRefs[0].current?.focus(), 200);
  }, [verifying]);

  /* ── Submit login/signup ── */
  const handleSubmit = async () => {
    setError(""); setSuccess("");
    if (!email || !password) { setError("يرجى تعبئة جميع الحقول"); return; }
    if (tab === "signup" && password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); return; }
    if (tab === "signup" && inviteInput.trim().toUpperCase() !== INVITE_CODE) {
      setError("كود الدعوة غير صحيح — انسخه من الأعلى وأدخله بدقة");
      return;
    }
    setLoading(true);

    const result = tab === "login"
      ? await emailSignIn(email, password)
      : await emailSignUp(email, password, name);

    setLoading(false);
    if (result.error) { setError(result.error); return; }

    if (result.requiresVerification) {
      setVerifyEmail(result.email || email);
      setVerifying(true);
      return;
    }

    setSuccess(tab === "login" ? "مرحباً بعودتك! 👋" : "أُنشئ حسابك بنجاح! 🎉");
    setTimeout(onClose, 1000);
  };

  /* ── OTP digit input ── */
  const handleCodeChange = (idx: number, val: string) => {
    const digit = val.replace(/\D/g, "").slice(-1);
    const next = [...code];
    next[idx] = digit;
    setCode(next);
    setVerifyError("");
    if (digit && idx < 5) codeRefs[idx + 1].current?.focus();
    if (next.every(d => d !== "")) submitCode(next.join(""));
  };
  const handleCodeKeyDown = (idx: number, e: React.KeyboardEvent) => {
    if (e.key === "Backspace" && !code[idx] && idx > 0) {
      codeRefs[idx - 1].current?.focus();
      const next = [...code]; next[idx - 1] = ""; setCode(next);
    }
  };
  const handleCodePaste = (e: React.ClipboardEvent) => {
    const pasted = e.clipboardData.getData("text").replace(/\D/g, "").slice(0, 6);
    if (pasted.length === 6) {
      const next = pasted.split("");
      setCode(next);
      codeRefs[5].current?.focus();
      submitCode(pasted);
    }
  };

  /* ── Submit verification code ── */
  const submitCode = async (fullCode: string) => {
    setVerifyLoading(true); setVerifyError("");
    try {
      const res = await fetch("/api/auth/verify-email", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ code: fullCode }),
      });
      const data = await res.json();
      if (!res.ok) {
        setVerifyError(data.error || "رمز غير صحيح");
        setCode(["", "", "", "", "", ""]);
        setTimeout(() => codeRefs[0].current?.focus(), 100);
      } else {
        await refreshUser();
        setSuccess("✓ تم تفعيل الحساب!");
        setTimeout(onClose, 1000);
      }
    } catch {
      setVerifyError("خطأ في الاتصال، حاول مرة أخرى");
    } finally {
      setVerifyLoading(false);
    }
  };

  /* ── Resend code ── */
  const handleResend = async () => {
    setResendLoading(true); setResendMsg(""); setVerifyError("");
    try {
      const res = await fetch("/api/auth/resend-code", {
        method: "POST",
        credentials: "include",
      });
      const data = await res.json();
      if (data.ok) {
        setResendMsg(data.emailSent ? "✓ تم إرسال رمز جديد إلى بريدك" : "");
        setCode(["", "", "", "", "", ""]);
        setTimeout(() => codeRefs[0].current?.focus(), 100);
      } else {
        setResendMsg("فشل إعادة الإرسال، حاول لاحقاً");
      }
    } catch {
      setResendMsg("خطأ في الاتصال");
    } finally {
      setResendLoading(false);
    }
  };

  /* ══════════════════════════════════════════
     VERIFICATION SCREEN
  ══════════════════════════════════════════ */
  if (verifying) {
    return (
      <div className={`${isModal ? "px-6 pb-12 pt-4" : "min-h-screen flex flex-col items-center justify-center px-6 py-12"}`}>
        {!isModal && (
          <button onClick={onClose} className="absolute top-5 right-4 w-9 h-9 bg-white/6 border border-white/10 rounded-full flex items-center justify-center active:scale-90">
            <ChevronRight className="w-4 h-4 text-white/60" />
          </button>
        )}

        <div className={`${isModal ? "" : "w-full max-w-sm mx-auto"} text-center`}>
          <div className="flex justify-center mb-5">
            <div className="w-18 h-18 w-[72px] h-[72px] rounded-2xl flex items-center justify-center"
              style={{
                background: "linear-gradient(135deg,rgba(124,58,237,0.28),rgba(79,70,229,0.15))",
                border: "1.5px solid rgba(139,92,246,0.40)",
                boxShadow: "0 0 40px rgba(124,58,237,0.22)",
              }}>
              <ShieldCheck className="w-8 h-8 text-violet-300" />
            </div>
          </div>

          <h2 className="text-[22px] font-black text-white/90 font-['Cairo'] mb-2">أدخل رمز التحقق</h2>
          <p className="text-white/40 text-[13px] font-['Cairo'] leading-relaxed mb-6">
            أرسلنا رمز مكوّن من 6 أرقام إلى<br />
            <span className="text-violet-300 font-bold">{verifyEmail}</span>
          </p>

          {/* 6-digit OTP boxes */}
          <div className="flex gap-2 justify-center mb-4 dir-ltr" dir="ltr" onPaste={handleCodePaste}>
            {code.map((digit, i) => (
              <input
                key={i}
                ref={codeRefs[i]}
                type="text"
                inputMode="numeric"
                maxLength={1}
                value={digit}
                onChange={e => handleCodeChange(i, e.target.value)}
                onKeyDown={e => handleCodeKeyDown(i, e)}
                className="w-11 h-14 text-center text-xl font-black text-white rounded-2xl outline-none transition-all font-['Cairo']"
                style={{
                  background: digit ? "rgba(139,92,246,0.18)" : "rgba(255,255,255,0.05)",
                  border: digit ? "2px solid rgba(139,92,246,0.55)" : verifyError ? "2px solid rgba(239,68,68,0.5)" : "1.5px solid rgba(255,255,255,0.1)",
                  caretColor: "#A78BFA",
                  boxShadow: digit ? "0 0 12px rgba(139,92,246,0.2)" : "none",
                }}
              />
            ))}
          </div>


          {/* Verify loading */}
          {verifyLoading && (
            <div className="flex items-center justify-center gap-2 mb-4 text-violet-300 text-sm font-['Cairo']">
              <div className="w-4 h-4 rounded-full border-2 border-violet-400/30 border-t-violet-400 animate-spin" />
              جاري التحقق…
            </div>
          )}

          {/* Verify error */}
          <AnimatePresence>
            {verifyError && (
              <motion.div key="verr"
                initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                className="mb-4 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-red-300 text-center"
                style={{ background: "rgba(239,68,68,0.09)", border: "1px solid rgba(239,68,68,0.18)" }}>
                {verifyError}
              </motion.div>
            )}
            {resendMsg && (
              <motion.div key="rmsg"
                initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                className="mb-4 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-emerald-300 text-center"
                style={{ background: "rgba(16,185,129,0.09)", border: "1px solid rgba(16,185,129,0.18)" }}>
                {resendMsg}
              </motion.div>
            )}
          </AnimatePresence>

          {/* Success */}
          <AnimatePresence>
            {success && (
              <motion.div key="ok"
                initial={{ opacity: 0, scale: 0.92 }} animate={{ opacity: 1, scale: 1 }}
                className="mb-4 px-4 py-3 rounded-2xl text-[13px] font-bold font-['Cairo'] text-emerald-300 text-center"
                style={{ background: "rgba(16,185,129,0.09)", border: "1px solid rgba(16,185,129,0.22)" }}>
                {success}
              </motion.div>
            )}
          </AnimatePresence>

          {/* Resend button */}
          <button
            onClick={handleResend}
            disabled={resendLoading}
            className="w-full flex items-center justify-center gap-2 py-3 rounded-2xl text-[13px] font-black font-['Cairo'] transition-all mb-3 active:scale-97"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.09)", color: "rgba(255,255,255,0.5)" }}>
            {resendLoading
              ? <div className="w-4 h-4 rounded-full border-2 border-white/20 border-t-white/60 animate-spin" />
              : <RefreshCw className="w-3.5 h-3.5" />}
            إعادة إرسال الرمز
          </button>

          <button onClick={() => { setVerifying(false); setCode(["","","","","",""]); setVerifyError(""); }}
            className="text-[11px] text-white/25 font-['Cairo']">
            العودة لتسجيل الدخول
          </button>
        </div>
      </div>
    );
  }

  /* ══════════════════════════════════════════
     LOGIN / SIGNUP SCREEN
  ══════════════════════════════════════════ */
  return (
    <div className={`${isModal ? "px-6 pb-10 pt-2" : "min-h-screen flex flex-col items-center justify-start px-6 pt-14 pb-10"} relative`}>
      {!isModal && (
        <button onClick={onClose} className="absolute top-5 right-4 w-9 h-9 bg-white/6 border border-white/10 rounded-full flex items-center justify-center active:scale-90 z-10">
          <ChevronRight className="w-4 h-4 text-white/60" />
        </button>
      )}
      {isModal && (
        <button onClick={onClose}
          className="absolute top-5 left-5 w-8 h-8 rounded-xl flex items-center justify-center transition-all active:scale-90"
          style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
          <X className="w-3.5 h-3.5 text-white/35" />
        </button>
      )}

      {/* ── Top logo bar (full-screen only) ── */}
      {!isModal && (
        <div className="flex items-center justify-center pb-6">
          <div className="flex flex-col items-center gap-3">
            <div className="relative w-16 h-16 rounded-2xl flex items-center justify-center"
              style={{
                background: "linear-gradient(135deg,rgba(124,58,237,0.30),rgba(79,70,229,0.18))",
                border: "1.5px solid rgba(139,92,246,0.45)",
                boxShadow: "0 0 48px rgba(124,58,237,0.28),0 0 80px rgba(124,58,237,0.08)",
              }}>
              <Sparkles className="w-8 h-8 text-violet-300" />
              <div className="absolute inset-0 rounded-2xl opacity-30"
                style={{ background: "radial-gradient(circle at 40% 30%,rgba(167,139,250,0.6),transparent 60%)" }} />
            </div>
            <div className="flex items-baseline gap-[5px]" dir="ltr">
              <span className="text-[26px] font-black leading-none"
                style={{ fontFamily: "'Cairo',sans-serif", background: "linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>
                NOVA
              </span>
              <span className="text-[26px] font-black leading-none text-white/90" style={{ fontFamily: "'Cairo',sans-serif" }}>ANIME</span>
            </div>
            <p className="text-white/35 text-[12px] font-['Cairo'] tracking-wide">
              {tab === "login" ? "سجّل دخولك للمتابعة من حيث توقفت" : "انضم وابدأ رحلتك مع الأنمي العربي"}
            </p>
          </div>
        </div>
      )}

      <div className={`${isModal ? "" : "w-full max-w-sm"}`}>
        {/* Logo (modal only) */}
        {isModal && (
        <div className="text-center mb-7">
          <div className="flex justify-center mb-4">
            <div className="relative w-16 h-16 rounded-2xl flex items-center justify-center"
              style={{
                background: "linear-gradient(135deg,rgba(124,58,237,0.28),rgba(79,70,229,0.15))",
                border: "1.5px solid rgba(139,92,246,0.40)",
                boxShadow: "0 0 40px rgba(124,58,237,0.22),0 0 80px rgba(124,58,237,0.06)",
              }}>
              <Sparkles className="w-7 h-7 text-violet-300" />
              <div className="absolute inset-0 rounded-2xl opacity-30"
                style={{ background: "radial-gradient(circle at 40% 30%,rgba(167,139,250,0.6),transparent 60%)" }} />
            </div>
          </div>
          <div className="flex items-baseline justify-center gap-[6px] mb-1.5" dir="ltr">
            <span className="text-[28px] font-black leading-none"
              style={{ fontFamily: "'Cairo',sans-serif", background: "linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>
              NOVA
            </span>
            <span className="text-[28px] font-black leading-none text-white/90" style={{ fontFamily: "'Cairo',sans-serif" }}>ANIME</span>
          </div>
          <p className="text-white/28 text-[12px] font-['Cairo']">
            {tab === "login" ? "سجّل دخولك للمتابعة من حيث توقفت" : "انضم وابدأ رحلتك مع الأنمي العربي"}
          </p>
        </div>
        )}

        {/* Tab switcher */}
        <div className="flex gap-1 mb-5 p-[3px] rounded-[16px]"
          style={{ background: "rgba(255,255,255,0.035)", border: "1px solid rgba(255,255,255,0.055)" }}>
          {(["login", "signup"] as const).map(t => (
            <button key={t} onClick={() => { setTab(t); setError(""); setSuccess(""); }}
              className="flex-1 py-2.5 rounded-[13px] text-[13px] font-black font-['Cairo'] transition-all duration-200"
              style={tab === t
                ? { background: "linear-gradient(135deg,rgba(124,58,237,0.85),rgba(79,70,229,0.70))", color: "white", boxShadow: "0 4px 18px rgba(124,58,237,0.32)" }
                : { background: "transparent", color: "rgba(255,255,255,0.30)" }}>
              {t === "login" ? "تسجيل الدخول" : "إنشاء حساب"}
            </button>
          ))}
        </div>

        {/* ── Invite code display (signup only) ── */}
        <AnimatePresence>
          {tab === "signup" && (
            <motion.div
              key="invite-box"
              initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }} exit={{ opacity: 0, height: 0 }}
              transition={{ duration: 0.22 }}>
              <div className="mb-4 rounded-2xl overflow-hidden"
                style={{ background: "rgba(124,58,237,0.08)", border: "1.5px solid rgba(139,92,246,0.30)" }}>
                <div className="flex items-center gap-2.5 px-4 pt-3.5 pb-1">
                  <div className="w-6 h-6 rounded-lg flex items-center justify-center shrink-0"
                    style={{ background: "rgba(139,92,246,0.22)", border: "1px solid rgba(139,92,246,0.35)" }}>
                    <ShieldCheck className="w-3.5 h-3.5 text-violet-300" />
                  </div>
                  <p className="text-white/55 text-[11px] font-bold font-['Cairo']">كود الدعوة المطلوب للتسجيل</p>
                </div>
                <div className="flex items-center justify-center py-3">
                  <span className="text-[22px] font-black tracking-[0.22em] font-mono select-all"
                    style={{ color: "#A78BFA", textShadow: "0 0 20px rgba(167,139,250,0.45)" }}>
                    {INVITE_CODE}
                  </span>
                </div>
                <p className="text-center text-white/28 text-[10px] font-['Cairo'] pb-3">انسخ الكود وأدخله في حقل الدعوة أدناه</p>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Fields */}
        <div className="space-y-3">
          <AnimatePresence>
            {tab === "signup" && (
              <motion.div key="name" initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }} exit={{ opacity: 0, height: 0 }} transition={{ duration: 0.18 }}>
                <InputField icon={<User className="w-4 h-4" />} type="text" placeholder="اسمك (اختياري)" value={name} onChange={setName} />
              </motion.div>
            )}
          </AnimatePresence>
          <InputField icon={<Mail className="w-4 h-4" />} type="email" placeholder="البريد الإلكتروني" value={email} onChange={setEmail} onEnter={handleSubmit} />
          <div className="relative">
            <InputField icon={<Lock className="w-4 h-4" />} type={showPass ? "text" : "password"} placeholder="كلمة المرور" value={password} onChange={setPassword} onEnter={handleSubmit} />
            <button onClick={() => setShowPass(p => !p)}
              className="absolute left-4 top-1/2 -translate-y-1/2" style={{ color: "rgba(255,255,255,0.28)" }}>
              {showPass ? <EyeOff className="w-[15px] h-[15px]" /> : <Eye className="w-[15px] h-[15px]" />}
            </button>
          </div>
          <AnimatePresence>
            {tab === "signup" && (
              <motion.div key="invite-field" initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }} exit={{ opacity: 0, height: 0 }} transition={{ duration: 0.18 }}>
                <InputField icon={<ShieldCheck className="w-4 h-4" />} type="text" placeholder="كود الدعوة" value={inviteInput} onChange={v => setInviteInput(v.toUpperCase())} onEnter={handleSubmit} />
              </motion.div>
            )}
          </AnimatePresence>
        </div>

        {/* Messages */}
        <AnimatePresence>
          {error && (
            <motion.div key="err" initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="mt-3 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-red-300 text-center"
              style={{ background: "rgba(239,68,68,0.09)", border: "1px solid rgba(239,68,68,0.16)" }}>
              {error}
            </motion.div>
          )}
          {success && (
            <motion.div key="ok" initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="mt-3 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-emerald-300 text-center"
              style={{ background: "rgba(16,185,129,0.09)", border: "1px solid rgba(16,185,129,0.16)" }}>
              {success}
            </motion.div>
          )}
        </AnimatePresence>

        {/* Submit */}
        <motion.button whileTap={{ scale: 0.97 }} onClick={handleSubmit} disabled={loading}
          className="w-full mt-5 py-3.5 rounded-2xl text-[14px] font-black font-['Cairo'] text-white transition-all"
          style={{
            background: loading ? "rgba(124,58,237,0.28)" : "linear-gradient(135deg,#7C3AED,#6D28D9,#4F46E5)",
            boxShadow: loading ? "none" : "0 8px 30px rgba(124,58,237,0.42)",
          }}>
          {loading
            ? <span className="flex items-center justify-center gap-2.5"><div className="w-4 h-4 rounded-full border-[2.5px] border-white/25 border-t-white animate-spin" />جاري التحقق…</span>
            : <span className="flex items-center justify-center gap-2">{tab === "login" ? "تسجيل الدخول" : "إنشاء الحساب"}<ArrowLeft className="w-4 h-4 opacity-80" /></span>}
        </motion.button>

      </div>
    </div>
  );
}

/* ── Input field helper ── */
function InputField({ icon, type, placeholder, value, onChange, onEnter }: {
  icon: React.ReactNode; type: string; placeholder: string;
  value: string; onChange: (v: string) => void; onEnter?: () => void;
}) {
  return (
    <div className="relative flex items-center focus-within:ring-1 focus-within:ring-violet-500/30 transition-all"
      style={{ background: "rgba(255,255,255,0.038)", border: "1px solid rgba(255,255,255,0.07)", borderRadius: 14 }}>
      <div className="absolute right-4" style={{ color: "rgba(167,139,250,0.55)" }}>{icon}</div>
      <input type={type} placeholder={placeholder} value={value} onChange={e => onChange(e.target.value)}
        onKeyDown={e => e.key === "Enter" && onEnter?.()}
        dir="rtl"
        className="w-full bg-transparent text-white text-[13px] font-['Cairo'] outline-none pr-11 pl-10 py-3.5 placeholder:text-white/20"
        style={{ caretColor: "#A78BFA" }} />
    </div>
  );
}

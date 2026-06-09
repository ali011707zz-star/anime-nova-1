import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Eye, EyeOff, Mail, Lock, User, Sparkles, ArrowLeft, ShieldCheck } from "lucide-react";
import { useAuth } from "@/lib/auth-context";

interface AuthModalProps {
  onClose: () => void;
}

export function AuthModal({ onClose }: AuthModalProps) {
  const { emailSignIn, emailSignUp, signIn } = useAuth();
  const [tab, setTab] = useState<"login" | "signup">("login");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [showPass, setShowPass] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");

  const [verifying, setVerifying] = useState(false);
  const [verifyEmail, setVerifyEmail] = useState("");

  const handleSubmit = async () => {
    setError(""); setSuccess("");
    if (!email || !password) { setError("يرجى تعبئة جميع الحقول"); return; }
    if (tab === "signup" && password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); return; }
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
    setTimeout(onClose, 1200);
  };

  if (verifying) {
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
          className="relative w-full max-w-md"
          style={{
            background: "linear-gradient(180deg, #0E0C1A 0%, #09090B 100%)",
            borderRadius: "2.2rem 2.2rem 0 0",
            border: "1.5px solid rgba(139,92,246,0.22)",
            borderBottom: "none",
            boxShadow: "0 -32px 80px rgba(0,0,0,0.95), 0 0 80px rgba(124,58,237,0.08)",
            overflow: "hidden",
          }}>
          <div className="h-[2px]" style={{ background: "linear-gradient(90deg, transparent 0%, #7C3AED 30%, #A78BFA 50%, #EC4899 70%, transparent 100%)" }} />
          <div className="flex justify-center pt-3.5 pb-0.5">
            <div className="w-10 h-[3.5px] rounded-full bg-white/10" />
          </div>
          <button onClick={onClose}
            className="absolute top-5 left-5 w-8 h-8 rounded-xl flex items-center justify-center transition-all active:scale-90"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <X className="w-3.5 h-3.5 text-white/35" />
          </button>

          <div className="px-6 pb-12 pt-4 text-center">
            <div className="flex justify-center mb-5">
              <div className="w-16 h-16 rounded-2xl flex items-center justify-center"
                style={{
                  background: "linear-gradient(135deg, rgba(124,58,237,0.28), rgba(79,70,229,0.15))",
                  border: "1.5px solid rgba(139,92,246,0.40)",
                  boxShadow: "0 0 40px rgba(124,58,237,0.22)",
                }}>
                <ShieldCheck className="w-7 h-7 text-violet-300" />
              </div>
            </div>

            <h2 className="text-[20px] font-black text-white/90 font-['Cairo'] mb-3">تحقق من بريدك الإلكتروني</h2>
            <p className="text-white/40 text-[13px] font-['Cairo'] leading-relaxed mb-6">
              أرسلنا رابط تأكيد إلى<br />
              <span className="text-violet-300 font-bold">{verifyEmail}</span><br />
              <span className="text-white/25 text-[11px]">افتح بريدك الإلكتروني وانقر على الرابط لتفعيل حسابك</span>
            </p>

            <div className="px-4 py-3.5 rounded-2xl mb-5"
              style={{ background: "rgba(16,185,129,0.07)", border: "1px solid rgba(16,185,129,0.18)" }}>
              <p className="text-emerald-300/80 text-[12px] font-bold font-['Cairo']">
                ✓ تم إرسال رابط التحقق إلى بريدك
              </p>
            </div>

            <button onClick={onClose}
              className="w-full py-3.5 rounded-2xl text-[13px] font-black font-['Cairo'] text-white"
              style={{ background: "linear-gradient(135deg, #7C3AED, #4F46E5)" }}>
              حسناً، سأتحقق من البريد
            </button>
          </div>
        </motion.div>
      </div>
    );
  }

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
        className="relative w-full max-w-md"
        style={{
          background: "linear-gradient(180deg, #0E0C1A 0%, #09090B 100%)",
          borderRadius: "2.2rem 2.2rem 0 0",
          border: "1.5px solid rgba(139,92,246,0.22)",
          borderBottom: "none",
          boxShadow: "0 -32px 80px rgba(0,0,0,0.95), 0 0 80px rgba(124,58,237,0.08), 0 0 0 1px rgba(255,255,255,0.025) inset",
          overflow: "hidden",
        }}
      >
        <div className="h-[2px]" style={{ background: "linear-gradient(90deg, transparent 0%, #7C3AED 30%, #A78BFA 50%, #EC4899 70%, transparent 100%)" }} />
        <div className="flex justify-center pt-3.5 pb-0.5">
          <div className="w-10 h-[3.5px] rounded-full bg-white/10" />
        </div>
        <button onClick={onClose}
          className="absolute top-5 left-5 w-8 h-8 rounded-xl flex items-center justify-center transition-all active:scale-90"
          style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
          <X className="w-3.5 h-3.5 text-white/35" />
        </button>

        <div className="px-6 pb-10 pt-2">
          <div className="text-center mb-6">
            <div className="flex justify-center mb-4">
              <div className="relative w-14 h-14 rounded-2xl flex items-center justify-center"
                style={{
                  background: "linear-gradient(135deg, rgba(124,58,237,0.28), rgba(79,70,229,0.15))",
                  border: "1.5px solid rgba(139,92,246,0.40)",
                  boxShadow: "0 0 40px rgba(124,58,237,0.22), 0 0 80px rgba(124,58,237,0.06)",
                }}>
                <Sparkles className="w-6 h-6 text-violet-300" />
                <div className="absolute inset-0 rounded-2xl opacity-30"
                  style={{ background: "radial-gradient(circle at 40% 30%, rgba(167,139,250,0.6), transparent 60%)" }} />
              </div>
            </div>
            <div className="flex items-baseline justify-center gap-[6px] mb-1.5" dir="ltr">
              <span className="text-[26px] font-black leading-none tracking-tight"
                style={{
                  fontFamily: "'Cairo', sans-serif",
                  letterSpacing: "0.04em",
                  background: "linear-gradient(135deg, #C4B5FD, #A78BFA, #7C3AED)",
                  WebkitBackgroundClip: "text",
                  WebkitTextFillColor: "transparent",
                }}>
                NOVA
              </span>
              <span className="text-[26px] font-black leading-none tracking-tight text-white/90"
                style={{ fontFamily: "'Cairo', sans-serif", letterSpacing: "0.04em" }}>
                ANIME
              </span>
            </div>
            <p className="text-white/28 text-[11px] font-['Cairo']">
              {tab === "login"
                ? "سجّل دخولك للمتابعة من حيث توقفت"
                : "انضم وابدأ رحلتك مع الأنمي العربي"}
            </p>
          </div>

          <div className="flex gap-1 mb-5 p-[3px] rounded-[16px]"
            style={{ background: "rgba(255,255,255,0.035)", border: "1px solid rgba(255,255,255,0.055)" }}>
            {(["login", "signup"] as const).map(t => (
              <button key={t} onClick={() => { setTab(t); setError(""); setSuccess(""); }}
                className="flex-1 py-2.5 rounded-[13px] text-[12.5px] font-black font-['Cairo'] transition-all duration-200"
                style={tab === t
                  ? {
                      background: "linear-gradient(135deg, rgba(124,58,237,0.85), rgba(79,70,229,0.70))",
                      color: "white",
                      boxShadow: "0 4px 18px rgba(124,58,237,0.32), 0 0 0 1px rgba(255,255,255,0.06) inset",
                    }
                  : { background: "transparent", color: "rgba(255,255,255,0.30)" }}>
                {t === "login" ? "تسجيل الدخول" : "إنشاء حساب"}
              </button>
            ))}
          </div>

          <div className="space-y-3">
            <AnimatePresence>
              {tab === "signup" && (
                <motion.div
                  key="name-field"
                  initial={{ opacity: 0, height: 0 }}
                  animate={{ opacity: 1, height: "auto" }}
                  exit={{ opacity: 0, height: 0 }}
                  transition={{ duration: 0.18 }}>
                  <InputField
                    icon={<User className="w-4 h-4" />}
                    type="text"
                    placeholder="اسمك (اختياري)"
                    value={name}
                    onChange={setName}
                  />
                </motion.div>
              )}
            </AnimatePresence>

            <InputField
              icon={<Mail className="w-4 h-4" />}
              type="email"
              placeholder="البريد الإلكتروني"
              value={email}
              onChange={setEmail}
              onEnter={handleSubmit}
            />

            <div className="relative">
              <InputField
                icon={<Lock className="w-4 h-4" />}
                type={showPass ? "text" : "password"}
                placeholder="كلمة المرور"
                value={password}
                onChange={setPassword}
                onEnter={handleSubmit}
              />
              <button
                onClick={() => setShowPass(p => !p)}
                className="absolute left-4 top-1/2 -translate-y-1/2 transition-colors"
                style={{ color: "rgba(255,255,255,0.28)" }}>
                {showPass ? <EyeOff className="w-[15px] h-[15px]" /> : <Eye className="w-[15px] h-[15px]" />}
              </button>
            </div>
          </div>

          <AnimatePresence>
            {error && (
              <motion.div key="err"
                initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                className="mt-3 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-red-300 text-center"
                style={{ background: "rgba(239,68,68,0.09)", border: "1px solid rgba(239,68,68,0.16)" }}>
                {error}
              </motion.div>
            )}
            {success && (
              <motion.div key="ok"
                initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                className="mt-3 px-4 py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] text-emerald-300 text-center"
                style={{ background: "rgba(16,185,129,0.09)", border: "1px solid rgba(16,185,129,0.16)" }}>
                {success}
              </motion.div>
            )}
          </AnimatePresence>

          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={handleSubmit}
            disabled={loading}
            className="w-full mt-5 py-3.5 rounded-2xl text-[14px] font-black font-['Cairo'] text-white transition-all overflow-hidden"
            style={{
              background: loading
                ? "rgba(124,58,237,0.28)"
                : "linear-gradient(135deg, #7C3AED 0%, #6D28D9 50%, #4F46E5 100%)",
              boxShadow: loading
                ? "none"
                : "0 8px 30px rgba(124,58,237,0.42), 0 0 0 1px rgba(255,255,255,0.07) inset",
            }}>
            {loading ? (
              <span className="flex items-center justify-center gap-2.5">
                <div className="w-4 h-4 rounded-full border-[2.5px] border-white/25 border-t-white animate-spin" />
                جاري التحقق...
              </span>
            ) : (
              <span className="flex items-center justify-center gap-2">
                {tab === "login" ? "تسجيل الدخول" : "إنشاء الحساب"}
                <ArrowLeft className="w-4 h-4 opacity-80" />
              </span>
            )}
          </motion.button>

          <div className="flex items-center gap-3 my-4">
            <div className="flex-1 h-px bg-white/[0.055]" />
            <span className="text-[10px] text-white/18 font-['Cairo'] font-bold">أو</span>
            <div className="flex-1 h-px bg-white/[0.055]" />
          </div>

          <button
            onClick={() => { signIn(); onClose(); }}
            className="w-full py-3 rounded-2xl text-[12px] font-bold font-['Cairo'] transition-all active:scale-[0.98]"
            style={{
              background: "rgba(255,255,255,0.03)",
              border: "1px solid rgba(255,255,255,0.07)",
              color: "rgba(255,255,255,0.35)",
            }}>
            متابعة بحساب Replit
          </button>
        </div>
      </motion.div>
    </div>
  );
}

function InputField({
  icon, type, placeholder, value, onChange, onEnter,
}: {
  icon: React.ReactNode;
  type: string;
  placeholder: string;
  value: string;
  onChange: (v: string) => void;
  onEnter?: () => void;
}) {
  return (
    <div
      className="relative flex items-center focus-within:ring-1 focus-within:ring-violet-500/30 transition-all"
      style={{
        background: "rgba(255,255,255,0.038)",
        border: "1px solid rgba(255,255,255,0.07)",
        borderRadius: 14,
      }}>
      <div className="absolute right-4" style={{ color: "rgba(167,139,250,0.55)" }}>
        {icon}
      </div>
      <input
        type={type}
        placeholder={placeholder}
        value={value}
        onChange={e => onChange(e.target.value)}
        onKeyDown={e => e.key === "Enter" && onEnter?.()}
        dir="rtl"
        className="w-full bg-transparent text-white text-[13px] font-['Cairo'] outline-none pr-11 pl-10 py-3.5 placeholder:text-white/20"
        style={{ caretColor: "#A78BFA" }}
      />
    </div>
  );
}

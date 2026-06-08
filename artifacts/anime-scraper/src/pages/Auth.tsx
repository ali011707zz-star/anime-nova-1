import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { LogIn, X, Sparkles, BookMarked, Clock, Eye, EyeOff, Mail, Lock, User, ArrowRight, Shield } from "lucide-react";
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

  const handleSubmit = async () => {
    setError(""); setSuccess("");
    if (!email || !password) { setError("يرجى تعبئة جميع الحقول"); return; }
    setLoading(true);

    let result;
    if (tab === "login") {
      result = await emailSignIn(email, password);
    } else {
      if (password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); setLoading(false); return; }
      result = await emailSignUp(email, password, name);
    }

    setLoading(false);
    if (result.error) { setError(result.error); return; }
    setSuccess(tab === "login" ? "مرحباً بعودتك! 👋" : "أُنشئ حسابك بنجاح! 🎉");
    setTimeout(onClose, 1200);
  };

  const inputClass = `
    w-full bg-white/5 border border-white/10 rounded-2xl px-4 py-3.5 text-white text-[13px]
    font-['Cairo'] placeholder-white/25 outline-none transition-all
    focus:border-violet-500/60 focus:bg-violet-500/5
  `;

  return (
    <div className="fixed inset-0 z-50 flex items-end justify-center" dir="rtl">
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 bg-black/80 backdrop-blur-md"
        onClick={onClose}
      />

      <motion.div
        initial={{ opacity: 0, y: 100 }}
        animate={{ opacity: 1, y: 0 }}
        exit={{ opacity: 0, y: 100 }}
        transition={{ type: "spring", stiffness: 340, damping: 30 }}
        className="relative w-full max-w-md rounded-t-[2.5rem] overflow-hidden"
        style={{
          background: "linear-gradient(180deg,rgba(14,12,24,0.99) 0%,rgba(9,9,11,0.99) 100%)",
          border: "1px solid rgba(139,92,246,0.20)",
          borderBottom: "none",
        }}
      >
        <div className="h-[2px]" style={{ background: "linear-gradient(90deg,#7C3AED,#4F46E5,#EC4899,#7C3AED)" }} />

        {/* Handle bar */}
        <div className="flex justify-center pt-3 pb-1">
          <div className="w-10 h-1 rounded-full bg-white/15" />
        </div>

        <div className="px-6 pb-10 pt-2">
          {/* Close */}
          <button onClick={onClose}
            className="absolute top-6 left-5 w-9 h-9 rounded-xl flex items-center justify-center transition-all active:scale-90"
            style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.10)" }}>
            <X className="w-4 h-4 text-white/50" />
          </button>

          {/* Logo */}
          <div className="text-center mb-6">
            <div className="w-16 h-16 rounded-2xl mx-auto mb-4 flex items-center justify-center"
              style={{
                background: "linear-gradient(135deg,rgba(124,58,237,0.25),rgba(79,70,229,0.15))",
                border: "1.5px solid rgba(139,92,246,0.40)",
                boxShadow: "0 0 40px rgba(124,58,237,0.20)"
              }}>
              <Sparkles className="w-8 h-8 text-violet-300" />
            </div>
            <h2 className="text-xl font-black font-['Cairo'] text-white">
              {tab === "login" ? "أهلاً بعودتك" : "انضم إلى Nova"}
            </h2>
            <p className="text-white/35 text-[11.5px] font-['Cairo'] mt-1">
              {tab === "login" ? "سجّل دخولك للمتابعة" : "أنشئ حسابك مجاناً"}
            </p>
          </div>

          {/* Tabs */}
          <div className="flex gap-1.5 mb-5 p-1 rounded-2xl" style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.06)" }}>
            {(["login", "signup"] as const).map(t => (
              <button key={t} onClick={() => { setTab(t); setError(""); setSuccess(""); }}
                className="flex-1 py-2 rounded-xl text-[12.5px] font-black font-['Cairo'] transition-all"
                style={tab === t ? {
                  background: "linear-gradient(135deg,rgba(124,58,237,0.40),rgba(79,70,229,0.30))",
                  color: "#C4B5FD",
                  boxShadow: "0 2px 12px rgba(124,58,237,0.20)",
                } : { color: "rgba(255,255,255,0.35)" }}>
                {t === "login" ? "دخول" : "حساب جديد"}
              </button>
            ))}
          </div>

          {/* Error / Success */}
          <AnimatePresence>
            {(error || success) && (
              <motion.div
                initial={{ opacity: 0, y: -8, height: 0 }} animate={{ opacity: 1, y: 0, height: "auto" }} exit={{ opacity: 0, y: -8, height: 0 }}
                className="mb-4 px-4 py-3 rounded-xl text-[12px] font-bold font-['Cairo'] text-center"
                style={error
                  ? { background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.20)", color: "#FCA5A5" }
                  : { background: "rgba(16,185,129,0.12)", border: "1px solid rgba(16,185,129,0.25)", color: "#6EE7B7" }
                }>
                {error || success}
              </motion.div>
            )}
          </AnimatePresence>

          {/* Form */}
          <div className="flex flex-col gap-3">
            {tab === "signup" && (
              <div className="relative">
                <User className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
                <input value={name} onChange={e => setName(e.target.value)}
                  placeholder="الاسم (اختياري)" className={inputClass}
                  style={{ paddingRight: "2.75rem" }} />
              </div>
            )}

            <div className="relative">
              <Mail className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
              <input type="email" value={email} onChange={e => setEmail(e.target.value)}
                placeholder="البريد الإلكتروني" className={inputClass}
                style={{ paddingRight: "2.75rem" }}
                onKeyDown={e => e.key === "Enter" && handleSubmit()} />
            </div>

            <div className="relative">
              <Lock className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
              <input type={showPass ? "text" : "password"} value={password} onChange={e => setPassword(e.target.value)}
                placeholder="كلمة المرور" className={inputClass}
                style={{ paddingRight: "2.75rem", paddingLeft: "3rem" }}
                onKeyDown={e => e.key === "Enter" && handleSubmit()} />
              <button type="button" onClick={() => setShowPass(p => !p)}
                className="absolute left-4 top-1/2 -translate-y-1/2 text-white/25 hover:text-white/50 transition-colors">
                {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
              </button>
            </div>

            <button onClick={handleSubmit} disabled={loading}
              className="w-full flex items-center justify-center gap-2.5 py-4 rounded-2xl font-black font-['Cairo'] text-[14px] text-white transition-all active:scale-[0.97] mt-1"
              style={{
                background: loading ? "rgba(124,58,237,0.40)" : "linear-gradient(135deg,#7C3AED,#4F46E5)",
                boxShadow: loading ? "none" : "0 8px 28px rgba(124,58,237,0.40)",
                opacity: loading ? 0.7 : 1,
              }}>
              {loading ? (
                <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
              ) : (
                <>
                  <ArrowRight className="w-4 h-4" />
                  {tab === "login" ? "دخول" : "إنشاء حساب"}
                </>
              )}
            </button>
          </div>

          {/* Divider */}
          <div className="flex items-center gap-3 my-5">
            <div className="flex-1 h-px bg-white/8" />
            <span className="text-[11px] text-white/25 font-['Cairo']">أو</span>
            <div className="flex-1 h-px bg-white/8" />
          </div>

          {/* Replit OAuth */}
          <button onClick={signIn}
            className="w-full flex items-center justify-center gap-2.5 py-3.5 rounded-2xl font-bold font-['Cairo'] text-[13px] text-white/70 transition-all active:scale-[0.97]"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
            <LogIn className="w-4 h-4" />
            الدخول بحساب Replit
          </button>

          {/* Features */}
          <div className="flex justify-center gap-5 mt-5">
            {[
              { icon: BookMarked, text: "المفضّلة" },
              { icon: Clock, text: "سجل المشاهدة" },
              { icon: Shield, text: "آمن تماماً" },
            ].map(({ icon: Icon, text }) => (
              <div key={text} className="flex flex-col items-center gap-1.5">
                <div className="w-8 h-8 rounded-xl flex items-center justify-center"
                  style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.15)" }}>
                  <Icon className="w-3.5 h-3.5 text-violet-400" />
                </div>
                <span className="text-[9.5px] text-white/25 font-['Cairo']">{text}</span>
              </div>
            ))}
          </div>
        </div>
      </motion.div>
    </div>
  );
}

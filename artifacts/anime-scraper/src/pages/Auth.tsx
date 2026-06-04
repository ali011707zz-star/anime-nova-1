import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Mail, Lock, Eye, EyeOff, Loader2, X, LogIn, UserPlus, AlertCircle } from "lucide-react";
import { useAuth } from "@/lib/auth-context";

interface AuthModalProps {
  onClose: () => void;
}

export function AuthModal({ onClose }: AuthModalProps) {
  const { signIn, signUp } = useAuth();
  const [mode, setMode] = useState<"login" | "register">("login");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [showPass, setShowPass] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    setSuccess("");
    if (!email || !password) { setError("الرجاء إدخال البريد وكلمة المرور"); return; }
    if (password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); return; }
    setLoading(true);
    try {
      if (mode === "login") {
        const { error } = await signIn(email, password);
        if (error) setError(getArabicError(error.message));
        else onClose();
      } else {
        const { error } = await signUp(email, password);
        if (error) setError(getArabicError(error.message));
        else setSuccess("تم إنشاء الحساب! تحقق من بريدك للتفعيل");
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4" dir="rtl">
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 bg-black/70 backdrop-blur-sm"
        onClick={onClose}
      />
      <motion.div
        initial={{ opacity: 0, scale: 0.95, y: 20 }}
        animate={{ opacity: 1, scale: 1, y: 0 }}
        exit={{ opacity: 0, scale: 0.95, y: 20 }}
        className="relative w-full max-w-sm bg-[#111116] border border-white/8 rounded-2xl p-6 shadow-2xl"
      >
        <button onClick={onClose} className="absolute top-4 left-4 text-white/40 hover:text-white/80 transition-colors">
          <X className="w-5 h-5" />
        </button>

        {/* Logo */}
        <div className="text-center mb-6">
          <div className="w-12 h-12 rounded-2xl bg-primary/20 border border-primary/30 flex items-center justify-center mx-auto mb-3">
            {mode === "login" ? <LogIn className="w-6 h-6 text-primary" /> : <UserPlus className="w-6 h-6 text-primary" />}
          </div>
          <h2 className="text-lg font-black font-['Cairo'] text-white">
            {mode === "login" ? "تسجيل الدخول" : "إنشاء حساب"}
          </h2>
          <p className="text-white/40 text-xs font-['Cairo'] mt-1">
            {mode === "login" ? "أهلاً بعودتك في Nova Anime" : "انضم لـ Nova Anime مجاناً"}
          </p>
        </div>

        {/* Tabs */}
        <div className="flex gap-1 bg-white/5 p-1 rounded-xl mb-5">
          {(["login", "register"] as const).map(m => (
            <button key={m} onClick={() => { setMode(m); setError(""); setSuccess(""); }}
              className={`flex-1 py-2 rounded-lg text-xs font-black font-['Cairo'] transition-all
                ${mode === m ? "bg-primary text-white shadow" : "text-white/40"}`}>
              {m === "login" ? "دخول" : "تسجيل"}
            </button>
          ))}
        </div>

        <form onSubmit={handleSubmit} className="space-y-3">
          {/* Email */}
          <div className="relative">
            <Mail className="absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30" />
            <input
              type="email" value={email} onChange={e => setEmail(e.target.value)}
              placeholder="البريد الإلكتروني"
              className="w-full bg-white/5 border border-white/8 rounded-xl py-3 pr-10 pl-4 text-sm font-['Cairo'] text-white placeholder-white/25 focus:outline-none focus:border-primary/50 transition-colors"
            />
          </div>
          {/* Password */}
          <div className="relative">
            <Lock className="absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30" />
            <input
              type={showPass ? "text" : "password"} value={password} onChange={e => setPassword(e.target.value)}
              placeholder="كلمة المرور"
              className="w-full bg-white/5 border border-white/8 rounded-xl py-3 pr-10 pl-10 text-sm font-['Cairo'] text-white placeholder-white/25 focus:outline-none focus:border-primary/50 transition-colors"
            />
            <button type="button" onClick={() => setShowPass(!showPass)}
              className="absolute left-3 top-1/2 -translate-y-1/2 text-white/30 hover:text-white/60">
              {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>

          {/* Error / Success */}
          <AnimatePresence>
            {error && (
              <motion.div initial={{ opacity: 0, y: -5 }} animate={{ opacity: 1, y: 0 }}
                className="flex items-center gap-2 bg-red-500/10 border border-red-500/20 rounded-xl p-3">
                <AlertCircle className="w-4 h-4 text-red-400 shrink-0" />
                <span className="text-red-400 text-xs font-['Cairo']">{error}</span>
              </motion.div>
            )}
            {success && (
              <motion.div initial={{ opacity: 0, y: -5 }} animate={{ opacity: 1, y: 0 }}
                className="flex items-center gap-2 bg-emerald-500/10 border border-emerald-500/20 rounded-xl p-3">
                <span className="text-emerald-400 text-xs font-['Cairo']">{success}</span>
              </motion.div>
            )}
          </AnimatePresence>

          <button type="submit" disabled={loading}
            className="w-full bg-primary hover:bg-primary/90 disabled:opacity-50 text-white font-black font-['Cairo'] py-3 rounded-xl text-sm transition-all active:scale-95 flex items-center justify-center gap-2">
            {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : (mode === "login" ? <LogIn className="w-4 h-4" /> : <UserPlus className="w-4 h-4" />)}
            {mode === "login" ? "دخول" : "إنشاء حساب"}
          </button>
        </form>
      </motion.div>
    </div>
  );
}

function getArabicError(msg: string): string {
  if (msg.includes("Invalid login credentials")) return "بريد أو كلمة مرور خاطئة";
  if (msg.includes("Email not confirmed")) return "يرجى تأكيد بريدك الإلكتروني أولاً";
  if (msg.includes("User already registered")) return "هذا البريد مسجّل بالفعل";
  if (msg.includes("Password should be")) return "كلمة المرور ضعيفة جداً";
  if (msg.includes("rate limit")) return "محاولات كثيرة، انتظر قليلاً";
  return msg;
}

export default AuthModal;

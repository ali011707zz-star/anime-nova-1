import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Eye, EyeOff, Mail, Lock, User, Sparkles, ArrowLeft, ChevronRight } from "lucide-react";
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
function AuthContent({ onClose, isModal }: { onClose: () => void; isModal?: boolean }) {
  const { signIn, signUp } = useAuth();
  const [tab,       setTab]      = useState<"login" | "signup">("login");
  const [email,     setEmail]    = useState("");
  const [password,  setPassword] = useState("");
  const [name,      setName]     = useState("");
  const [showPass,  setShowPass] = useState(false);
  const [loading,   setLoading]  = useState(false);
  const [error,     setError]    = useState("");

  const iClass = "w-full bg-white/5 border border-white/8 rounded-2xl px-4 py-3.5 text-white text-[13.5px] font-['Cairo'] placeholder-white/20 outline-none focus:border-violet-500/50 transition-all";

  const submit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError("");
    if (!email.trim() || !password.trim()) { setError("يرجى تعبئة جميع الحقول"); return; }
    setLoading(true);

    let result: { error?: string };
    if (tab === "login") {
      result = await signIn(email.trim(), password);
    } else {
      if (password.length < 6) { setError("كلمة المرور يجب أن تكون 6 أحرف على الأقل"); setLoading(false); return; }
      result = await signUp(email.trim(), password, name.trim() || undefined);
    }

    setLoading(false);
    if (result.error) {
      setError(result.error);
    } else {
      onClose();
    }
  };

  return (
    <div className="px-5 pb-8 pt-4">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div className="flex items-center gap-2.5">
          <div className="w-9 h-9 rounded-2xl flex items-center justify-center"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 0 20px rgba(124,58,237,0.35)" }}>
            <Sparkles className="w-4 h-4 text-white" />
          </div>
          <div>
            <p className="text-[15px] font-black font-['Cairo'] text-white">Nova Anime</p>
            <p className="text-[10px] text-white/35 font-['Cairo']">{tab === "login" ? "مرحباً بعودتك" : "أنشئ حسابك مجاناً"}</p>
          </div>
        </div>
        <button onClick={onClose}
          className="w-8 h-8 rounded-xl flex items-center justify-center"
          style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.09)" }}>
          <X className="w-3.5 h-3.5 text-white/40" />
        </button>
      </div>

      {/* Tabs */}
      <div className="flex gap-1 p-1 rounded-2xl mb-6"
        style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.06)" }}>
        {(["login", "signup"] as const).map(t => (
          <button key={t} onClick={() => { setTab(t); setError(""); }}
            className="flex-1 py-2.5 rounded-xl font-black font-['Cairo'] text-[12.5px] transition-all"
            style={tab === t ? {
              background: "linear-gradient(135deg,rgba(124,58,237,0.5),rgba(79,70,229,0.5))",
              color: "white",
              border: "1px solid rgba(139,92,246,0.3)",
              boxShadow: "0 2px 12px rgba(124,58,237,0.2)",
            } : { color: "rgba(255,255,255,0.35)" }}>
            {t === "login" ? "تسجيل الدخول" : "حساب جديد"}
          </button>
        ))}
      </div>

      {/* Form */}
      <form onSubmit={submit} className="flex flex-col gap-3">
        {tab === "signup" && (
          <div className="relative">
            <User className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
            <input
              type="text" value={name} onChange={e => setName(e.target.value)}
              placeholder="الاسم (اختياري)" className={iClass} style={{ paddingRight: "2.75rem" }}
            />
          </div>
        )}

        <div className="relative">
          <Mail className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
          <input
            type="email" value={email} onChange={e => setEmail(e.target.value)}
            placeholder="البريد الإلكتروني" className={iClass} style={{ paddingRight: "2.75rem" }}
            autoComplete="email"
          />
        </div>

        <div className="relative">
          <Lock className="absolute right-4 top-1/2 -translate-y-1/2 w-4 h-4 text-white/25 pointer-events-none" />
          <input
            type={showPass ? "text" : "password"} value={password} onChange={e => setPassword(e.target.value)}
            placeholder="كلمة المرور" className={iClass} style={{ paddingRight: "2.75rem", paddingLeft: "3rem" }}
            autoComplete={tab === "login" ? "current-password" : "new-password"}
          />
          <button type="button" onClick={() => setShowPass(p => !p)}
            className="absolute left-4 top-1/2 -translate-y-1/2 text-white/25">
            {showPass ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
          </button>
        </div>

        <AnimatePresence>
          {error && (
            <motion.div
              initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="flex items-center gap-2 px-4 py-3 rounded-xl"
              style={{ background: "rgba(239,68,68,0.1)", border: "1px solid rgba(239,68,68,0.2)" }}>
              <span className="text-[11.5px] text-red-400 font-['Cairo'] font-bold">{error}</span>
            </motion.div>
          )}
        </AnimatePresence>

        <button type="submit" disabled={loading}
          className="w-full py-4 rounded-2xl font-black font-['Cairo'] text-[13.5px] text-white flex items-center justify-center gap-2 mt-1 active:scale-[0.98] transition-transform"
          style={{
            background: loading ? "rgba(124,58,237,0.4)" : "linear-gradient(135deg,#7C3AED,#4F46E5)",
            boxShadow: loading ? "none" : "0 4px 24px rgba(124,58,237,0.4)",
          }}>
          {loading
            ? <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
            : <>{tab === "login" ? "تسجيل الدخول" : "إنشاء الحساب"}<ArrowLeft className="w-4 h-4" /></>
          }
        </button>
      </form>

      {tab === "signup" && (
        <p className="text-center text-[10.5px] text-white/25 font-['Cairo'] mt-4 leading-5">
          بإنشاء حساب أنت توافق على شروط الاستخدام
        </p>
      )}
    </div>
  );
}

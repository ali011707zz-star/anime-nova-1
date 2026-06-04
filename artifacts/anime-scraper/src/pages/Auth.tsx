import { motion } from "framer-motion";
import { LogIn, X } from "lucide-react";

interface AuthModalProps {
  onClose: () => void;
}

export function AuthModal({ onClose }: AuthModalProps) {
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

        <div className="text-center mb-6">
          <div className="w-12 h-12 rounded-2xl bg-primary/20 border border-primary/30 flex items-center justify-center mx-auto mb-3">
            <LogIn className="w-6 h-6 text-primary" />
          </div>
          <h2 className="text-lg font-black font-['Cairo'] text-white">تسجيل الدخول</h2>
          <p className="text-white/40 text-xs font-['Cairo'] mt-1">أهلاً بك في Nova Anime</p>
        </div>

        <a
          href="/api/login"
          className="w-full flex items-center justify-center gap-2 py-3 rounded-xl bg-primary text-white font-black font-['Cairo'] text-sm transition-all hover:bg-primary/90 active:scale-95"
        >
          <LogIn className="w-4 h-4" />
          تسجيل الدخول
        </a>

        <p className="text-center text-white/30 text-[10px] font-['Cairo'] mt-4">
          سجّل دخولك لحفظ قائمتك ومتابعة مشاهدتك
        </p>
      </motion.div>
    </div>
  );
}

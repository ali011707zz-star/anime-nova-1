import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { LogIn, X, Sparkles, Shield, BookMarked, Clock } from "lucide-react";

interface AuthModalProps {
  onClose: () => void;
}

export function AuthModal({ onClose }: AuthModalProps) {
  const features = [
    { icon: BookMarked, text: "احفظ قائمة المفضّلة" },
    { icon: Clock,      text: "تابع سجل مشاهدتك"   },
    { icon: Shield,     text: "حساب آمن ومحمي"      },
  ];

  return (
    <div className="fixed inset-0 z-50 flex items-end justify-center" dir="rtl">
      {/* Backdrop */}
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 bg-black/75 backdrop-blur-md"
        onClick={onClose}
      />

      {/* Sheet */}
      <motion.div
        initial={{ opacity: 0, y: 80 }}
        animate={{ opacity: 1, y: 0 }}
        exit={{ opacity: 0, y: 80 }}
        transition={{ type: "spring", stiffness: 380, damping: 32 }}
        className="relative w-full max-w-md rounded-t-3xl overflow-hidden"
        style={{ background: "rgba(12,12,18,0.99)", border: "1px solid rgba(139,92,246,0.18)", borderBottom: "none" }}
      >
        {/* Gradient top bar */}
        <div className="h-1" style={{ background: "linear-gradient(90deg,#7C3AED,#4F46E5,#EC4899)" }} />

        <div className="p-6 pb-10">
          {/* Close */}
          <button onClick={onClose}
            className="absolute top-5 left-5 w-8 h-8 rounded-xl flex items-center justify-center transition-all active:scale-90"
            style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.10)" }}>
            <X className="w-4 h-4 text-white/50" />
          </button>

          {/* Logo + title */}
          <div className="text-center mb-6">
            <div className="w-16 h-16 rounded-2xl mx-auto mb-4 flex items-center justify-center"
              style={{ background: "linear-gradient(135deg,rgba(124,58,237,0.30),rgba(79,70,229,0.20))", border: "1.5px solid rgba(139,92,246,0.40)", boxShadow: "0 0 32px rgba(124,58,237,0.25)" }}>
              <Sparkles className="w-8 h-8 text-violet-300" />
            </div>
            <h2 className="text-[20px] font-black font-['Cairo'] text-white">مرحباً بك في Nova</h2>
            <p className="text-white/40 text-[12px] font-['Cairo'] mt-1">سجّل دخولك للحصول على التجربة الكاملة</p>
          </div>

          {/* Features list */}
          <div className="flex flex-col gap-2.5 mb-6">
            {features.map(({ icon: Icon, text }) => (
              <div key={text} className="flex items-center gap-3 px-3.5 py-2.5 rounded-xl"
                style={{ background: "rgba(139,92,246,0.07)", border: "1px solid rgba(139,92,246,0.12)" }}>
                <div className="w-7 h-7 rounded-lg flex items-center justify-center shrink-0"
                  style={{ background: "rgba(139,92,246,0.20)" }}>
                  <Icon className="w-3.5 h-3.5 text-violet-300" />
                </div>
                <span className="text-[12.5px] font-bold font-['Cairo'] text-white/75">{text}</span>
              </div>
            ))}
          </div>

          {/* CTA */}
          <a
            href="/api/login"
            className="w-full flex items-center justify-center gap-2.5 py-4 rounded-2xl font-black font-['Cairo'] text-[15px] text-white transition-all active:scale-[0.97]"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 8px 32px rgba(124,58,237,0.45)" }}
          >
            <LogIn className="w-4.5 h-4.5" />
            تسجيل الدخول / إنشاء حساب
          </a>

          <p className="text-center text-white/25 text-[10px] font-['Cairo'] mt-3">
            مجاني تماماً · لا بطاقة بنكية مطلوبة
          </p>
        </div>
      </motion.div>
    </div>
  );
}

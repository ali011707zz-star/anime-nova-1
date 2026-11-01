import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Link } from "wouter";
import {
  ChevronRight, Crown, Check, Send, Copy, CheckCircle2,
  Zap, Star, Shield, Sparkles, X,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";

/* ── Telegram direct chat ── */
const TG_USER_ID = "5477879129";
const TELEGRAM_CHAT_URL = `tg://user?id=${TG_USER_ID}`;

/* ── Feature list ── */
const FEATURES = [
  { icon: "🚫", label: "مشاهدة بدون إعلانات",              desc: "استمتع بالمشاهدة دون أي انقطاع" },
  { icon: "🎬", label: "جودة أعلى للمشاهدة",               desc: "1080p وأفضل الجودات المتاحة" },
  { icon: "⚡", label: "سرعة تحميل أفضل",                  desc: "أولوية في تحميل السيرفرات" },
  { icon: "⏭", label: "تخطي المقدمة والنهاية",              desc: "وفّر وقتك مع كل حلقة" },
  { icon: "🌟", label: "تشغيل السيرفرات المميزة",           desc: "وصول حصري لأفضل مصادر البث" },
  { icon: "🔤", label: "تحسين تجربة الترجمة",               desc: "ترجمة احترافية ومتعددة اللغات" },
  { icon: "❤️", label: "دعم التطبيق وتحديثات أسرع",         desc: "ساعد في استمرار التطبيق مجانياً للجميع" },
];

/* ── Toast ── */
function Toast({ msg, onDone }: { msg: string; onDone: () => void }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20, scale: 0.92 }}
      animate={{ opacity: 1, y: 0, scale: 1 }}
      exit={{ opacity: 0, y: 16, scale: 0.92 }}
      onAnimationComplete={() => setTimeout(onDone, 1800)}
      className="fixed bottom-28 left-4 right-4 z-[9999] flex items-center gap-3 px-4 py-3 rounded-2xl"
      style={{
        background: "rgba(16,185,129,0.18)",
        border: "1px solid rgba(16,185,129,0.35)",
        backdropFilter: "blur(20px)",
        boxShadow: "0 8px 32px rgba(0,0,0,0.50)",
      }}
    >
      <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0" />
      <span className="text-[13px] font-bold text-white/90 font-['Cairo']">{msg}</span>
    </motion.div>
  );
}

export default function Subscription() {
  const { user } = useAuth();
  const [toast, setToast]     = useState("");
  const [opening, setOpening] = useState(false);

  const displayName = user
    ? (user.displayName || user.email?.split("@")[0] || "مستخدم Nova")
    : null;

  function buildMessage() {
    if (user) {
      return `مرحبًا، أريد الاشتراك في Premium، وهذه بياناتي: الاسم: ${displayName}، البريد: ${user.email}، ID: ${user.id}.`;
    }
    return `مرحبًا، أريد الاشتراك في Nova Premium.`;
  }

  async function handleSubscribe() {
    if (opening) return;
    setOpening(true);

    const msg = buildMessage();
    try {
      await navigator.clipboard.writeText(msg);
      setToast("✅ تم نسخ رسالة الطلب · يمكنك لصقها في تيليجرام");
    } catch {
      setToast("افتح تيليجرام وأرسل طلب الاشتراك");
    }

    setTimeout(() => {
      // The numeric deep link opens the conversation directly instead of
      // opening the account's public profile.
      window.location.href = TELEGRAM_CHAT_URL;
      setOpening(false);
    }, 400);
  }

  return (
    <main
      className="min-h-screen text-white pb-28 font-['Cairo'] relative overflow-x-hidden"
      style={{ background: "var(--bg-base, #09090B)" }}
      dir="rtl"
    >
      {/* ── ambient glow ── */}
      <div className="pointer-events-none fixed inset-0 overflow-hidden">
        <div className="absolute top-[-120px] left-1/2 -translate-x-1/2 w-[420px] h-[420px] rounded-full opacity-20"
          style={{ background: "radial-gradient(circle, #fbbf24 0%, transparent 70%)", filter: "blur(60px)" }} />
      </div>

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 backdrop-blur-xl px-4 py-3.5 flex items-center gap-3"
        style={{ background: "rgba(9,9,11,0.92)", borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
        <Link href="/settings">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <div className="flex items-center gap-2.5 flex-1">
          <div className="w-8 h-8 rounded-xl flex items-center justify-center"
            style={{ background: "rgba(251,191,36,0.18)", border: "1px solid rgba(251,191,36,0.30)" }}>
            <Crown className="w-4 h-4 text-amber-400" />
          </div>
          <h1 className="text-[17px] font-black">Premium</h1>
        </div>
        <span className="text-[9px] font-black px-2.5 py-1 rounded-full"
          style={{ background: "rgba(251,191,36,0.15)", color: "#fbbf24", border: "1px solid rgba(251,191,36,0.28)" }}>
          ⭐ حصري
        </span>
      </div>

      <div className="px-4 pt-6 flex flex-col gap-5">

        {/* ── Hero Card ── */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.4, ease: [0.22, 1, 0.36, 1] }}
          className="relative rounded-3xl overflow-hidden"
          style={{
            background: "linear-gradient(135deg, rgba(251,191,36,0.14) 0%, rgba(245,158,11,0.10) 40%, rgba(217,119,6,0.14) 100%)",
            border: "1.5px solid rgba(251,191,36,0.30)",
            boxShadow: "0 20px 60px rgba(251,191,36,0.10), 0 0 0 0.5px rgba(251,191,36,0.12) inset",
          }}
        >
          {/* shimmer */}
          <div className="absolute inset-0 pointer-events-none"
            style={{ background: "radial-gradient(ellipse at 70% 30%, rgba(251,191,36,0.12) 0%, transparent 65%)" }} />

          <div className="relative p-6">
            {/* badge + icon */}
            <div className="flex items-start justify-between mb-4">
              <span className="text-[11px] font-black px-3 py-1 rounded-full"
                style={{ background: "rgba(251,191,36,0.22)", color: "#fde68a", border: "1px solid rgba(251,191,36,0.38)" }}>
                Premium Subscription ⭐
              </span>
              <div className="w-12 h-12 rounded-2xl flex items-center justify-center"
                style={{ background: "rgba(251,191,36,0.20)", border: "1px solid rgba(251,191,36,0.35)" }}>
                <Crown className="w-6 h-6 text-amber-400" />
              </div>
            </div>

            {/* title */}
            <h2 className="text-[22px] font-black text-amber-300 mb-1.5 leading-tight">
              Nova Premium
            </h2>
            <p className="text-[12.5px] leading-relaxed" style={{ color: "rgba(253,224,71,0.60)" }}>
              احصل على تجربة مشاهدة أفضل بدون قيود مع مزايا حصرية للمشتركين.
            </p>

            {/* separator */}
            <div className="my-4 h-px" style={{ background: "linear-gradient(90deg, transparent, rgba(251,191,36,0.25), transparent)" }} />

            {/* quick tags */}
            <div className="flex flex-wrap gap-2">
              {["بدون إعلانات", "دعم التطبيق", "مميزات حصرية", "جودة أعلى"].map(t => (
                <span key={t} className="text-[9.5px] font-black px-2.5 py-1 rounded-lg"
                  style={{ background: "rgba(251,191,36,0.12)", border: "1px solid rgba(251,191,36,0.20)", color: "rgba(253,224,71,0.70)" }}>
                  {t}
                </span>
              ))}
            </div>
          </div>
        </motion.div>

        {/* ── Features Card ── */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.4, delay: 0.08, ease: [0.22, 1, 0.36, 1] }}
          className="rounded-3xl overflow-hidden"
          style={{
            background: "rgba(17,17,22,0.95)",
            border: "1px solid rgba(255,255,255,0.07)",
          }}
        >
          <div className="px-4 pt-4 pb-2">
            <div className="flex items-center gap-2 mb-4">
              <Sparkles className="w-4 h-4 text-amber-400" />
              <span className="text-[13px] font-black text-white/85">المميزات الحصرية</span>
            </div>

            <div className="flex flex-col divide-y divide-white/[0.04]">
              {FEATURES.map((f, i) => (
                <motion.div
                  key={f.label}
                  initial={{ opacity: 0, x: 10 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.12 + i * 0.05, duration: 0.32 }}
                  className="flex items-center gap-3.5 py-3.5"
                >
                  <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 text-[17px]"
                    style={{ background: "rgba(251,191,36,0.10)", border: "1px solid rgba(251,191,36,0.16)" }}>
                    {f.icon}
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="text-[13px] font-bold text-white/85">{f.label}</p>
                    <p className="text-[10px] text-white/30 mt-0.5">{f.desc}</p>
                  </div>
                  <div className="w-5 h-5 rounded-full flex items-center justify-center shrink-0"
                    style={{ background: "rgba(251,191,36,0.18)", border: "1px solid rgba(251,191,36,0.30)" }}>
                    <Check className="w-2.5 h-2.5 text-amber-400" strokeWidth={3} />
                  </div>
                </motion.div>
              ))}
            </div>
          </div>
        </motion.div>

        {/* ── How it works ── */}
        <motion.div
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.38, delay: 0.22 }}
          className="rounded-3xl p-4"
          style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.06)" }}
        >
          <div className="flex items-center gap-2 mb-3.5">
            <Zap className="w-3.5 h-3.5 text-violet-400" />
            <span className="text-[11px] font-black text-white/45 uppercase tracking-wider">كيف يعمل الاشتراك</span>
          </div>
          <div className="flex flex-col gap-3">
            {[
              { step: "١", text: "اضغط زر «اشترك الآن» أدناه" },
              { step: "٢", text: "يفتح تيليجرام مباشرةً مع فريق الدعم" },
              { step: "٣", text: "الصق رسالة الطلب المنسوخة تلقائياً وأرسلها" },
              { step: "٤", text: "سيُفعَّل اشتراكك خلال ٢٤ ساعة" },
            ].map(s => (
              <div key={s.step} className="flex items-center gap-3">
                <span className="w-6 h-6 rounded-full flex items-center justify-center text-[12px] font-black shrink-0"
                  style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)", color: "#c4b5fd" }}>
                  {s.step}
                </span>
                <p className="text-[12px] text-white/55">{s.text}</p>
              </div>
            ))}
          </div>
        </motion.div>

        {/* ── User info preview (if logged in) ── */}
        {user && (
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ delay: 0.3 }}
            className="rounded-2xl p-3.5"
            style={{ background: "rgba(139,92,246,0.08)", border: "1px solid rgba(139,92,246,0.18)" }}
          >
            <p className="text-[9px] font-black text-violet-300/55 uppercase tracking-wider mb-2">بيانات الطلب</p>
            <p className="text-[11px] text-white/50 leading-relaxed font-['monospace'] break-all">
              {buildMessage()}
            </p>
          </motion.div>
        )}

        {/* ── CTA Button ── */}
        <motion.div
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.38, delay: 0.28 }}
        >
          <motion.button
            onClick={handleSubscribe}
            disabled={opening}
            whileTap={{ scale: 0.97 }}
            className="w-full py-4 rounded-2xl flex items-center justify-center gap-3 font-black text-[16px] transition-all"
            style={{
              background: opening
                ? "rgba(251,191,36,0.20)"
                : "linear-gradient(135deg, #f59e0b, #d97706, #b45309)",
              color: opening ? "rgba(253,224,71,0.50)" : "#fff",
              border: "1px solid rgba(251,191,36,0.40)",
              boxShadow: opening ? "none" : "0 8px 32px rgba(245,158,11,0.40), 0 2px 8px rgba(0,0,0,0.40)",
            }}
          >
            {opening ? (
              <>
                <div className="w-5 h-5 border-2 border-amber-400/30 border-t-amber-400/70 rounded-full animate-spin" />
                <span>جاري الفتح…</span>
              </>
            ) : (
              <>
                <Send className="w-5 h-5" />
                <span>اشترك الآن</span>
              </>
            )}
          </motion.button>

          <p className="text-center text-[10px] text-white/20 mt-3">
            عند الضغط يُفتح تيليجرام مباشرةً · رسالة الطلب تُنسخ تلقائياً
          </p>
        </motion.div>

        {/* ── Disclaimer ── */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.38 }}
          className="flex items-start gap-2.5 px-3 py-3 rounded-2xl"
          style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.06)" }}
        >
          <Shield className="w-4 h-4 text-white/25 shrink-0 mt-0.5" />
          <p className="text-[10.5px] text-white/28 leading-relaxed">
            الاشتراك يُفعَّل يدوياً من الفريق · جميع المدفوعات آمنة · للاستفسار تواصل معنا عبر تيليجرام
          </p>
        </motion.div>

      </div>

      {/* ── Toast ── */}
      <AnimatePresence>
        {toast && <Toast msg={toast} onDone={() => setToast("")} />}
      </AnimatePresence>
    </main>
  );
}

import { useState, useEffect } from "react";
import { useLocation } from "wouter";
import { ChevronRight, Zap, Wrench, Rocket, Sparkles, TrendingUp, Star, Loader2 } from "lucide-react";
import { motion } from "framer-motion";

interface Update {
  id: string;
  type: "feature" | "fix" | "improvement" | "launch" | "announcement";
  title: string;
  body: string;
  date: string;
  version?: string;
}

const TYPE_CONFIG: Record<string, { label: string; icon: any; color: string; bg: string; border: string }> = {
  feature:      { label: "ميزة جديدة",  icon: Sparkles,   color: "text-violet-400",  bg: "rgba(139,92,246,0.14)",  border: "rgba(139,92,246,0.30)" },
  fix:          { label: "إصلاح",        icon: Wrench,      color: "text-emerald-400", bg: "rgba(16,185,129,0.12)",  border: "rgba(16,185,129,0.28)" },
  improvement:  { label: "تحسين",        icon: TrendingUp,  color: "text-sky-400",     bg: "rgba(56,189,248,0.12)",  border: "rgba(56,189,248,0.28)" },
  launch:       { label: "إطلاق",        icon: Rocket,      color: "text-amber-400",   bg: "rgba(251,191,36,0.12)",  border: "rgba(251,191,36,0.28)" },
  announcement: { label: "إعلان",        icon: Star,        color: "text-pink-400",    bg: "rgba(236,72,153,0.12)",  border: "rgba(236,72,153,0.28)" },
};

function formatDate(d: string) {
  try {
    const date = new Date(d);
    return date.toLocaleDateString("ar-SA", { year: "numeric", month: "long", day: "numeric" });
  } catch { return d; }
}

export default function Updates() {
  const [, navigate] = useLocation();
  const [updates, setUpdates] = useState<Update[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);

  useEffect(() => {
    fetch("/api/updates")
      .then(r => r.json())
      .then(d => { setUpdates(d.updates || []); setLoading(false); })
      .catch(() => { setError(true); setLoading(false); });

    localStorage.setItem("updates-last-seen", new Date().toISOString());
  }, []);

  return (
    <main className="min-h-screen pb-28 font-['Cairo']"
      style={{ background: "var(--bg-base, #09090B)", color: "white" }} dir="rtl">

      {/* Header */}
      <div className="sticky top-0 z-20 backdrop-blur-xl px-4 py-3.5 flex items-center gap-3"
        style={{ background: "rgba(9,9,11,0.93)", borderBottom: "1px solid rgba(255,255,255,0.06)" }}>
        <button onClick={() => navigate("/")}
          className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
          <ChevronRight className="w-4 h-4 text-white/50" />
        </button>
        <div className="flex items-center gap-2.5 flex-1">
          <div className="w-8 h-8 rounded-xl flex items-center justify-center"
            style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)" }}>
            <Zap className="w-4 h-4 text-violet-300" />
          </div>
          <div>
            <h1 className="text-[17px] font-black leading-none">التحديثات</h1>
            <p className="text-[9px] text-white/30 mt-0.5">آخر الميزات والإصلاحات</p>
          </div>
        </div>
      </div>

      {/* Content */}
      <div className="px-4 pt-6">
        {loading ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <Loader2 className="w-8 h-8 text-violet-400/50 animate-spin" />
            <p className="text-white/25 text-xs">جارٍ التحميل…</p>
          </div>
        ) : error ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <div className="w-14 h-14 rounded-3xl flex items-center justify-center"
              style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.16)" }}>
              <Zap className="w-6 h-6 text-red-400/50" />
            </div>
            <p className="text-white/30 text-sm font-black">تعذّر تحميل التحديثات</p>
          </div>
        ) : (
          <div className="space-y-3">
            {updates.map((u, i) => {
              const cfg = TYPE_CONFIG[u.type] || TYPE_CONFIG.feature;
              const Icon = cfg.icon;
              return (
                <motion.div key={u.id}
                  initial={{ opacity: 0, y: 14 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.05, duration: 0.3 }}>
                  <div className="rounded-2xl p-4"
                    style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.07)" }}>

                    {/* Top row */}
                    <div className="flex items-start gap-3 mb-3">
                      <div className="w-10 h-10 rounded-xl flex items-center justify-center shrink-0"
                        style={{ background: cfg.bg, border: `1px solid ${cfg.border}` }}>
                        <Icon className={`w-5 h-5 ${cfg.color}`} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 flex-wrap mb-1">
                          <span className="text-[9px] font-black px-2 py-0.5 rounded-lg"
                            style={{ background: cfg.bg, border: `1px solid ${cfg.border}`, color: cfg.color.replace("text-", "").replace("-400", "") === cfg.color ? cfg.color : cfg.color }}>
                            {cfg.label}
                          </span>
                          {u.version && (
                            <span className="text-[9px] font-black px-2 py-0.5 rounded-lg"
                              style={{ background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                              {u.version}
                            </span>
                          )}
                        </div>
                        <p className="text-[14px] font-black text-white/90 leading-snug">{u.title}</p>
                      </div>
                    </div>

                    {/* Body */}
                    <p className="text-[12px] text-white/50 leading-relaxed mb-3">{u.body}</p>

                    {/* Date */}
                    <div className="flex items-center justify-end">
                      <span className="text-[9px] text-white/20 font-bold">{formatDate(u.date)}</span>
                    </div>
                  </div>
                </motion.div>
              );
            })}

            <div className="text-center pt-6 pb-4">
              <p className="text-[10px] text-white/15">Nova Anime · جميع الحقوق محفوظة 2025</p>
            </div>
          </div>
        )}
      </div>
    </main>
  );
}

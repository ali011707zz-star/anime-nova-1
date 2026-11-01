import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useCallback, useRef } from "react";
import {
  Bell, BellOff, Check, Shield, LogOut, User,
  Trash2, ChevronLeft, Settings as SettingsIcon,
  Palette, Zap, ChevronRight, Sparkles, X, CheckCircle2,
  UserCircle, Crown, Smartphone, ExternalLink, MessageCircle,
  AlertCircle, Send, Bug, Lightbulb, Film,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { Link, useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { AuthModal } from "@/pages/Auth";
import ReactDOM from "react-dom";

/* ──────────────── Theme definitions ──────────────── */
const THEMES = [
  { id: "dark",   label: "داكن",    desc: "رمادي داكن",   dot: "#3F3F46", bg: "#09090B" },
  { id: "amoled", label: "AMOLED",  desc: "أسود حقيقي",   dot: "#ffffff", bg: "#000000" },
  { id: "violet", label: "بنفسجي",  desc: "توهّج بنفسجي", dot: "#a78bfa", bg: "#0B0814" },
  { id: "blue",   label: "أزرق",    desc: "توهّج أزرق",   dot: "#3b82f6", bg: "#0B1120" },
  { id: "pink",   label: "وردي",    desc: "توهّج وردي",   dot: "#ec4899", bg: "#130811" },
];

function applyTheme(t: string) {
  const root = document.documentElement;
  root.setAttribute("data-theme", t);
  const map: Record<string, [string, string]> = {
    amoled: ["#000000", "#0A0A0A"],
    violet: ["#0B0814", "#130F1E"],
    blue:   ["#0B1120", "#0F1829"],
    pink:   ["#130811", "#1A0E15"],
  };
  const [base, card] = map[t] ?? ["#09090B", "#111116"];
  root.style.setProperty("--bg-base", base);
  root.style.setProperty("--bg-card", card);
  document.body.style.backgroundColor = base;
}

/* ──────────────── Toast ──────────────── */
interface ToastMsg { id: number; text: string; type: "ok" | "err"; }
let _toastId = 0;
let _setToasts: ((fn: (prev: ToastMsg[]) => ToastMsg[]) => void) | null = null;

function showToast(text: string, type: "ok" | "err" = "ok") {
  if (!_setToasts) return;
  const id = ++_toastId;
  _setToasts(p => [...p, { id, text, type }]);
  setTimeout(() => _setToasts?.(p => p.filter(t => t.id !== id)), 2600);
}

function ToastContainer() {
  const [toasts, setToasts] = useState<ToastMsg[]>([]);
  useEffect(() => { _setToasts = setToasts; return () => { _setToasts = null; }; }, []);

  return ReactDOM.createPortal(
    <div className="fixed top-4 left-0 right-0 z-[99999] flex flex-col items-center gap-2 pointer-events-none px-4">
      <AnimatePresence>
        {toasts.map(t => (
          <motion.div key={t.id}
            initial={{ opacity: 0, y: -16, scale: 0.92 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: -12, scale: 0.92 }}
            transition={{ type: "spring", stiffness: 420, damping: 30 }}
            className="flex items-center gap-2.5 px-4 py-2.5 rounded-2xl"
            style={{
              background: t.type === "ok" ? "rgba(16,185,129,0.18)" : "rgba(239,68,68,0.18)",
              border: `1px solid ${t.type === "ok" ? "rgba(16,185,129,0.35)" : "rgba(239,68,68,0.35)"}`,
              backdropFilter: "blur(20px)",
              boxShadow: "0 8px 32px rgba(0,0,0,0.50)",
            }}>
            {t.type === "ok"
              ? <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" />
              : <X className="w-4 h-4 text-red-400 shrink-0" />}
            <span className="text-[12.5px] font-bold text-white/90 font-['Cairo']">{t.text}</span>
          </motion.div>
        ))}
      </AnimatePresence>
    </div>,
    document.body
  );
}

/* ──────────────── ConfirmSheet ──────────────── */
interface ConfirmProps {
  open: boolean; title: string; desc?: string;
  confirmLabel?: string; cancelLabel?: string;
  danger?: boolean; onConfirm: () => void; onCancel: () => void;
}

function ConfirmSheet({ open, title, desc, confirmLabel = "تأكيد", cancelLabel = "إلغاء", danger = false, onConfirm, onCancel }: ConfirmProps) {
  if (!open) return null;
  return ReactDOM.createPortal(
    <div className="fixed inset-0 z-[9999] flex flex-col justify-end" style={{ direction: "rtl" }}>
      <motion.div className="absolute inset-0"
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        style={{ background: "rgba(0,0,0,0.76)", backdropFilter: "blur(8px)" }}
        onPointerDown={onCancel} />
      <motion.div
        initial={{ y: "100%", opacity: 0 }} animate={{ y: 0, opacity: 1 }}
        exit={{ y: "100%", opacity: 0 }}
        transition={{ type: "spring", stiffness: 440, damping: 38 }}
        onPointerDown={e => e.stopPropagation()}
        style={{
          position: "relative",
          background: "linear-gradient(180deg, #0E0C1A 0%, #09090B 100%)",
          borderRadius: "2rem 2rem 0 0",
          border: "1.5px solid rgba(255,255,255,0.07)",
          borderBottom: "none",
          boxShadow: "0 -32px 80px rgba(0,0,0,0.90)",
          paddingBottom: "max(24px, env(safe-area-inset-bottom))",
        }}>
        <div className="h-[2px]" style={{ background: danger ? "linear-gradient(90deg,transparent,#ef4444,transparent)" : "linear-gradient(90deg,transparent,#7C3AED,#A78BFA,#7C3AED,transparent)" }} />
        <div className="flex justify-center pt-3 pb-4"><div className="w-10 h-[3.5px] rounded-full bg-white/12" /></div>
        <div className="px-6 pb-2">
          <p className="text-[17px] font-black text-white/90 font-['Cairo'] text-center mb-2">{title}</p>
          {desc && <p className="text-[12px] text-white/40 font-['Cairo'] text-center leading-relaxed mb-5">{desc}</p>}
          <div className="flex gap-3">
            <button onPointerDown={onCancel}
              className="flex-1 py-3.5 rounded-2xl text-[13px] font-black font-['Cairo'] transition-all active:scale-95"
              style={{ background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.55)", border: "1px solid rgba(255,255,255,0.08)" }}>
              {cancelLabel}
            </button>
            <button onPointerDown={() => { onConfirm(); onCancel(); }}
              className="flex-1 py-3.5 rounded-2xl text-[13px] font-black font-['Cairo'] transition-all active:scale-95"
              style={{
                background: danger ? "rgba(239,68,68,0.18)" : "linear-gradient(135deg,#7C3AED,#6D28D9)",
                color: danger ? "#fca5a5" : "white",
                border: danger ? "1px solid rgba(239,68,68,0.30)" : "1px solid rgba(139,92,246,0.30)",
                boxShadow: danger ? "none" : "0 6px 20px rgba(124,58,237,0.35)",
              }}>
              {confirmLabel}
            </button>
          </div>
        </div>
      </motion.div>
    </div>,
    document.body
  );
}

/* ──────────────── ReportSheet ──────────────── */
const REPORT_TYPES = [
  { id: "bug",        label: "خلل تقني",       icon: Bug,        color: "text-red-400",    bg: "bg-red-500/10",    border: "border-red-500/20"    },
  { id: "suggestion", label: "اقتراح",          icon: Lightbulb,  color: "text-amber-400",  bg: "bg-amber-500/10",  border: "border-amber-500/20"  },
  { id: "content",    label: "محتوى مفقود",     icon: Film,       color: "text-violet-400", bg: "bg-violet-500/10", border: "border-violet-500/20" },
  { id: "other",      label: "أخرى",            icon: MessageCircle, color: "text-sky-400", bg: "bg-sky-500/10",    border: "border-sky-500/20"    },
];

function ReportSheet({ open, onClose, userDisplayName }: { open: boolean; onClose: () => void; userDisplayName?: string }) {
  const [type,    setType]    = useState("bug");
  const [msg,     setMsg]     = useState("");
  const [status,  setStatus]  = useState<"idle" | "sending" | "ok" | "err">("idle");
  const [errMsg,  setErrMsg]  = useState("");
  const taRef = useRef<HTMLTextAreaElement>(null);

  useEffect(() => {
    if (open) { setType("bug"); setMsg(""); setStatus("idle"); setErrMsg(""); }
  }, [open]);

  if (!open) return null;

  const send = async () => {
    if (!msg.trim()) { taRef.current?.focus(); return; }
    setStatus("sending");
    try {
      const r = await fetch(API_BASE + "/api/report", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          type,
          message: msg.trim(),
          page: location.pathname,
          userDisplayName: userDisplayName || undefined,
        }),
      });
      const d = await r.json() as { ok: boolean; error?: string };
      if (d.ok) { setStatus("ok"); }
      else { setErrMsg(d.error || "فشل الإرسال"); setStatus("err"); }
    } catch {
      setErrMsg("تعذّر الاتصال بالخادم"); setStatus("err");
    }
  };

  return ReactDOM.createPortal(
    <div className="fixed inset-0 z-[9999] flex flex-col justify-end" style={{ direction: "rtl" }}>
      <motion.div className="absolute inset-0"
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        style={{ background: "rgba(0,0,0,0.80)", backdropFilter: "blur(8px)" }}
        onPointerDown={onClose} />
      <motion.div
        initial={{ y: "100%", opacity: 0 }} animate={{ y: 0, opacity: 1 }}
        exit={{ y: "100%", opacity: 0 }}
        transition={{ type: "spring", stiffness: 400, damping: 36 }}
        onPointerDown={e => e.stopPropagation()}
        style={{
          position: "relative", zIndex: 1,
          background: "linear-gradient(180deg,#0E0C1A 0%,#09090B 100%)",
          borderRadius: "2rem 2rem 0 0",
          border: "1.5px solid rgba(255,255,255,0.08)", borderBottom: "none",
          boxShadow: "0 -32px 80px rgba(0,0,0,0.90)",
          paddingBottom: "max(28px,env(safe-area-inset-bottom))",
          maxHeight: "92dvh", display: "flex", flexDirection: "column",
        }}>

        {/* top gradient bar */}
        <div className="h-[2px] shrink-0" style={{ background: "linear-gradient(90deg,transparent,#7C3AED,#A78BFA,#7C3AED,transparent)", borderRadius: "2rem 2rem 0 0" }} />
        <div className="flex justify-center pt-3 pb-1 shrink-0"><div className="w-10 h-[3.5px] rounded-full bg-white/12" /></div>

        {/* header */}
        <div className="flex items-center justify-between px-5 py-3 shrink-0">
          <button onPointerDown={onClose}
            className="w-9 h-9 flex items-center justify-center rounded-xl active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.09)" }}>
            <X className="w-4 h-4 text-white/50" />
          </button>
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-xl flex items-center justify-center"
              style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)" }}>
              <AlertCircle className="w-4 h-4 text-violet-300" />
            </div>
            <span className="text-[16px] font-black font-['Cairo']">التواصل معنا</span>
          </div>
          <div className="w-9" />
        </div>

        {/* scrollable body */}
        <div className="flex-1 overflow-y-auto px-5 pb-4">
          <AnimatePresence mode="wait">
            {status === "ok" ? (
              /* ── success state ── */
              <motion.div key="ok"
                initial={{ opacity: 0, scale: 0.88 }} animate={{ opacity: 1, scale: 1 }}
                className="flex flex-col items-center justify-center gap-4 py-10 text-center">
                <div className="w-20 h-20 rounded-full flex items-center justify-center"
                  style={{ background: "rgba(16,185,129,0.14)", border: "2px solid rgba(16,185,129,0.35)" }}>
                  <CheckCircle2 className="w-10 h-10 text-emerald-400" />
                </div>
                <div>
                  <p className="text-[18px] font-black font-['Cairo'] text-white/90 mb-1">تم الإرسال! 🎉</p>
                  <p className="text-[12px] text-white/40 font-['Cairo'] leading-relaxed">
                    وصلت رسالتك بنجاح · سنرد عليك في أقرب وقت عبر تيليجرام
                  </p>
                </div>
                <button onPointerDown={onClose}
                  className="mt-2 px-8 py-3 rounded-2xl text-[13px] font-black font-['Cairo'] text-white active:scale-95 transition-transform"
                  style={{ background: "linear-gradient(135deg,#7C3AED,#6D28D9)", boxShadow: "0 6px 20px rgba(124,58,237,0.35)" }}>
                  حسناً
                </button>
              </motion.div>
            ) : (
              /* ── form state ── */
              <motion.div key="form" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-5 pt-1">

                {/* type selector */}
                <div>
                  <p className="text-[11px] font-black text-white/35 font-['Cairo'] mb-2.5 tracking-wide">نوع الرسالة</p>
                  <div className="grid grid-cols-2 gap-2">
                    {REPORT_TYPES.map(t => {
                      const Icon = t.icon;
                      const sel  = type === t.id;
                      return (
                        <button key={t.id} onPointerDown={() => setType(t.id)}
                          className={`flex items-center gap-2.5 px-3.5 py-2.5 rounded-xl transition-all active:scale-95 ${t.bg} ${t.border} border`}
                          style={sel ? { boxShadow: "0 0 0 1.5px rgba(139,92,246,0.55)", background: "rgba(139,92,246,0.14)" } : {}}>
                          <Icon className={`w-3.5 h-3.5 shrink-0 ${sel ? "text-violet-300" : t.color}`} />
                          <span className={`text-[12px] font-bold font-['Cairo'] ${sel ? "text-violet-200" : "text-white/70"}`}>{t.label}</span>
                          {sel && <div className="mr-auto w-1.5 h-1.5 rounded-full bg-violet-400" />}
                        </button>
                      );
                    })}
                  </div>
                </div>

                {/* message textarea */}
                <div>
                  <p className="text-[11px] font-black text-white/35 font-['Cairo'] mb-2 tracking-wide">رسالتك</p>
                  <textarea
                    ref={taRef}
                    value={msg} onChange={e => setMsg(e.target.value)}
                    placeholder={
                      type === "bug"        ? "صف المشكلة التي واجهتها بالتفصيل…" :
                      type === "suggestion" ? "شاركنا اقتراحك أو فكرتك…" :
                      type === "content"    ? "اذكر اسم الأنمي أو الحلقة المفقودة…" :
                                             "اكتب رسالتك هنا…"
                    }
                    rows={5}
                    className="w-full rounded-2xl px-4 py-3.5 text-[13px] font-['Cairo'] text-white/85 placeholder-white/20 resize-none outline-none transition-all"
                    style={{
                      background: "rgba(255,255,255,0.04)",
                      border: msg.trim() ? "1.5px solid rgba(139,92,246,0.40)" : "1.5px solid rgba(255,255,255,0.08)",
                      lineHeight: "1.8",
                    }}
                  />
                  <div className="flex justify-between mt-1.5">
                    <span className={`text-[10px] font-['Cairo'] ${msg.length > 900 ? "text-red-400/60" : "text-white/20"}`}>{msg.length}/1000</span>
                    {msg.trim().length === 0 && (
                      <span className="text-[10px] text-white/20 font-['Cairo']">مطلوب</span>
                    )}
                  </div>
                </div>

                {/* error msg */}
                {status === "err" && (
                  <div className="flex items-center gap-2.5 px-3.5 py-2.5 rounded-xl"
                    style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.25)" }}>
                    <X className="w-3.5 h-3.5 text-red-400 shrink-0" />
                    <span className="text-[12px] text-red-300/80 font-['Cairo']">{errMsg}</span>
                  </div>
                )}

                {/* send button */}
                <button
                  onPointerDown={send}
                  disabled={status === "sending" || !msg.trim()}
                  className="w-full py-4 rounded-2xl text-[14px] font-black font-['Cairo'] text-white flex items-center justify-center gap-2.5 transition-all active:scale-[0.98]"
                  style={{
                    background: msg.trim() ? "linear-gradient(135deg,#7C3AED,#6D28D9)" : "rgba(255,255,255,0.05)",
                    color: msg.trim() ? "white" : "rgba(255,255,255,0.25)",
                    boxShadow: msg.trim() ? "0 6px 24px rgba(124,58,237,0.40)" : "none",
                    border: msg.trim() ? "1px solid rgba(139,92,246,0.35)" : "1px solid rgba(255,255,255,0.06)",
                  }}>
                  {status === "sending" ? (
                    <>
                      <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                      <span>جاري الإرسال…</span>
                    </>
                  ) : (
                    <>
                      <Send className="w-4 h-4" />
                      <span>إرسال الرسالة</span>
                    </>
                  )}
                </button>

                <p className="text-center text-[10px] text-white/18 font-['Cairo'] pb-1">
                  سيتم إرسال رسالتك مباشرة عبر تيليجرام
                </p>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      </motion.div>
    </div>,
    document.body
  );
}

/* ──────────────── Toggle switch ──────────────── */
function Toggle({ on, onChange }: { on: boolean; onChange: (v: boolean) => void }) {
  return (
    <motion.button onClick={(e) => { e.stopPropagation(); onChange(!on); }}
      className="relative shrink-0 rounded-full transition-colors duration-250"
      style={{
        width: 48, height: 28,
        background: on ? "linear-gradient(135deg,#8B5CF6,#7C3AED)" : "rgba(255,255,255,0.10)",
        boxShadow: on ? "0 0 14px rgba(139,92,246,0.50)" : "none",
        border: on ? "1px solid rgba(139,92,246,0.45)" : "1px solid rgba(255,255,255,0.10)",
      }}>
      <motion.div animate={{ x: on ? 22 : 2 }} transition={{ type: "spring", stiffness: 500, damping: 32 }}
        className="absolute top-[3px] w-[22px] h-[22px] bg-white rounded-full"
        style={{ boxShadow: on ? "0 2px 8px rgba(0,0,0,0.45)" : "0 1px 4px rgba(0,0,0,0.30)" }} />
    </motion.button>
  );
}

/* ──────────────── Section header ──────────────── */
function SectionHeader({ title, icon }: { title: string; icon?: string }) {
  return (
    <div className="px-5 pt-7 pb-3">
      <div className="flex items-center gap-2.5">
        <div className="h-px flex-1 bg-white/6" />
        <span className="text-[10px] font-black text-white/30 tracking-[0.15em] uppercase font-['Cairo'] flex items-center gap-1">
          {icon && <span>{icon}</span>}{title}
        </span>
        <div className="h-px flex-1 bg-white/6" />
      </div>
    </div>
  );
}

/* ──────────────── Toggle row ──────────────── */
function ToggleRow({
  icon: Icon, iconColor = "text-primary", iconBg = "bg-primary/12",
  label, sub, on, onChange, badge,
}: {
  icon: any; iconColor?: string; iconBg?: string;
  label: string; sub?: string; on: boolean; onChange: (v: boolean) => void; badge?: string;
}) {
  return (
    <div onClick={() => onChange(!on)} role="button"
      className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-white/3 cursor-pointer select-none">
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
        <Icon className={`w-4 h-4 ${iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <div className="flex items-center gap-2 justify-end">
          <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">{label}</p>
          {badge && <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md" style={{ background: "rgba(139,92,246,0.18)", color: "#a78bfa", border: "1px solid rgba(139,92,246,0.25)" }}>{badge}</span>}
        </div>
        {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      <Toggle on={on} onChange={onChange} />
    </div>
  );
}

/* ──────────────── Card container ──────────────── */
function Card({ children }: { children: React.ReactNode }) {
  return (
    <div className="mx-4 rounded-2xl divide-y divide-white/[0.045]"
      style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.06)" }}>
      {children}
    </div>
  );
}

/* ──────────────── Danger row ──────────────── */
function DangerRow({ label, sub, onClick }: { label: string; sub?: string; onClick: () => void }) {
  return (
    <button onClick={onClick}
      className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-red-500/5 active:scale-[0.99]">
      <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-red-500/10 border-red-500/20">
        <Trash2 className="w-4 h-4 text-red-400" />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[13.5px] font-bold font-['Cairo'] text-red-400/85">{label}</p>
        {sub && <p className="text-[10px] text-red-400/30 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      <ChevronLeft className="w-4 h-4 text-red-400/25 shrink-0" />
    </button>
  );
}

/* ──────────────── Nav row ──────────────── */
function NavRow({ icon: Icon, iconColor, iconBg, label, sub, href, badge }: {
  icon: any; iconColor: string; iconBg: string; label: string; sub?: string; href: string; badge?: string;
}) {
  return (
    <Link href={href}>
      <div className="flex items-center gap-3.5 px-5 py-3.5 hover:bg-white/3 cursor-pointer transition-all active:scale-[0.99]">
        <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
          <Icon className={`w-4 h-4 ${iconColor}`} />
        </div>
        <div className="flex-1 min-w-0 text-right">
          <div className="flex items-center gap-2 justify-end">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">{label}</p>
            {badge && <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md" style={{ background: "rgba(139,92,246,0.18)", color: "#a78bfa", border: "1px solid rgba(139,92,246,0.25)" }}>{badge}</span>}
          </div>
          {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">{sub}</p>}
        </div>
        <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
      </div>
    </Link>
  );
}

/* ══════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════ */
export default function Settings() {
  const { user, signOut } = useAuth();
  const [, navigate] = useLocation();
  const [showAuth,   setShowAuth]   = useState(false);
  const [showReport, setShowReport] = useState(false);
  const [confirmState, setConfirmState] = useState<{
    open: boolean; title: string; desc?: string;
    confirmLabel?: string; danger?: boolean; onConfirm: () => void;
  }>({ open: false, title: "", onConfirm: () => {} });

  const openConfirm = useCallback((opts: Omit<typeof confirmState, "open">) => {
    setConfirmState({ ...opts, open: true });
  }, []);
  const closeConfirm = useCallback(() => {
    setConfirmState(p => ({ ...p, open: false }));
  }, []);

  /* ── Preferences ── */
  const [theme,  setTheme]  = useState(() => localStorage.getItem("pref-theme")  || "dark");
  const [notifs, setNotifs] = useState(() => localStorage.getItem("pref-notifs") !== "false");

  const setT = (t: string)  => { setTheme(t);  localStorage.setItem("pref-theme",  t); applyTheme(t); showToast("تم تغيير الثيم"); };
  const setN = (v: boolean) => { setNotifs(v); localStorage.setItem("pref-notifs", String(v)); showToast(v ? "تم تفعيل الإشعارات" : "تم إيقاف الإشعارات"); };

  /* ── Stats ── */
  const [stats, setStats] = useState({ hist: 0, saved: 0, cacheKb: 0 });
  useEffect(() => {
    const a = (() => { try { return JSON.parse(localStorage.getItem("watch-history") || "[]").length; } catch { return 0; } })();
    const b = (() => { try { return JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length; } catch { return 0; } })();
    const saved = (() => { try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; } })();
    const cacheKb = (() => {
      try {
        let total = 0;
        for (let i = 0; i < localStorage.length; i++) {
          const k = localStorage.key(i) || "";
          total += k.length + (localStorage.getItem(k) || "").length;
        }
        return Math.round(total / 1024);
      } catch { return 0; }
    })();
    setStats({ hist: a + b, saved, cacheKb });
  }, []);

  const currentTheme = THEMES.find(t => t.id === theme) || THEMES[0];

  const displayName = user
    ? (user.displayName ||
       
       user.email?.split("@")[0] || "مستخدم Nova")
    : null;
  const username = user
    ? (user.username || `nova_${user.id?.slice(-5) || "user"}`)
    : null;

  return (
    <main className="min-h-screen text-white pb-32 font-['Cairo']"
      style={{ background: "var(--bg-base, #09090B)" }} dir="rtl">

      <ToastContainer />

      <div className="max-w-[500px] mx-auto">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 backdrop-blur-xl px-4 py-3.5 flex items-center gap-3"
        style={{ background: "rgba(9,9,11,0.92)", borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
        <Link href="/">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <div className="flex items-center gap-2.5 flex-1">
          <div className="w-8 h-8 rounded-xl flex items-center justify-center"
            style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)" }}>
            <SettingsIcon className="w-4 h-4 text-violet-300" />
          </div>
          <h1 className="text-[17px] font-black">الإعدادات</h1>
        </div>
        <div className="flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl"
          style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
          <div className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span className="text-[9px] text-white/30 font-bold">ANIME NOVA · v2.4</span>
        </div>
      </div>

      {/* ── Profile / Account card ── */}
      <div className="mx-4 mt-5">
        {user ? (
          <Link href="/profile">
            <motion.div whileTap={{ scale: 0.98 }}
              className="flex items-center gap-3.5 rounded-2xl p-4 cursor-pointer"
              style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.07)" }}>
              <div className="relative shrink-0">
                {user.profileImageUrl ? (
                  <img src={user.profileImageUrl} alt="" className="w-14 h-14 rounded-2xl object-cover"
                    style={{ border: "2px solid rgba(139,92,246,0.40)" }} />
                ) : (
                  <div className="w-14 h-14 rounded-2xl flex items-center justify-center text-violet-200 font-black text-2xl"
                    style={{ background: "linear-gradient(135deg,#7C3AED,#4C1D95)", border: "2px solid rgba(139,92,246,0.40)" }}>
                    {(displayName?.[0] || "؟").toUpperCase()}
                  </div>
                )}
                <div className="absolute -bottom-1 -left-1 w-4 h-4 rounded-full bg-emerald-400 border-2 border-[#111116]" />
              </div>
              <div className="flex-1 min-w-0">
                <p className="text-[14px] font-black text-white/95 truncate">{displayName}</p>
                <p className="text-[11px] text-white/40 mt-0.5">@{username}</p>
                <div className="flex items-center gap-1.5 mt-1">
                  <span className="text-[9px] bg-violet-500/20 text-violet-300 px-1.5 py-0.5 rounded-lg font-black">مجاني ∞</span>
                  <span className="text-[9px] text-white/25">·</span>
                  <span className="text-[9px] text-white/30 truncate max-w-[120px]">{user.email}</span>
                </div>
              </div>
              <div className="flex flex-col items-center gap-1.5">
                <ChevronLeft className="w-4 h-4 text-white/20" />
                <span className="text-[8px] text-white/20 font-bold">ملفي</span>
              </div>
            </motion.div>
          </Link>
        ) : (
          <motion.button whileTap={{ scale: 0.98 }} onClick={() => setShowAuth(true)}
            className="w-full flex items-center gap-3.5 rounded-2xl p-4"
            style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <div className="w-14 h-14 rounded-2xl flex items-center justify-center shrink-0"
              style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}>
              <User className="w-6 h-6 text-white/30" />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[14px] font-black text-white/80">تسجيل الدخول</p>
              <p className="text-[11px] text-white/35 mt-0.5">احفظ قائمتك ومتابعتك عبر الأجهزة</p>
            </div>
            <div className="flex items-center gap-1.5 px-3 py-2 rounded-xl"
              style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)" }}>
              <Sparkles className="w-3.5 h-3.5 text-violet-300" />
              <span className="text-[11px] font-black text-violet-300">دخول</span>
            </div>
          </motion.button>
        )}
      </div>

      {/* ── Stats row ── */}
      <div className="mx-4 mt-3 grid grid-cols-4 gap-2">
        {[
          { label: "مشاهَدة", val: stats.hist,            color: "text-violet-400", bg: "rgba(139,92,246,0.10)", href: "/library" },
          { label: "محفوظة",  val: stats.saved,           color: "text-pink-400",   bg: "rgba(236,72,153,0.10)", href: "/library" },
          { label: "الكاش",   val: `${stats.cacheKb}KB`, color: "text-cyan-400",   bg: "rgba(6,182,212,0.10)",  href: null },
          { label: "مجاني",   val: "∞",                   color: "text-emerald-400",bg: "rgba(16,185,129,0.10)", href: null },
        ].map(s => (
          <motion.div key={s.label} whileTap={{ scale: 0.93 }}
            onClick={() => s.href && navigate(s.href)}
            className="flex flex-col items-center gap-1 rounded-xl py-2.5 cursor-pointer"
            style={{ background: s.bg, border: "1px solid rgba(255,255,255,0.05)" }}>
            <span className={`text-base font-black ${s.color}`}>{s.val}</span>
            <span className="text-[9px] text-white/30 font-bold">{s.label}</span>
          </motion.div>
        ))}
      </div>

      {/* ══════ Nova Premium ══════ */}
      <div className="mx-4 mt-5">
        <Link href="/subscription">
          <motion.div whileTap={{ scale: 0.97 }}
            className="relative rounded-2xl p-4 overflow-hidden cursor-pointer"
            style={{
              background: "linear-gradient(135deg, rgba(251,191,36,0.14) 0%, rgba(245,158,11,0.09) 50%, rgba(217,119,6,0.14) 100%)",
              border: "1.5px solid rgba(251,191,36,0.32)",
              boxShadow: "0 8px 32px rgba(251,191,36,0.08)",
            }}>
            {/* Glow */}
            <div className="absolute inset-0 pointer-events-none"
              style={{ background: "radial-gradient(ellipse at 80% 40%, rgba(251,191,36,0.10) 0%, transparent 65%)" }} />

            <div className="flex items-center gap-3 relative">
              <div className="w-11 h-11 rounded-2xl flex items-center justify-center shrink-0"
                style={{ background: "rgba(251,191,36,0.20)", border: "1px solid rgba(251,191,36,0.38)" }}>
                <Crown className="w-5 h-5 text-amber-400" />
              </div>
              <div className="flex-1 min-w-0">
                <div className="flex items-center gap-2 mb-0.5">
                  <p className="text-[14px] font-black text-amber-300">Nova Premium ⭐</p>
                </div>
                <p className="text-[10px] text-amber-400/60">اشترك الآن · إزالة الإعلانات · مميزات حصرية</p>
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl shrink-0"
                style={{ background: "rgba(251,191,36,0.18)", border: "1px solid rgba(251,191,36,0.30)" }}>
                <span className="text-[11px] font-black text-amber-300">اشترك</span>
                <ChevronLeft className="w-3.5 h-3.5 text-amber-400" />
              </div>
            </div>

            <div className="flex gap-2 mt-3 relative">
              {["بدون إعلانات", "جودة أعلى", "تخطي المقدمة"].map(f => (
                <div key={f} className="flex-1 flex items-center justify-center gap-1 py-1.5 rounded-xl"
                  style={{ background: "rgba(251,191,36,0.10)", border: "1px solid rgba(251,191,36,0.16)" }}>
                  <Check className="w-2.5 h-2.5 text-amber-400 shrink-0" strokeWidth={3} />
                  <span className="text-[8px] font-black text-amber-300/70">{f}</span>
                </div>
              ))}
            </div>
          </motion.div>
        </Link>
      </div>

      {/* ══════ المظهر ══════ */}
      <SectionHeader title="المظهر" icon="🎨" />
      <Card>
        <div className="px-5 py-4">
          <div className="flex items-center gap-3 mb-4">
            <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0"
              style={{ background: `${currentTheme.dot}22`, border: "1px solid rgba(255,255,255,0.08)" }}>
              <Palette className="w-4 h-4" style={{ color: currentTheme.dot }} />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13.5px] font-bold text-white/85">ثيم التطبيق</p>
              <p className="text-[10px] text-white/30 mt-0.5">الثيم الحالي: {currentTheme.label} · {currentTheme.desc}</p>
            </div>
          </div>
          <div className="grid grid-cols-5 gap-2">
            {THEMES.map(t => {
              const active = theme === t.id;
              return (
                <motion.button key={t.id} whileTap={{ scale: 0.85 }} onClick={() => setT(t.id)}
                  className="flex flex-col items-center gap-1.5 py-3 rounded-2xl transition-all border"
                  style={{
                    background: active ? `${t.dot}18` : "rgba(255,255,255,0.03)",
                    borderColor: active ? `${t.dot}60` : "rgba(255,255,255,0.06)",
                    boxShadow: active ? `0 0 16px ${t.dot}30` : "none",
                  }}>
                  <div className="relative rounded-full"
                    style={{ width: 28, height: 28, background: t.dot, boxShadow: active ? `0 0 14px ${t.dot}90` : "none" }}>
                    {active && (
                      <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ type: "spring", stiffness: 400, damping: 20 }}
                        className="absolute inset-0 flex items-center justify-center rounded-full"
                        style={{ background: "rgba(0,0,0,0.35)" }}>
                        <Check className="w-3 h-3 text-white" strokeWidth={3} />
                      </motion.div>
                    )}
                  </div>
                  <span className="text-[9px] font-black leading-tight text-center"
                    style={{ color: active ? t.dot : "rgba(255,255,255,0.30)" }}>{t.label}</span>
                </motion.button>
              );
            })}
          </div>
        </div>
      </Card>

      {/* ══════ الإشعارات ══════ */}
      <SectionHeader title="الإشعارات" icon="🔔" />
      <Card>
        <ToggleRow
          icon={notifs ? Bell : BellOff}
          iconColor={notifs ? "text-amber-400" : "text-white/30"}
          iconBg={notifs ? "bg-amber-500/10" : "bg-white/5"}
          label="إشعارات الحلقات الجديدة"
          sub={notifs ? "مفعّلة · ستصلك تنبيهات عند نزول حلقات جديدة" : "موقفة · لن تصلك أي تنبيهات"}
          on={notifs} onChange={setN}
        />
      </Card>

      {/* ══════ الحساب ══════ */}
      {user && (
        <>
          <SectionHeader title="الحساب" icon="👤" />
          <Card>
            <NavRow
              icon={UserCircle} iconColor="text-violet-400" iconBg="bg-violet-500/10"
              label="تعديل الملف الشخصي"
              sub="الاسم · اليوزر نيم · الصورة"
              href="/profile"
            />
            <button
              onClick={() => openConfirm({
                title: "تسجيل الخروج",
                desc: "هل أنت متأكد أنك تريد تسجيل الخروج من حسابك؟",
                confirmLabel: "خروج",
                danger: true,
                onConfirm: async () => { await signOut(); navigate("/"); },
              })}
              className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-red-500/5 active:scale-[0.99]">
              <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-red-500/10 border-red-500/20">
                <LogOut className="w-4 h-4 text-red-400" />
              </div>
              <div className="flex-1 text-right">
                <p className="text-[13.5px] font-bold font-['Cairo'] text-red-400/85">تسجيل الخروج</p>
                <p className="text-[10px] text-red-400/30 font-['Cairo'] mt-0.5">{user.email}</p>
              </div>
              <ChevronLeft className="w-4 h-4 text-red-400/25 shrink-0" />
            </button>
          </Card>
        </>
      )}

      {/* ══════ عن التطبيق ══════ */}
      <SectionHeader title="عن التطبيق" icon="ℹ️" />
      <Card>
        <div className="flex items-center gap-3.5 px-5 py-3.5">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-violet-500/10 border-white/8">
            <Smartphone className="w-4 h-4 text-violet-400" />
          </div>
          <div className="flex-1 min-w-0 text-right">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">إصدار التطبيق</p>
            <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">ANIME NOVA · تطبيق بث الأنمي العربي</p>
          </div>
          <span className="text-[12px] font-black text-primary shrink-0">v2.4.0</span>
        </div>

        <Link href="/updates">
          <div className="flex items-center gap-3.5 px-5 py-3.5 hover:bg-white/3 cursor-pointer transition-all active:scale-[0.99]">
            <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-amber-500/10 border-white/8">
              <Zap className="w-4 h-4 text-amber-400" />
            </div>
            <div className="flex-1 min-w-0 text-right">
              <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">سجل التحديثات</p>
              <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">آخر الميزات والإصلاحات</p>
            </div>
            <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
          </div>
        </Link>

        <div className="flex items-center gap-3.5 px-5 py-3.5">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-teal-500/10 border-white/8">
            <Shield className="w-4 h-4 text-teal-400" />
          </div>
          <div className="flex-1 min-w-0 text-right">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">الخصوصية والأمان</p>
            <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">لا نجمع بيانات · بدون إعلانات · مجاني للجميع</p>
          </div>
        </div>

        <button
          onClick={() => setShowReport(true)}
          className="w-full flex items-center gap-3.5 px-5 py-3.5 hover:bg-white/3 transition-all active:scale-[0.99]">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-sky-500/10 border-white/8">
            <AlertCircle className="w-4 h-4 text-sky-400" />
          </div>
          <div className="flex-1 text-right">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">الإبلاغ عن مشكلة</p>
            <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">أخبرنا إذا واجهت أي خلل · يصلنا مباشرة</p>
          </div>
          <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
        </button>

        <button
          onClick={() => setShowReport(true)}
          className="w-full flex items-center gap-3.5 px-5 py-3.5 hover:bg-white/3 transition-all active:scale-[0.99]">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-pink-500/10 border-white/8">
            <MessageCircle className="w-4 h-4 text-pink-400" />
          </div>
          <div className="flex-1 text-right">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">تواصل معنا</p>
            <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">اقتراحات · شراكات · مساعدة · يصلنا فوراً</p>
          </div>
          <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
        </button>

        <button
          onClick={() => window.open("https://t.me/Anime_NOVA_0", "_blank")}
          className="w-full flex items-center gap-3.5 px-5 py-3.5 hover:bg-white/3 transition-all active:scale-[0.99]">
          <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-teal-500/10 border-white/8">
            <Smartphone className="w-4 h-4 text-teal-400" />
          </div>
          <div className="flex-1 text-right">
            <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">مجموعتنا الرسمية</p>
            <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">انضم لقروب تيليجرام الرسمي</p>
          </div>
          <ExternalLink className="w-4 h-4 text-white/20 shrink-0" />
        </button>

      </Card>

      {/* ══════ البيانات والكاش ══════ */}
      <SectionHeader title="البيانات والكاش" icon="🗑️" />
      <Card>
        <DangerRow
          label="مسح سجل المشاهدة"
          sub={`${stats.hist} حلقة مشاهَدة · لا يمكن التراجع`}
          onClick={() => openConfirm({
            title: "مسح سجل المشاهدة",
            desc: `سيتم حذف ${stats.hist} حلقة من سجل مشاهدتك بشكل نهائي.`,
            confirmLabel: "امسح السجل",
            danger: true,
            onConfirm: () => {
              localStorage.removeItem("watch-history");
              localStorage.removeItem("anim-watch-history");
              setStats(p => ({ ...p, hist: 0 }));
              showToast("تم مسح سجل المشاهدة");
            },
          })}
        />
        <DangerRow
          label="مسح قائمة المحفوظات"
          sub={`${stats.saved} أنمي محفوظ · لا يمكن التراجع`}
          onClick={() => openConfirm({
            title: "مسح المحفوظات",
            desc: `سيتم حذف ${stats.saved} أنمي من مفضّلتك بشكل نهائي.`,
            confirmLabel: "امسح المفضّلة",
            danger: true,
            onConfirm: () => {
              localStorage.removeItem("savedAnime");
              setStats(p => ({ ...p, saved: 0 }));
              showToast("تم مسح قائمة المحفوظات");
            },
          })}
        />
        <DangerRow
          label="مسح الكاش والإعدادات"
          sub={`${stats.cacheKb}KB مُخزَّن · يعيد التطبيق للحالة الأولية`}
          onClick={() => openConfirm({
            title: "إعادة تعيين التطبيق",
            desc: "سيتم مسح جميع الإعدادات والبيانات المحفوظة. ستحتاج لإعادة الضبط.",
            confirmLabel: "إعادة التعيين",
            danger: true,
            onConfirm: () => {
              localStorage.clear();
              window.location.reload();
            },
          })}
        />
      </Card>

      {/* ══════ إخلاء المسؤولية ══════ */}
      <div className="mx-4 mb-4">
        <div className="rounded-2xl overflow-hidden p-5 text-right"
          style={{ background: "rgba(139,92,246,0.06)", border: "1px solid rgba(139,92,246,0.15)" }}>
          <div className="flex items-start gap-3 mb-3">
            <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0 mt-0.5"
              style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.25)" }}>
              <Shield className="w-4 h-4 text-violet-400" />
            </div>
            <p className="text-[12px] font-black text-violet-300 tracking-wide">إخلاء المسؤولية</p>
          </div>
          <p className="text-[11px] leading-6 text-white/50 font-['Cairo']">
            هذا التطبيق لا يقوم باستضافة أو رفع أي محتوى مرئي.<br />
            جميع المحتويات المعروضة يتم توفيرها من مصادر خارجية متاحة على الإنترنت.<br />
            نحن لا نمتلك حقوق أي من المواد المعروضة، وجميع الحقوق محفوظة لأصحابها الأصليين.<br />
            إذا كنت تملك حقوق أي محتوى وترغب في إزالته، يرجى التواصل معنا ليتم اتخاذ الإجراء المناسب.
          </p>
        </div>
      </div>

      {/* Footer — Logo */}
      <div className="text-center pt-6 pb-6 px-6 flex flex-col items-center gap-3">
        <div className="relative">
          <img
            src="/logo.jpg"
            alt="Anime NOVA"
            className="w-20 h-20 rounded-2xl object-cover"
            style={{ boxShadow: "0 0 32px rgba(139,92,246,0.45), 0 0 8px rgba(139,92,246,0.2)" }}
          />
        </div>
        <div className="flex items-center gap-[3px]" dir="ltr">
          <span className="text-[16px] font-black text-white/80" style={{ fontFamily: "'Cairo',sans-serif", letterSpacing: "0.06em" }}>ANIME</span>
          <span className="text-[16px] font-black"
            style={{ fontFamily: "'Cairo',sans-serif", letterSpacing: "0.06em", background: "linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>
            NOVA
          </span>
        </div>
        <p className="text-[9px] text-white/20">v2.4.0 · مجاني للجميع · 2025</p>
      </div>

      {/* Confirm dialog */}
      <AnimatePresence>
        {confirmState.open && (
          <ConfirmSheet
            open={confirmState.open}
            title={confirmState.title}
            desc={confirmState.desc}
            confirmLabel={confirmState.confirmLabel}
            danger={confirmState.danger}
            onConfirm={confirmState.onConfirm}
            onCancel={closeConfirm}
          />
        )}
      </AnimatePresence>

      <AnimatePresence>
        {showAuth && <AuthModal onClose={() => setShowAuth(false)} />}
      </AnimatePresence>

      <AnimatePresence>
        {showReport && (
          <ReportSheet
            open={showReport}
            onClose={() => setShowReport(false)}
            userDisplayName={displayName || undefined}
          />
        )}
      </AnimatePresence>

      </div>{/* max-w wrapper */}
    </main>
  );
}

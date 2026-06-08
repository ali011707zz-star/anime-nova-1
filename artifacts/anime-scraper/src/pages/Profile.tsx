import { useState, useRef, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  ChevronRight, Camera, Check, X, Edit2, User, Mail,
  AtSign, LogOut, Star, Clock, BookMarked, Shield,
} from "lucide-react";
import { Link, useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";

/* ─── Avatar generator (gradient initials) ─── */
function getInitials(name: string) {
  return name
    .split(" ")
    .map(w => w[0])
    .slice(0, 2)
    .join("")
    .toUpperCase() || "؟";
}

const AVATAR_GRADIENTS = [
  "linear-gradient(135deg,#7C3AED,#4C1D95)",
  "linear-gradient(135deg,#2563EB,#1E3A8A)",
  "linear-gradient(135deg,#DB2777,#831843)",
  "linear-gradient(135deg,#059669,#064E3B)",
  "linear-gradient(135deg,#D97706,#78350F)",
];

function getGradient(id: string) {
  let hash = 0;
  for (let i = 0; i < id.length; i++) hash = id.charCodeAt(i) + ((hash << 5) - hash);
  return AVATAR_GRADIENTS[Math.abs(hash) % AVATAR_GRADIENTS.length];
}

/* ─── Editable field ─── */
function EditableField({
  icon: Icon, iconColor, iconBg, label, value, placeholder, onSave,
}: {
  icon: any; iconColor: string; iconBg: string;
  label: string; value: string; placeholder: string;
  onSave: (v: string) => void;
}) {
  const [editing, setEditing] = useState(false);
  const [draft, setDraft] = useState(value);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (editing) inputRef.current?.focus();
  }, [editing]);

  function save() {
    const trimmed = draft.trim();
    if (trimmed) onSave(trimmed);
    setEditing(false);
  }

  return (
    <div className="flex items-center gap-3.5 px-5 py-3.5"
      style={{ borderBottom: "1px solid rgba(255,255,255,0.045)" }}>
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
        <Icon className={`w-4 h-4 ${iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[10px] text-white/30 font-['Cairo'] mb-0.5">{label}</p>
        {editing ? (
          <input
            ref={inputRef}
            value={draft}
            onChange={e => setDraft(e.target.value)}
            onKeyDown={e => { if (e.key === "Enter") save(); if (e.key === "Escape") setEditing(false); }}
            className="w-full bg-transparent text-white text-[13.5px] font-bold font-['Cairo'] outline-none border-b border-violet-400/60 pb-0.5"
            placeholder={placeholder}
          />
        ) : (
          <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85 truncate">{value || placeholder}</p>
        )}
      </div>
      {editing ? (
        <div className="flex items-center gap-1.5 shrink-0">
          <button onClick={save}
            className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(139,92,246,0.25)", border: "1px solid rgba(139,92,246,0.40)" }}>
            <Check className="w-3.5 h-3.5 text-violet-300" />
          </button>
          <button onClick={() => { setDraft(value); setEditing(false); }}
            className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.10)" }}>
            <X className="w-3.5 h-3.5 text-white/40" />
          </button>
        </div>
      ) : (
        <button onClick={() => setEditing(true)}
          className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
          <Edit2 className="w-3.5 h-3.5 text-white/35" />
        </button>
      )}
    </div>
  );
}

/* ─── Static info row ─── */
function InfoRow({ icon: Icon, iconColor, iconBg, label, value }: {
  icon: any; iconColor: string; iconBg: string; label: string; value: string;
}) {
  return (
    <div className="flex items-center gap-3.5 px-5 py-3.5"
      style={{ borderBottom: "1px solid rgba(255,255,255,0.045)" }}>
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
        <Icon className={`w-4 h-4 ${iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[10px] text-white/30 font-['Cairo'] mb-0.5">{label}</p>
        <p className="text-[13.5px] font-bold font-['Cairo'] text-white/70 truncate">{value}</p>
      </div>
    </div>
  );
}

/* ══════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════ */
export default function Profile() {
  const { user, signOut } = useAuth();
  const [, navigate] = useLocation();

  const [displayName, setDisplayName] = useState(() =>
    localStorage.getItem("profile-displayname") ||
    (user ? [user.firstName, user.lastName].filter(Boolean).join(" ") : "") ||
    ""
  );
  const [username, setUsername] = useState(() =>
    localStorage.getItem("profile-username") ||
    (user ? `nova_${user.id?.slice(-5) || "user"}` : "")
  );
  const [customPhoto, setCustomPhoto] = useState<string | null>(() =>
    localStorage.getItem("profile-photo") || null
  );
  const [saved, setSaved] = useState(false);
  const fileRef = useRef<HTMLInputElement>(null);

  const histCount = (() => {
    try {
      return JSON.parse(localStorage.getItem("watch-history") || "[]").length +
             JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length;
    } catch { return 0; }
  })();
  const savedCount = (() => {
    try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; }
  })();

  if (!user) {
    return (
      <main className="min-h-screen text-white pb-32 font-['Cairo'] flex flex-col items-center justify-center gap-6"
        style={{ background: "var(--bg-base, #09090B)" }} dir="rtl">
        <div className="w-20 h-20 rounded-full flex items-center justify-center"
          style={{ background: "rgba(139,92,246,0.12)", border: "2px solid rgba(139,92,246,0.25)" }}>
          <User className="w-9 h-9 text-violet-400" />
        </div>
        <div className="text-center">
          <p className="text-lg font-black text-white/85">لم تسجّل دخولك بعد</p>
          <p className="text-sm text-white/35 mt-1.5">سجّل دخولك لتفعيل ملفك الشخصي</p>
        </div>
        <a href="/api/login"
          className="flex items-center gap-2 px-6 py-3 rounded-2xl font-black text-sm text-white"
          style={{ background: "linear-gradient(135deg,#7C3AED,#4C1D95)" }}>
          تسجيل الدخول
        </a>
        <Link href="/settings">
          <button className="text-white/35 text-sm font-bold">← العودة</button>
        </Link>
      </main>
    );
  }

  const avatarUrl = customPhoto || user.profileImageUrl || null;
  const gradient = getGradient(user.id || "nova");
  const initials = getInitials(displayName || user.email || "N");
  const fullName = [user.firstName, user.lastName].filter(Boolean).join(" ") || "—";

  function handlePhoto(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = ev => {
      const b64 = ev.target?.result as string;
      setCustomPhoto(b64);
      localStorage.setItem("profile-photo", b64);
    };
    reader.readAsDataURL(file);
  }

  function saveName(v: string) {
    setDisplayName(v);
    localStorage.setItem("profile-displayname", v);
    setSaved(true);
    setTimeout(() => setSaved(false), 2000);
  }

  function saveUsername(v: string) {
    const cleaned = v.replace(/[^a-zA-Z0-9_\u0600-\u06FF]/g, "").slice(0, 20);
    setUsername(cleaned || v);
    localStorage.setItem("profile-username", cleaned || v);
    setSaved(true);
    setTimeout(() => setSaved(false), 2000);
  }

  return (
    <main className="min-h-screen text-white pb-32 font-['Cairo']"
      style={{ background: "var(--bg-base, #09090B)" }} dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 backdrop-blur-xl px-4 py-3.5 flex items-center gap-3"
        style={{ background: "rgba(9,9,11,0.92)", borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
        <Link href="/settings">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <h1 className="flex-1 text-[17px] font-black">الملف الشخصي</h1>
        <AnimatePresence>
          {saved && (
            <motion.div
              initial={{ opacity: 0, scale: 0.85 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.85 }}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
              style={{ background: "rgba(16,185,129,0.18)", border: "1px solid rgba(16,185,129,0.30)" }}>
              <Check className="w-3 h-3 text-emerald-400" />
              <span className="text-[11px] font-black text-emerald-400">تم الحفظ</span>
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      {/* ── Avatar section ── */}
      <div className="flex flex-col items-center gap-4 pt-8 pb-6 px-4">
        <div className="relative">
          {avatarUrl ? (
            <img src={avatarUrl} alt="" className="w-24 h-24 rounded-3xl object-cover"
              style={{ border: "3px solid rgba(139,92,246,0.50)", boxShadow: "0 0 32px rgba(139,92,246,0.30)" }} />
          ) : (
            <div className="w-24 h-24 rounded-3xl flex items-center justify-center text-white font-black text-3xl"
              style={{ background: gradient, border: "3px solid rgba(139,92,246,0.50)", boxShadow: "0 0 32px rgba(139,92,246,0.30)" }}>
              {initials}
            </div>
          )}
          {/* Camera button */}
          <button onClick={() => fileRef.current?.click()}
            className="absolute -bottom-2 -left-2 w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4C1D95)", border: "2px solid rgba(9,9,11,0.90)", boxShadow: "0 4px 16px rgba(124,58,237,0.50)" }}>
            <Camera className="w-4 h-4 text-white" />
          </button>
          <input ref={fileRef} type="file" accept="image/*" className="hidden" onChange={handlePhoto} />
        </div>

        <div className="text-center">
          <p className="text-[18px] font-black text-white/95">{displayName || fullName || "مستخدم Nova"}</p>
          <p className="text-[13px] text-white/40 mt-0.5">@{username}</p>
        </div>

        {/* Stats pills */}
        <div className="flex gap-3">
          {[
            { label: "مشاهَدة", val: histCount,  color: "#A78BFA", bg: "rgba(139,92,246,0.12)" },
            { label: "محفوظة",  val: savedCount, color: "#F472B6", bg: "rgba(236,72,153,0.12)" },
          ].map(s => (
            <div key={s.label} className="flex flex-col items-center gap-0.5 px-6 py-3 rounded-2xl"
              style={{ background: s.bg, border: "1px solid rgba(255,255,255,0.07)" }}>
              <span className="text-xl font-black" style={{ color: s.color }}>{s.val}</span>
              <span className="text-[10px] text-white/35 font-bold">{s.label}</span>
            </div>
          ))}
        </div>
      </div>

      {/* ── Edit section ── */}
      <div className="px-4 mb-2">
        <p className="text-[10px] font-black text-white/25 tracking-[0.15em] px-1 mb-3">✏️ تعديل المعلومات</p>
      </div>
      <div className="mx-4 rounded-2xl overflow-hidden"
        style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.06)" }}>
        <EditableField
          icon={User} iconColor="text-violet-400" iconBg="bg-violet-500/10"
          label="الاسم المعروض" value={displayName} placeholder="اكتب اسمك"
          onSave={saveName}
        />
        <EditableField
          icon={AtSign} iconColor="text-blue-400" iconBg="bg-blue-500/10"
          label="اسم المستخدم (يوزر نيم)" value={username} placeholder="اكتب يوزر نيم"
          onSave={saveUsername}
        />
      </div>

      {/* ── Account info (read-only) ── */}
      <div className="px-4 mt-5 mb-2">
        <p className="text-[10px] font-black text-white/25 tracking-[0.15em] px-1 mb-3">🔒 معلومات الحساب</p>
      </div>
      <div className="mx-4 rounded-2xl overflow-hidden"
        style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.06)" }}>
        {fullName && fullName !== "—" && (
          <InfoRow
            icon={User} iconColor="text-white/40" iconBg="bg-white/5"
            label="الاسم الكامل (من Replit)" value={fullName}
          />
        )}
        <InfoRow
          icon={Mail} iconColor="text-white/40" iconBg="bg-white/5"
          label="البريد الإلكتروني" value={user.email || "—"}
        />
        <InfoRow
          icon={Shield} iconColor="text-emerald-400" iconBg="bg-emerald-500/10"
          label="نوع الحساب" value="مجاني — Nova Anime"
        />
        {customPhoto && (
          <button onClick={() => { setCustomPhoto(null); localStorage.removeItem("profile-photo"); }}
            className="w-full flex items-center gap-3.5 px-5 py-3.5 hover:bg-red-500/5 transition-all">
            <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-red-500/10 border-red-500/20">
              <X className="w-4 h-4 text-red-400" />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13.5px] font-bold font-['Cairo'] text-red-400/80">إزالة صورة البروفايل</p>
              <p className="text-[10px] text-red-400/30 font-['Cairo'] mt-0.5">العودة للصورة الأصلية</p>
            </div>
          </button>
        )}
      </div>

      {/* ── Sign out ── */}
      <div className="mx-4 mt-5">
        <button onClick={() => signOut()}
          className="w-full flex items-center justify-center gap-2.5 py-3.5 rounded-2xl font-black text-[14px] font-['Cairo'] active:scale-[0.98] transition-transform"
          style={{ background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.18)", color: "#F87171" }}>
          <LogOut className="w-4 h-4" />
          تسجيل الخروج
        </button>
      </div>
    </main>
  );
}

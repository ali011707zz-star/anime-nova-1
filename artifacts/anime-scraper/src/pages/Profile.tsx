import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  ChevronRight, Camera, Check, X, Edit2, User, Mail,
  AtSign, LogOut, Star, Clock, Sparkles, Lock,
  Eye, EyeOff, ArrowRight, Shield, Trash2, AlertTriangle,
} from "lucide-react";
import { Link } from "wouter";
import { useAuth } from "@/lib/auth-context";

/* ── Gradient initials avatar ── */
function getInitials(name: string) {
  return name.split(" ").map(w => w[0]).slice(0, 2).join("").toUpperCase() || "N";
}
const GRADIENTS = [
  ["#7C3AED", "#4C1D95"],
  ["#2563EB", "#1E3A8A"],
  ["#DB2777", "#831843"],
  ["#059669", "#064E3B"],
  ["#D97706", "#78350F"],
  ["#DC2626", "#7F1D1D"],
];
function getGradient(id: string) {
  let h = 0; for (const c of id) h = id.charCodeAt(0) + ((h << 5) - h);
  return GRADIENTS[Math.abs(h) % GRADIENTS.length];
}

/* ── Input field ── */
function Field({
  label, value, icon: Icon, iconColor, placeholder, type = "text", suffix,
  onChange, onSave, readOnly,
}: {
  label: string; value: string; icon: any; iconColor: string; placeholder: string;
  type?: string; suffix?: string; onChange?: (v: string) => void;
  onSave?: (v: string) => void; readOnly?: boolean;
}) {
  const [editing, setEditing] = useState(false);
  const [draft, setDraft] = useState(value);
  const ref = useRef<HTMLInputElement>(null);

  useEffect(() => { setDraft(value); }, [value]);
  useEffect(() => { if (editing) ref.current?.focus(); }, [editing]);

  function save() {
    const v = draft.trim();
    if (v && onSave) onSave(v);
    setEditing(false);
  }

  return (
    <div className="relative flex items-center gap-3 px-4 py-3.5 group transition-colors"
      style={{ borderBottom: "1px solid rgba(255,255,255,0.04)" }}>
      <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
        style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
        <Icon className={`w-3.5 h-3.5 ${iconColor}`} />
      </div>

      <div className="flex-1 min-w-0 text-right">
        <p className="text-[9.5px] text-white/25 font-['Cairo'] mb-0.5 font-bold">{label}</p>
        {editing ? (
          <div className="flex items-center gap-1">
            {suffix && <span className="text-[12px] text-white/30 font-['Cairo']">{suffix}</span>}
            <input ref={ref} value={draft} onChange={e => { setDraft(e.target.value); onChange?.(e.target.value); }}
              onKeyDown={e => { if (e.key === "Enter") save(); if (e.key === "Escape") setEditing(false); }}
              type={type}
              className="flex-1 bg-transparent text-white text-[13px] font-bold font-['Cairo'] outline-none border-b border-violet-400/50 pb-0.5" />
          </div>
        ) : (
          <p className="text-[13px] font-bold font-['Cairo'] text-white/80 truncate">
            {value ? (suffix ? `${suffix}${value}` : value) : <span className="text-white/25">{placeholder}</span>}
          </p>
        )}
      </div>

      {!readOnly && (
        editing ? (
          <div className="flex gap-1.5 shrink-0">
            <button onClick={save}
              className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform"
              style={{ background: "rgba(139,92,246,0.20)", border: "1px solid rgba(139,92,246,0.35)" }}>
              <Check className="w-3.5 h-3.5 text-violet-300" />
            </button>
            <button onClick={() => { setDraft(value); setEditing(false); }}
              className="w-7 h-7 rounded-lg flex items-center justify-center active:scale-90 transition-transform"
              style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
              <X className="w-3.5 h-3.5 text-white/35" />
            </button>
          </div>
        ) : (
          <button onClick={() => setEditing(true)}
            className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform opacity-0 group-hover:opacity-100 shrink-0"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <Edit2 className="w-3.5 h-3.5 text-white/35" />
          </button>
        )
      )}
    </div>
  );
}

/* ── Password change modal ── */
function PasswordModal({ onClose }: { onClose: () => void }) {
  const [cur, setCur] = useState(""); const [next, setNext] = useState(""); const [conf, setConf] = useState("");
  const [showCur, setShowCur] = useState(false); const [showNew, setShowNew] = useState(false);
  const [loading, setLoading] = useState(false); const [msg, setMsg] = useState<{ text: string; ok: boolean } | null>(null);

  const submit = async () => {
    if (!cur || !next || !conf) { setMsg({ text: "يرجى تعبئة جميع الحقول", ok: false }); return; }
    if (next.length < 6) { setMsg({ text: "كلمة المرور الجديدة يجب أن تكون 6 أحرف على الأقل", ok: false }); return; }
    if (next !== conf) { setMsg({ text: "كلمتا المرور غير متطابقتين", ok: false }); return; }
    setLoading(true);
    try {
      const res = await fetch("/api/auth/change-password", {
        method: "POST", credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ currentPassword: cur, newPassword: next }),
      });
      const data = await res.json();
      if (!res.ok) { setMsg({ text: data.error || "فشل التغيير", ok: false }); }
      else { setMsg({ text: "تم تغيير كلمة المرور بنجاح ✓", ok: true }); setTimeout(onClose, 1500); }
    } catch { setMsg({ text: "خطأ في الاتصال", ok: false }); }
    setLoading(false);
  };

  const iClass = "w-full bg-white/5 border border-white/10 rounded-xl px-4 py-3 text-white text-[13px] font-['Cairo'] placeholder-white/20 outline-none focus:border-violet-500/50 transition-all";

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-6" dir="rtl">
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 bg-black/70 backdrop-blur-md" onClick={onClose} />
      <motion.div initial={{ opacity: 0, scale: 0.92, y: 20 }} animate={{ opacity: 1, scale: 1, y: 0 }} exit={{ opacity: 0, scale: 0.92 }}
        className="relative w-full max-w-sm rounded-3xl p-6"
        style={{ background: "rgba(14,12,24,0.99)", border: "1px solid rgba(139,92,246,0.20)" }}>
        <div className="h-[2px] rounded-full mb-5" style={{ background: "linear-gradient(90deg,#7C3AED,#4F46E5)" }} />
        <div className="flex items-center justify-between mb-5">
          <h3 className="text-[15px] font-black font-['Cairo'] text-white">تغيير كلمة المرور</h3>
          <button onClick={onClose} className="w-8 h-8 rounded-xl flex items-center justify-center" style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.09)" }}>
            <X className="w-3.5 h-3.5 text-white/40" />
          </button>
        </div>
        <div className="flex flex-col gap-3">
          <div className="relative">
            <input type={showCur ? "text" : "password"} value={cur} onChange={e => setCur(e.target.value)} placeholder="كلمة المرور الحالية" className={iClass} />
            <button type="button" onClick={() => setShowCur(p => !p)} className="absolute left-3 top-1/2 -translate-y-1/2 text-white/25">
              {showCur ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <div className="relative">
            <input type={showNew ? "text" : "password"} value={next} onChange={e => setNext(e.target.value)} placeholder="كلمة المرور الجديدة" className={iClass} />
            <button type="button" onClick={() => setShowNew(p => !p)} className="absolute left-3 top-1/2 -translate-y-1/2 text-white/25">
              {showNew ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
            </button>
          </div>
          <input type="password" value={conf} onChange={e => setConf(e.target.value)} placeholder="تأكيد كلمة المرور الجديدة" className={iClass} />
          <AnimatePresence>
            {msg && (
              <motion.p initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
                className={`text-[11.5px] font-['Cairo'] text-center font-bold ${msg.ok ? "text-emerald-400" : "text-red-400"}`}>
                {msg.text}
              </motion.p>
            )}
          </AnimatePresence>
          <button onClick={submit} disabled={loading}
            className="w-full py-3.5 rounded-xl font-black font-['Cairo'] text-[13px] text-white mt-1 flex items-center justify-center gap-2"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", opacity: loading ? 0.7 : 1 }}>
            {loading ? <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" /> : <><ArrowRight className="w-4 h-4" />حفظ التغييرات</>}
          </button>
        </div>
      </motion.div>
    </div>
  );
}

/* ══════════════════════════════════════════
   MAIN PROFILE PAGE
══════════════════════════════════════════ */
export default function Profile() {
  const { user, signOut, updateProfile, deleteAccount } = useAuth();

  const [displayName, setDisplayName] = useState(user?.displayName || [user?.firstName, user?.lastName].filter(Boolean).join(" ") || "");
  const [username, setUsername] = useState(user?.username || "");
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [saveError, setSaveError] = useState("");
  const [showPassModal, setShowPassModal] = useState(false);
  const [showDeleteConfirm, setShowDeleteConfirm] = useState(false);
  const [deletingAccount, setDeletingAccount] = useState(false);
  const [deleteError, setDeleteError] = useState("");
  const [photoPreview, setPhotoPreview] = useState<string | null>(null);
  const fileRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (user) {
      setDisplayName(user.displayName || [user.firstName, user.lastName].filter(Boolean).join(" ") || "");
      setUsername(user.username || "");
    }
  }, [user]);

  const histCount = (() => {
    try { return JSON.parse(localStorage.getItem("watch-history") || "[]").length + JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length; } catch { return 0; }
  })();
  const savedCount = (() => {
    try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; }
  })();

  const handleSave = useCallback(async (updates: { displayName?: string; username?: string; profileImageCustom?: string | null }) => {
    setSaving(true); setSaveError("");
    const result = await updateProfile(updates);
    setSaving(false);
    if (result.error) { setSaveError(result.error); setTimeout(() => setSaveError(""), 3000); }
    else { setSaved(true); setTimeout(() => setSaved(false), 2000); }
  }, [updateProfile]);

  function handlePhoto(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = ev => {
      const b64 = ev.target?.result as string;
      setPhotoPreview(b64);
      handleSave({ profileImageCustom: b64 });
    };
    reader.readAsDataURL(file);
  }

  // ── Not logged in ──
  if (!user) {
    return (
      <main className="min-h-screen text-white pb-32 font-['Cairo'] flex flex-col items-center justify-center gap-6"
        style={{ background: "var(--bg-base,#09090B)" }} dir="rtl">
        <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}
          className="flex flex-col items-center gap-6 text-center px-8">
          <div className="w-24 h-24 rounded-3xl flex items-center justify-center"
            style={{ background: "linear-gradient(135deg,rgba(124,58,237,0.15),rgba(79,70,229,0.10))", border: "2px solid rgba(139,92,246,0.25)", boxShadow: "0 0 40px rgba(124,58,237,0.12)" }}>
            <User className="w-10 h-10 text-violet-400" />
          </div>
          <div>
            <p className="text-xl font-black text-white/90">لم تسجّل دخولك بعد</p>
            <p className="text-sm text-white/35 mt-2 leading-relaxed">سجّل دخولك لحفظ مفضلتك ومتابعة سجل مشاهدتك</p>
          </div>
          <Link href="/settings">
            <button className="flex items-center gap-2.5 px-8 py-3.5 rounded-2xl font-black text-[14px] text-white"
              style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 8px 28px rgba(124,58,237,0.35)" }}>
              <Sparkles className="w-4 h-4" />
              تسجيل الدخول
            </button>
          </Link>
        </motion.div>
      </main>
    );
  }

  const [g1, g2] = getGradient(user.id || "nova");
  const avatarSrc = photoPreview || user.profileImageUrl || null;
  const initials = getInitials(displayName || user.email || "N");

  return (
    <main className="min-h-screen text-white pb-32 font-['Cairo']"
      style={{ background: "var(--bg-base,#09090B)" }} dir="rtl">

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 flex items-center gap-3 px-4 py-3.5"
        style={{ background: "rgba(9,9,11,0.90)", backdropFilter: "blur(20px)", borderBottom: "1px solid rgba(255,255,255,0.04)" }}>
        <Link href="/settings">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <h1 className="flex-1 text-[17px] font-black text-white">الملف الشخصي</h1>

        <AnimatePresence>
          {saved && (
            <motion.div initial={{ opacity: 0, scale: 0.8, x: 10 }} animate={{ opacity: 1, scale: 1, x: 0 }} exit={{ opacity: 0, scale: 0.8, x: 10 }}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
              style={{ background: "rgba(16,185,129,0.15)", border: "1px solid rgba(16,185,129,0.25)" }}>
              <Check className="w-3 h-3 text-emerald-400" />
              <span className="text-[11px] font-black text-emerald-400">تم الحفظ</span>
            </motion.div>
          )}
          {saveError && (
            <motion.div initial={{ opacity: 0, scale: 0.8 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.8 }}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
              style={{ background: "rgba(239,68,68,0.12)", border: "1px solid rgba(239,68,68,0.20)" }}>
              <X className="w-3 h-3 text-red-400" />
              <span className="text-[11px] font-black text-red-400">{saveError}</span>
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      {/* ── Hero Section ── */}
      <div className="relative overflow-hidden">
        {/* Gradient background */}
        <div className="absolute inset-0 opacity-20"
          style={{ background: `radial-gradient(ellipse 80% 60% at 50% 0%, ${g1}, transparent)` }} />

        <div className="relative flex flex-col items-center gap-4 pt-8 pb-7 px-4">
          {/* Avatar */}
          <div className="relative group">
            {avatarSrc ? (
              <img src={avatarSrc} alt="" className="w-[88px] h-[88px] rounded-[1.5rem] object-cover"
                style={{ border: `2px solid ${g1}60`, boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)` }} />
            ) : (
              <div className="w-[88px] h-[88px] rounded-[1.5rem] flex items-center justify-center text-white font-black text-[28px]"
                style={{ background: `linear-gradient(135deg,${g1},${g2})`, border: `2px solid ${g1}60`, boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)` }}>
                {initials}
              </div>
            )}
            {/* Camera overlay */}
            <button onClick={() => fileRef.current?.click()}
              className="absolute inset-0 rounded-[1.5rem] flex items-center justify-center transition-all opacity-0 group-hover:opacity-100 active:opacity-100"
              style={{ background: "rgba(0,0,0,0.55)", backdropFilter: "blur(4px)" }}>
              <Camera className="w-6 h-6 text-white" />
            </button>
            {/* Camera pill */}
            <div className="absolute -bottom-2.5 left-1/2 -translate-x-1/2 flex items-center gap-1 px-2.5 py-1 rounded-full pointer-events-none"
              style={{ background: "rgba(14,12,24,0.95)", border: "1px solid rgba(255,255,255,0.10)" }}>
              <Camera className="w-2.5 h-2.5 text-white/40" />
              <span className="text-[9px] text-white/35 font-bold font-['Cairo']">تغيير الصورة</span>
            </div>
            <input ref={fileRef} type="file" accept="image/*" className="hidden" onChange={handlePhoto} />
          </div>

          {/* Name & email */}
          <div className="text-center mt-1">
            <h2 className="text-[19px] font-black text-white/95 leading-tight">
              {displayName || user.email?.split("@")[0] || "مستخدم Nova"}
            </h2>
            {username && <p className="text-[12.5px] text-white/35 mt-0.5">@{username}</p>}
            {!username && user.email && (
              <p className="text-[12px] text-white/25 mt-0.5">{user.email}</p>
            )}
          </div>

          {/* Auth badge */}
          <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-full"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <div className="w-1.5 h-1.5 rounded-full bg-emerald-400" />
            <span className="text-[10.5px] text-white/40 font-bold font-['Cairo']">
              {user.authType === "email" ? "حساب بريد إلكتروني" : "حساب Replit"}
            </span>
          </div>

          {/* Stats */}
          <div className="flex gap-3 mt-1">
            {[
              { label: "مشاهَدة", val: histCount, icon: Clock, color: "#A78BFA", from: "#7C3AED22", to: "#4C1D9522" },
              { label: "محفوظة",  val: savedCount, icon: Star, color: "#F472B6", from: "#DB277722", to: "#83184322" },
            ].map(s => (
              <div key={s.label} className="flex items-center gap-2.5 px-5 py-2.5 rounded-2xl"
                style={{ background: `linear-gradient(135deg,${s.from},${s.to})`, border: "1px solid rgba(255,255,255,0.06)" }}>
                <s.icon className="w-4 h-4" style={{ color: s.color }} />
                <div>
                  <p className="text-[17px] font-black leading-none" style={{ color: s.color }}>{s.val}</p>
                  <p className="text-[9.5px] text-white/30 font-bold mt-0.5">{s.label}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div className="px-4 space-y-4 mt-2">

        {/* ── Edit Section ── */}
        <div>
          <p className="text-[9.5px] font-black text-white/20 tracking-[0.18em] px-1 mb-2.5">✦ تعديل الملف الشخصي</p>
          <div className="rounded-2xl overflow-hidden"
            style={{ background: "rgba(255,255,255,0.025)", border: "1px solid rgba(255,255,255,0.06)", backdropFilter: "blur(12px)" }}>
            <Field
              icon={User} iconColor="text-violet-400" label="الاسم المعروض"
              value={displayName} placeholder="اكتب اسمك"
              onSave={v => { setDisplayName(v); handleSave({ displayName: v }); }}
            />
            <Field
              icon={AtSign} iconColor="text-blue-400" label="اسم المستخدم"
              value={username} placeholder="اكتب يوزرنيم" suffix="@"
              onSave={v => {
                const cleaned = v.replace(/^@/, "").replace(/[^a-zA-Z0-9_\u0600-\u06FF]/g, "").slice(0, 20);
                setUsername(cleaned);
                handleSave({ username: cleaned });
              }}
            />
          </div>
        </div>

        {/* ── Account Info ── */}
        <div>
          <p className="text-[9.5px] font-black text-white/20 tracking-[0.18em] px-1 mb-2.5">🔒 معلومات الحساب</p>
          <div className="rounded-2xl overflow-hidden"
            style={{ background: "rgba(255,255,255,0.025)", border: "1px solid rgba(255,255,255,0.06)" }}>
            <Field icon={Mail} iconColor="text-white/30" label="البريد الإلكتروني"
              value={user.email || "—"} placeholder="—" readOnly />
            <Field icon={Shield} iconColor="text-emerald-400" label="نوع الحساب"
              value={user.authType === "email" ? "حساب بريد إلكتروني" : "حساب Replit"} placeholder="—" readOnly />

            {/* Change photo remove button */}
            {(photoPreview || user.profileImageUrl) && (
              <button onClick={() => { setPhotoPreview(null); handleSave({ profileImageCustom: null }); }}
                className="w-full flex items-center gap-3 px-4 py-3.5 transition-colors hover:bg-red-500/5 active:bg-red-500/8"
                style={{ borderTop: "1px solid rgba(255,255,255,0.04)" }}>
                <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                  style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.18)" }}>
                  <X className="w-3.5 h-3.5 text-red-400" />
                </div>
                <div className="text-right">
                  <p className="text-[12.5px] font-bold font-['Cairo'] text-red-400/80">إزالة الصورة الشخصية</p>
                  <p className="text-[10px] text-red-400/30 font-['Cairo'] mt-0.5">العودة للصورة الافتراضية</p>
                </div>
              </button>
            )}
          </div>
        </div>

        {/* ── Security (email users only) ── */}
        {user.authType === "email" && (
          <div>
            <p className="text-[9.5px] font-black text-white/20 tracking-[0.18em] px-1 mb-2.5">🛡 الأمان</p>
            <div className="rounded-2xl overflow-hidden"
              style={{ background: "rgba(255,255,255,0.025)", border: "1px solid rgba(255,255,255,0.06)" }}>
              <button onClick={() => setShowPassModal(true)}
                className="w-full flex items-center gap-3 px-4 py-3.5 transition-colors hover:bg-white/3 active:bg-white/5">
                <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                  style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.18)" }}>
                  <Lock className="w-3.5 h-3.5 text-violet-400" />
                </div>
                <div className="text-right flex-1">
                  <p className="text-[13px] font-bold font-['Cairo'] text-white/75">تغيير كلمة المرور</p>
                  <p className="text-[10px] text-white/25 font-['Cairo'] mt-0.5">تحديث كلمة مرورك</p>
                </div>
                <ChevronRight className="w-4 h-4 text-white/20 rotate-180" />
              </button>
            </div>
          </div>
        )}

        {/* ── Sign Out ── */}
        <button onClick={() => signOut()}
          className="w-full flex items-center justify-center gap-2.5 py-3.5 rounded-2xl font-black text-[13.5px] font-['Cairo'] transition-all active:scale-[0.98]"
          style={{ background: "rgba(239,68,68,0.07)", border: "1px solid rgba(239,68,68,0.15)", color: "#FCA5A5" }}>
          <LogOut className="w-4 h-4" />
          تسجيل الخروج
        </button>

        {/* ── Delete Account ── */}
        <div>
          <p className="text-[9.5px] font-black text-red-400/30 tracking-[0.18em] px-1 mb-2.5">⚠ منطقة الخطر</p>
          <button onClick={() => setShowDeleteConfirm(true)}
            className="w-full flex items-center gap-3 px-4 py-3.5 rounded-2xl transition-all active:scale-[0.98]"
            style={{ background: "rgba(239,68,68,0.07)", border: "1px solid rgba(239,68,68,0.15)" }}>
            <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
              style={{ background: "rgba(239,68,68,0.15)", border: "1px solid rgba(239,68,68,0.25)" }}>
              <Trash2 className="w-3.5 h-3.5 text-red-400" />
            </div>
            <div className="text-right flex-1">
              <p className="text-[13px] font-black font-['Cairo'] text-red-400">حذف الحساب نهائياً</p>
              <p className="text-[10px] text-red-400/35 font-['Cairo'] mt-0.5">هذا الإجراء لا يمكن التراجع عنه</p>
            </div>
          </button>
          {deleteError && (
            <p className="text-[11px] text-red-400 font-['Cairo'] text-center mt-2">{deleteError}</p>
          )}
        </div>
      </div>

      {/* ── Delete Confirm Sheet ── */}
      <AnimatePresence>
        {showDeleteConfirm && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 flex flex-col justify-end" style={{ direction: "rtl" }}>
            <div className="absolute inset-0 bg-black/75 backdrop-blur-md" onClick={() => setShowDeleteConfirm(false)} />
            <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
              transition={{ type: "spring", stiffness: 440, damping: 38 }}
              className="relative rounded-t-3xl px-6 pb-10 pt-5"
              style={{ background: "#0D0B17", border: "1.5px solid rgba(239,68,68,0.20)", borderBottom: "none", boxShadow: "0 -32px 80px rgba(0,0,0,0.90)" }}
              onClick={e => e.stopPropagation()}>
              <div className="h-[2px] rounded-full mb-5" style={{ background: "linear-gradient(90deg,transparent,#ef4444,transparent)" }} />
              <div className="flex justify-center mb-4">
                <div className="w-14 h-14 rounded-2xl flex items-center justify-center"
                  style={{ background: "rgba(239,68,68,0.12)", border: "1px solid rgba(239,68,68,0.25)" }}>
                  <AlertTriangle className="w-7 h-7 text-red-400" />
                </div>
              </div>
              <p className="text-[17px] font-black text-white/90 font-['Cairo'] text-center mb-2">حذف الحساب نهائياً</p>
              <p className="text-[12px] text-white/35 font-['Cairo'] text-center leading-relaxed mb-6">سيتم حذف حسابك وجميع بياناتك بشكل دائم ولا يمكن استعادتها</p>
              <div className="flex gap-3">
                <button onClick={() => setShowDeleteConfirm(false)}
                  className="flex-1 py-3.5 rounded-2xl text-[13px] font-black font-['Cairo']"
                  style={{ background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.55)", border: "1px solid rgba(255,255,255,0.08)" }}>
                  إلغاء
                </button>
                <button
                  onClick={async () => {
                    setDeletingAccount(true);
                    const result = await deleteAccount();
                    setDeletingAccount(false);
                    if (result.error) { setDeleteError(result.error); setShowDeleteConfirm(false); }
                    else { window.location.href = "/"; }
                  }}
                  disabled={deletingAccount}
                  className="flex-1 py-3.5 rounded-2xl text-[13px] font-black font-['Cairo'] flex items-center justify-center gap-2"
                  style={{ background: "rgba(239,68,68,0.18)", color: "#fca5a5", border: "1px solid rgba(239,68,68,0.30)" }}>
                  {deletingAccount
                    ? <div className="w-4 h-4 border-2 border-red-300/30 border-t-red-300 rounded-full animate-spin" />
                    : <><Trash2 className="w-4 h-4" />حذف الحساب</>}
                </button>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Password Modal ── */}
      <AnimatePresence>
        {showPassModal && <PasswordModal onClose={() => setShowPassModal(false)} />}
      </AnimatePresence>
    </main>
  );
}

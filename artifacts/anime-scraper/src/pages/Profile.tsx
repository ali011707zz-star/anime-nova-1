import { API_BASE } from "@/lib/apiBase";
import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  ChevronRight, Camera, Check, X, Edit2, User, Mail,
   AtSign, LogOut, Star, Clock, Sparkles,
   Shield, Trash2, AlertTriangle,
  TrendingUp, Calendar, Palette,
} from "lucide-react";
import { Link, useLocation } from "wouter";
import { useAuth } from "@/lib/auth-context";

/* ──────────────────────────────────────────
   AVATAR COLOR SYSTEM (8 options)
────────────────────────────────────────── */
const AVATAR_COLORS: [string, string][] = [
  ["#7C3AED", "#4C1D95"],   // 0 بنفسجي
  ["#2563EB", "#1E3A8A"],   // 1 أزرق
  ["#DB2777", "#831843"],   // 2 وردي
  ["#059669", "#064E3B"],   // 3 أخضر
  ["#D97706", "#78350F"],   // 4 برتقالي
  ["#DC2626", "#7F1D1D"],   // 5 أحمر
  ["#0891B2", "#164E63"],   // 6 سماوي
  ["#6D28D9", "#2E1065"],   // 7 بنفسجي غامق
];

function getInitials(name: string) {
  return name.trim().split(" ").map(w => w[0]).slice(0, 2).join("").toUpperCase() || "N";
}

/* ──────────────────────────────────────────
   AVATAR COMPONENT
────────────────────────────────────────── */
function Avatar({ user, size = 88 }: { user: any; size?: number }) {
  const color = AVATAR_COLORS[Math.min(user?.avatarColor ?? 0, 7)];
  const [g1, g2] = color;
  const initials = getInitials(user?.displayName || user?.email?.split("@")[0] || "N");
  const img = user?.profileImageUrl;

  return img ? (
    <img src={img} alt="" className="object-cover rounded-[1.5rem]"
      style={{ width: size, height: size, border: `2px solid ${g1}60`, boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)` }} />
  ) : (
    <div className="flex items-center justify-center rounded-[1.5rem] font-black text-white"
      style={{
        width: size, height: size,
        fontSize: size > 50 ? 28 : 14,
        background: `linear-gradient(135deg,${g1},${g2})`,
        border: `2px solid ${g1}60`,
        boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)`,
      }}>
      {initials}
    </div>
  );
}

/* ──────────────────────────────────────────
   COLOR PICKER SHEET
────────────────────────────────────────── */
function ColorPickerSheet({ current, onPick, onClose }: {
  current: number; onPick: (c: number) => void; onClose: () => void;
}) {
  return (
    <div className="fixed inset-0 z-50 flex flex-col justify-end" dir="rtl">
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 bg-black/70 backdrop-blur-md" onClick={onClose} />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", stiffness: 400, damping: 36 }}
        className="relative rounded-t-3xl px-6 pb-10 pt-5"
        style={{ background: "#0E0C1A", border: "1.5px solid rgba(139,92,246,0.25)", borderBottom: "none" }}
        onClick={e => e.stopPropagation()}>
        <div className="h-[2px] rounded-full mb-5" style={{ background: "linear-gradient(90deg,transparent,#7C3AED,#A78BFA,transparent)" }} />
        <div className="flex justify-center mb-1">
          <div className="w-10 h-1 rounded-full bg-white/10 mb-4" />
        </div>
        <p className="text-[15px] font-black font-['Cairo'] text-white mb-1 text-center">🎨 اختر لون الأفاتار</p>
        <p className="text-[11px] text-white/30 font-['Cairo'] text-center mb-5">اللون يظهر كخلفية الأحرف الأولى من اسمك</p>
        <div className="grid grid-cols-4 gap-4 mb-6">
          {AVATAR_COLORS.map(([g1, g2], i) => (
            <button key={i} onClick={() => { onPick(i); onClose(); }}
              className="flex flex-col items-center gap-2">
              <div className="w-14 h-14 rounded-2xl flex items-center justify-center text-white font-black text-lg transition-all active:scale-90"
                style={{
                  background: `linear-gradient(135deg,${g1},${g2})`,
                  border: i === current ? `3px solid white` : `2px solid ${g1}40`,
                  boxShadow: i === current ? `0 0 0 2px ${g1}, 0 4px 20px ${g1}60` : `0 4px 12px ${g1}30`,
                }}>
                A
              </div>
              {i === current && <Check className="w-3.5 h-3.5 text-white/70" />}
            </button>
          ))}
        </div>
      </motion.div>
    </div>
  );
}

/* ──────────────────────────────────────────
   EDITABLE FIELD
────────────────────────────────────────── */
function Field({ label, value, icon: Icon, iconColor, placeholder, type = "text", suffix,
  onSave, readOnly }: {
  label: string; value: string; icon: any; iconColor: string; placeholder: string;
  type?: string; suffix?: string; onSave?: (v: string) => void; readOnly?: boolean;
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
    <div className="relative flex items-center gap-3 px-4 py-3.5 group"
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
            <input ref={ref} value={draft} onChange={e => setDraft(e.target.value)}
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
            className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <Edit2 className="w-3.5 h-3.5 text-white/35" />
          </button>
        )
      )}
    </div>
  );
}

/* ══════════════════════════════════════════════════
   MAIN PROFILE PAGE
══════════════════════════════════════════════════ */
export default function Profile() {
  const { user, signOut, updateProfile, deleteAccount } = useAuth();
  const [, navigate] = useLocation();

  const [displayName, setDisplayName] = useState(user?.displayName || "");
  const [username, setUsername]       = useState(user?.username || "");
  const [saving, setSaving]           = useState(false);
  const [saved, setSaved]             = useState(false);
  const [saveError, setSaveError]     = useState("");
  const [showDeleteConfirm, setShowDeleteConfirm] = useState(false);
  const [showColorPicker, setShowColorPicker]   = useState(false);
  const [deletingAccount, setDeletingAccount]   = useState(false);
  const [deleteError, setDeleteError]           = useState("");
  const [photoPreview, setPhotoPreview]         = useState<string | null>(null);
  const [stats, setStats] = useState<{ watchedCount: number; favoritesCount: number; progressCount: number } | null>(null);
  const fileRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (user) {
      setDisplayName(user.displayName || "");
      setUsername(user.username || "");
    }
  }, [user]);

  /* Fetch server stats when logged in */
  useEffect(() => {
    if (user?.id) {
      fetch(API_BASE + "/api/user/stats", { credentials: "include" })
        .then(r => r.ok ? r.json() : null)
        .then(d => { if (d) setStats(d); })
        .catch(() => {});
    }
  }, [user?.id]);

  const handleSave = useCallback(async (updates: {
    displayName?: string; username?: string;
    profileImageCustom?: string | null; avatarColor?: number;
  }) => {
    setSaving(true); setSaveError("");
    const result = await updateProfile(updates);
    setSaving(false);
    if (result.error) { setSaveError(result.error); setTimeout(() => setSaveError(""), 3000); }
    else { setSaved(true); setTimeout(() => setSaved(false), 2000); }
  }, [updateProfile]);

  function handlePhoto(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    const img = new Image();
    const objectUrl = URL.createObjectURL(file);
    img.onload = () => {
      URL.revokeObjectURL(objectUrl);
      const MAX = 400;
      const scale = Math.min(1, MAX / Math.max(img.width, img.height));
      const w = Math.round(img.width * scale);
      const h = Math.round(img.height * scale);
      const canvas = document.createElement("canvas");
      canvas.width = w;
      canvas.height = h;
      const ctx = canvas.getContext("2d")!;
      ctx.drawImage(img, 0, 0, w, h);
      const b64 = canvas.toDataURL("image/jpeg", 0.82);
      setPhotoPreview(b64);
      handleSave({ profileImageCustom: b64 });
    };
    img.src = objectUrl;
  }

  /* ── Not logged in ── */
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
            <p className="text-sm text-white/35 mt-2 leading-relaxed">سجّل دخولك لحفظ مفضلتك ومتابعة سجل مشاهدتك عبر الأجهزة</p>
          </div>
          <button onClick={() => navigate("/auth")}
            className="flex items-center gap-2.5 px-8 py-3.5 rounded-2xl font-black text-[14px] text-white"
            style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 8px 28px rgba(124,58,237,0.35)" }}>
            <Sparkles className="w-4 h-4" />
            تسجيل الدخول
          </button>
        </motion.div>
      </main>
    );
  }

  const colorIdx = Math.min(user.avatarColor ?? 0, 7);
  const [g1] = AVATAR_COLORS[colorIdx];
  const avatarImg = photoPreview || user.profileImageUrl || null;

  /* local fallbacks for stats — combine anime + animation histories */
  const localAnimeHist = (() => { try { return JSON.parse(localStorage.getItem("watch-history") || "[]").length; } catch { return 0; } })();
  const localAnimHist  = (() => { try { return JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length; } catch { return 0; } })();
  const localHistory   = localAnimeHist + localAnimHist;
  const localFavorites = (() => { try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; } })();

  const watchedCount  = Math.max(stats?.watchedCount  ?? 0, localHistory);
  const favCount      = Math.max(stats?.favoritesCount ?? 0, localFavorites);
  const progressCount = stats?.progressCount  ?? 0;

  const joinDate = user.createdAt ? new Date(user.createdAt).toLocaleDateString("ar-SA", { year: "numeric", month: "long" }) : null;

  return (
    <main className="min-h-screen text-white pb-32 font-['Cairo']"
      style={{ background: "var(--bg-base,#09090B)" }} dir="rtl">

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 flex items-center gap-3 px-4 py-3.5"
        style={{ background: "rgba(9,9,11,0.90)", backdropFilter: "blur(20px)", borderBottom: "1px solid rgba(255,255,255,0.04)" }}>
        <Link href="/">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <h1 className="flex-1 text-[17px] font-black text-white">الملف الشخصي</h1>
        <AnimatePresence>
          {saved && (
            <motion.div initial={{ opacity: 0, scale: 0.8 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0 }}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
              style={{ background: "rgba(16,185,129,0.15)", border: "1px solid rgba(16,185,129,0.25)" }}>
              <Check className="w-3 h-3 text-emerald-400" />
              <span className="text-[11px] font-black text-emerald-400">تم الحفظ</span>
            </motion.div>
          )}
          {saveError && (
            <motion.div initial={{ opacity: 0, scale: 0.8 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0 }}
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
        <div className="absolute inset-0 opacity-15"
          style={{ background: `radial-gradient(ellipse 80% 60% at 50% 0%, ${g1}, transparent)` }} />
        <div className="relative flex flex-col items-center gap-4 pt-8 pb-6 px-4">
          {/* Avatar with camera overlay */}
          <div className="relative group">
            {avatarImg ? (
              <img src={avatarImg} alt="" className="w-[88px] h-[88px] rounded-[1.5rem] object-cover"
                style={{ border: `2px solid ${g1}60`, boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)` }} />
            ) : (
              <div className="w-[88px] h-[88px] rounded-[1.5rem] flex items-center justify-center text-white font-black text-[28px]"
                style={{ background: `linear-gradient(135deg,${AVATAR_COLORS[colorIdx][0]},${AVATAR_COLORS[colorIdx][1]})`, border: `2px solid ${g1}60`, boxShadow: `0 0 0 1px ${g1}30, 0 16px 40px rgba(0,0,0,0.5)` }}>
                {getInitials(displayName || user.email?.split("@")[0] || "N")}
              </div>
            )}
            <button onClick={() => fileRef.current?.click()}
              className="absolute inset-0 rounded-[1.5rem] flex items-center justify-center transition-all opacity-0 group-hover:opacity-100 active:opacity-100"
              style={{ background: "rgba(0,0,0,0.55)", backdropFilter: "blur(4px)" }}>
              <Camera className="w-6 h-6 text-white" />
            </button>
            <button onClick={() => fileRef.current?.click()}
              className="absolute -bottom-1.5 -left-1.5 w-7 h-7 rounded-xl flex items-center justify-center active:scale-90 transition-transform shadow-lg"
              style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", border: "2px solid #09090B", boxShadow: "0 2px 12px rgba(124,58,237,0.55)" }}>
              <Camera className="w-3.5 h-3.5 text-white" />
            </button>
            <input ref={fileRef} type="file" accept="image/*" className="hidden" onChange={handlePhoto} />
          </div>
          {/* Always-visible photo upload button */}
          <button onClick={() => fileRef.current?.click()}
            className="flex items-center gap-1.5 px-4 py-1.5 rounded-xl active:scale-95 transition-transform mt-1"
            style={{ background: "rgba(124,58,237,0.12)", border: "1px solid rgba(124,58,237,0.25)" }}>
            <Camera className="w-3.5 h-3.5 text-violet-400" />
            <span className="text-[11.5px] font-bold font-['Cairo'] text-violet-300">تغيير الصورة</span>
          </button>
          {/* Name */}
          <div className="text-center">
            <h2 className="text-[19px] font-black text-white/95 leading-tight">
              {displayName || user.email?.split("@")[0] || "مستخدم Nova"}
            </h2>
            {username && <p className="text-[12.5px] text-white/35 mt-0.5">@{username}</p>}
            {!username && user.email && <p className="text-[12px] text-white/25 mt-0.5">{user.email}</p>}
          </div>

          {/* Status badge */}
          <div className="flex items-center gap-2">
            <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-full"
              style={{ background: "rgba(16,185,129,0.10)", border: "1px solid rgba(16,185,129,0.20)" }}>
              <div className="w-1.5 h-1.5 rounded-full bg-emerald-400" />
              <span className="text-[10.5px] text-emerald-400/80 font-bold font-['Cairo']">حساب نشط</span>
            </div>
            {joinDate && (
              <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-full"
                style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
                <Calendar className="w-3 h-3 text-white/30" />
                <span className="text-[10.5px] text-white/35 font-bold font-['Cairo']">{joinDate}</span>
              </div>
            )}
          </div>

          {/* Stats row */}
          <div className="flex gap-3 mt-1">
            {[
              { label: "مشاهَدة", val: watchedCount, icon: Clock, c: "#A78BFA" },
              { label: "محفوظة",  val: favCount,    icon: Star,  c: "#F472B6" },
              { label: "متابعة",  val: progressCount, icon: TrendingUp, c: "#34D399" },
            ].map(s => (
              <div key={s.label} className="flex items-center gap-2 px-4 py-2.5 rounded-2xl"
                style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.06)" }}>
                <s.icon className="w-3.5 h-3.5" style={{ color: s.c }} />
                <div>
                  <p className="text-[16px] font-black leading-none" style={{ color: s.c }}>{s.val}</p>
                  <p className="text-[9px] text-white/30 font-bold mt-0.5">{s.label}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div className="px-4 space-y-4 mt-2">

        {/* ── Edit Profile ── */}
        <div>
          <p className="text-[9.5px] font-black text-white/20 tracking-[0.18em] px-1 mb-2.5">✦ تعديل الملف الشخصي</p>
          <div className="rounded-2xl overflow-hidden"
            style={{ background: "rgba(255,255,255,0.025)", border: "1px solid rgba(255,255,255,0.06)" }}>
            <Field icon={User} iconColor="text-violet-400" label="الاسم المعروض" value={displayName}
              placeholder="اكتب اسمك"
              onSave={v => { setDisplayName(v); handleSave({ displayName: v }); }} />
            <Field icon={AtSign} iconColor="text-blue-400" label="اسم المستخدم (إنجليزي)" value={username}
              placeholder="nova_user" suffix="@"
              onSave={v => {
                const cleaned = v.replace(/^@/, "").replace(/[^a-zA-Z0-9_.]/g, "").slice(0, 20).toLowerCase();
                if (!cleaned) return;
                setUsername(cleaned);
                handleSave({ username: cleaned });
              }} />

            {/* Avatar color picker button */}
            <button onClick={() => setShowColorPicker(true)}
              className="w-full flex items-center gap-3 px-4 py-3.5 transition-colors hover:bg-white/3">
              <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
                <Palette className="w-3.5 h-3.5 text-pink-400" />
              </div>
              <div className="flex-1 text-right">
                <p className="text-[9.5px] text-white/25 font-['Cairo'] font-bold">لون الأفاتار</p>
                <p className="text-[13px] font-bold font-['Cairo'] text-white/80">اختر لوناً للحرف الأول</p>
              </div>
              <div className="w-7 h-7 rounded-xl shrink-0 flex items-center justify-center text-white font-black text-xs"
                style={{ background: `linear-gradient(135deg,${AVATAR_COLORS[colorIdx][0]},${AVATAR_COLORS[colorIdx][1]})` }}>
                {getInitials(displayName || user.email?.split("@")[0] || "N").slice(0, 1)}
              </div>
            </button>

            {/* Remove photo */}
            {(photoPreview || user.profileImageUrl) && (
              <button onClick={() => { setPhotoPreview(null); handleSave({ profileImageCustom: null }); }}
                className="w-full flex items-center gap-3 px-4 py-3.5 transition-colors hover:bg-red-500/5"
                style={{ borderTop: "1px solid rgba(255,255,255,0.04)" }}>
                <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                  style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.18)" }}>
                  <X className="w-3.5 h-3.5 text-red-400" />
                </div>
                <div className="text-right flex-1">
                  <p className="text-[12.5px] font-bold font-['Cairo'] text-red-400/80">إزالة الصورة الشخصية</p>
                </div>
              </button>
            )}
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
              value="حساب بريد إلكتروني" placeholder="—" readOnly />
          </div>
        </div>

        {/* ── Quick Links ── */}
        <div>
          <p className="text-[9.5px] font-black text-white/20 tracking-[0.18em] px-1 mb-2.5">📂 روابط سريعة</p>
          <div className="grid grid-cols-2 gap-3">
            <Link href="/library">
              <button className="w-full flex items-center gap-2.5 px-4 py-3.5 rounded-2xl transition-colors active:scale-[0.98]"
                style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.07)" }}>
                <Star className="w-4 h-4 text-yellow-400" />
                <span className="text-[13px] font-bold font-['Cairo'] text-white/70">المكتبة</span>
              </button>
            </Link>
            <Link href="/history">
              <button className="w-full flex items-center gap-2.5 px-4 py-3.5 rounded-2xl transition-colors active:scale-[0.98]"
                style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.07)" }}>
                <Clock className="w-4 h-4 text-violet-400" />
                <span className="text-[13px] font-bold font-['Cairo'] text-white/70">التاريخ</span>
              </button>
            </Link>
          </div>
        </div>

        {/* ── Sign Out ── */}
        <button onClick={async () => { await signOut(); navigate("/"); }}
          className="w-full flex items-center justify-center gap-2.5 py-3.5 rounded-2xl font-black text-[13.5px] font-['Cairo'] transition-all active:scale-[0.98]"
          style={{ background: "rgba(239,68,68,0.07)", border: "1px solid rgba(239,68,68,0.15)", color: "#FCA5A5" }}>
          <LogOut className="w-4 h-4" />
          تسجيل الخروج
        </button>

        {/* ── Danger Zone ── */}
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
          {deleteError && <p className="text-[11px] text-red-400 font-['Cairo'] text-center mt-2">{deleteError}</p>}
        </div>
      </div>

      {/* ── Color Picker Sheet ── */}
      <AnimatePresence>
        {showColorPicker && (
          <ColorPickerSheet
            current={colorIdx}
            onPick={c => handleSave({ avatarColor: c })}
            onClose={() => setShowColorPicker(false)}
          />
        )}
      </AnimatePresence>

      {/* ── Delete Confirm Sheet ── */}
      <AnimatePresence>
        {showDeleteConfirm && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 flex flex-col justify-end" dir="rtl">
            <div className="absolute inset-0 bg-black/75 backdrop-blur-md" onClick={() => setShowDeleteConfirm(false)} />
            <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
              transition={{ type: "spring", stiffness: 440, damping: 38 }}
              className="relative rounded-t-3xl px-6 pb-10 pt-5"
              style={{ background: "#0D0B17", border: "1.5px solid rgba(239,68,68,0.20)", borderBottom: "none" }}
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
                    else { navigate("/"); }
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
      </AnimatePresence>
    </main>
  );
}

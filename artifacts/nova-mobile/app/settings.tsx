import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import React, { useState, useEffect, useCallback } from "react";
import {
  Alert, Linking, Modal, Platform, Pressable, ScrollView,
  StyleSheet, Switch, Text, TextInput, View, ActivityIndicator,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";

const THEMES: { label: string; value: string; dot: string; desc: string }[] = [
  { label: "داكن",   value: "dark",   dot: "#3F3F46", desc: "رمادي داكن" },
  { label: "AMOLED", value: "amoled", dot: "#ffffff", desc: "أسود حقيقي" },
  { label: "بنفسجي", value: "violet", dot: "#a78bfa", desc: "توهّج بنفسجي" },
  { label: "أزرق",   value: "blue",   dot: "#3b82f6", desc: "توهّج أزرق" },
  { label: "وردي",   value: "pink",   dot: "#ec4899", desc: "توهّج وردي" },
];

const REPORT_TYPES = [
  { id: "bug",        label: "خلل تقني",     icon: "bug-outline" as const,        color: "#f87171",   bg: "rgba(239,68,68,0.12)",    border: "rgba(239,68,68,0.25)" },
  { id: "suggestion", label: "اقتراح",        icon: "bulb-outline" as const,        color: "#fbbf24",   bg: "rgba(251,191,36,0.10)",   border: "rgba(251,191,36,0.22)" },
  { id: "content",    label: "محتوى مفقود",   icon: "film-outline" as const,        color: "#a78bfa",   bg: "rgba(139,92,246,0.12)",   border: "rgba(139,92,246,0.25)" },
  { id: "other",      label: "أخرى",          icon: "chatbubble-outline" as const,  color: "#38bdf8",   bg: "rgba(56,189,248,0.10)",   border: "rgba(56,189,248,0.22)" },
];

/* ── Toast ── */
function useToast() {
  const [toast, setToast] = useState<{ msg: string; ok: boolean } | null>(null);
  const show = (msg: string, ok = true) => {
    setToast({ msg, ok });
    setTimeout(() => setToast(null), 2400);
  };
  return { toast, show };
}

function ToastBanner({ toast }: { toast: { msg: string; ok: boolean } | null }) {
  if (!toast) return null;
  return (
    <View style={[ts.toast, { backgroundColor: toast.ok ? "rgba(16,185,129,0.18)" : "rgba(239,68,68,0.18)", borderColor: toast.ok ? "rgba(16,185,129,0.38)" : "rgba(239,68,68,0.38)" }]}>
      <Ionicons name={toast.ok ? "checkmark-circle" : "close-circle"} size={15} color={toast.ok ? "#34d399" : "#f87171"} />
      <Text style={ts.toastText}>{toast.msg}</Text>
    </View>
  );
}

/* ── Confirm Sheet ── */
function ConfirmSheet({ open, title, desc, confirmLabel = "تأكيد", danger = false, onConfirm, onCancel }: {
  open: boolean; title: string; desc?: string; confirmLabel?: string;
  danger?: boolean; onConfirm: () => void; onCancel: () => void;
}) {
  if (!open) return null;
  return (
    <Modal transparent animationType="slide" onRequestClose={onCancel}>
      <Pressable style={ts.overlay} onPress={onCancel} />
      <View style={ts.bottomSheet}>
        <LinearGradient
          colors={["transparent", danger ? "rgba(239,68,68,0.0)" : "rgba(124,58,237,0.0)"]}
          style={ts.sheetAccentLine}
        />
        <View style={[ts.sheetAccentBar, { backgroundColor: danger ? "#ef4444" : "#7C3AED" }]} />
        <View style={ts.sheetHandle} />
        <Text style={ts.sheetTitle}>{title}</Text>
        {desc ? <Text style={ts.sheetDesc}>{desc}</Text> : null}
        <View style={ts.sheetBtns}>
          <Pressable onPress={onCancel} style={ts.sheetCancelBtn}>
            <Text style={ts.sheetCancelText}>إلغاء</Text>
          </Pressable>
          <Pressable
            onPress={() => { onConfirm(); onCancel(); }}
            style={[ts.sheetConfirmBtn, danger && ts.sheetConfirmDanger]}
          >
            <Text style={[ts.sheetConfirmText, danger && { color: "#fca5a5" }]}>{confirmLabel}</Text>
          </Pressable>
        </View>
      </View>
    </Modal>
  );
}

/* ── Report Sheet ── */
function ReportSheet({ open, onClose }: { open: boolean; onClose: () => void }) {
  const [type, setType] = useState("bug");
  const [msg, setMsg] = useState("");
  const [status, setStatus] = useState<"idle" | "sending" | "ok" | "err">("idle");
  const [errMsg, setErrMsg] = useState("");

  useEffect(() => {
    if (open) { setType("bug"); setMsg(""); setStatus("idle"); setErrMsg(""); }
  }, [open]);

  const send = async () => {
    if (!msg.trim()) return;
    setStatus("sending");
    try {
      const r = await fetch(`${getBaseUrl()}/api/report`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ type, message: msg.trim(), page: "mobile/settings" }),
      });
      const d = await r.json();
      if (d.ok) setStatus("ok");
      else { setErrMsg(d.error || "فشل الإرسال"); setStatus("err"); }
    } catch {
      setErrMsg("تعذّر الاتصال بالخادم"); setStatus("err");
    }
  };

  if (!open) return null;

  return (
    <Modal transparent animationType="slide" onRequestClose={onClose}>
      <Pressable style={ts.overlay} onPress={onClose} />
      <View style={[ts.bottomSheet, { maxHeight: "92%" }]}>
        <View style={[ts.sheetAccentBar, { backgroundColor: "#7C3AED" }]} />
        <View style={ts.sheetHandle} />
        {/* Header */}
        <View style={ts.reportHeader}>
          <Pressable onPress={onClose} style={ts.reportCloseBtn}>
            <Ionicons name="close" size={16} color="rgba(255,255,255,0.5)" />
          </Pressable>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
            <View style={ts.reportIconWrap}>
              <Ionicons name="alert-circle-outline" size={16} color="#c4b5fd" />
            </View>
            <Text style={ts.reportTitle}>التواصل معنا</Text>
          </View>
          <View style={{ width: 36 }} />
        </View>
        <ScrollView style={{ flex: 1 }} contentContainerStyle={{ padding: 20 }} showsVerticalScrollIndicator={false}>
          {status === "ok" ? (
            <View style={{ alignItems: "center", gap: 16, paddingVertical: 32 }}>
              <View style={ts.successIcon}>
                <Ionicons name="checkmark-circle" size={40} color="#34d399" />
              </View>
              <Text style={ts.successTitle}>تم الإرسال! 🎉</Text>
              <Text style={ts.successSub}>وصلت رسالتك بنجاح · سنرد عليك في أقرب وقت</Text>
              <Pressable onPress={onClose} style={ts.successBtn}>
                <Text style={ts.successBtnText}>حسناً</Text>
              </Pressable>
            </View>
          ) : (
            <>
              {/* Type selector */}
              <Text style={ts.reportFieldLabel}>نوع الرسالة</Text>
              <View style={ts.reportTypeGrid}>
                {REPORT_TYPES.map(t => (
                  <Pressable
                    key={t.id}
                    onPress={() => setType(t.id)}
                    style={[ts.reportTypeBtn,
                      { backgroundColor: t.bg, borderColor: type === t.id ? "rgba(139,92,246,0.55)" : t.border }
                    ]}
                  >
                    <Ionicons name={t.icon} size={14} color={type === t.id ? "#c4b5fd" : t.color} />
                    <Text style={[ts.reportTypeBtnText, { color: type === t.id ? "#c4b5fd" : "rgba(255,255,255,0.7)" }]}>{t.label}</Text>
                    {type === t.id && <View style={ts.reportTypeDot} />}
                  </Pressable>
                ))}
              </View>

              {/* Textarea */}
              <Text style={[ts.reportFieldLabel, { marginTop: 16 }]}>رسالتك</Text>
              <TextInput
                value={msg}
                onChangeText={setMsg}
                multiline
                numberOfLines={5}
                textAlignVertical="top"
                placeholder={
                  type === "bug" ? "صف المشكلة التي واجهتها بالتفصيل…" :
                  type === "suggestion" ? "شاركنا اقتراحك أو فكرتك…" :
                  type === "content" ? "اذكر اسم الأنمي أو الحلقة المفقودة…" :
                  "اكتب رسالتك هنا…"
                }
                placeholderTextColor="rgba(255,255,255,0.2)"
                style={[ts.reportTextarea, { borderColor: msg.trim() ? "rgba(139,92,246,0.4)" : "rgba(255,255,255,0.08)" }]}
              />
              <Text style={[ts.reportCharCount, { color: msg.length > 900 ? "#f87171" : "rgba(255,255,255,0.2)" }]}>{msg.length}/1000</Text>

              {status === "err" && (
                <View style={ts.reportError}>
                  <Ionicons name="close-circle" size={14} color="#f87171" />
                  <Text style={ts.reportErrorText}>{errMsg}</Text>
                </View>
              )}

              <Pressable
                onPress={send}
                disabled={status === "sending" || !msg.trim()}
                style={[ts.reportSendBtn,
                  !msg.trim() && { backgroundColor: "rgba(255,255,255,0.05)", borderColor: "rgba(255,255,255,0.06)" }
                ]}
              >
                {status === "sending" ? (
                  <ActivityIndicator color="#fff" size="small" />
                ) : (
                  <>
                    <Ionicons name="send" size={16} color={msg.trim() ? "#fff" : "rgba(255,255,255,0.25)"} />
                    <Text style={[ts.reportSendText, !msg.trim() && { color: "rgba(255,255,255,0.25)" }]}>إرسال الرسالة</Text>
                  </>
                )}
              </Pressable>
              <Text style={ts.reportNote}>سيتم إرسال رسالتك مباشرة عبر تيليجرام</Text>
            </>
          )}
        </ScrollView>
      </View>
    </Modal>
  );
}

/* ── Section Header ── */
function SectionHeader({ title, icon }: { title: string; icon: string }) {
  return (
    <View style={ts.sectionHeader}>
      <View style={ts.sectionLine} />
      <Text style={ts.sectionTitle}>{icon} {title}</Text>
      <View style={ts.sectionLine} />
    </View>
  );
}

/* ── Card ── */
function Card({ children }: { children: React.ReactNode }) {
  return (
    <View style={ts.card}>
      {children}
    </View>
  );
}

/* ── Nav Row ── */
function NavRow({ icon, iconColor, iconBg, label, sub, badge, onPress, external }: {
  icon: keyof typeof Ionicons.glyphMap;
  iconColor: string; iconBg: string;
  label: string; sub?: string; badge?: string;
  onPress?: () => void; external?: boolean;
}) {
  return (
    <Pressable onPress={onPress} style={ts.navRow}>
      <View style={[ts.navIcon, { backgroundColor: iconBg }]}>
        <Ionicons name={icon} size={16} color={iconColor} />
      </View>
      <View style={ts.navText}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
          <Text style={ts.navLabel}>{label}</Text>
          {badge && <View style={ts.navBadge}><Text style={ts.navBadgeText}>{badge}</Text></View>}
        </View>
        {sub && <Text style={ts.navSub}>{sub}</Text>}
      </View>
      <Ionicons name={external ? "open-outline" : "chevron-back"} size={14} color="rgba(255,255,255,0.2)" />
    </Pressable>
  );
}

/* ── Danger Row ── */
function DangerRow({ label, sub, onPress }: { label: string; sub?: string; onPress: () => void }) {
  return (
    <Pressable onPress={onPress} style={ts.dangerRow}>
      <View style={ts.dangerIcon}>
        <Ionicons name="trash-outline" size={16} color="#f87171" />
      </View>
      <View style={ts.navText}>
        <Text style={ts.dangerLabel}>{label}</Text>
        {sub && <Text style={ts.dangerSub}>{sub}</Text>}
      </View>
      <Ionicons name="chevron-back" size={14} color="rgba(248,113,113,0.25)" />
    </Pressable>
  );
}

/* ══════════════════════ MAIN ══════════════════════ */
export default function SettingsScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { theme, setTheme, watchHistory, favorites, refreshConfig } = useApp();
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const { toast, show: showToast } = useToast();
  const [notifs, setNotifs] = useState(true);
  const [showReport, setShowReport] = useState(false);
  const [confirm, setConfirm] = useState<{
    open: boolean; title: string; desc?: string; confirmLabel?: string;
    danger?: boolean; onConfirm: () => void;
  }>({ open: false, title: "", onConfirm: () => {} });

  const [cacheKb, setCacheKb] = useState(0);
  const [histCount, setHistCount] = useState(0);
  const [savedCount, setSavedCount] = useState(0);

  useEffect(() => {
    const load = async () => {
      try {
        const keys = await AsyncStorage.getAllKeys();
        let total = 0;
        for (const k of keys) {
          const v = await AsyncStorage.getItem(k);
          total += k.length + (v?.length || 0);
        }
        setCacheKb(Math.round(total / 1024));
        setHistCount(watchHistory.length);
        setSavedCount(favorites.length);
      } catch {}
    };
    load();
  }, [watchHistory, favorites]);

  const openConfirm = useCallback((opts: typeof confirm) => setConfirm(opts), []);
  const closeConfirm = () => setConfirm(p => ({ ...p, open: false }));

  const currentTheme = THEMES.find(t => t.value === theme) || THEMES[0];

  const handleSetTheme = async (t: string) => {
    await setTheme(t as any);
    showToast(`تم تغيير الثيم إلى ${THEMES.find(th => th.value === t)?.label}`);
  };

  const handleClearHistory = () => openConfirm({
    open: true,
    title: "مسح سجل المشاهدة",
    desc: `سيتم حذف ${histCount} حلقة من سجل مشاهدتك بشكل نهائي.`,
    confirmLabel: "امسح السجل",
    danger: true,
    onConfirm: async () => {
      await AsyncStorage.removeItem("nova-history");
      setHistCount(0);
      showToast("تم مسح سجل المشاهدة");
    },
  });

  const handleClearFavorites = () => openConfirm({
    open: true,
    title: "مسح قائمة المحفوظات",
    desc: `سيتم حذف ${savedCount} أنمي من مفضّلتك بشكل نهائي.`,
    confirmLabel: "امسح المفضّلة",
    danger: true,
    onConfirm: async () => {
      await AsyncStorage.removeItem("nova-favorites");
      setSavedCount(0);
      showToast("تم مسح قائمة المحفوظات");
    },
  });

  const handleClearCache = () => openConfirm({
    open: true,
    title: "إعادة تعيين التطبيق",
    desc: "سيتم مسح جميع الإعدادات والبيانات المحفوظة. ستحتاج لإعادة الضبط.",
    confirmLabel: "إعادة التعيين",
    danger: true,
    onConfirm: async () => {
      await AsyncStorage.clear();
      showToast("تم مسح الكاش والإعدادات");
    },
  });

  return (
    <View style={{ flex: 1, backgroundColor: "#09090B" }}>
      {/* Toast */}
      {toast && (
        <View style={[ts.toastWrap, { top: topPad + 8 }]}>
          <ToastBanner toast={toast} />
        </View>
      )}

      {/* Sticky Header */}
      <View style={[ts.header, { paddingTop: topPad }]}>
        <Pressable onPress={() => router.back()} style={ts.headerBackBtn}>
          <Ionicons name="chevron-forward" size={16} color="rgba(255,255,255,0.5)" />
        </Pressable>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 10, flex: 1 }}>
          <View style={ts.headerIconWrap}>
            <Ionicons name="settings-outline" size={16} color="#c4b5fd" />
          </View>
          <Text style={ts.headerTitle}>الإعدادات</Text>
        </View>
        <View style={ts.headerBadge}>
          <View style={ts.headerDot} />
          <Text style={ts.headerBadgeText}>ANIME NOVA · v2.4</Text>
        </View>
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 60 }}>

        {/* ── Profile / Login card ── */}
        <View style={{ paddingHorizontal: 16, marginTop: 20 }}>
          <Pressable
            onPress={() => showToast("تسجيل الدخول قريباً في التطبيق")}
            style={ts.profileCard}
          >
            <View style={ts.profileAvatar}>
              <Ionicons name="person-outline" size={24} color="rgba(255,255,255,0.3)" />
            </View>
            <View style={{ flex: 1, alignItems: "flex-end" }}>
              <Text style={ts.profileLoginTitle}>تسجيل الدخول</Text>
              <Text style={ts.profileLoginSub}>احفظ قائمتك ومتابعتك عبر الأجهزة</Text>
            </View>
            <View style={ts.profileLoginBtn}>
              <Ionicons name="sparkles" size={14} color="#c4b5fd" />
              <Text style={ts.profileLoginBtnText}>دخول</Text>
            </View>
          </Pressable>
        </View>

        {/* ── 4-stat grid ── */}
        <View style={ts.statsGrid}>
          {[
            { label: "مشاهَدة", val: histCount,      color: "#a78bfa", bg: "rgba(139,92,246,0.10)" },
            { label: "محفوظة",  val: savedCount,     color: "#f472b6", bg: "rgba(236,72,153,0.10)" },
            { label: "الكاش",   val: `${cacheKb}KB`, color: "#22d3ee", bg: "rgba(6,182,212,0.10)" },
            { label: "مجاني",   val: "∞",            color: "#34d399", bg: "rgba(16,185,129,0.10)" },
          ].map(s => (
            <Pressable
              key={s.label}
              style={[ts.statCard, { backgroundColor: s.bg }]}
            >
              <Text style={[ts.statVal, { color: s.color }]}>{s.val}</Text>
              <Text style={ts.statLabel}>{s.label}</Text>
            </Pressable>
          ))}
        </View>

        {/* ── Nova Premium banner ── */}
        <View style={{ paddingHorizontal: 16, marginTop: 16 }}>
          <Pressable style={ts.premiumCard}>
            {/* Glow */}
            <View style={ts.premiumGlow} />
            <View style={{ flexDirection: "row", alignItems: "center", gap: 12 }}>
              <View style={ts.premiumIcon}>
                <Ionicons name="ribbon" size={20} color="#fbbf24" />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={ts.premiumTitle}>Nova Premium ⭐</Text>
                <Text style={ts.premiumSub}>اشترك الآن · إزالة الإعلانات · مميزات حصرية</Text>
              </View>
              <View style={ts.premiumBtn}>
                <Text style={ts.premiumBtnText}>اشترك</Text>
                <Ionicons name="chevron-back" size={14} color="#fbbf24" />
              </View>
            </View>
            <View style={ts.premiumFeatures}>
              {["بدون إعلانات", "جودة أعلى", "تخطي المقدمة"].map(f => (
                <View key={f} style={ts.premiumFeatureItem}>
                  <Ionicons name="checkmark" size={10} color="#fbbf24" />
                  <Text style={ts.premiumFeatureText}>{f}</Text>
                </View>
              ))}
            </View>
          </Pressable>
        </View>

        {/* ══════ المظهر ══════ */}
        <SectionHeader title="المظهر" icon="🎨" />
        <View style={{ paddingHorizontal: 16 }}>
          <Card>
            <View style={{ padding: 16 }}>
              <View style={{ flexDirection: "row", alignItems: "center", gap: 12, marginBottom: 16 }}>
                <View style={[ts.themePreviewDot, { backgroundColor: currentTheme.dot + "22" }]}>
                  <View style={[ts.themePreviewInner, { backgroundColor: currentTheme.dot }]} />
                </View>
                <View style={{ flex: 1, alignItems: "flex-end" }}>
                  <Text style={ts.navLabel}>ثيم التطبيق</Text>
                  <Text style={ts.navSub}>الثيم الحالي: {currentTheme.label} · {currentTheme.desc}</Text>
                </View>
              </View>
              <View style={ts.themesRow}>
                {THEMES.map(t => {
                  const active = theme === t.value;
                  return (
                    <Pressable
                      key={t.value}
                      onPress={() => handleSetTheme(t.value)}
                      style={[ts.themeBtn, {
                        backgroundColor: active ? t.dot + "18" : "rgba(255,255,255,0.03)",
                        borderColor: active ? t.dot + "60" : "rgba(255,255,255,0.06)",
                      }]}
                    >
                      <View style={[ts.themeDot, {
                        backgroundColor: t.dot,
                        shadowColor: active ? t.dot : "transparent",
                        shadowOpacity: active ? 0.9 : 0,
                        shadowRadius: active ? 8 : 0,
                        shadowOffset: { width: 0, height: 0 },
                        elevation: active ? 6 : 0,
                      }]}>
                        {active && (
                          <View style={ts.themeCheck}>
                            <Ionicons name="checkmark" size={10} color="#fff" />
                          </View>
                        )}
                      </View>
                      <Text style={[ts.themeLabel, { color: active ? t.dot : "rgba(255,255,255,0.30)" }]}>{t.label}</Text>
                    </Pressable>
                  );
                })}
              </View>
            </View>
          </Card>
        </View>

        {/* ══════ الإشعارات ══════ */}
        <SectionHeader title="الإشعارات" icon="🔔" />
        <View style={{ paddingHorizontal: 16 }}>
          <Card>
            <Pressable onPress={() => setNotifs(!notifs)} style={ts.navRow}>
              <View style={[ts.navIcon, {
                backgroundColor: notifs ? "rgba(251,191,36,0.10)" : "rgba(255,255,255,0.05)"
              }]}>
                <Ionicons
                  name={notifs ? "notifications" : "notifications-off-outline"}
                  size={16}
                  color={notifs ? "#fbbf24" : "rgba(255,255,255,0.3)"}
                />
              </View>
              <View style={[ts.navText, { alignItems: "flex-end" }]}>
                <Text style={ts.navLabel}>إشعارات الحلقات الجديدة</Text>
                <Text style={ts.navSub}>
                  {notifs ? "مفعّلة · ستصلك تنبيهات عند نزول حلقات جديدة" : "موقفة · لن تصلك أي تنبيهات"}
                </Text>
              </View>
              <Switch
                value={notifs}
                onValueChange={setNotifs}
                trackColor={{ false: "rgba(255,255,255,0.1)", true: "rgba(139,92,246,0.7)" }}
                thumbColor="#fff"
                ios_backgroundColor="rgba(255,255,255,0.1)"
              />
            </Pressable>
          </Card>
        </View>

        {/* ══════ عن التطبيق ══════ */}
        <SectionHeader title="عن التطبيق" icon="ℹ️" />
        <View style={{ paddingHorizontal: 16 }}>
          <Card>
            {/* Version */}
            <View style={ts.navRow}>
              <View style={[ts.navIcon, { backgroundColor: "rgba(139,92,246,0.10)" }]}>
                <Ionicons name="phone-portrait-outline" size={16} color="#a78bfa" />
              </View>
              <View style={[ts.navText, { alignItems: "flex-end" }]}>
                <Text style={ts.navLabel}>إصدار التطبيق</Text>
                <Text style={ts.navSub}>ANIME NOVA · تطبيق بث الأنمي العربي</Text>
              </View>
              <Text style={{ fontSize: 12, fontFamily: "Cairo_700Bold", color: "#a78bfa" }}>v2.4.0</Text>
            </View>
            {/* Privacy */}
            <View style={ts.navRow}>
              <View style={[ts.navIcon, { backgroundColor: "rgba(20,184,166,0.10)" }]}>
                <Ionicons name="shield-checkmark-outline" size={16} color="#2dd4bf" />
              </View>
              <View style={[ts.navText, { alignItems: "flex-end" }]}>
                <Text style={ts.navLabel}>الخصوصية والأمان</Text>
                <Text style={ts.navSub}>لا نجمع بيانات · بدون إعلانات · مجاني للجميع</Text>
              </View>
            </View>
            {/* Report issue */}
            <NavRow
              icon="alert-circle-outline" iconColor="#38bdf8" iconBg="rgba(56,189,248,0.10)"
              label="الإبلاغ عن مشكلة" sub="أخبرنا إذا واجهت أي خلل · يصلنا مباشرة"
              onPress={() => setShowReport(true)}
            />
            {/* Contact */}
            <NavRow
              icon="chatbubble-outline" iconColor="#f472b6" iconBg="rgba(236,72,153,0.10)"
              label="تواصل معنا" sub="اقتراحات · شراكات · مساعدة · يصلنا فوراً"
              onPress={() => setShowReport(true)}
            />
            {/* Telegram */}
            <NavRow
              icon="paper-plane-outline" iconColor="#34d399" iconBg="rgba(20,184,166,0.10)"
              label="مجموعتنا الرسمية" sub="انضم لقروب تيليجرام الرسمي"
              onPress={() => Linking.openURL("https://t.me/Anime_NOVA_0")}
              external
            />

          </Card>
        </View>

        {/* ══════ البيانات والكاش ══════ */}
        <SectionHeader title="البيانات والكاش" icon="🗑️" />
        <View style={{ paddingHorizontal: 16 }}>
          <Card>
            <DangerRow
              label="مسح سجل المشاهدة"
              sub={`${histCount} حلقة مشاهَدة · لا يمكن التراجع`}
              onPress={handleClearHistory}
            />
            <DangerRow
              label="مسح قائمة المحفوظات"
              sub={`${savedCount} أنمي محفوظ · لا يمكن التراجع`}
              onPress={handleClearFavorites}
            />
            <DangerRow
              label="مسح الكاش والإعدادات"
              sub={`${cacheKb}KB مُخزَّن · يعيد التطبيق للحالة الأولية`}
              onPress={handleClearCache}
            />
          </Card>
        </View>

        {/* ── Disclaimer ── */}
        <View style={ts.disclaimer}>
          <View style={{ flexDirection: "row", alignItems: "flex-start", gap: 10, marginBottom: 10 }}>
            <View style={ts.disclaimerIcon}>
              <Ionicons name="shield-outline" size={14} color="#a78bfa" />
            </View>
            <Text style={ts.disclaimerTitle}>إخلاء المسؤولية</Text>
          </View>
          <Text style={ts.disclaimerText}>
            هذا التطبيق لا يقوم باستضافة أو رفع أي محتوى مرئي.{"\n"}
            جميع المحتويات المعروضة يتم توفيرها من مصادر خارجية متاحة على الإنترنت.{"\n"}
            نحن لا نمتلك حقوق أي من المواد المعروضة، وجميع الحقوق محفوظة لأصحابها الأصليين.
          </Text>
        </View>

        {/* ── Footer ── */}
        <View style={ts.footer}>
          <View style={ts.footerLogo}>
            <Text style={ts.footerLogoText}>ANIME </Text>
            <Text style={[ts.footerLogoText, { color: "#a78bfa" }]}>NOVA</Text>
          </View>
          <Text style={ts.footerSub}>v2.4.0 · مجاني للجميع · 2025</Text>
        </View>
      </ScrollView>

      {/* Confirm Sheet */}
      <ConfirmSheet
        open={confirm.open}
        title={confirm.title}
        desc={confirm.desc}
        confirmLabel={confirm.confirmLabel}
        danger={confirm.danger}
        onConfirm={confirm.onConfirm}
        onCancel={closeConfirm}
      />

      {/* Report Sheet */}
      <ReportSheet open={showReport} onClose={() => setShowReport(false)} />
    </View>
  );
}

/* ═══════════════ STYLES ═══════════════ */
const ts = StyleSheet.create({
  /* Toast */
  toastWrap: { position: "absolute", left: 16, right: 16, zIndex: 9999, alignItems: "center" },
  toast: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 18, borderWidth: 1 },
  toastText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.9)" },

  /* Header */
  header: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 16, paddingBottom: 14,
    backgroundColor: "rgba(9,9,11,0.92)",
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerBackBtn: { width: 36, height: 36, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center" },
  headerIconWrap: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.18)", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)", alignItems: "center", justifyContent: "center" },
  headerTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerBadge: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 10, paddingVertical: 6, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  headerDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#34d399" },
  headerBadgeText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.3)" },

  /* Profile */
  profileCard: { flexDirection: "row", alignItems: "center", gap: 14, borderRadius: 20, padding: 16, backgroundColor: "rgba(17,17,22,0.95)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  profileAvatar: { width: 56, height: 56, borderRadius: 16, backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", alignItems: "center", justifyContent: "center" },
  profileLoginTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.8)", textAlign: "right" },
  profileLoginSub: { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 2, textAlign: "right" },
  profileLoginBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 8, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.18)", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  profileLoginBtnText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd" },

  /* Stats Grid */
  statsGrid: { flexDirection: "row", gap: 8, paddingHorizontal: 16, marginTop: 12 },
  statCard: { flex: 1, alignItems: "center", gap: 4, borderRadius: 14, paddingVertical: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  statVal: { fontSize: 16, fontFamily: "Cairo_800ExtraBold" },
  statLabel: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.30)" },

  /* Premium */
  premiumCard: { borderRadius: 20, padding: 16, overflow: "hidden", borderWidth: 1.5, borderColor: "rgba(251,191,36,0.32)", backgroundColor: "rgba(251,191,36,0.08)" },
  premiumGlow: { position: "absolute", top: 0, right: 0, bottom: 0, left: 0, backgroundColor: "transparent" },
  premiumIcon: { width: 44, height: 44, borderRadius: 14, backgroundColor: "rgba(251,191,36,0.20)", borderWidth: 1, borderColor: "rgba(251,191,36,0.38)", alignItems: "center", justifyContent: "center" },
  premiumTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fcd34d" },
  premiumSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(251,191,36,0.60)", marginTop: 2 },
  premiumBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12, backgroundColor: "rgba(251,191,36,0.18)", borderWidth: 1, borderColor: "rgba(251,191,36,0.30)" },
  premiumBtnText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fbbf24" },
  premiumFeatures: { flexDirection: "row", gap: 8, marginTop: 12 },
  premiumFeatureItem: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 4, paddingVertical: 6, borderRadius: 12, backgroundColor: "rgba(251,191,36,0.10)", borderWidth: 1, borderColor: "rgba(251,191,36,0.16)" },
  premiumFeatureText: { fontSize: 8, fontFamily: "Cairo_800ExtraBold", color: "rgba(253,211,77,0.70)" },

  /* Section Header */
  sectionHeader: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 16, paddingTop: 28, paddingBottom: 12 },
  sectionLine: { flex: 1, height: 1, backgroundColor: "rgba(255,255,255,0.06)" },
  sectionTitle: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.30)", letterSpacing: 1.2 },

  /* Card */
  card: { borderRadius: 20, overflow: "hidden", backgroundColor: "rgba(17,17,22,0.95)", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },

  /* Nav Row */
  navRow: { flexDirection: "row", alignItems: "center", gap: 14, paddingHorizontal: 20, paddingVertical: 14, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.045)" },
  navIcon: { width: 36, height: 36, borderRadius: 12, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  navText: { flex: 1 },
  navLabel: { fontSize: 13.5, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.85)", textAlign: "right" },
  navSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.30)", marginTop: 2, textAlign: "right" },
  navBadge: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(139,92,246,0.18)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)" },
  navBadgeText: { fontSize: 8, fontFamily: "Cairo_800ExtraBold", color: "#a78bfa" },

  /* Danger Row */
  dangerRow: { flexDirection: "row", alignItems: "center", gap: 14, paddingHorizontal: 20, paddingVertical: 14, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.045)" },
  dangerIcon: { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(239,68,68,0.10)", borderWidth: 1, borderColor: "rgba(239,68,68,0.20)", alignItems: "center", justifyContent: "center" },
  dangerLabel: { fontSize: 13.5, fontFamily: "Cairo_700Bold", color: "rgba(248,113,113,0.85)", textAlign: "right" },
  dangerSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(248,113,113,0.30)", marginTop: 2, textAlign: "right" },

  /* Theme */
  themePreviewDot: { width: 36, height: 36, borderRadius: 12, alignItems: "center", justifyContent: "center" },
  themePreviewInner: { width: 20, height: 20, borderRadius: 10 },
  themesRow: { flexDirection: "row", gap: 8 },
  themeBtn: { flex: 1, alignItems: "center", gap: 6, paddingVertical: 12, borderRadius: 16, borderWidth: 1 },
  themeDot: { width: 28, height: 28, borderRadius: 14, alignItems: "center", justifyContent: "center" },
  themeCheck: { position: "absolute", inset: 0, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(0,0,0,0.35)", borderRadius: 14 },
  themeLabel: { fontSize: 9, fontFamily: "Cairo_800ExtraBold" },

  /* Confirm Sheet */
  overlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.76)" },
  bottomSheet: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    backgroundColor: "#0E0C1A",
    borderTopLeftRadius: 32, borderTopRightRadius: 32,
    borderWidth: 1.5, borderBottomWidth: 0,
    borderColor: "rgba(255,255,255,0.07)",
    paddingBottom: 32,
  },
  sheetAccentLine: { height: 2, borderTopLeftRadius: 32, borderTopRightRadius: 32 },
  sheetAccentBar: { height: 2, borderTopLeftRadius: 32, borderTopRightRadius: 32, marginBottom: 0 },
  sheetHandle: { width: 40, height: 3.5, borderRadius: 2, backgroundColor: "rgba(255,255,255,0.12)", alignSelf: "center", marginTop: 12, marginBottom: 16 },
  sheetTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.9)", textAlign: "center", paddingHorizontal: 20, marginBottom: 8 },
  sheetDesc: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.40)", textAlign: "center", paddingHorizontal: 24, lineHeight: 20, marginBottom: 20 },
  sheetBtns: { flexDirection: "row", gap: 12, paddingHorizontal: 20 },
  sheetCancelBtn: { flex: 1, paddingVertical: 14, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", alignItems: "center" },
  sheetCancelText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.55)" },
  sheetConfirmBtn: { flex: 1, paddingVertical: 14, borderRadius: 18, backgroundColor: "#7C3AED", alignItems: "center", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  sheetConfirmDanger: { backgroundColor: "rgba(239,68,68,0.18)", borderColor: "rgba(239,68,68,0.30)" },
  sheetConfirmText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* Report Sheet */
  reportHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 20, paddingVertical: 12 },
  reportCloseBtn: { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", alignItems: "center", justifyContent: "center" },
  reportIconWrap: { width: 32, height: 32, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.18)", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)", alignItems: "center", justifyContent: "center" },
  reportTitle: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  reportFieldLabel: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.35)", marginBottom: 10, letterSpacing: 0.8 },
  reportTypeGrid: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
  reportTypeBtn: { flexDirection: "row", alignItems: "center", gap: 8, width: "48%", paddingHorizontal: 12, paddingVertical: 10, borderRadius: 14, borderWidth: 1 },
  reportTypeBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  reportTypeDot: { marginRight: "auto", width: 6, height: 6, borderRadius: 3, backgroundColor: "#a78bfa" },
  reportTextarea: { backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1.5, borderRadius: 18, paddingHorizontal: 16, paddingVertical: 14, fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.85)", minHeight: 120, textAlign: "right", lineHeight: 24 },
  reportCharCount: { fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "left", marginTop: 6 },
  reportError: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 14, paddingVertical: 10, borderRadius: 14, backgroundColor: "rgba(239,68,68,0.10)", borderWidth: 1, borderColor: "rgba(239,68,68,0.25)", marginTop: 12 },
  reportErrorText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(252,165,165,0.80)" },
  reportSendBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 16, borderRadius: 20, backgroundColor: "#7C3AED", borderWidth: 1, borderColor: "rgba(139,92,246,0.35)", marginTop: 16 },
  reportSendText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  reportNote: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.18)", textAlign: "center", marginTop: 12 },
  successIcon: { width: 80, height: 80, borderRadius: 40, backgroundColor: "rgba(16,185,129,0.14)", borderWidth: 2, borderColor: "rgba(16,185,129,0.35)", alignItems: "center", justifyContent: "center" },
  successTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.9)" },
  successSub: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.40)", textAlign: "center", lineHeight: 20 },
  successBtn: { paddingHorizontal: 32, paddingVertical: 12, borderRadius: 20, backgroundColor: "#7C3AED", marginTop: 8 },
  successBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* Disclaimer */
  disclaimer: { marginHorizontal: 16, marginTop: 28, borderRadius: 20, padding: 20, backgroundColor: "rgba(139,92,246,0.06)", borderWidth: 1, borderColor: "rgba(139,92,246,0.15)" },
  disclaimerIcon: { width: 32, height: 32, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },
  disclaimerTitle: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd", letterSpacing: 0.5, paddingTop: 6 },
  disclaimerText: { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.50)", lineHeight: 24, textAlign: "right" },

  /* Footer */
  footer: { alignItems: "center", gap: 8, paddingTop: 28, paddingBottom: 24 },
  footerLogo: { flexDirection: "row", alignItems: "center" },
  footerLogoText: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.80)", letterSpacing: 2 },
  footerSub: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.20)" },
});

import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import * as ImagePicker from "expo-image-picker";
import React, { useEffect, useState, useCallback } from "react";
import {
  ActivityIndicator, Image, Platform, ScrollView,
  StyleSheet, Text, TextInput, View, useWindowDimensions, I18nManager,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureFetch, setUserAuthToken } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const AUTH_KEY = "nova-mobile-user";
const PROFILE_OVERRIDE_KEY = "nova-profile-override";
const USER_COMMENTS_KEY = "nova-user-comments-log";
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

const AVATAR_COLORS = [
  ["#7c3aed", "#4c1d95"],
  ["#2563eb", "#1e3a8a"],
  ["#db2777", "#831843"],
  ["#059669", "#064e3b"],
  ["#ea580c", "#78350f"],
  ["#dc2626", "#7f1d1d"],
  ["#0891b2", "#164e63"],
  ["#6d28d9", "#2e1065"],
];

export type UserCommentEntry = {
  id: string;
  animeId: number;
  animeTitle: string;
  animeCover: string;
  episode: number;
  timeAgo: string;
  text: string;
};

type MobileUser = {
  id: string;
  email: string;
  displayName: string;
  username?: string;
  avatarColor?: number;
  profileImageUrl?: string | null;
};

type ProfileTab = "username" | "avatar" | "favorites" | "comments";

export default function ProfileScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const base = getBaseUrl();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  const { favorites, toggleFavorite, currentUser: globalUser, setCurrentUser: setGlobalUser } = useApp();

  const [activeTab, setActiveTab] = useState<ProfileTab>("username");
  const [user, setUser] = useState<MobileUser | null>(globalUser || null);
  const [displayName, setDisplayName] = useState(globalUser?.displayName || "");
  const [usernameInput, setUsernameInput] = useState(
    globalUser?.username ? `@${globalUser.username.replace(/^@/, "")}` : ""
  );
  const [loading, setLoading] = useState(false);
  const [uploadingImg, setUploadingImg] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");
  const [userComments, setUserComments] = useState<UserCommentEntry[]>([]);

  useEffect(() => {
    let isMounted = true;
    (async () => {
      let storedUser: MobileUser | null = null;
      let overrideData: Partial<MobileUser> = {};
      try {
        const [rawAuth, rawOverride, rawComments] = await Promise.all([
          AsyncStorage.getItem(AUTH_KEY),
          AsyncStorage.getItem(PROFILE_OVERRIDE_KEY),
          AsyncStorage.getItem(USER_COMMENTS_KEY),
        ]);
        if (rawAuth) storedUser = JSON.parse(rawAuth);
        if (rawOverride) overrideData = JSON.parse(rawOverride);
        if (rawComments) {
          const parsed = JSON.parse(rawComments);
          if (Array.isArray(parsed) && isMounted) {
            // Filter out any legacy hardcoded mock ids ("c-1", "c-2", "c-3")
            setUserComments(parsed.filter((c: any) => c && !["c-1", "c-2", "c-3"].includes(String(c.id))));
          }
        }
      } catch {}

      const initialBase = storedUser || globalUser;
      if (initialBase && isMounted) {
        const fallbackUsername =
          overrideData.username ||
          initialBase.username ||
          initialBase.email?.split("@")[0]?.replace(/[^a-zA-Z0-9_]/g, "_") ||
          "user";
        const merged: MobileUser = {
          ...initialBase,
          ...overrideData,
          displayName: overrideData.displayName || initialBase.displayName || "مستخدم",
          username: fallbackUsername,
          profileImageUrl:
            overrideData.profileImageUrl !== undefined
              ? overrideData.profileImageUrl
              : (initialBase.profileImageUrl ?? null),
        };
        setUser(merged);
        setDisplayName(merged.displayName || "");
        setUsernameInput(`@${String(fallbackUsername).replace(/^@/, "")}`);
      }

      try {
        const r = await secureFetch(`${base}/api/auth/me`);
        if (r.ok && isMounted) {
          const d: any = await r.json();
          if (d && d.id) {
            setUser(prev => {
              const baseObj: Partial<MobileUser> = prev || initialBase || { id: String(d.id), email: d.email || "", displayName: "مستخدم" };
              const nextUsername =
                overrideData.username ||
                baseObj.username ||
                d.username ||
                d.email?.split("@")[0]?.replace(/[^a-zA-Z0-9_]/g, "_") ||
                "user";
              const next: MobileUser = {
                ...baseObj,
                id: String(d.id),
                email: d.email || baseObj.email || "",
                displayName: overrideData.displayName || baseObj.displayName || d.displayName || d.display_name || "مستخدم",
                username: nextUsername,
                avatarColor: overrideData.avatarColor ?? baseObj.avatarColor ?? d.avatarColor ?? 0,
                profileImageUrl:
                  overrideData.profileImageUrl !== undefined
                    ? overrideData.profileImageUrl
                    : (baseObj.profileImageUrl || d.profileImageUrl || d.profile_image_custom || null),
              };
              setDisplayName(next.displayName || "");
              setUsernameInput(`@${String(nextUsername).replace(/^@/, "")}`);
              return next;
            });
          }
        }
      } catch {}
    })();
    return () => { isMounted = false; };
  }, [base]);

  const colorIdx = Math.min((user?.avatarColor ?? 0) % AVATAR_COLORS.length, AVATAR_COLORS.length - 1);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const letter = (user?.displayName || user?.email || "N").charAt(0).toUpperCase();

  const showMsg = useCallback((msg: string, ok: boolean) => {
    if (ok) { setSuccess(msg); setError(""); setTimeout(() => setSuccess(""), 2500); }
    else { setError(msg); setSuccess(""); }
  }, []);

  const persistUserUpdate = async (updated: MobileUser) => {
    await Promise.all([
      AsyncStorage.setItem(AUTH_KEY, JSON.stringify(updated)),
      AsyncStorage.setItem(
        PROFILE_OVERRIDE_KEY,
        JSON.stringify({
          displayName: updated.displayName,
          username: updated.username,
          avatarColor: updated.avatarColor,
          profileImageUrl: updated.profileImageUrl ?? null,
        })
      ),
    ]);
    setUser(updated);
    setGlobalUser(updated);
  };

  const handleSave = async () => {
    if (!displayName.trim()) { showMsg("الاسم الظاهر مطلوب", false); return; }
    const cleanUsername = usernameInput.trim().replace(/^@/, "") || "user";
    setLoading(true); setError(""); setSuccess("");
    try {
      const updated: MobileUser = {
        ...user!,
        displayName: displayName.trim(),
        username: cleanUsername,
      };
      await persistUserUpdate(updated);
      setUsernameInput(`@${cleanUsername}`);

      try {
        await secureFetch(`${base}/api/auth/profile`, {
          method: "PATCH",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({ displayName: displayName.trim(), username: cleanUsername }),
        });
      } catch {}

      showMsg("تم حفظ التعديلات بنجاح ✓", true);
    } catch {
      showMsg("حدث خطأ أثناء حفظ التعديلات", false);
    }
    setLoading(false);
  };

  const handleSelectAvatar = async (avatarUrl: string | null) => {
    if (!user) return;
    setUploadingImg(true);
    try {
      const updated: MobileUser = { ...user, profileImageUrl: avatarUrl };
      await persistUserUpdate(updated);
      try {
        await secureFetch(`${base}/api/auth/profile`, {
          method: "PATCH",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({ profileImageCustom: avatarUrl }),
        });
      } catch {}
      showMsg(avatarUrl ? "تم تحديث صورة البروفايل ✓" : "تمت إزالة الصورة ✓", true);
    } catch {
      showMsg("تعذّر تحديث الصورة", false);
    }
    setUploadingImg(false);
  };

  const handleSelectColor = async (idx: number) => {
    if (!user) return;
    const updated: MobileUser = { ...user, avatarColor: idx };
    await persistUserUpdate(updated);
    showMsg("تم تحديث لون الأفاتار ✓", true);
  };

  const handlePickImage = async () => {
    try {
      const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
      if (!perm.granted) {
        showMsg("الرجاء السماح بالوصول للصور", false);
        return;
      }
      const result = await ImagePicker.launchImageLibraryAsync({
        mediaTypes: ["images"],
        allowsEditing: true,
        aspect: [1, 1],
        quality: 0.6,
        base64: true,
      });
      if (result.canceled || !result.assets?.length) return;
      const asset = result.assets[0];
      const dataUrl = asset.base64 ? `data:image/jpeg;base64,${asset.base64}` : asset.uri;
      if (!dataUrl) { showMsg("تعذّر تحميل الصورة", false); return; }

      await handleSelectAvatar(dataUrl);
    } catch {
      showMsg("تعذّر رفع الصورة", false);
    }
  };

  const handleLogout = async () => {
    await setUserAuthToken(null);
    await Promise.all([
      AsyncStorage.removeItem(AUTH_KEY),
      AsyncStorage.removeItem(PROFILE_OVERRIDE_KEY),
    ]);
    setGlobalUser(null);
    try { await secureFetch(`${base}/api/auth/signout`, { method: "POST" }); } catch {}
    router.replace("/settings" as any);
  };

  const handleDeleteComment = async (commentId: string) => {
    const next = userComments.filter(c => c.id !== commentId);
    setUserComments(next);
    await AsyncStorage.setItem(USER_COMMENTS_KEY, JSON.stringify(next));
  };

  const realFavorites = favorites.map(f => ({
    id: f.id,
    title: f.title,
    titleEn: f.english || f.title,
    coverImage: f.thumbnail,
    score: f.score ? Number((f.score > 10 ? f.score / 10 : f.score).toFixed(1)) : null,
    episodes: f.episodes || null,
  }));

  const handleRemoveFavoriteItem = async (id: number) => {
    const existing = favorites.find(f => f.id === id);
    if (existing) {
      await toggleFavorite(existing);
    }
  };

  if (!user) {
    return (
      <View style={[s.container, { backgroundColor: colors.background, justifyContent: "center", alignItems: "center" }]}>
        <ActivityIndicator color="#0ea5e9" size="large" />
      </View>
    );
  }

  const cleanUserHandle = `@${(user.username || "user").replace(/^@/, "")}`;

  return (
    <View style={[s.container, { backgroundColor: "#090a0f" }]}>
      {/* ── Top Header: Back Button + Title on Physical Right, Back to Settings Pill on Physical Left ── */}
      <View style={[s.header, { paddingTop: topPad + 10 }]}>
        <View style={s.headerRightGroup}>
          <Pressable
            onPress={() => router.canGoBack() ? router.back() : router.replace("/settings" as any)}
            accessibilityRole="button"
            accessibilityLabel="رجوع"
            focusable={tvMode}
            style={({ focused }) => [s.backBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color="#f8fafc" />
          </Pressable>
          <View style={s.headerTitleBox}>
            <Text style={s.headerTitle}>إدارة الحساب</Text>
            <Text style={s.headerSubtitle}>تعديل اليوزر · صورة البروفايل · المفضلة · سجل تعليقاتك</Text>
          </View>
        </View>

        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/settings" as any)}
          style={s.backToSettingsPill}
        >
          <Text style={s.backToSettingsText}>رجوع للإعدادات</Text>
        </Pressable>
      </View>

      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingHorizontal: 14, paddingTop: 16, paddingBottom: 60 }}
        keyboardShouldPersistTaps="handled"
      >
        {/* ── User Summary Card ── */}
        <View style={s.userSummaryCard}>
          {/* Avatar on Physical Right */}
          <View style={s.summaryAvatarWrap}>
            {user.profileImageUrl ? (
              <Image source={{ uri: user.profileImageUrl }} style={s.summaryAvatarImg} />
            ) : (
              <LinearGradient colors={[g1, g2]} style={s.summaryAvatarImg}>
                <Text style={s.avatarLetter}>{letter}</Text>
              </LinearGradient>
            )}
          </View>

          {/* Info in Middle (Right-aligned) */}
          <View style={s.summaryInfoCol}>
            <View style={s.summaryNameRow}>
              <Text numberOfLines={1} style={s.summaryDisplayName}>{user.displayName}</Text>
              <View style={s.usernameBadge}>
                <Text style={s.usernameBadgeText}>{cleanUserHandle}</Text>
              </View>
            </View>
            <Text numberOfLines={1} style={s.summaryEmail}>{user.email}</Text>
          </View>

          {/* Logout Button on Physical Left */}
          <Pressable onPress={handleLogout} style={s.logoutPillBtn}>
            <Text style={s.logoutPillText}>تسجيل الخروج</Text>
          </Pressable>
        </View>

        {/* ── 4 Navigation Tabs (Right to Left) ── */}
        <View style={s.tabsRow}>
          {[
            { id: "username" as const, label: "اليوزر والاسم" },
            { id: "avatar" as const, label: "صورة البروفايل" },
            { id: "favorites" as const, label: `المفضلة (${realFavorites.length})` },
            { id: "comments" as const, label: `تعليقاتك (${userComments.length})` },
          ].map(tab => {
            const active = activeTab === tab.id;
            return (
              <Pressable
                key={tab.id}
                onPress={() => setActiveTab(tab.id)}
                style={[s.tabBtn, active && s.tabBtnActive]}
              >
                <Text style={[s.tabBtnText, active && s.tabBtnTextActive]}>
                  {tab.label}
                </Text>
              </Pressable>
            );
          })}
        </View>

        {/* Status Messages */}
        {!!error && (
          <View style={[s.msgBox, { backgroundColor: "rgba(239,68,68,0.12)", borderColor: "rgba(239,68,68,0.3)" }]}>
            <Ionicons name="alert-circle" size={15} color="#f87171" />
            <Text style={[s.msgText, { color: "#fca5a5" }]}>{error}</Text>
          </View>
        )}
        {!!success && (
          <View style={[s.msgBox, { backgroundColor: "rgba(16,185,129,0.12)", borderColor: "rgba(16,185,129,0.3)" }]}>
            <Ionicons name="checkmark-circle" size={15} color="#34d399" />
            <Text style={[s.msgText, { color: "#6ee7b7" }]}>{success}</Text>
          </View>
        )}

        {/* ── TAB 1: اليوزر والاسم ── */}
        {activeTab === "username" && (
          <View style={s.panelCard}>
            <Text style={s.fieldLabel}>اسم المستخدم (الاسم الظاهر)</Text>
            <View style={s.fieldInputWrap}>
              <TextInput
                value={displayName}
                onChangeText={v => { setDisplayName(v); setError(""); }}
                placeholder="اسمك الظاهر للآخرين"
                placeholderTextColor="#64748b"
                style={s.fieldInput}
                textAlign="right"
              />
            </View>

            <Text style={[s.fieldLabel, { marginTop: 18 }]}>اليوزر (معرّف الحساب @username)</Text>
            <View style={s.fieldInputWrap}>
              <TextInput
                value={usernameInput}
                onChangeText={v => {
                  const clean = v.replace(/\s+/g, "");
                  setUsernameInput(clean.startsWith("@") ? clean : `@${clean}`);
                  setError("");
                }}
                placeholder="@username"
                placeholderTextColor="#38bdf8"
                style={[s.fieldInput, { color: "#38bdf8", textAlign: "left" }]}
              />
            </View>

            <View style={s.saveActionRow}>
              <Text style={s.helperNote}>يظهر اسمك واليوزر في التعليقات والملف الشخصي</Text>
              <Pressable onPress={handleSave} disabled={loading} style={s.saveBlueBtn}>
                {loading ? (
                  <ActivityIndicator size="small" color="#fff" />
                ) : (
                  <>
                    <Ionicons name="checkmark" size={16} color="#fff" />
                    <Text style={s.saveBlueBtnText}>حفظ التعديلات</Text>
                  </>
                )}
              </Pressable>
            </View>
          </View>
        )}

        {/* ── TAB 2: صورة البروفايل ── */}
        {activeTab === "avatar" && (
          <View style={s.panelCard}>
            <View style={s.avatarCenterBox}>
              <View style={s.largeAvatarPreview}>
                {user.profileImageUrl ? (
                  <Image source={{ uri: user.profileImageUrl }} style={s.summaryAvatarImg} />
                ) : (
                  <LinearGradient colors={[g1, g2]} style={s.summaryAvatarImg}>
                    <Text style={[s.avatarLetter, { fontSize: 36 }]}>{letter}</Text>
                  </LinearGradient>
                )}
              </View>
              <Text style={s.avatarPanelTitle}>اختر صورة من جهازك أو خصّص لون الأفاتار الافتراضي</Text>

              <View style={s.avatarActionBtnsRow}>
                <Pressable onPress={handlePickImage} disabled={uploadingImg} style={s.uploadDeviceBtn}>
                  {uploadingImg ? (
                    <ActivityIndicator size="small" color="#38bdf8" />
                  ) : (
                    <>
                      <Ionicons name="image-outline" size={16} color="#38bdf8" />
                      <Text style={s.uploadDeviceBtnText}>رفع صورة من الجهاز</Text>
                    </>
                  )}
                </Pressable>

                {user.profileImageUrl ? (
                  <Pressable onPress={() => handleSelectAvatar(null)} disabled={uploadingImg} style={s.removeAvatarBtn}>
                    <Ionicons name="trash-outline" size={15} color="#f87171" />
                    <Text style={s.removeAvatarBtnText}>إزالة الصورة</Text>
                  </Pressable>
                ) : null}
              </View>
            </View>

            <Text style={[s.fieldLabel, { marginTop: 18 }]}>لون الأفاتار عند عدم وجود صورة:</Text>
            <View style={s.colorSwatchesRow}>
              {AVATAR_COLORS.map(([c1, c2], idx) => {
                const activeColor = colorIdx === idx && !user.profileImageUrl;
                return (
                  <Pressable
                    key={idx}
                    onPress={() => handleSelectColor(idx)}
                    style={[s.colorSwatchWrap, activeColor && s.colorSwatchWrapActive]}
                  >
                    <LinearGradient colors={[c1, c2]} style={s.colorSwatchCircle}>
                      {activeColor && <Ionicons name="checkmark" size={16} color="#fff" />}
                    </LinearGradient>
                  </Pressable>
                );
              })}
            </View>
          </View>
        )}

        {/* ── TAB 3: المفضلة ── */}
        {activeTab === "favorites" && (
          <View style={s.panelCard}>
            <View style={s.sectionTopRow}>
              <Text style={s.sectionMainTitle}>
                قائمة أنمياتك المفضلة المرتبطة بالحساب ({realFavorites.length})
              </Text>
              <Text style={s.cloudSyncBadge}>✓ مُزامنة سحابياً</Text>
            </View>

            {realFavorites.length === 0 ? (
              <View style={s.emptyBox}>
                <Ionicons name="heart-outline" size={36} color="#475569" />
                <Text style={s.emptyTitle}>لا توجد أعمال مضافة للمفضلة حالياً</Text>
                <Text style={s.emptySub}>أضف أي أنمي إلى المفضلة ليظهر هنا تلقائياً</Text>
              </View>
            ) : (
              <View style={{ gap: 10 }}>
                {realFavorites.map(item => (
                  <View key={item.id} style={s.favRowCard}>
                    <View style={s.favRightGroup}>
                      <Image source={{ uri: item.coverImage }} style={s.favPoster} />
                      <View style={s.favMetaCol}>
                        <Text numberOfLines={1} style={s.favTitle}>{item.title}</Text>
                        <Text style={s.favSubMeta}>
                          {item.score ? `★ ${item.score}` : "أنمي"}
                          {item.episodes ? `  •  ${item.episodes} حلقة` : ""}
                        </Text>
                      </View>
                    </View>

                    <View style={s.favActionsLeft}>
                      <Pressable
                        onPress={() =>
                          router.push(
                            `/anime/${item.id}?title=${encodeURIComponent(item.title)}&english=${encodeURIComponent(item.titleEn || item.title)}` as any
                          )
                        }
                        style={s.openItemBtn}
                      >
                        <Text style={s.openItemBtnText}>عرض</Text>
                      </Pressable>
                      <Pressable
                        onPress={() => handleRemoveFavoriteItem(item.id)}
                        style={s.deleteTrashBtn}
                      >
                        <Ionicons name="trash-outline" size={16} color="#f87171" />
                      </Pressable>
                    </View>
                  </View>
                ))}
              </View>
            )}
          </View>
        )}

        {/* ── TAB 4: تعليقاتك ── */}
        {activeTab === "comments" && (
          <View style={s.panelCard}>
            <View style={s.sectionTopRow}>
              <Text style={s.sectionMainTitle}>
                سجل تعليقاتك في الحلقات ({userComments.length})
              </Text>
              <Text style={s.commentHandleText}>{cleanUserHandle}</Text>
            </View>

            {userComments.length === 0 ? (
              <View style={s.emptyBox}>
                <Ionicons name="chatbubble-ellipses-outline" size={36} color="#475569" />
                <Text style={s.emptyTitle}>لم تقم بإضافة أي تعليقات بعد</Text>
                <Text style={s.emptySub}>ستظهر تعليقاتك على الحلقات هنا عند مشاركتك في النقاشات</Text>
              </View>
            ) : (
              <View style={{ gap: 12 }}>
                {userComments.map(c => (
                  <View key={c.id} style={s.commentItemCard}>
                    <View style={s.commentTopBar}>
                      <View style={s.commentRightMeta}>
                        {c.animeCover ? (
                          <Image source={{ uri: c.animeCover }} style={s.commentPoster} />
                        ) : null}
                        <View style={s.favMetaCol}>
                          <Text numberOfLines={1} style={s.favTitle}>{c.animeTitle}</Text>
                          <Text style={s.commentEpLine}>
                            <Text style={{ color: "#38bdf8", fontFamily: "Cairo_700Bold" }}>الحلقة {c.episode}</Text>
                            {"  •  "}
                            {c.timeAgo}
                          </Text>
                        </View>
                      </View>

                      <View style={s.favActionsLeft}>
                        <Pressable
                          onPress={() =>
                            router.push(
                              `/comments?animeId=${c.animeId}&ep=${c.episode}&title=${encodeURIComponent(c.animeTitle)}` as any
                            )
                          }
                          style={s.openItemBtn}
                        >
                          <Text style={s.openItemBtnText}>فتح المناقشة</Text>
                        </Pressable>
                        <Pressable
                          onPress={() => handleDeleteComment(c.id)}
                          style={s.deleteTrashBtn}
                        >
                          <Ionicons name="trash-outline" size={16} color="#f87171" />
                        </Pressable>
                      </View>
                    </View>

                    <Text style={s.commentBodyText}>{c.text}</Text>
                  </View>
                ))}
              </View>
            )}
          </View>
        )}
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 14,
    backgroundColor: "#0e1017",
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.06)",
  },
  headerRightGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    flex: 1,
  },
  headerTitleBox: {
    alignItems: "flex-end",
    flex: 1,
  },
  backBtn: {
    width: 38,
    height: 38,
    borderRadius: 19,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "#171a24",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.09)",
  },
  headerTitle: {
    fontSize: 17,
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
    textAlign: "right",
  },
  headerSubtitle: {
    fontSize: 10,
    fontFamily: "Cairo_600SemiBold",
    color: "#64748b",
    textAlign: "right",
    marginTop: 1,
  },
  backToSettingsPill: {
    paddingHorizontal: 14,
    paddingVertical: 7,
    borderRadius: 999,
    backgroundColor: "#141720",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.09)",
  },
  backToSettingsText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#cbd5e1",
  },
  userSummaryCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
    padding: 16,
    borderRadius: 20,
    backgroundColor: "#141622",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.07)",
    marginBottom: 14,
  },
  summaryAvatarWrap: {
    width: 68,
    height: 68,
    borderRadius: 18,
    overflow: "hidden",
    borderWidth: 2,
    borderColor: "#0ea5e9",
    backgroundColor: "#1e293b",
  },
  summaryAvatarImg: {
    width: "100%",
    height: "100%",
    alignItems: "center",
    justifyContent: "center",
  },
  avatarLetter: {
    fontSize: 28,
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
  },
  summaryInfoCol: {
    flex: 1,
    alignItems: "flex-end",
    justifyContent: "center",
    gap: 4,
  },
  summaryNameRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    flexWrap: "wrap",
  },
  summaryDisplayName: {
    fontSize: 16,
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
  },
  usernameBadge: {
    paddingHorizontal: 10,
    paddingVertical: 2,
    borderRadius: 999,
    backgroundColor: "rgba(14,165,233,0.16)",
    borderWidth: 1,
    borderColor: "rgba(14,165,233,0.4)",
  },
  usernameBadgeText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#38bdf8",
  },
  summaryEmail: {
    fontSize: 12,
    fontFamily: "Cairo_600SemiBold",
    color: "#94a3b8",
  },
  logoutPillBtn: {
    paddingHorizontal: 14,
    paddingVertical: 9,
    borderRadius: 14,
    backgroundColor: "rgba(127,29,29,0.32)",
    borderWidth: 1,
    borderColor: "rgba(239,68,68,0.32)",
  },
  logoutPillText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#fca5a5",
  },
  tabsRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    marginBottom: 14,
  },
  tabBtn: {
    flex: 1,
    paddingVertical: 10,
    paddingHorizontal: 6,
    borderRadius: 14,
    backgroundColor: "#12151f",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.07)",
    alignItems: "center",
    justifyContent: "center",
  },
  tabBtnActive: {
    backgroundColor: "rgba(14,165,233,0.16)",
    borderColor: "#0ea5e9",
  },
  tabBtnText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#cbd5e1",
    textAlign: "center",
  },
  tabBtnTextActive: {
    color: "#38bdf8",
  },
  msgBox: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 14,
    paddingHorizontal: 14,
    paddingVertical: 10,
    marginBottom: 12,
  },
  msgText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    flex: 1,
    textAlign: "right",
  },
  panelCard: {
    borderRadius: 20,
    padding: 16,
    backgroundColor: "#11131c",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.07)",
  },
  fieldLabel: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    color: "#cbd5e1",
    textAlign: "right",
    marginBottom: 8,
  },
  fieldInputWrap: {
    borderRadius: 14,
    backgroundColor: "#161924",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.08)",
    paddingHorizontal: 14,
  },
  fieldInput: {
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
    color: "#ffffff",
    paddingVertical: 12,
  },
  saveActionRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginTop: 18,
    gap: 10,
  },
  helperNote: {
    flex: 1,
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    color: "#64748b",
    textAlign: "right",
  },
  saveBlueBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 18,
    paddingVertical: 10,
    borderRadius: 14,
    backgroundColor: "#0ea5e9",
  },
  saveBlueBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
  },
  avatarCenterBox: {
    alignItems: "center",
    gap: 12,
    paddingVertical: 6,
  },
  largeAvatarPreview: {
    width: 88,
    height: 88,
    borderRadius: 24,
    overflow: "hidden",
    borderWidth: 2.5,
    borderColor: "#0ea5e9",
    backgroundColor: "#1e293b",
  },
  avatarPanelTitle: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    color: "#cbd5e1",
    textAlign: "center",
  },
  avatarActionBtnsRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
  },
  uploadDeviceBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 14,
    backgroundColor: "rgba(14,165,233,0.16)",
    borderWidth: 1,
    borderColor: "rgba(14,165,233,0.45)",
  },
  uploadDeviceBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    color: "#38bdf8",
  },
  removeAvatarBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderRadius: 14,
    backgroundColor: "rgba(127,29,29,0.28)",
    borderWidth: 1,
    borderColor: "rgba(239,68,68,0.35)",
  },
  removeAvatarBtnText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    color: "#fca5a5",
  },
  colorSwatchesRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 10,
    justifyContent: "flex-start",
  },
  colorSwatchWrap: {
    width: 44,
    height: 44,
    borderRadius: 14,
    padding: 2,
    borderWidth: 2,
    borderColor: "transparent",
  },
  colorSwatchWrapActive: {
    borderColor: "#38bdf8",
  },
  colorSwatchCircle: {
    flex: 1,
    borderRadius: 10,
    alignItems: "center",
    justifyContent: "center",
  },
  emptyBox: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 32,
    gap: 8,
  },
  emptyTitle: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    color: "#cbd5e1",
    textAlign: "center",
  },
  emptySub: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    color: "#64748b",
    textAlign: "center",
  },
  sectionTopRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 14,
  },
  sectionMainTitle: {
    fontSize: 13,
    fontFamily: "Cairo_800ExtraBold",
    color: "#f8fafc",
    textAlign: "right",
  },
  cloudSyncBadge: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#10b981",
  },
  commentHandleText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    color: "#0ea5e9",
  },
  favRowCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    padding: 12,
    borderRadius: 16,
    backgroundColor: "#161925",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.06)",
    gap: 10,
  },
  favRightGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
    flex: 1,
  },
  favPoster: {
    width: 48,
    height: 64,
    borderRadius: 10,
    backgroundColor: "#1e293b",
  },
  favMetaCol: {
    flex: 1,
    alignItems: "flex-end",
    gap: 3,
  },
  favTitle: {
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
    textAlign: "right",
  },
  favSubMeta: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    color: "#94a3b8",
    textAlign: "right",
  },
  favActionsLeft: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  openItemBtn: {
    paddingHorizontal: 14,
    paddingVertical: 7,
    borderRadius: 11,
    backgroundColor: "rgba(14,165,233,0.14)",
    borderWidth: 1,
    borderColor: "rgba(14,165,233,0.38)",
  },
  openItemBtnText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    color: "#38bdf8",
  },
  deleteTrashBtn: {
    width: 34,
    height: 34,
    borderRadius: 10,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(127,29,29,0.28)",
    borderWidth: 1,
    borderColor: "rgba(239,68,68,0.32)",
  },
  commentItemCard: {
    padding: 14,
    borderRadius: 16,
    backgroundColor: "#161925",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.06)",
    gap: 10,
  },
  commentTopBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    gap: 10,
  },
  commentRightMeta: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    flex: 1,
  },
  commentPoster: {
    width: 42,
    height: 56,
    borderRadius: 9,
    backgroundColor: "#1e293b",
  },
  commentEpLine: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    color: "#94a3b8",
    textAlign: "right",
  },
  commentBodyText: {
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    color: "#e2e8f0",
    textAlign: "right",
    lineHeight: 22,
  },
});

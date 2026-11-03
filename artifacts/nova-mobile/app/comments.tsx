import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator, FlatList, KeyboardAvoidingView, Platform,
  Image, StyleSheet, Text, TextInput, View, I18nManager,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";
const USER_COMMENTS_KEY = "nova-user-comments-log";

/* ── Types ── */
interface Comment {
  id: string;
  userId: string;
  username: string;
  displayName?: string | null;
  avatarUrl: string | null;
  text: string;
  likes: number;
  liked: boolean;
  createdAt: string;
  parentId: string | null;
  replyToUsername: string | null;
}

function timeAgo(value: string | number) {
  const raw = typeof value === "number" || /^\d+$/.test(String(value)) ? Number(value) : new Date(value).getTime();
  const timestamp = raw > 0 && raw < 10_000_000_000 ? raw * 1000 : raw;
  const diff = Math.max(0, Date.now() - timestamp);
  const s = Math.floor(diff / 1000);
  if (s < 60) return "الآن";
  const m = Math.floor(s / 60);
  if (m < 60) return `منذ ${m} ${m === 1 ? "دقيقة" : "دقائق"}`;
  const h = Math.floor(m / 60);
  if (h < 24) return `منذ ${h} ${h === 1 ? "ساعة" : "ساعات"}`;
  const d = Math.floor(h / 24);
  if (d < 30) return `منذ ${d} ${d === 1 ? "يوم" : "أيام"}`;
  return new Date(timestamp).toLocaleDateString("ar-EG");
}

function Avatar({ username, avatarUrl, size = 36 }: { username: string; avatarUrl?: string | null; size?: number }) {
  const colors = useColors();
  const s = useMemo(() => createCommentStyles(colors), [colors]);
  const [imageFailed, setImageFailed] = useState(false);
  const char = (username || "م")[0].toUpperCase();
  const hue = (username.charCodeAt(0) * 37) % 360;
  const br = size / 2;
  if (avatarUrl && !imageFailed) {
    return <Image source={{ uri: avatarUrl }} onError={() => setImageFailed(true)} style={[s.avatar, { width: size, height: size, borderRadius: br }]} />;
  }
  return (
    <View style={[s.avatar, { width: size, height: size, borderRadius: br, backgroundColor: `hsl(${hue},60%,36%)` }]}>
      <Text style={[s.avatarText, { fontSize: Math.round(size * 0.38) }]}>{char}</Text>
    </View>
  );
}

export default function CommentsPage() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const s = useMemo(() => createCommentStyles(colors), [colors]);
  const tvMode = isTvDevice();
  const params = useLocalSearchParams<{ animeId?: string; tmdbId?: string; ep?: string; title?: string; type?: string; highlightId?: string; commentId?: string }>();

  const animeId = params.animeId ? parseInt(params.animeId) : undefined;
  const tmdbId  = params.tmdbId || undefined;
  const epNum   = params.ep ? parseInt(params.ep) : undefined;
  const pageTitle = params.title
    ? (params.ep ? `الحلقة ${params.ep} — ${params.title}` : params.title)
    : "التعليقات";

  const [comments, setComments]   = useState<Comment[]>([]);
  const [highlightId, setHighlightId] = useState<string | null>(params.highlightId || params.commentId || null);
  const [loading, setLoading]     = useState(false);
  const [posting, setPosting]     = useState(false);
  const [text, setText]           = useState("");
  const [replyTo, setReplyTo]     = useState<Comment | null>(null);
  const [postError, setPostError] = useState<string | null>(null);
  const [myUserId, setMyUserId]     = useState<string | null>(null);
  const [myUsername, setMyUsername]   = useState<string | null>(null);
  const [myDisplayName, setMyDisplayName] = useState<string | null>(null);
  const [liking, setLiking]       = useState<Set<string>>(new Set());
  const [, refreshRelativeTimes] = useState(0);
  const inputRef  = useRef<TextInput>(null);
  const listRef   = useRef<FlatList>(null);

  useEffect(() => {
    loadComments();
    secureFetch(`${getBaseUrl()}/api/auth/me`).then(r => {
      if (r.ok) r.json().then((d: any) => {
        setMyUserId(d.id || null);
        setMyUsername(d.username || null);
        setMyDisplayName(d.displayName || d.display_name || null);
      });
    }).catch(() => {});
  }, []);

  useEffect(() => {
    const timer = setInterval(() => refreshRelativeTimes(value => value + 1), 30_000);
    return () => clearInterval(timer);
  }, []);

  async function loadComments() {
    setLoading(true);
    try {
      const base = getBaseUrl();
      const ps = new URLSearchParams();
      if (animeId) ps.set("animeId", String(animeId));
      if (tmdbId)  ps.set("tmdbId", tmdbId);
      if (epNum != null) ps.set("ep", String(epNum));
      const r = await secureFetch(`${base}/api/comments?${ps}`);
      if (r.ok) {
        const d = await r.json();
        const loaded: Comment[] = d.comments || [];
        setComments(loaded);
        const targetId = params.highlightId || params.commentId;
        if (targetId) {
          setHighlightId(targetId);
          setTimeout(() => {
            const idx = loaded.findIndex(c => String(c.id) === String(targetId));
            if (idx >= 0) {
              try { listRef.current?.scrollToIndex({ index: Math.max(0, idx), animated: true }); } catch {}
            }
          }, 400);
          setTimeout(() => setHighlightId(null), 5000);
        }
      }
    } catch {}
    setLoading(false);
  }

  async function postComment() {
    if (!text.trim()) return;
    setPosting(true);
    setPostError(null);
    try {
      const body: any = {
        text: text.trim(),
        username: myDisplayName || myUsername || "مستخدم",
        userHandle: myUsername || null,
        avatarUrl: null,
        animeType: params.type || (tmdbId ? "animation" : "anime"),
      };
      if (animeId) body.animeId = animeId;
      if (tmdbId)  body.tmdbId = tmdbId;
      if (epNum != null) body.episodeNumber = epNum;
      if (replyTo) {
        body.parentId = replyTo.parentId || replyTo.id;
        body.replyToUsername = replyTo.displayName || replyTo.username;
      }

      const r = await secureFetch(`${getBaseUrl()}/api/comments`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      if (r.ok) {
        const d = await r.json();
        if (d.comment) {
          setComments(prev => [...prev, d.comment]);
          setTimeout(() => listRef.current?.scrollToEnd({ animated: true }), 100);
          try {
            const rawLog = await AsyncStorage.getItem(USER_COMMENTS_KEY);
            const parsedLog = rawLog ? JSON.parse(rawLog) : [];
            const cleanLog = Array.isArray(parsedLog)
              ? parsedLog.filter((item: any) => item && !["c-1", "c-2", "c-3"].includes(String(item.id)))
              : [];
            const isAnimeLevel = epNum == null || epNum <= 0;
            const newEntry = {
              id: String(d.comment.id || Date.now()),
              animeId: animeId || 0,
              animeTitle: params.title || "أنمي",
              animeCover: "",
              episode: isAnimeLevel ? null : epNum,
              isAnimeDetail: isAnimeLevel,
              timeAgo: "الآن",
              text: text.trim(),
            };
            await AsyncStorage.setItem(USER_COMMENTS_KEY, JSON.stringify([newEntry, ...cleanLog]));
          } catch {}
        }
        setText(""); setReplyTo(null);
      } else if (r.status === 401) {
        setPostError("يلزم تسجيل حساب في التطبيق لإضافة تعليق");
      } else {
        const d = await r.json().catch(() => ({}));
        setPostError(d.error || "حدث خطأ أثناء الإرسال");
      }
    } catch { setPostError("تعذّر الاتصال بالخادم"); }
    setPosting(false);
  }

  const toggleLike = useCallback(async (c: Comment) => {
    if (liking.has(c.id)) return;
    setLiking(prev => new Set([...prev, c.id]));
    try {
      const r = await secureFetch(`${getBaseUrl()}/api/comments/${c.id}/like`, { method: "POST" });
      if (r.ok) {
        const d = await r.json();
        setComments(prev => prev.map(cm => cm.id === c.id
          ? { ...cm, liked: d.liked, likes: d.likes } : cm));
      }
    } catch {}
    setLiking(prev => { const ns = new Set(prev); ns.delete(c.id); return ns; });
  }, [liking]);

  const deleteComment = useCallback(async (c: Comment) => {
    try {
      await secureFetch(`${getBaseUrl()}/api/comments/${c.id}`, { method: "DELETE" });
      setComments(prev => prev.filter(cm => cm.id !== c.id));
    } catch {}
  }, []);

  const topLevel = comments.filter(c => !c.parentId);
  const replies  = (parentId: string) => comments.filter(c => c.parentId === parentId);

  const renderComment = (c: Comment, isReply = false) => {
    const isHighlighted = String(c.id) === String(highlightId);
    const childReplies = isReply ? [] : replies(c.id);
    const authorName = c.displayName || c.username || "مستخدم";

    return (
      <View
        key={c.id}
        style={[
          s.commentCard,
          isReply && s.replyCard,
          isHighlighted && {
            borderColor: "#06b6d4",
            borderWidth: 1.5,
            backgroundColor: "rgba(6, 182, 212, 0.14)",
          },
        ]}
      >
        <View style={s.commentRow}>
          <Avatar username={authorName} avatarUrl={c.avatarUrl} size={isReply ? 30 : 38} />

          <View style={s.commentBodyCol}>
            {/* Header Row: User Info on Right, Time on Left */}
            <View style={s.commentHeaderRow}>
              <View style={s.commentUserGroup}>
                <Text style={s.commentUser} numberOfLines={1}>{authorName}</Text>
                {c.username && c.displayName && c.username !== c.displayName && (
                  <Text style={s.commentHandle}>@{c.username}</Text>
                )}
                {c.replyToUsername && (
                  <View style={s.replyToBadge}>
                    <Ionicons name="return-down-back" size={11} color={colors.accent} />
                    <Text style={s.replyTag}>{c.replyToUsername}</Text>
                  </View>
                )}
              </View>
              <Text style={s.commentTime}>{timeAgo(c.createdAt)}</Text>
            </View>

            {/* Comment Text */}
            <View style={s.commentTextWrap}>
              <Text style={s.commentText}>{c.text}</Text>
            </View>

            {/* Actions Row */}
            <View style={s.commentActions}>
              <Pressable
                onPress={() => toggleLike(c)}
                focusable={tvMode}
                disabled={liking.has(c.id)}
                style={({ focused }) => [
                  s.actionPill,
                  c.liked && s.actionPillLiked,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons
                  name={c.liked ? "heart" : "heart-outline"}
                  size={13}
                  color={c.liked ? "#f43f5e" : colors.textMuted}
                />
                <Text style={[s.actionBtnText, c.liked && { color: "#f43f5e" }]}>
                  {c.likes > 0 ? String(c.likes) : "إعجاب"}
                </Text>
              </Pressable>

              <Pressable
                onPress={() => {
                  setReplyTo(c);
                  setTimeout(() => inputRef.current?.focus(), 100);
                }}
                focusable={tvMode}
                style={({ focused }) => [s.actionPill, s.actionPillReply, tvMode && tvFocusStyle(focused)]}
              >
                <Ionicons name="chatbubble-outline" size={12} color={colors.accent} />
                <Text style={[s.actionBtnText, { color: colors.accent }]}>رد</Text>
              </Pressable>

              {c.userId === myUserId && (
                <Pressable
                  onPress={() => deleteComment(c)}
                  focusable={tvMode}
                  style={({ focused }) => [s.actionPill, s.actionPillDelete, tvMode && tvFocusStyle(focused)]}
                >
                  <Ionicons name="trash-outline" size={13} color={colors.destructive} />
                </Pressable>
              )}
            </View>
          </View>
        </View>

        {/* Nested Replies Thread */}
        {childReplies.length > 0 && (
          <View style={s.repliesThreadWrap}>
            <View style={s.replyThreadBar} />
            <View style={s.repliesList}>
              {childReplies.map(r => renderComment(r, true))}
            </View>
          </View>
        )}
      </View>
    );
  };

  return (
    <View style={[s.container, { paddingTop: Platform.OS === "web" ? 0 : insets.top }]}>
      {/* Header */}
      <View style={s.header}>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
          focusable={tvMode}
          style={({ focused }) => [s.backBtn, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>

        <View style={s.headerCenterCol}>
          <View style={s.headerTitleRow}>
            <Ionicons name="chatbubbles" size={17} color={colors.accent} />
            <Text style={s.headerTitle} numberOfLines={1}>التعليقات</Text>
            {comments.length > 0 && (
              <View style={s.countBadge}>
                <Text style={s.countBadgeText}>{comments.length}</Text>
              </View>
            )}
          </View>
          {pageTitle !== "التعليقات" && (
            <Text style={s.headerSub} numberOfLines={1}>{pageTitle}</Text>
          )}
        </View>

        <Pressable onPress={loadComments} style={s.refreshBtn}>
          <Ionicons name="refresh" size={18} color={colors.textMuted} />
        </Pressable>
      </View>

      {/* Comments list */}
      {loading ? (
        <View style={s.center}>
          <ActivityIndicator color={colors.accent} size="large" />
          <Text style={s.loadingText}>جارٍ تحميل التعليقات...</Text>
        </View>
      ) : comments.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="chatbubble-ellipses-outline" size={54} color={colors.accentBorder} />
          <Text style={s.emptyText}>لا توجد تعليقات بعد</Text>
          <Text style={s.emptySubtext}>كن أول من يشارك رأيه حول هذا العمل!</Text>
        </View>
      ) : (
        <FlatList
          ref={listRef}
          data={topLevel}
          keyExtractor={c => c.id}
          renderItem={({ item }) => renderComment(item)}
          contentContainerStyle={s.listContent}
          showsVerticalScrollIndicator={false}
        />
      )}

      {/* Input */}
      <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : "height"}
        style={[s.inputArea, { paddingBottom: insets.bottom + 10 }]}
      >
        {replyTo && (
          <View style={s.replyBanner}>
            <View style={s.replyBannerRight}>
              <Ionicons name="return-down-back" size={15} color={colors.accent} />
              <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
                <Text style={s.replyBannerTitle}>
                  الرد على {replyTo.displayName || replyTo.username}
                </Text>
                <Text style={s.replyBannerText} numberOfLines={1}>
                  {replyTo.text}
                </Text>
              </View>
            </View>
            <Pressable onPress={() => setReplyTo(null)} style={s.replyBannerClose}>
              <Ionicons name="close" size={16} color={colors.textSecondary} />
            </Pressable>
          </View>
        )}
        {postError && (
          <View style={s.errorBanner}>
            <Ionicons name="alert-circle" size={14} color={colors.destructive} />
            <Text style={s.errorBannerText}>{postError}</Text>
            <Pressable onPress={() => setPostError(null)}>
              <Ionicons name="close" size={14} color={colors.textMuted} />
            </Pressable>
          </View>
        )}
        <View style={s.inputRow}>
          <Avatar username={myDisplayName || myUsername || "م"} size={38} />
          <TextInput
            ref={inputRef}
            style={[s.input, replyTo && { borderColor: colors.accentBorder }]}
            placeholder={replyTo ? `اكتب ردك على ${replyTo.displayName || replyTo.username}...` : "أضف تعليقاً..."}
            placeholderTextColor={colors.textMuted}
            value={text}
            onChangeText={t => { setText(t); setPostError(null); }}
            multiline
            maxLength={1000}
            textAlign="right"
          />
          <Pressable
            onPress={postComment}
            disabled={!text.trim() || posting}
            style={({ pressed }) => [
              s.sendBtn,
              (!text.trim() || posting) && s.sendBtnDisabled,
              pressed && { opacity: 0.85 },
            ]}
          >
            {posting ? (
              <ActivityIndicator size="small" color="#ffffff" />
            ) : (
              <>
                <Text style={s.sendBtnLabel}>إرسال</Text>
                <Ionicons
                  name="paper-plane"
                  size={14}
                  color="#ffffff"
                  style={{ transform: [{ scaleX: -1 }] }}
                />
              </>
            )}
          </Pressable>
        </View>
      </KeyboardAvoidingView>
    </View>
  );
}

function createCommentStyles(colors: ThemePalette) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    header: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      paddingHorizontal: 14,
      paddingVertical: 12,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      backgroundColor: colors.background,
    },
    backBtn: {
      width: 38,
      height: 38,
      borderRadius: 12,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
    },
    headerCenterCol: {
      flex: 1,
      alignItems: ALIGN_RIGHT,
      justifyContent: "center",
    },
    headerTitleRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 7,
    },
    headerTitle: {
      fontSize: 17,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    headerSub: {
      fontSize: 11,
      fontFamily: "Cairo_600SemiBold",
      color: colors.textMuted,
      marginTop: 1,
      textAlign: "right",
    },
    countBadge: {
      backgroundColor: colors.accentSurface,
      borderRadius: 10,
      paddingHorizontal: 8,
      paddingVertical: 2,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    countBadgeText: {
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      color: colors.accent,
    },
    refreshBtn: {
      width: 38,
      height: 38,
      borderRadius: 12,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
    },
    center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, paddingHorizontal: 24 },
    loadingText: { fontSize: 13, fontFamily: "Cairo_600SemiBold", color: colors.textMuted },
    emptyText: { fontSize: 16, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    emptySubtext: { fontSize: 12, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "center" },
    listContent: { padding: 14, gap: 12, paddingBottom: 20 },
    commentCard: {
      padding: 13,
      borderRadius: 18,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    replyCard: {
      padding: 11,
      borderRadius: 14,
      backgroundColor: "rgba(255, 255, 255, 0.03)",
      borderColor: "rgba(255, 255, 255, 0.07)",
    },
    commentRow: {
      flexDirection: ROW_RTL,
      alignItems: "flex-start",
      gap: 10,
    },
    commentBodyCol: {
      flex: 1,
      alignItems: ALIGN_RIGHT,
      gap: 5,
    },
    commentHeaderRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      width: "100%",
      gap: 8,
    },
    commentUserGroup: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      flexWrap: "wrap",
      gap: 6,
      flex: 1,
    },
    avatar: {
      alignItems: "center",
      justifyContent: "center",
      flexShrink: 0,
    },
    avatarText: { fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    commentUser: {
      fontSize: 13,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    commentHandle: {
      fontSize: 10.5,
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
    },
    replyToBadge: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 3,
      paddingHorizontal: 7,
      paddingVertical: 1,
      borderRadius: 8,
      backgroundColor: colors.accentSurface,
    },
    replyTag: {
      fontSize: 10,
      color: colors.accent,
      fontFamily: "Cairo_700Bold",
    },
    commentTime: {
      fontSize: 10.5,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
    },
    commentTextWrap: {
      width: "100%",
      alignItems: ALIGN_RIGHT,
    },
    commentText: {
      width: "100%",
      fontSize: 13.5,
      color: colors.textPrimary,
      lineHeight: 22,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
      writingDirection: "rtl",
    },
    commentActions: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      marginTop: 4,
    },
    actionPill: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 5,
      paddingHorizontal: 10,
      paddingVertical: 4,
      borderRadius: 10,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    actionPillLiked: {
      backgroundColor: "rgba(244, 63, 94, 0.12)",
      borderColor: "rgba(244, 63, 94, 0.32)",
    },
    actionPillReply: {
      backgroundColor: colors.accentSurface,
      borderColor: colors.accentBorder,
    },
    actionPillDelete: {
      backgroundColor: "rgba(239, 68, 68, 0.1)",
      borderColor: "rgba(239, 68, 68, 0.25)",
      paddingHorizontal: 8,
    },
    actionBtnText: {
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
    },
    repliesThreadWrap: {
      flexDirection: ROW_RTL,
      marginTop: 10,
      gap: 10,
      width: "100%",
    },
    replyThreadBar: {
      width: 2.5,
      borderRadius: 2,
      backgroundColor: colors.accentBorder,
      marginVertical: 4,
    },
    repliesList: {
      flex: 1,
      gap: 8,
    },
    inputArea: {
      borderTopWidth: 1,
      borderTopColor: colors.border,
      paddingHorizontal: 12,
      paddingTop: 10,
      gap: 8,
      backgroundColor: colors.surface,
    },
    replyBanner: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 8,
      backgroundColor: colors.accentSurface,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      paddingHorizontal: 12,
      paddingVertical: 8,
    },
    replyBannerRight: {
      flex: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
    },
    replyBannerTitle: {
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      color: colors.accent,
      textAlign: "right",
    },
    replyBannerText: {
      fontSize: 11,
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
    },
    replyBannerClose: {
      width: 26,
      height: 26,
      borderRadius: 13,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: "rgba(255,255,255,0.06)",
    },
    errorBanner: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 6,
      backgroundColor: colors.destructiveSurface,
      borderRadius: 10,
      borderWidth: 1,
      borderColor: colors.destructiveBorder,
      padding: 8,
    },
    errorBannerText: {
      flex: 1,
      fontSize: 11,
      color: colors.destructive,
      fontFamily: "Cairo_600SemiBold",
      textAlign: "right",
    },
    inputRow: {
      flexDirection: ROW_RTL,
      alignItems: "flex-end",
      gap: 8,
    },
    input: {
      flex: 1,
      minHeight: 42,
      maxHeight: 110,
      backgroundColor: colors.input,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      paddingHorizontal: 13,
      paddingVertical: 9,
      fontSize: 13,
      color: colors.textPrimary,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
      writingDirection: "rtl",
    },
    sendBtn: {
      minHeight: 42,
      paddingHorizontal: 14,
      flexDirection: ROW_RTL,
      gap: 6,
      backgroundColor: "#7c3aed",
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      borderWidth: 1,
      borderColor: "rgba(196, 181, 253, 0.35)",
    },
    sendBtnLabel: {
      color: "#ffffff",
      fontSize: 12,
      fontFamily: "Cairo_700Bold",
    },
    sendBtnDisabled: {
      opacity: 0.42,
    },
  });
}

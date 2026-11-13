import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator, FlatList, I18nManager, Image, KeyboardAvoidingView, Modal,
  Platform, StyleSheet, Text, TextInput, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";

const AUTH_KEY = "nova-mobile-user";
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

/* ── Types ── */
interface Comment {
  id: string;
  userId: string;
  username: string;
  userHandle: string | null;
  avatarUrl: string | null;
  text: string;
  likes: number;
  liked: boolean;
  createdAt: string;
  parentId: string | null;
  replyToUsername: string | null;
}

interface Props {
  visible: boolean;
  onClose: () => void;
  animeId?: number;
  tmdbId?: string;
  episodeNumber?: number | null;
  title?: string;
}

type MyUser = {
  id: string;
  displayName: string | null;
  username: string | null;
  avatarUrl: string | null;
  avatarColor: number;
};

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

/* Avatar: shows real photo if avatarUrl, otherwise letter + hue-color */
function Avatar({ username, avatarUrl, size = 36 }: { username: string; avatarUrl?: string | null; size?: number }) {
  const [imgError, setImgError] = useState(false);
  const char = (username || "م")[0].toUpperCase();
  const hue = (username.charCodeAt(0) * 37) % 360;
  const br = size / 2;

  if (avatarUrl && !imgError) {
    return (
      <Image
        source={{ uri: avatarUrl }}
        style={{ width: size, height: size, borderRadius: br }}
        onError={() => setImgError(true)}
      />
    );
  }
  return (
    <View style={[cs.avatar, { width: size, height: size, borderRadius: br, backgroundColor: `hsl(${hue},55%,35%)` }]}>
      <Text style={[cs.avatarText, { fontSize: size * 0.38 }]}>{char}</Text>
    </View>
  );
}

export function CommentsSheet({ visible, onClose, animeId, tmdbId, episodeNumber, title }: Props) {
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const tvMode = isTvDevice();
  const [comments, setComments] = useState<Comment[]>([]);
  const [loading, setLoading] = useState(false);
  const [posting, setPosting] = useState(false);
  const [text, setText] = useState("");
  const [replyTo, setReplyTo] = useState<Comment | null>(null);
  const [myUser, setMyUser] = useState<MyUser | null>(null);
  const [authChecked, setAuthChecked] = useState(false);
  const [liking, setLiking] = useState<Set<string>>(new Set());
  const inputRef = useRef<TextInput>(null);
  const listRef = useRef<FlatList>(null);

  /* Load user info + comments on open */
  useEffect(() => {
    if (!visible) return;
    setAuthChecked(true);
    loadUserInfo();
    loadComments();
  }, [visible]);

  async function loadUserInfo() {
    try {
      const raw = await AsyncStorage.getItem(AUTH_KEY);
      if (raw) {
        const u = JSON.parse(raw);
        setMyUser(prev => prev ?? {
          id:          u.id || "",
          displayName: u.displayName || null,
          username:    u.username || null,
          avatarUrl:   u.profileImageUrl || null,
          avatarColor: u.avatarColor ?? 0,
        });
      }
      const base = getBaseUrl();
      const r = await secureFetch(`${base}/api/auth/me`);
      if (r.ok) {
        const d = await r.json();
        setMyUser({
          id:          d.id || "",
          displayName: d.displayName || d.display_name || null,
          username:    d.username || null,
          avatarUrl:   d.profileImageUrl || d.profile_image_custom || d.profile_image_url
                       || d.profilePicture || d.picture || d.avatar || d.avatarUrl || null,
          avatarColor: d.avatarColor ?? 0,
        });
      }
    } catch {}
  }

  async function loadComments() {
    setLoading(true);
    try {
      const base = getBaseUrl();
      const params = new URLSearchParams();
      if (animeId) params.set("animeId", String(animeId));
      if (tmdbId)  params.set("tmdbId", tmdbId);
      if (episodeNumber != null) params.set("ep", String(episodeNumber));
      const r = await secureFetch(`${base}/api/comments?${params}`);
      if (r.ok) {
        const d = await r.json();
        setComments(d.comments || []);
      }
    } catch {}
    setLoading(false);
  }

  const [postError, setPostError] = useState<string | null>(null);
  const [, refreshRelativeTimes] = useState(0);

  useEffect(() => {
    const timer = setInterval(() => refreshRelativeTimes(value => value + 1), 30_000);
    return () => clearInterval(timer);
  }, []);

  async function postComment() {
    if (!text.trim()) return;
    setPosting(true);
    setPostError(null);
    try {
      const base = getBaseUrl();
      const displayName = myUser?.displayName || myUser?.username || "مستخدم";
      const body: any = {
        text:       text.trim(),
        username:   displayName,
        userHandle: myUser?.username || null,
        avatarUrl:  myUser?.avatarUrl || null,
        animeType:  tmdbId ? "animation" : "anime",
      };
      if (animeId) body.animeId = animeId;
      if (tmdbId)  body.tmdbId = tmdbId;
      if (episodeNumber != null) body.episodeNumber = episodeNumber;
      if (replyTo) {
        body.parentId = replyTo.parentId || replyTo.id;
        body.replyToUsername = replyTo.username;
      }

      const r = await secureFetch(`${base}/api/comments`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      if (r.ok) {
        const d = await r.json();
        if (d.comment) {
          setComments(prev => [...prev, d.comment]);
          setTimeout(() => listRef.current?.scrollToEnd({ animated: true }), 100);
        }
        setText("");
        setReplyTo(null);
      } else if (r.status === 401) {
        setPostError("يجب تسجيل الدخول لإضافة تعليق");
      } else {
        const d = await r.json().catch(() => ({}));
        setPostError(d.error || "حدث خطأ أثناء الإرسال");
      }
    } catch {
      setPostError("تعذّر الاتصال بالخادم");
    }
    setPosting(false);
  }

  const toggleLike = useCallback(async (c: Comment) => {
    if (liking.has(c.id)) return;
    setLiking(prev => new Set([...prev, c.id]));
    try {
      const base = getBaseUrl();
      const r = await secureFetch(`${base}/api/comments/${c.id}/like`, { method: "POST" });
      if (r.ok) {
        const d = await r.json();
        setComments(prev => prev.map(cm => cm.id === c.id
          ? { ...cm, liked: d.liked, likes: d.likes }
          : cm
        ));
      }
    } catch {}
    setLiking(prev => { const s = new Set(prev); s.delete(c.id); return s; });
  }, [liking]);

  const deleteComment = useCallback(async (c: Comment) => {
    try {
      const base = getBaseUrl();
      await secureFetch(`${base}/api/comments/${c.id}`, { method: "DELETE" });
      setComments(prev => prev.filter(cm => cm.id !== c.id));
    } catch {}
  }, []);

  const topLevel = comments.filter(c => !c.parentId);

  const renderComment = (c: Comment, isReply = false) => {
    const childReplies = isReply ? [] : comments.filter(r => r.parentId === c.id);
    return (
      <View key={c.id} style={[cs.commentCard, isReply && cs.replyCard]}>
        <View style={cs.commentWrap}>
          <Avatar username={c.username} avatarUrl={c.avatarUrl} size={isReply ? 30 : 36} />

          <View style={cs.commentBodyCol}>
            <View style={cs.commentMeta}>
              <View style={cs.commentUserGroup}>
                <Text style={[cs.commentUser, { color: colors.textPrimary }]} numberOfLines={1}>{c.username}</Text>
                {c.userHandle && (
                  <Text style={[cs.handleTag, { color: colors.textMuted }]}>@{c.userHandle}</Text>
                )}
                {c.replyToUsername && (
                  <Text style={cs.replyTag}>↩ {c.replyToUsername}</Text>
                )}
              </View>
              <Text style={[cs.commentTime, { color: colors.textMuted }]}>{timeAgo(c.createdAt)}</Text>
            </View>

            <Text style={[cs.commentText, { color: colors.textPrimary }]}>{c.text}</Text>

            <View style={cs.commentActions}>
              <Pressable
                onPress={() => toggleLike(c)}
                focusable={tvMode}
                style={({ focused }) => [cs.actionBtn, tvMode && tvFocusStyle(focused)]}
                disabled={liking.has(c.id)}
              >
                <Ionicons
                  name={c.liked ? "heart" : "heart-outline"}
                  size={13}
                  color={c.liked ? "#f87171" : "rgba(255,255,255,0.45)"}
                />
                <Text style={[cs.actionBtnText, { color: colors.textSecondary }, c.liked && { color: colors.destructive }]}>
                  {c.likes > 0 ? String(c.likes) : "إعجاب"}
                </Text>
              </Pressable>
              <Pressable
                onPress={() => { setReplyTo(c); setTimeout(() => inputRef.current?.focus(), 100); }}
                focusable={tvMode}
                style={({ focused }) => [cs.actionBtn, tvMode && tvFocusStyle(focused)]}
              >
                <Ionicons name="chatbubble-outline" size={12} color="rgba(167,139,250,0.85)" />
                <Text style={[cs.actionBtnText, { color: colors.accent }]}>رد</Text>
              </Pressable>
              {c.userId === myUser?.id && (
                <Pressable onPress={() => deleteComment(c)} focusable={tvMode}
                  style={({ focused }) => [cs.actionBtn, tvMode && tvFocusStyle(focused)]}>
                  <Ionicons name="trash-outline" size={13} color="rgba(239,68,68,0.65)" />
                </Pressable>
              )}
            </View>
          </View>
        </View>

        {childReplies.length > 0 && (
          <View style={cs.repliesThreadWrap}>
            <View style={cs.replyThreadBar} />
            <View style={cs.repliesList}>
              {childReplies.map(r => renderComment(r, true))}
            </View>
          </View>
        )}
      </View>
    );
  };

  if (!visible) return null;

  const sheetBody = (
    <View
      testID="nova-tv-modal-root"
      style={[
        { flex: 1, justifyContent: "flex-end" },
        (tvMode || Platform.OS === "android") && [StyleSheet.absoluteFillObject, { zIndex: 9999, elevation: 9999 }],
      ]}
    >
      <Pressable style={[cs.backdrop, StyleSheet.absoluteFillObject, { backgroundColor: colors.overlay }]} focusable={false} accessible={false} onPress={onClose} />
      <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : "height"}
        style={[cs.sheet, { backgroundColor: colors.surface, borderColor: colors.border, paddingBottom: insets.bottom + 8 }]}
      >
        {/* Handle */}
        <View style={cs.handleWrap}>
          <View style={cs.handle} />
        </View>

        {/* Header */}
        <View style={cs.header}>
          <View style={cs.headerLeft}>
            <Ionicons name="chatbubbles" size={18} color={colors.accent} />
            <Text style={[cs.headerTitle, { color: colors.textPrimary }]}>التعليقات</Text>
            {comments.length > 0 && (
              <View style={[cs.countBadge, { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }]}>
                <Text style={[cs.countBadgeText, { color: colors.accent }]}>{comments.length}</Text>
              </View>
            )}
          </View>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
            <Pressable
              onPress={loadComments}
              focusable={tvMode}
              style={({ focused }) => [cs.refreshBtn, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="refresh" size={16} color={colors.textSecondary} />
            </Pressable>
            <Pressable
              onPress={onClose}
              focusable={tvMode}
              hasTVPreferredFocus={tvMode}
              testID={tvMode ? "nova-tv-preferred-focus" : undefined}
              style={({ focused }) => [cs.refreshBtn, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="close" size={18} color={colors.textPrimary} />
            </Pressable>
          </View>
        </View>

        {/* Comment list */}
        {loading ? (
          <View style={cs.loadingWrap}>
            <ActivityIndicator color={colors.accent} />
          </View>
        ) : comments.length === 0 ? (
          <View style={cs.emptyWrap}>
            <Ionicons name="chatbubble-ellipses" size={40} color="rgba(139,92,246,0.25)" />
            <Text style={[cs.emptyText, { color: colors.textSecondary }]}>لا توجد تعليقات بعد</Text>
            <Text style={[cs.emptySubtext, { color: colors.textMuted }]}>كن أول من يعلّق!</Text>
          </View>
        ) : (
          <FlatList
            ref={listRef}
            removeClippedSubviews={false}
            data={topLevel}
            keyExtractor={c => c.id}
            renderItem={({ item }) => renderComment(item)}
            contentContainerStyle={cs.listContent}
            showsVerticalScrollIndicator={false}
          />
        )}

        {/* Input area */}
        {authChecked && (
          <View style={cs.inputArea}>
            {replyTo && (
              <View style={cs.replyBanner}>
                <Ionicons name="return-down-back" size={13} color={colors.accent} />
                <Text style={[cs.replyBannerText, { color: colors.accent }]} numberOfLines={1}>
                  رد على {replyTo.username}: {replyTo.text}
                </Text>
                <Pressable onPress={() => setReplyTo(null)}>
                  <Ionicons name="close-circle" size={15} color={colors.textMuted} />
                </Pressable>
              </View>
            )}
            {postError && (
              <View style={[cs.errorBanner, { backgroundColor: colors.destructiveSurface, borderColor: colors.destructiveBorder }]}>
                <Ionicons name="alert-circle" size={13} color="#f87171" />
                <Text style={[cs.errorBannerText, { color: colors.destructive }]}>{postError}</Text>
                <Pressable onPress={() => setPostError(null)}>
                  <Ionicons name="close" size={13} color={colors.textMuted} />
                </Pressable>
              </View>
            )}
            <View style={cs.inputRow}>
              <Avatar
                username={myUser?.displayName || myUser?.username || "م"}
                avatarUrl={myUser?.avatarUrl}
                size={34}
              />
              <TextInput
                ref={inputRef}
                style={[cs.input, { backgroundColor: colors.input, borderColor: colors.border, color: colors.textPrimary }]}
                placeholder={replyTo ? `الرد على ${replyTo.username}…` : "أضف تعليقاً…"}
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
                focusable={tvMode && Boolean(text.trim()) && !posting}
                style={({ focused }) => [
                  cs.sendBtn,
                  { backgroundColor: colors.button },
                  (!text.trim() || posting) && cs.sendBtnDisabled,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                {posting ? (
                  <ActivityIndicator size="small" color="#fff" />
                ) : (
                  <>
                    <Text style={cs.sendBtnLabel}>إرسال</Text>
                    <Ionicons name="paper-plane" size={14} color="#fff" style={{ transform: [{ scaleX: -1 }] }} />
                  </>
                )}
              </Pressable>
            </View>
          </View>
        )}
      </KeyboardAvoidingView>
    </View>
  );

  if (tvMode || Platform.OS === "android") {
    return sheetBody;
  }

  return (
    <Modal
      visible={visible}
      animationType="slide"
      transparent
      onRequestClose={onClose}
    >
      {sheetBody}
    </Modal>
  );
}

const cs = StyleSheet.create({
  backdrop: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.55)",
  },
  sheet: {
    backgroundColor: "#111116",
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    maxHeight: "80%",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.07)",
  },
  handleWrap: { alignItems: "center", paddingTop: 10 },
  handle: { width: 36, height: 4, backgroundColor: "rgba(255,255,255,0.15)", borderRadius: 2 },
  header: {
    flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 16, paddingVertical: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  headerLeft: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  headerTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  countBadge: {
    backgroundColor: "rgba(139,92,246,0.2)", borderRadius: 10,
    paddingHorizontal: 7, paddingVertical: 2,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.3)",
  },
  countBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  refreshBtn: { padding: 6 },
  loadingWrap: { height: 120, alignItems: "center", justifyContent: "center" },
  emptyWrap: { height: 140, alignItems: "center", justifyContent: "center", gap: 8 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.4)" },
  emptySubtext: { fontSize: 11, color: "rgba(255,255,255,0.2)", fontFamily: "Cairo_400Regular" },
  listContent: { padding: 14, gap: 12, paddingBottom: 8 },
  commentCard: {
    padding: 12,
    borderRadius: 16,
    backgroundColor: "rgba(255,255,255,0.03)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.07)",
  },
  replyCard: {
    padding: 10,
    borderRadius: 13,
    backgroundColor: "rgba(255,255,255,0.02)",
  },
  commentWrap: { flexDirection: ROW_RTL, alignItems: "flex-start", gap: 10 },
  commentBodyCol: { flex: 1, alignItems: ALIGN_RIGHT, gap: 4 },
  avatar: {
    alignItems: "center", justifyContent: "center", flexShrink: 0,
  },
  avatarText: { fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  commentMeta: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", width: "100%", gap: 6 },
  commentUserGroup: { flexDirection: ROW_RTL, alignItems: "center", gap: 6, flexWrap: "wrap", flex: 1 },
  commentUser: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#e2e2e2" },
  handleTag: { fontSize: 10, color: "rgba(167,139,250,0.55)", fontFamily: "Cairo_400Regular" },
  replyTag: { fontSize: 10, color: "rgba(139,92,246,0.85)", fontFamily: "Cairo_700Bold" },
  commentTime: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  commentText: {
    width: "100%",
    fontSize: 13, color: "rgba(255,255,255,0.88)", lineHeight: 20,
    fontFamily: "Cairo_400Regular", textAlign: "right", writingDirection: "rtl",
  },
  commentActions: { flexDirection: ROW_RTL, gap: 8, marginTop: 4 },
  actionBtn: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 4,
    paddingHorizontal: 9, paddingVertical: 3, borderRadius: 9,
    backgroundColor: "rgba(255,255,255,0.04)",
  },
  actionBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  repliesThreadWrap: { flexDirection: ROW_RTL, marginTop: 10, gap: 10, width: "100%" },
  replyThreadBar: { width: 2, borderRadius: 1, backgroundColor: "rgba(139,92,246,0.35)", marginVertical: 4 },
  repliesList: { flex: 1, gap: 8 },
  inputArea: {
    borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.06)",
    padding: 12, gap: 8,
  },
  replyBanner: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 6,
    backgroundColor: "rgba(139,92,246,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.2)",
    padding: 8,
  },
  replyBannerText: {
    flex: 1, fontSize: 11, color: "rgba(139,92,246,0.8)",
    fontFamily: "Cairo_400Regular", textAlign: "right",
  },
  inputRow: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 8 },
  input: {
    flex: 1, minHeight: 40, maxHeight: 100,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)",
    paddingHorizontal: 12, paddingVertical: 8,
    fontSize: 13, color: "#fff", fontFamily: "Cairo_400Regular",
    textAlign: "right", writingDirection: "rtl",
  },
  sendBtn: {
    minHeight: 40, paddingHorizontal: 13,
    flexDirection: ROW_RTL, gap: 5,
    backgroundColor: "#7C3AED", borderRadius: 14,
    alignItems: "center", justifyContent: "center",
  },
  sendBtnLabel: {
    color: "#ffffff", fontSize: 11.5, fontFamily: "Cairo_700Bold",
  },
  sendBtnDisabled: { backgroundColor: "rgba(124,58,237,0.3)" },
  errorBanner: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 6,
    backgroundColor: "rgba(239,68,68,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)",
    padding: 8,
  },
  errorBannerText: {
    flex: 1, fontSize: 11, color: "#f87171",
    fontFamily: "Cairo_400Regular", textAlign: "right",
  },
});

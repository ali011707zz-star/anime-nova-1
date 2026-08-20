import { Ionicons } from "@expo/vector-icons";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator, FlatList, KeyboardAvoidingView, Platform,
  Image, Pressable, StyleSheet, Text, TextInput, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";

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

function timeAgo(iso: string) {
  const diff = Date.now() - new Date(iso).getTime();
  const s = Math.floor(diff / 1000);
  if (s < 60) return "الآن";
  const m = Math.floor(s / 60);
  if (m < 60) return `منذ ${m} دقيقة`;
  const h = Math.floor(m / 60);
  if (h < 24) return `منذ ${h} ساعة`;
  const d = Math.floor(h / 24);
  if (d < 30) return `منذ ${d} يوم`;
  return new Date(iso).toLocaleDateString("ar-EG");
}

function Avatar({ username, avatarUrl }: { username: string; avatarUrl?: string | null }) {
  const [imageFailed, setImageFailed] = useState(false);
  const char = (username || "م")[0].toUpperCase();
  const hue = (username.charCodeAt(0) * 37) % 360;
  if (avatarUrl && !imageFailed) {
    return <Image source={{ uri: avatarUrl }} onError={() => setImageFailed(true)} style={s.avatar} />;
  }
  return (
    <View style={[s.avatar, { backgroundColor: `hsl(${hue},55%,35%)` }]}>
      <Text style={s.avatarText}>{char}</Text>
    </View>
  );
}

export default function CommentsPage() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const params = useLocalSearchParams<{ animeId?: string; tmdbId?: string; ep?: string; title?: string; type?: string }>();

  const animeId = params.animeId ? parseInt(params.animeId) : undefined;
  const tmdbId  = params.tmdbId || undefined;
  const epNum   = params.ep ? parseInt(params.ep) : undefined;
  const pageTitle = params.title
    ? (params.ep ? `الحلقة ${params.ep} — ${params.title}` : params.title)
    : "التعليقات";

  const [comments, setComments]   = useState<Comment[]>([]);
  const [loading, setLoading]     = useState(false);
  const [posting, setPosting]     = useState(false);
  const [text, setText]           = useState("");
  const [replyTo, setReplyTo]     = useState<Comment | null>(null);
  const [postError, setPostError] = useState<string | null>(null);
  const [myUserId, setMyUserId]     = useState<string | null>(null);
  const [myUsername, setMyUsername]   = useState<string | null>(null);
  const [myDisplayName, setMyDisplayName] = useState<string | null>(null);
  const [liking, setLiking]       = useState<Set<string>>(new Set());
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
        setComments(d.comments || []);
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
      if (replyTo) { body.parentId = replyTo.id; body.replyToUsername = replyTo.username; }

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

  const renderComment = (c: Comment, isReply = false) => (
    <View key={c.id} style={[s.commentWrap, isReply && s.replyWrap]}>
      {isReply && <View style={s.replyLine} />}
      <Avatar username={c.displayName || c.username} avatarUrl={c.avatarUrl} />
      <View style={{ flex: 1, gap: 4 }}>
        <View style={s.commentMeta}>
          <Text style={s.commentUser}>{c.displayName || c.username}</Text>
          {c.username && c.displayName && c.username !== c.displayName && (
            <Text style={s.commentHandle}>@{c.username}</Text>
          )}
          {c.replyToUsername && <Text style={s.replyTag}>↩ {c.replyToUsername}</Text>}
          <Text style={s.commentTime}>{timeAgo(c.createdAt)}</Text>
        </View>
        <Text style={s.commentText}>{c.text}</Text>
          <View style={s.commentActions}>
          <Pressable onPress={() => toggleLike(c)} style={s.actionBtn} disabled={liking.has(c.id)}>
            <Ionicons name="heart" size={14} color={c.liked ? "#f87171" : "rgba(255,255,255,0.3)"} />
            {c.likes > 0 && <Text style={[s.actionBtnText, c.liked && { color: "#f87171" }]}>{c.likes}</Text>}
          </Pressable>
          <Pressable onPress={() => { setReplyTo(c); setTimeout(() => inputRef.current?.focus(), 100); }} style={s.actionBtn}>
            <Ionicons name="return-up-back" size={14} color="rgba(139,92,246,0.7)" />
            <Text style={[s.actionBtnText, { color: "rgba(139,92,246,0.7)" }]}>رد</Text>
          </Pressable>
          {c.userId === myUserId && (
            <Pressable onPress={() => deleteComment(c)} style={s.actionBtn}>
              <Ionicons name="trash" size={13} color="rgba(239,68,68,0.45)" />
            </Pressable>
          )}
        </View>
        {replies(c.id).map(r => renderComment(r, true))}
      </View>
    </View>
  );

  return (
    <View style={[s.container, { paddingTop: Platform.OS === "web" ? 0 : insets.top }]}>
      {/* Header */}
      <View style={s.header}>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} style={s.backBtn}>
          <Ionicons name="chevron-back" size={20} color="#fff" />
        </Pressable>
        <View style={{ flex: 1 }}>
          <View style={s.headerTitleRow}>
            <Ionicons name="chatbubbles" size={16} color="#8B5CF6" />
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
          <Ionicons name="refresh" size={18} color="rgba(255,255,255,0.4)" />
        </Pressable>
      </View>

      {/* Comments list */}
      {loading ? (
        <View style={s.center}>
          <ActivityIndicator color="#8B5CF6" size="large" />
          <Text style={s.loadingText}>جارٍ التحميل...</Text>
        </View>
      ) : comments.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="chatbubble-ellipses" size={52} color="rgba(139,92,246,0.2)" />
          <Text style={s.emptyText}>لا توجد تعليقات بعد</Text>
          <Text style={s.emptySubtext}>كن أول من يعلّق على هذه الحلقة!</Text>
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
        style={[s.inputArea, { paddingBottom: insets.bottom + 8 }]}
      >
        {replyTo && (
          <View style={s.replyBanner}>
            <Ionicons name="return-up-back" size={13} color="rgba(139,92,246,0.7)" />
            <Text style={s.replyBannerText} numberOfLines={1}>رد على {replyTo.username}: {replyTo.text}</Text>
            <Pressable onPress={() => setReplyTo(null)}>
              <Ionicons name="close-circle" size={15} color="rgba(255,255,255,0.3)" />
            </Pressable>
          </View>
        )}
        {postError && (
          <View style={s.errorBanner}>
            <Ionicons name="alert-circle" size={13} color="#f87171" />
            <Text style={s.errorBannerText}>{postError}</Text>
            <Pressable onPress={() => setPostError(null)}>
              <Ionicons name="close" size={13} color="rgba(255,255,255,0.3)" />
            </Pressable>
          </View>
        )}
        <View style={s.inputRow}>
          <Avatar username={myUsername || myDisplayName || "م"} />
          <TextInput
            ref={inputRef}
            style={s.input}
            placeholder={replyTo ? `الرد على ${replyTo.username}…` : "أضف تعليقاً…"}
            placeholderTextColor="rgba(255,255,255,0.25)"
            value={text}
            onChangeText={t => { setText(t); setPostError(null); }}
            multiline
            maxLength={1000}
            textAlign="right"
          />
          <Pressable
            onPress={postComment}
            disabled={!text.trim() || posting}
            style={[s.sendBtn, (!text.trim() || posting) && s.sendBtnDisabled]}
          >
            {posting
              ? <ActivityIndicator size="small" color="#fff" />
              : <Ionicons name="send" size={16} color="#fff" />
            }
          </Pressable>
        </View>
      </KeyboardAvoidingView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  header: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 14, paddingVertical: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
    backgroundColor: "#09090B",
  },
  backBtn: {
    width: 36, height: 36, borderRadius: 14,
    backgroundColor: "rgba(255,255,255,0.06)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitleRow: { flexDirection: "row", alignItems: "center", gap: 6 },
  headerTitle: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 1 },
  countBadge: {
    backgroundColor: "rgba(139,92,246,0.2)", borderRadius: 10,
    paddingHorizontal: 7, paddingVertical: 2,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.3)",
  },
  countBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  refreshBtn: { width: 36, height: 36, alignItems: "center", justifyContent: "center" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)" },
  emptyText: { fontSize: 16, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.4)" },
  emptySubtext: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.2)" },
  listContent: { padding: 16, gap: 14, paddingBottom: 12 },
  commentWrap: { flexDirection: "row", gap: 10, padding: 12, borderRadius: 16, backgroundColor: "rgba(255,255,255,0.035)", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  replyWrap: { marginTop: 10, marginRight: 12 },
  replyLine: {
    position: "absolute", left: -8, top: 0, bottom: 0,
    width: 2, backgroundColor: "rgba(139,92,246,0.2)", borderRadius: 1,
  },
  avatar: {
    width: 34, height: 34, borderRadius: 17,
    alignItems: "center", justifyContent: "center", flexShrink: 0,
  },
  avatarText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  commentMeta: { flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" },
  commentUser: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "#e2e2e2" },
  commentHandle: { fontSize: 10, color: "rgba(196,181,253,0.58)", fontFamily: "Cairo_400Regular" },
  replyTag: { fontSize: 10, color: "rgba(139,92,246,0.7)", fontFamily: "Cairo_700Bold" },
  commentTime: { fontSize: 10, color: "rgba(255,255,255,0.2)", fontFamily: "Cairo_400Regular" },
  commentText: {
    fontSize: 13, color: "rgba(255,255,255,0.82)", lineHeight: 21,
    fontFamily: "Cairo_400Regular", textAlign: "right",
  },
  commentActions: { flexDirection: "row", gap: 14, marginTop: 2 },
  actionBtn: { flexDirection: "row", alignItems: "center", gap: 4 },
  actionBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.3)" },
  inputArea: {
    borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.07)",
    padding: 12, gap: 8, backgroundColor: "#09090B",
  },
  replyBanner: {
    flexDirection: "row", alignItems: "center", gap: 6,
    backgroundColor: "rgba(139,92,246,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.2)", padding: 8,
  },
  replyBannerText: { flex: 1, fontSize: 11, color: "rgba(139,92,246,0.8)", fontFamily: "Cairo_400Regular" },
  errorBanner: {
    flexDirection: "row", alignItems: "center", gap: 6,
    backgroundColor: "rgba(239,68,68,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)", padding: 8,
  },
  errorBannerText: { flex: 1, fontSize: 11, color: "#f87171", fontFamily: "Cairo_400Regular" },
  inputRow: { flexDirection: "row", alignItems: "flex-end", gap: 8 },
  input: {
    flex: 1, minHeight: 42, maxHeight: 120,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)",
    paddingHorizontal: 12, paddingVertical: 8,
    fontSize: 13, color: "#fff", fontFamily: "Cairo_400Regular",
  },
  sendBtn: {
    width: 42, height: 42, backgroundColor: "#7C3AED",
    borderRadius: 14, alignItems: "center", justifyContent: "center",
  },
  sendBtnDisabled: { backgroundColor: "rgba(124,58,237,0.3)" },
});

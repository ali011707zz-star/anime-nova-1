import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator, FlatList, Image, KeyboardAvoidingView, Modal,
  Platform, Pressable, StyleSheet, Text, TextInput, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";

const AUTH_KEY = "nova-mobile-user";

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
      /* First try local storage (fast) */
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
      /* Then refresh from server for latest avatarUrl */
      const base = getBaseUrl();
      const r = await secureFetch(`${base}/api/auth/me`);
      if (r.ok) {
        const d = await r.json();
        setMyUser({
          id:          d.id || "",
          displayName: d.displayName || d.display_name || null,
          username:    d.username || null,
          avatarUrl:   d.profileImageUrl || d.profile_image_custom || d.profile_image_url || null,
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

  async function postComment() {
    if (!text.trim()) return;
    setPosting(true);
    setPostError(null);
    try {
      const base = getBaseUrl();
      /* Use displayName as the visible name, fallback to username or default */
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
      if (replyTo) { body.parentId = replyTo.id; body.replyToUsername = replyTo.username; }

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

  /* Build thread tree: top-level + replies */
  const topLevel = comments.filter(c => !c.parentId);

  const renderComment = (c: Comment, isReply = false) => (
    <View key={c.id} style={[cs.commentWrap, isReply && cs.replyWrap]}>
      {isReply && <View style={cs.replyLine} />}

      {/* Avatar with real photo support */}
      <Avatar username={c.username} avatarUrl={c.avatarUrl} size={isReply ? 30 : 36} />

      <View style={{ flex: 1, gap: 4 }}>
        {/* Name row: display name + @handle tag + time */}
        <View style={cs.commentMeta}>
          <View style={{ flex: 1 }}>
            <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
              <Text style={cs.commentUser} numberOfLines={1}>{c.username}</Text>
              {c.userHandle && (
                <Text style={cs.handleTag}>@{c.userHandle}</Text>
              )}
              {c.replyToUsername && (
                <Text style={cs.replyTag}>↩ {c.replyToUsername}</Text>
              )}
            </View>
            <Text style={cs.commentTime}>{timeAgo(c.createdAt)}</Text>
          </View>
        </View>

        <Text style={cs.commentText}>{c.text}</Text>

        <View style={cs.commentActions}>
          <Pressable
            onPress={() => toggleLike(c)}
            style={cs.actionBtn}
            disabled={liking.has(c.id)}
          >
            <Ionicons
              name="heart"
              size={14}
              color={c.liked ? "#f87171" : "rgba(255,255,255,0.3)"}
            />
            {c.likes > 0 && (
              <Text style={[cs.actionBtnText, c.liked && { color: "#f87171" }]}>{c.likes}</Text>
            )}
          </Pressable>
          <Pressable
            onPress={() => { setReplyTo(c); setTimeout(() => inputRef.current?.focus(), 100); }}
            style={cs.actionBtn}
          >
            <Ionicons name="return-up-back" size={14} color="rgba(139,92,246,0.7)" />
            <Text style={[cs.actionBtnText, { color: "rgba(139,92,246,0.7)" }]}>رد</Text>
          </Pressable>
          {c.userId === myUser?.id && (
            <Pressable onPress={() => deleteComment(c)} style={cs.actionBtn}>
              <Ionicons name="trash" size={13} color="rgba(239,68,68,0.45)" />
            </Pressable>
          )}
        </View>

        {/* Nested replies */}
        {comments.filter(r => r.parentId === c.id).map(r => renderComment(r, true))}
      </View>
    </View>
  );

  return (
    <Modal
      visible={visible}
      animationType="slide"
      transparent
      onRequestClose={onClose}
    >
      <Pressable style={cs.backdrop} onPress={onClose} />
      <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : "height"}
        style={[cs.sheet, { paddingBottom: insets.bottom + 8 }]}
      >
        {/* Handle */}
        <View style={cs.handleWrap}>
          <View style={cs.handle} />
        </View>

        {/* Header */}
        <View style={cs.header}>
          <View style={cs.headerLeft}>
            <Ionicons name="chatbubbles" size={18} color="#8B5CF6" />
            <Text style={cs.headerTitle}>التعليقات</Text>
            {comments.length > 0 && (
              <View style={cs.countBadge}>
                <Text style={cs.countBadgeText}>{comments.length}</Text>
              </View>
            )}
          </View>
          <Pressable onPress={loadComments} style={cs.refreshBtn}>
            <Ionicons name="refresh" size={16} color="rgba(255,255,255,0.4)" />
          </Pressable>
        </View>

        {/* Comment list */}
        {loading ? (
          <View style={cs.loadingWrap}>
            <ActivityIndicator color="#8B5CF6" />
          </View>
        ) : comments.length === 0 ? (
          <View style={cs.emptyWrap}>
            <Ionicons name="chatbubble-ellipses" size={40} color="rgba(139,92,246,0.25)" />
            <Text style={cs.emptyText}>لا توجد تعليقات بعد</Text>
            <Text style={cs.emptySubtext}>كن أول من يعلّق!</Text>
          </View>
        ) : (
          <FlatList
            ref={listRef}
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
                <Ionicons name="return-up-back" size={13} color="rgba(139,92,246,0.7)" />
                <Text style={cs.replyBannerText} numberOfLines={1}>
                  رد على {replyTo.username}: {replyTo.text}
                </Text>
                <Pressable onPress={() => setReplyTo(null)}>
                  <Ionicons name="close-circle" size={15} color="rgba(255,255,255,0.3)" />
                </Pressable>
              </View>
            )}
            {postError && (
              <View style={cs.errorBanner}>
                <Ionicons name="alert-circle" size={13} color="#f87171" />
                <Text style={cs.errorBannerText}>{postError}</Text>
                <Pressable onPress={() => setPostError(null)}>
                  <Ionicons name="close" size={13} color="rgba(255,255,255,0.3)" />
                </Pressable>
              </View>
            )}
            <View style={cs.inputRow}>
              {/* My own avatar in the input row */}
              <Avatar
                username={myUser?.displayName || myUser?.username || "م"}
                avatarUrl={myUser?.avatarUrl}
                size={34}
              />
              <TextInput
                ref={inputRef}
                style={cs.input}
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
                style={[cs.sendBtn, (!text.trim() || posting) && cs.sendBtnDisabled]}
              >
                {posting
                  ? <ActivityIndicator size="small" color="#fff" />
                  : <Ionicons name="send" size={16} color="#fff" />
                }
              </Pressable>
            </View>
          </View>
        )}
      </KeyboardAvoidingView>
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
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 16, paddingVertical: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  headerLeft: { flexDirection: "row", alignItems: "center", gap: 8 },
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
  listContent: { padding: 16, gap: 14, paddingBottom: 8 },
  commentWrap: { flexDirection: "row", gap: 10 },
  replyWrap: { marginTop: 10, marginRight: 12 },
  replyLine: {
    position: "absolute", left: -8, top: 0, bottom: 0,
    width: 2, backgroundColor: "rgba(139,92,246,0.2)", borderRadius: 1,
  },
  avatar: {
    alignItems: "center", justifyContent: "center", flexShrink: 0,
  },
  avatarText: { fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  commentMeta: { flexDirection: "row", alignItems: "flex-start", gap: 6, flexWrap: "wrap" },
  commentUser: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#e2e2e2" },
  handleTag: { fontSize: 10, color: "rgba(167,139,250,0.55)", fontFamily: "Cairo_400Regular" },
  replyTag: { fontSize: 10, color: "rgba(139,92,246,0.7)", fontFamily: "Cairo_700Bold" },
  commentTime: { fontSize: 10, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_400Regular", marginTop: 1 },
  commentText: {
    fontSize: 13, color: "rgba(255,255,255,0.8)", lineHeight: 20,
    fontFamily: "Cairo_400Regular", textAlign: "right",
  },
  commentActions: { flexDirection: "row", gap: 12, marginTop: 2 },
  actionBtn: { flexDirection: "row", alignItems: "center", gap: 4 },
  actionBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.3)" },
  inputArea: {
    borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.06)",
    padding: 12, gap: 8,
  },
  replyBanner: {
    flexDirection: "row", alignItems: "center", gap: 6,
    backgroundColor: "rgba(139,92,246,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.2)",
    padding: 8,
  },
  replyBannerText: {
    flex: 1, fontSize: 11, color: "rgba(139,92,246,0.8)",
    fontFamily: "Cairo_400Regular",
  },
  inputRow: { flexDirection: "row", alignItems: "flex-end", gap: 8 },
  input: {
    flex: 1, minHeight: 40, maxHeight: 100,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)",
    paddingHorizontal: 12, paddingVertical: 8,
    fontSize: 13, color: "#fff", fontFamily: "Cairo_400Regular",
  },
  sendBtn: {
    width: 40, height: 40,
    backgroundColor: "#7C3AED", borderRadius: 14,
    alignItems: "center", justifyContent: "center",
  },
  sendBtnDisabled: { backgroundColor: "rgba(124,58,237,0.3)" },
  errorBanner: {
    flexDirection: "row", alignItems: "center", gap: 6,
    backgroundColor: "rgba(239,68,68,0.08)", borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)",
    padding: 8,
  },
  errorBannerText: {
    flex: 1, fontSize: 11, color: "#f87171",
    fontFamily: "Cairo_400Regular",
  },
});

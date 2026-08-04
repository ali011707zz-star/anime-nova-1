import React, { useState, useCallback, useEffect, useRef } from "react";
import {
  View, Text, StyleSheet, Pressable, FlatList,
  Image, Alert, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect } from "expo-router";
import {
  getDownloads, deleteDownload, clearAllDownloads,
  formatFileSize, DownloadItem,
} from "@/utils/downloadManager";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";

// ── Local Player Overlay ──────────────────────────────────────────────────

function LocalPlayer({ item, onClose }: { item: DownloadItem; onClose: () => void }) {
  const src: PlayerSource = {
    url: item.localPath,
    label: `${item.quality} · ${item.site}`,
    quality: item.quality as any,
  };
  return (
    <RiftPlayer
      sources={[src]}
      initialSourceIndex={0}
      title={item.title}
      episode={item.ep}
      onBack={onClose}
      onError={onClose}
    />
  );
}

// ── Download Card ─────────────────────────────────────────────────────────

function DownloadCard({
  item,
  onPlay,
  onDelete,
}: {
  item: DownloadItem;
  onPlay: (item: DownloadItem) => void;
  onDelete: (item: DownloadItem) => void;
}) {
  const q = item.quality?.toLowerCase() ?? "";
  const dotColor = q.includes("1080") ? "#fbbf24" : q.includes("720") ? "#34d399" : "#94a3b8";

  return (
    <Pressable
      onPress={() => onPlay(item)}
      style={({ pressed }) => [s.card, pressed && { opacity: 0.85 }]}
    >
      {/* Poster */}
      <View style={s.posterWrap}>
        {item.cover ? (
          <Image source={{ uri: item.cover }} style={s.poster} resizeMode="cover" />
        ) : (
          <View style={[s.poster, s.posterFallback]}>
            <Ionicons name="film" size={22} color="rgba(139,92,246,0.4)" />
          </View>
        )}
        <LinearGradient
          colors={["transparent", "rgba(0,0,0,0.5)"]}
          style={StyleSheet.absoluteFill}
        />
        {/* Play overlay */}
        <View style={s.playOverlay}>
          <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.85)" />
        </View>
      </View>

      {/* Info */}
      <View style={s.cardInfo}>
        <Text style={s.cardTitle} numberOfLines={2}>{item.title}</Text>
        <Text style={s.cardEp}>الحلقة {item.ep}</Text>

        <View style={s.cardBadges}>
          {/* Quality */}
          <View style={[s.badge, { borderColor: dotColor + "55" }]}>
            <View style={[s.badgeDot, { backgroundColor: dotColor }]} />
            <Text style={[s.badgeText, { color: dotColor }]}>{item.quality || "—"}</Text>
          </View>
          {/* Size */}
          <View style={s.badge}>
            <Ionicons name="folder-outline" size={9} color="rgba(255,255,255,0.35)" />
            <Text style={s.badgeText}>{formatFileSize(item.fileSize)}</Text>
          </View>
        </View>

        <Text style={s.cardDate}>
          {new Date(item.downloadedAt).toLocaleDateString("ar-SA")}
        </Text>
      </View>

      {/* Delete button */}
      <Pressable
        onPress={() => onDelete(item)}
        hitSlop={12}
        style={s.deleteBtn}
      >
        <Ionicons name="trash-outline" size={17} color="rgba(239,68,68,0.65)" />
      </Pressable>
    </Pressable>
  );
}

// ── Main Screen ───────────────────────────────────────────────────────────

export default function DownloadsScreen() {
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, 0);
  const [downloads, setDownloads] = useState<DownloadItem[]>([]);
  const [playingItem, setPlayingItem] = useState<DownloadItem | null>(null);
  const mountedRef = useRef(true);

  useEffect(() => {
    mountedRef.current = true;
    return () => { mountedRef.current = false; };
  }, []);

  const loadDownloads = useCallback(async () => {
    const items = await getDownloads();
    if (mountedRef.current) {
      setDownloads(items.sort((a, b) => b.downloadedAt - a.downloadedAt));
    }
  }, []);

  // أعد التحميل عند العودة لهذه الشاشة
  useFocusEffect(useCallback(() => {
    loadDownloads();
  }, [loadDownloads]));

  const handleDelete = useCallback((item: DownloadItem) => {
    Alert.alert(
      "حذف التنزيل",
      `هل تريد حذف "${item.title} — حلقة ${item.ep}"؟`,
      [
        { text: "إلغاء", style: "cancel" },
        {
          text: "حذف",
          style: "destructive",
          onPress: async () => {
            await deleteDownload(item);
            loadDownloads();
          },
        },
      ]
    );
  }, [loadDownloads]);

  const handleClearAll = useCallback(() => {
    if (downloads.length === 0) return;
    Alert.alert(
      "حذف الكل",
      "هل تريد حذف جميع التنزيلات؟",
      [
        { text: "إلغاء", style: "cancel" },
        {
          text: "حذف الكل",
          style: "destructive",
          onPress: async () => {
            await clearAllDownloads();
            loadDownloads();
          },
        },
      ]
    );
  }, [downloads.length, loadDownloads]);

  // تشغيل محلي
  if (playingItem) {
    return (
      <LocalPlayer
        item={playingItem}
        onClose={() => setPlayingItem(null)}
      />
    );
  }

  return (
    <View style={[s.screen, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={s.header}>
        <View style={s.headerLeft}>
          <View style={s.headerIcon}>
            <Ionicons name="download" size={16} color="#8B5CF6" />
          </View>
          <View>
            <Text style={s.headerTitle}>تنزيلاتي</Text>
            <Text style={s.headerSub}>{downloads.length} حلقة محمّلة</Text>
          </View>
        </View>
        {downloads.length > 0 && (
          <Pressable onPress={handleClearAll} style={s.clearBtn}>
            <Ionicons name="trash-outline" size={14} color="rgba(239,68,68,0.65)" />
            <Text style={s.clearBtnText}>حذف الكل</Text>
          </Pressable>
        )}
      </View>

      {downloads.length === 0 ? (
        /* Empty state */
        <View style={s.emptyWrap}>
          <View style={s.emptyIcon}>
            <Ionicons name="download-outline" size={42} color="rgba(139,92,246,0.35)" />
          </View>
          <Text style={s.emptyTitle}>لا توجد تنزيلات</Text>
          <Text style={s.emptyDesc}>
            اضغط على زر ⬇ بجانب أي مصدر جاهز في شاشة المشاهدة لتحميل الحلقة.
          </Text>
        </View>
      ) : (
        <FlatList
          data={downloads}
          keyExtractor={(item) => item.id}
          renderItem={({ item }) => (
            <DownloadCard
              item={item}
              onPlay={setPlayingItem}
              onDelete={handleDelete}
            />
          )}
          contentContainerStyle={{ padding: 14, gap: 10, paddingBottom: insets.bottom + 90 }}
          showsVerticalScrollIndicator={false}
        />
      )}
    </View>
  );
}

// ── Styles ────────────────────────────────────────────────────────────────

const s = StyleSheet.create({
  screen: { flex: 1, backgroundColor: "#07070d" },

  header: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 16, paddingVertical: 14,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  headerLeft: { flexDirection: "row", alignItems: "center", gap: 10 },
  headerIcon: {
    width: 36, height: 36, borderRadius: 12,
    backgroundColor: "rgba(139,92,246,0.14)", borderWidth: 1,
    borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center",
  },
  headerTitle: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub:   { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)" },

  clearBtn: {
    flexDirection: "row", alignItems: "center", gap: 5,
    paddingHorizontal: 12, paddingVertical: 7, borderRadius: 10,
    backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1,
    borderColor: "rgba(239,68,68,0.18)",
  },
  clearBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(239,68,68,0.65)" },

  emptyWrap: {
    flex: 1, alignItems: "center", justifyContent: "center",
    paddingHorizontal: 40, gap: 14,
  },
  emptyIcon: {
    width: 80, height: 80, borderRadius: 28,
    backgroundColor: "rgba(139,92,246,0.08)", borderWidth: 1,
    borderColor: "rgba(139,92,246,0.16)", alignItems: "center", justifyContent: "center",
  },
  emptyTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.7)", textAlign: "center" },
  emptyDesc:  { fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", textAlign: "center", lineHeight: 20 },

  card: {
    flexDirection: "row", alignItems: "center", gap: 12,
    backgroundColor: "rgba(15,12,28,0.85)", borderRadius: 16,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.12)", padding: 10,
  },

  posterWrap: { width: 70, height: 100, borderRadius: 10, overflow: "hidden", flexShrink: 0 },
  poster:     { width: 70, height: 100 },
  posterFallback: { backgroundColor: "rgba(18,10,40,0.9)", alignItems: "center", justifyContent: "center" },
  playOverlay: {
    ...StyleSheet.absoluteFillObject as any,
    alignItems: "center", justifyContent: "center",
  },

  cardInfo: { flex: 1, gap: 4, paddingTop: 2 },
  cardTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 19 },
  cardEp:    { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#a78bfa" },

  cardBadges: { flexDirection: "row", gap: 6, flexWrap: "wrap" },
  badge: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 7, paddingVertical: 3, borderRadius: 7,
    backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1,
    borderColor: "rgba(255,255,255,0.09)",
  },
  badgeDot:  { width: 5, height: 5, borderRadius: 3 },
  badgeText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.50)" },

  cardDate: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.25)", marginTop: 2 },

  deleteBtn: {
    width: 34, height: 34, borderRadius: 10,
    backgroundColor: "rgba(239,68,68,0.07)", borderWidth: 1,
    borderColor: "rgba(239,68,68,0.15)", alignItems: "center", justifyContent: "center",
    flexShrink: 0,
  },
});

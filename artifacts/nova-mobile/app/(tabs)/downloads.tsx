import React, { useState, useCallback, useEffect, useRef } from "react";
import {
  View, Text, StyleSheet, Pressable, FlatList,
  Image, Alert, Platform, Animated, Easing,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect } from "expo-router";
import {
  getDownloads, deleteDownload, clearAllDownloads,
  formatFileSize, DownloadItem, ActiveDownload,
  subscribeActiveDownloads, getActiveDownloadsSnapshot, cancelActiveDownload,
} from "@/utils/downloadManager";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";

// ── Spinner ───────────────────────────────────────────────────────────────

function SpinIcon({ size = 16 }: { size?: number }) {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    const anim = Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 1000, easing: Easing.linear, useNativeDriver: true })
    );
    anim.start();
    return () => anim.stop();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <Animated.View style={{ transform: [{ rotate }] }}>
      <Ionicons name="sync" size={size} color="#8B5CF6" />
    </Animated.View>
  );
}

// ── Active Download Card ──────────────────────────────────────────────────

function ActiveDownloadCard({
  item,
  onCancel,
}: {
  item: ActiveDownload;
  onCancel: () => void;
}) {
  const pct = Math.round(item.progress * 100);
  const isError = item.status === "error";

  return (
    <View style={[s.activeCard, isError && s.activeCardError]}>
      {/* Cancel / error icon */}
      <Pressable onPress={onCancel} hitSlop={10} style={s.activeCancel}>
        <Ionicons name="close" size={14} color="rgba(255,255,255,0.45)" />
      </Pressable>

      {/* Info + progress */}
      <View style={{ flex: 1, gap: 6 }}>
        <View style={{ flexDirection: "row", alignItems: "flex-start", justifyContent: "space-between", gap: 8 }}>
          <View style={{ flex: 1 }}>
            <Text style={s.activeTitle} numberOfLines={1}>{item.title}</Text>
            <Text style={s.activeEp}>الحلقة {item.ep}</Text>
          </View>
          {/* Percentage badge */}
          <View style={[s.activePctBadge, isError && s.activePctBadgeError]}>
            <Text style={[s.activePctText, isError && { color: "rgba(239,68,68,0.85)" }]}>
              {isError ? "خطأ" : `${pct}%`}
            </Text>
          </View>
        </View>

        {/* Progress bar */}
        <View style={s.progressTrack}>
          <View style={[
            s.progressFill,
            { width: `${isError ? 100 : pct}%` as any },
            isError && { backgroundColor: "rgba(239,68,68,0.45)" },
          ]} />
        </View>

        <Text style={[s.activeStatus, isError && { color: "rgba(239,68,68,0.65)" }]}>
          {isError ? "فشل التنزيل — اضغط × للإغلاق" : "جاري التحميل..."}
        </Text>
      </View>
    </View>
  );
}

// ── Completed Download Card ───────────────────────────────────────────────

function DownloadCard({
  item,
  onPlay,
  onDelete,
}: {
  item: DownloadItem;
  onPlay: (item: DownloadItem) => void;
  onDelete: (item: DownloadItem) => void;
}) {
  const [expanded, setExpanded] = useState(false);
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
        <View style={s.playOverlay}>
          <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.85)" />
        </View>
      </View>

      {/* Info */}
      <View style={s.cardInfo}>
        <Text style={s.cardTitle} numberOfLines={2}>{item.title}</Text>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 5 }}>
          <Ionicons name="checkmark-circle" size={11} color="#34d399" />
          <Text style={s.cardEp}>الحلقة {item.ep}</Text>
        </View>

        <View style={s.cardBadges}>
          <View style={[s.badge, { borderColor: dotColor + "55" }]}>
            <View style={[s.badgeDot, { backgroundColor: dotColor }]} />
            <Text style={[s.badgeText, { color: dotColor }]}>{item.quality || "—"}</Text>
          </View>
          <View style={s.badge}>
            <Ionicons name="folder-outline" size={9} color="rgba(255,255,255,0.35)" />
            <Text style={s.badgeText}>{formatFileSize(item.fileSize)}</Text>
          </View>
          {item.subtitleLocalPath && (
            <View style={[s.badge, { borderColor: "rgba(52,211,153,0.35)" }]}>
              <Text style={[s.badgeText, { color: "rgba(110,231,183,0.85)" }]}>ترجمة</Text>
            </View>
          )}
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

// ── Local Player Overlay ──────────────────────────────────────────────────

function LocalPlayer({ item, onClose }: { item: DownloadItem; onClose: () => void }) {
  const src: PlayerSource = {
    url: item.localPath,
    label: `${item.quality} · ${item.site}`,
    quality: item.quality as any,
    subtitleUrl: item.subtitleLocalPath,
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

// ── Section Header ────────────────────────────────────────────────────────

function SectionHeader({
  icon,
  title,
  count,
  spinning,
}: {
  icon: string;
  title: string;
  count: number;
  spinning?: boolean;
}) {
  return (
    <View style={s.sectionHeader}>
      {spinning ? (
        <SpinIcon size={14} />
      ) : (
        <Ionicons name={icon as any} size={14} color="#34d399" />
      )}
      <Text style={[s.sectionTitle, spinning && { color: "#8B5CF6" }]}>{title}</Text>
      {count > 0 && (
        <View style={[s.sectionBadge, spinning && { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.25)" }]}>
          <Text style={[s.sectionBadgeText, spinning && { color: "#c4b5fd" }]}>{count}</Text>
        </View>
      )}
    </View>
  );
}

// ── Main Screen ───────────────────────────────────────────────────────────

export default function DownloadsScreen() {
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, 0);
  const [downloads, setDownloads] = useState<DownloadItem[]>([]);
  const [activeDownloads, setActiveDownloads] = useState<ActiveDownload[]>(getActiveDownloadsSnapshot);
  const [playingItem, setPlayingItem] = useState<DownloadItem | null>(null);
  const mountedRef = useRef(true);

  useEffect(() => {
    mountedRef.current = true;
    return () => { mountedRef.current = false; };
  }, []);

  /* اشترك في التنزيلات الجارية — يتحدث فوراً عند كل تغيير */
  useEffect(() => {
    return subscribeActiveDownloads(() => {
      if (mountedRef.current) setActiveDownloads(getActiveDownloadsSnapshot());
    });
  }, []);

  const loadDownloads = useCallback(async () => {
    const items = await getDownloads();
    if (mountedRef.current) {
      setDownloads(items.sort((a, b) => b.downloadedAt - a.downloadedAt));
    }
  }, []);

  /* أعد التحميل عند العودة لهذه الشاشة */
  useFocusEffect(useCallback(() => {
    loadDownloads();
  }, [loadDownloads]));

  /* أعد تحميل القائمة عند اكتمال أي تنزيل (تنتقل من active → completed) */
  useEffect(() => {
    loadDownloads();
  }, [activeDownloads.length]); // eslint-disable-line

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
      "هل تريد حذف جميع التنزيلات المكتملة؟",
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

  const handleCancelActive = useCallback((id: string) => {
    cancelActiveDownload(id);
  }, []);

  /* تشغيل محلي */
  if (playingItem) {
    return (
      <LocalPlayer
        item={playingItem}
        onClose={() => setPlayingItem(null)}
      />
    );
  }

  const hasActive    = activeDownloads.length > 0;
  const hasCompleted = downloads.length > 0;
  const isEmpty      = !hasActive && !hasCompleted;

  return (
    <View style={[s.screen, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={s.header}>
        <View style={s.headerLeft}>
          <View style={s.headerIcon}>
            <Ionicons name="download" size={16} color="#8B5CF6" />
          </View>
          <View>
            <Text style={s.headerTitle}>التنزيلات</Text>
            <Text style={s.headerSub}>{downloads.length} حلقة • {activeDownloads.length} جارٍ</Text>
          </View>
        </View>
        {hasCompleted && (
          <Pressable onPress={handleClearAll} style={s.clearBtn}>
            <Ionicons name="trash-outline" size={14} color="rgba(239,68,68,0.65)" />
            <Text style={s.clearBtnText}>حذف الكل</Text>
          </Pressable>
        )}
      </View>

      <FlatList
        data={[]}
        renderItem={null}
        ListHeaderComponent={() => (
          <View style={{ gap: 16, padding: 14, paddingBottom: 4 }}>

            {/* ── جاري التنزيل ── */}
            {hasActive && (
              <View style={{ gap: 8 }}>
                <SectionHeader icon="sync" title="جاري التنزيل" count={activeDownloads.length} spinning />
                {activeDownloads.map(item => (
                  <ActiveDownloadCard
                    key={item.id}
                    item={item}
                    onCancel={() => handleCancelActive(item.id)}
                  />
                ))}
              </View>
            )}

            {/* ── تم التنزيل ── */}
            {hasCompleted && (
              <View style={{ gap: 8 }}>
                <SectionHeader icon="checkmark-done-outline" title="تم التنزيل" count={downloads.length} />
                {downloads.map(item => (
                  <DownloadCard
                    key={item.id}
                    item={item}
                    onPlay={setPlayingItem}
                    onDelete={handleDelete}
                  />
                ))}
              </View>
            )}

          </View>
        )}
        ListEmptyComponent={null}
        contentContainerStyle={{ paddingBottom: insets.bottom + 90 }}
        showsVerticalScrollIndicator={false}
        keyExtractor={() => "header"}
      />

      {/* Empty state */}
      {isEmpty && (
        <View style={s.emptyWrap}>
          <View style={s.emptyIcon}>
            <Ionicons name="download-outline" size={42} color="rgba(139,92,246,0.35)" />
          </View>
          <Text style={s.emptyTitle}>لا توجد تنزيلات</Text>
          <Text style={s.emptyDesc}>
            اضغط على زر ⬇ بجانب أي مصدر في شاشة المشاهدة لتحميل الحلقة.
          </Text>
        </View>
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

  /* Section header */
  sectionHeader: {
    flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2,
  },
  sectionTitle: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.70)" },
  sectionBadge: {
    paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7,
    backgroundColor: "rgba(52,211,153,0.10)", borderWidth: 1,
    borderColor: "rgba(52,211,153,0.22)",
  },
  sectionBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(110,231,183,0.85)" },

  /* Active download card */
  activeCard: {
    flexDirection: "row", alignItems: "flex-start", gap: 10,
    backgroundColor: "rgba(15,12,28,0.95)", borderRadius: 16,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.20)", padding: 14,
  },
  activeCardError: { borderColor: "rgba(239,68,68,0.25)" },
  activeCancel: {
    width: 26, height: 26, borderRadius: 9,
    backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)", alignItems: "center", justifyContent: "center",
    flexShrink: 0, marginTop: 1,
  },
  activeTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 19 },
  activeEp:    { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.70)", textAlign: "right" },

  progressTrack: {
    height: 4, borderRadius: 2,
    backgroundColor: "rgba(255,255,255,0.06)", overflow: "hidden",
  },
  progressFill: {
    height: 4, borderRadius: 2,
    backgroundColor: "#8B5CF6",
  },
  activeStatus: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", textAlign: "right" },

  activePctBadge: {
    paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8,
    backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1,
    borderColor: "rgba(139,92,246,0.28)", flexShrink: 0,
    alignSelf: "flex-start",
  },
  activePctBadgeError: { backgroundColor: "rgba(239,68,68,0.10)", borderColor: "rgba(239,68,68,0.25)" },
  activePctText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd" },

  /* Completed card */
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

  /* Empty */
  emptyWrap: {
    position: "absolute", top: 0, left: 0, right: 0, bottom: 0,
    alignItems: "center", justifyContent: "center",
    paddingHorizontal: 40, gap: 14, pointerEvents: "none" as any,
  },
  emptyIcon: {
    width: 80, height: 80, borderRadius: 28,
    backgroundColor: "rgba(139,92,246,0.08)", borderWidth: 1,
    borderColor: "rgba(139,92,246,0.16)", alignItems: "center", justifyContent: "center",
  },
  emptyTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.7)", textAlign: "center" },
  emptyDesc:  { fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", textAlign: "center", lineHeight: 20 },
});

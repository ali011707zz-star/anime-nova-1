import React, { useState, useCallback, useEffect, useRef, useMemo } from "react";
import {
  View, Text, StyleSheet, ScrollView, TextInput, BackHandler, useWindowDimensions,
  Image, Alert, Linking, Platform, Modal,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect, useRouter } from "expo-router";
import {
  getDownloads, deleteDownload, clearAllDownloads,
  formatFileSize, DownloadItem, ActiveDownload,
  subscribeActiveDownloads, getActiveDownloadsSnapshot, cancelActiveDownload,
  pauseActiveDownload, resumeActiveDownload,
  saveDownloadToGallery, GalleryPermissionError,
} from "@/utils/downloadManager";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import * as FileSystem from "expo-file-system";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";

function useDownloadsTheme() {
  const colors = useColors();
  const s = useMemo(() => createDownloadStyles(colors), [colors]);
  return { colors, s };
}

interface DownloadGroup {
  key: string;
  animeId: number;
  title: string;
  cover: string;
  items: DownloadItem[];
  totalSize: number;
  lastDownloadedAt: number;
}

function downloadedDateLabel(timestamp: number): string {
  const days = Math.floor(Math.max(0, Date.now() - timestamp) / 86_400_000);
  if (days === 0) return "اليوم";
  if (days === 1) return "أمس";
  if (days < 7) return `قبل ${days} أيام`;
  return new Date(timestamp).toLocaleDateString("ar-SA");
}

// ── Active Download Card ──────────────────────────────────────────────────

function ActiveDownloadCard({
  item,
  onCancel,
  onPause,
  onResume,
}: {
  item: ActiveDownload;
  onCancel: () => void;
  onPause: () => void;
  onResume: () => void;
}) {
  const { colors, s } = useDownloadsTheme();
  const tvMode = isTvDevice();
  const pct = Math.round(item.progress * 100);
  const isPaused = item.status === "paused";
  const isError = item.status === "error";
  const canPause = item.pauseSupported !== false;

  return (
    <View style={[s.activeCard, tvMode && s.tvActiveCard, isError && s.activeCardError]}>
      {/* Pause/resume + cancel controls. Pausing keeps the partial file. */}
      <View style={s.activeActions}>
        <Pressable onPress={onCancel} hitSlop={8} focusable={tvMode}
          style={({ focused }) => [s.activeAction, s.activeCancel, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="close" size={18} color={colors.textMuted} />
        </Pressable>
        {canPause && (
          <Pressable
            onPress={isPaused ? onResume : onPause}
            hitSlop={8}
            focusable={tvMode}
            style={({ focused }) => [s.activeAction, isPaused && s.activeActionResume, tvMode && tvFocusStyle(focused)]}
            accessibilityLabel={isPaused ? "استئناف التنزيل" : "إيقاف التنزيل مؤقتاً"}
          >
            <Ionicons
              name={isPaused ? "play" : "pause"}
              size={18}
              color={isPaused ? colors.accent : colors.textSecondary}
            />
          </Pressable>
        )}
      </View>

      {/* Info + progress */}
      <View style={s.activeInfo}>
        <View style={s.activeHeading}>
          <View style={{ flex: 1 }}>
            <Text style={s.activeTitle} numberOfLines={1}>{item.title}</Text>
            <Text style={s.activeEp} numberOfLines={1}>
              الحلقة {item.ep} · {item.quality || "جودة غير محددة"} · {formatFileSize(item.totalBytes || item.bytesWritten)}
            </Text>
          </View>
          {/* Percentage badge */}
          <View style={[s.activePctBadge, isError && s.activePctBadgeError]}>
            <Text style={[s.activePctText, isError && { color: colors.destructive }]}>
           {isError ? "خطأ" : isPaused ? "متوقف" : `${pct}%`}
            </Text>
          </View>
        </View>

        {/* Progress bar */}
        <View style={s.progressTrack}>
          <View style={[
            s.progressFill,
            { width: `${isError ? 100 : pct}%` as any },
            isError && { backgroundColor: colors.destructive },
          ]} />
        </View>

        <View style={s.activeProgressMeta}>
          <Text style={s.activeStatus}>
            {item.totalBytes > 0
              ? `${formatFileSize(item.bytesWritten)} من ${formatFileSize(item.totalBytes)}`
              : "جارٍ حساب حجم الملف"}
          </Text>
          <Text style={s.activeStatus}>{isError ? "لم يكتمل" : `${pct}%`}</Text>
        </View>

        <Text style={[s.activeStatus, isError && { color: colors.destructive }]}>
          {isError
            ? `${item.errorMessage || "فشل التنزيل"} — اضغط × للإغلاق`
              : isPaused
              ? "متوقف مؤقتاً — اضغط ▶ للاستئناف"
                : canPause
                  ? "يعمل في الخلفية..."
                  : "تنزيل نظامي — يستمر حتى بعد إغلاق التطبيق"}
        </Text>
      </View>
      {item.cover ? (
        <Image source={{ uri: item.cover }} style={s.activePoster} resizeMode="cover" />
      ) : (
        <View style={[s.activePoster, s.posterFallback]}>
          <Ionicons name="film-outline" size={20} color={colors.accent} />
        </View>
      )}
    </View>
  );
}

// ── Completed Download Card ───────────────────────────────────────────────

function DownloadCard({
  item,
  onPlay,
  onDelete,
  onSaveToGallery,
  savingToGallery,
}: {
  item: DownloadItem;
  onPlay: (item: DownloadItem) => void;
  onDelete: (item: DownloadItem) => void;
  onSaveToGallery: (item: DownloadItem) => void;
  savingToGallery: boolean;
}) {
  const { colors, s } = useDownloadsTheme();
  const tvMode = isTvDevice();
  const q = item.quality?.toLowerCase() ?? "";
  const dotColor = q.includes("1080") ? colors.accent : q.includes("720") ? colors.success : colors.textMuted;

  return (
    <View style={[s.card, tvMode && s.tvEpisodeCard, { direction: "rtl" }]}>
      {/* Poster */}
      <Pressable
        onPress={() => onPlay(item)}
        hitSlop={4}
         focusable={tvMode}
          style={({ pressed, focused }) => [s.posterWrap, tvMode && s.tvEpisodePosterWrap, pressed && { opacity: 0.78 }, tvMode && tvFocusStyle(focused)]}
        accessibilityRole="button"
        accessibilityLabel={`تشغيل ${item.title} الحلقة ${item.ep}`}
        testID={`download-play-poster-${item.id}`}
      >
          {item.cover ? (
            <Image source={{ uri: item.cover }} style={s.poster} resizeMode="cover" />
          ) : (
            <View style={[s.poster, s.posterFallback]}>
              <Ionicons name="film" size={22} color={colors.accent} />
            </View>
          )}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.5)"]}
            style={StyleSheet.absoluteFill}
          />
          <View style={s.episodeNumberBadge}>
            <Text style={s.episodeNumberText}>EP {item.ep}</Text>
          </View>
      </Pressable>

      {/* Info */}
      <View style={s.cardInfo}>
        <View style={s.episodeTitleRow}>
          <Text style={s.cardDate}>{downloadedDateLabel(item.downloadedAt)}</Text>
          <Text style={s.cardTitle} numberOfLines={1}>الحلقة {item.ep}</Text>
        </View>

        <View style={s.cardBadges}>
          <View style={[s.badge, { borderColor: dotColor + "55" }]}>
            <View style={[s.badgeDot, { backgroundColor: dotColor }]} />
            <Text style={[s.badgeText, { color: dotColor }]}>{item.quality || "—"}</Text>
          </View>
          <View style={s.badge}>
            <Ionicons name="folder-outline" size={9} color={colors.textMuted} />
            <Text style={s.badgeText}>{formatFileSize(item.fileSize)}</Text>
          </View>
          {item.subtitleLocalPath && (
            <View style={[s.badge, { borderColor: colors.success + "40" }]}>
              <Text style={[s.badgeText, { color: colors.success }]}>ترجمة</Text>
            </View>
          )}
        </View>

        <View style={s.cardActions}>
          <Pressable
            onPress={() => onPlay(item)}
             focusable={tvMode}
             style={({ pressed, focused }) => [s.playButton, pressed && { opacity: 0.72 }, tvMode && tvFocusStyle(focused)]}
            accessibilityRole="button"
            accessibilityLabel={`تشغيل الحلقة ${item.ep}`}
            testID={`download-play-${item.id}`}
          >
            <Ionicons name="play" size={12} color={colors.buttonText} />
            <Text style={s.playButtonText}>تشغيل الحلقة</Text>
          </Pressable>
          {item.gallerySavedAt ? (
            <View style={s.gallerySavedButton}>
              <Ionicons name="checkmark" size={12} color={colors.success} />
              <Text style={s.gallerySavedText}>محفوظ بالمعرض</Text>
            </View>
          ) : (
            <Pressable
              onPress={() => onSaveToGallery(item)}
              disabled={savingToGallery}
              hitSlop={5}
              focusable={tvMode}
              style={({ pressed, focused }) => [
                s.galleryButton,
                pressed && { opacity: 0.72 },
                savingToGallery && { opacity: 0.55 },
                tvMode && tvFocusStyle(focused),
              ]}
              accessibilityRole="button"
              accessibilityLabel={`حفظ الحلقة ${item.ep} في معرض الجهاز`}
              testID={`download-gallery-${item.id}`}
            >
              <Ionicons name={savingToGallery ? "sync-outline" : "images-outline"} size={12} color={colors.accent} />
              <Text style={s.galleryButtonText}>{savingToGallery ? "جارٍ الحفظ" : "حفظ للمعرض"}</Text>
            </Pressable>
          )}
        </View>
      </View>

      {/* Delete button */}
      <Pressable
        onPress={() => onDelete(item)}
        hitSlop={12}
        focusable={tvMode}
        style={({ focused }) => [s.deleteBtn, tvMode && tvFocusStyle(focused)]}
        accessibilityRole="button"
        accessibilityLabel={`حذف ${item.title} الحلقة ${item.ep}`}
        testID={`download-delete-${item.id}`}
      >
        <Ionicons name="trash-outline" size={17} color={colors.destructive} />
      </Pressable>
    </View>
  );
}

function DownloadWorkCard({
  group,
  width,
  onOpen,
}: {
  group: DownloadGroup;
  width: number;
  onOpen: () => void;
}) {
  const { colors, s } = useDownloadsTheme();
  const tvMode = isTvDevice();

  return (
    <View style={[s.workCard, tvMode && s.tvWorkCard, { width }]}>
      <Pressable
        onPress={onOpen}
        focusable={tvMode}
        style={({ pressed, focused }) => [
          s.workPoster,
          tvMode && s.tvWorkPoster,
          pressed && { opacity: 0.86 },
          tvMode && tvFocusStyle(focused),
        ]}
        accessibilityRole="button"
        accessibilityLabel={`عرض الحلقات المحملة من ${group.title}`}
        testID={`download-work-${group.animeId}`}
      >
        {group.cover ? (
          <Image source={{ uri: group.cover }} style={s.workPosterImage} resizeMode="cover" />
        ) : (
          <View style={[s.workPosterImage, s.posterFallback]}>
            <Ionicons name="film" size={28} color={colors.accent} />
          </View>
        )}
        <LinearGradient
          colors={["rgba(0,0,0,0.18)", "rgba(0,0,0,0.08)", "rgba(0,0,0,0.86)"]}
          locations={[0, 0.46, 1]}
          style={StyleSheet.absoluteFill}
        />
        <View style={s.workPosterTop}>
          <View style={s.workSizeBadge}>
            <Text style={s.workSizeText}>{formatFileSize(group.totalSize)}</Text>
          </View>
          <View style={s.workCountBadge}>
            <Ionicons name="download" size={11} color={colors.buttonText} />
            <Text style={s.workCountText}>{group.items.length} حلقات محملة</Text>
          </View>
        </View>
        <View style={s.workPosterBottom}>
          <Text style={s.workTitle} numberOfLines={2}>{group.title}</Text>
          <View style={s.workPosterMeta}>
          <Text style={s.workMetaText}>تم حفظ {group.items.length} حلقات</Text>
            <Text style={s.workOpenText}>فتح  ←</Text>
          </View>
        </View>
      </Pressable>

      <Pressable
        onPress={onOpen}
        focusable={tvMode}
        style={({ focused }) => [s.workFooter, tvMode && tvFocusStyle(focused)]}
        accessibilityRole="button"
        accessibilityLabel={`دخول إلى حلقات ${group.title}`}
      >
        <Text style={s.workFooterLabel}>عرض الحلقات ({group.items.length})</Text>
        <View style={s.workEnterButton}>
          <Text style={s.workEnterText}>دخول</Text>
        </View>
      </Pressable>
    </View>
  );
}

// ── Local Player Overlay ──────────────────────────────────────────────────

/** يضمن أن المسار المحلي يبدأ بـ file:// كما يتوقع expo-video/isValidPlayerSourceUrl.
 *  بعض إصدارات expo-file-system القديمة تُرجع مساراً مطلقاً بدون بروتوكول. */
function toFileUri(path: string): string {
  if (!path) return path;
  if (path.startsWith("file://")) return path;
  if (path.startsWith("/")) return `file://${path}`;
  return path;
}

function LocalPlayer({ item, onClose }: { item: DownloadItem; onClose: () => void }) {
  const src: PlayerSource = {
    url: toFileUri(item.localPath),
    label: `${item.quality} · ${item.site}`,
    quality: (item.quality as any) || "720p HD",
    subtitleUrl: item.subtitleLocalPath ? toFileUri(item.subtitleLocalPath) : undefined,
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
  accent,
}: {
  icon: string;
  title: string;
  count: number;
  accent?: boolean;
}) {
  const { colors, s } = useDownloadsTheme();
  return (
    <View style={s.sectionHeader}>
      <Ionicons name={icon as any} size={14} color={accent ? colors.accent : colors.success} />
      <Text style={s.sectionTitle}>{title}</Text>
      {count > 0 && (
        <View style={[s.sectionBadge, accent && { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }]}>
          <Text style={[s.sectionBadgeText, accent && { color: colors.accent }]}>{count}</Text>
        </View>
      )}
    </View>
  );
}

// ── Main Screen ───────────────────────────────────────────────────────────

export default function DownloadsScreen() {
  const { colors, s } = useDownloadsTheme();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, 0);
  const router = useRouter();
  const tvMode = isTvDevice();
  const { width: windowWidth } = useWindowDimensions();
  const [downloads, setDownloads] = useState<DownloadItem[]>([]);
  const [activeDownloads, setActiveDownloads] = useState<ActiveDownload[]>(getActiveDownloadsSnapshot);
  const [playingItem, setPlayingItem] = useState<DownloadItem | null>(null);
  const [gallerySavingId, setGallerySavingId] = useState<string | null>(null);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedGroupKey, setSelectedGroupKey] = useState<string | null>(null);
  const scrollRef = useRef<ScrollView>(null);
  const episodeSectionOffset = useRef(0);
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

  const downloadGroups = useMemo<DownloadGroup[]>(() => {
    const grouped = new Map<string, DownloadItem[]>();
    for (const item of downloads) {
      const key = `${item.animeId}:${item.title.trim().toLocaleLowerCase()}`;
      const entries = grouped.get(key) ?? [];
      entries.push(item);
      grouped.set(key, entries);
    }

    return [...grouped.entries()]
      .map(([key, entries]) => {
        const items = [...entries].sort((a, b) => a.ep - b.ep);
        const firstItem = items[0]!;
        return {
          key,
          animeId: firstItem.animeId,
          title: firstItem.title,
          cover: items.find(item => !!item.cover)?.cover ?? "",
          items,
          totalSize: items.reduce((sum, item) => sum + (item.fileSize || 0), 0),
          lastDownloadedAt: items.reduce((latest, item) => Math.max(latest, item.downloadedAt), 0),
        };
      })
      .sort((a, b) => b.lastDownloadedAt - a.lastDownloadedAt);
  }, [downloads]);

  const selectedGroup = downloadGroups.find(group => group.key === selectedGroupKey) ?? null;
  const visibleGroups = useMemo(() => {
    const query = searchQuery.trim().toLocaleLowerCase();
    if (!query) return downloadGroups;
    return downloadGroups.filter(group =>
      group.title.toLocaleLowerCase().includes(query) ||
      group.items.some(item =>
        String(item.ep).includes(query) ||
        item.quality?.toLocaleLowerCase().includes(query),
      ),
    );
  }, [downloadGroups, searchQuery]);
  const visibleActiveDownloads = useMemo(() => {
    const query = searchQuery.trim().toLocaleLowerCase();
    if (!query) return activeDownloads;
    return activeDownloads.filter(item =>
      item.title.toLocaleLowerCase().includes(query) ||
      String(item.ep).includes(query) ||
      item.quality?.toLocaleLowerCase().includes(query),
    );
  }, [activeDownloads, searchQuery]);

  const totalDownloadedBytes = downloads.reduce((sum, item) => sum + (item.fileSize || 0), 0);

  useEffect(() => {
    if (selectedGroupKey && !selectedGroup) setSelectedGroupKey(null);
  }, [selectedGroupKey, selectedGroup]);

  useEffect(() => {
    if (!selectedGroupKey) return;
    const subscription = BackHandler.addEventListener("hardwareBackPress", () => {
      setSelectedGroupKey(null);
      return true;
    });
    return () => subscription.remove();
  }, [selectedGroupKey]);

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

  const handlePauseActive = useCallback((id: string) => {
    void pauseActiveDownload(id);
  }, []);

  const handleResumeActive = useCallback((id: string) => {
    resumeActiveDownload(id);
  }, []);

  const handlePlay = useCallback(async (item: DownloadItem) => {
    try {
      const fileUri = toFileUri(item.localPath);
      const info = await FileSystem.getInfoAsync(fileUri, { size: true });
      const size = (info as { size?: number }).size ?? 0;
      if (!info.exists || size <= 0) {
        Alert.alert(
          "التنزيل غير مكتمل",
          "لم يكتمل حفظ الحلقة على الجهاز، لذلك لن يتم فتح شاشة بيضاء.",
        );
        await deleteDownload(item);
        await loadDownloads();
        return;
      }
      setPlayingItem({ ...item, localPath: info.uri || item.localPath });
    } catch {
      Alert.alert("التنزيل غير مكتمل", "تعذر قراءة ملف الحلقة المحفوظ.");
    }
  }, [loadDownloads]);

  const handleSaveToGallery = useCallback(async (item: DownloadItem) => {
    if (gallerySavingId || item.galleryAssetId) return;
    setGallerySavingId(item.id);
    try {
      await saveDownloadToGallery(item);
      await loadDownloads();
      Alert.alert("تم الحفظ", "أصبحت الحلقة متاحة الآن في معرض الصور والفيديوهات داخل ألبوم Nova Anime.");
    } catch (error) {
      if (error instanceof GalleryPermissionError) {
        Alert.alert(
          "إذن المعرض مطلوب",
          error.canAskAgain
            ? "اسمح للتطبيق بحفظ الفيديو في معرض الجهاز."
            : "افتح إعدادات الهاتف واسمح للتطبيق بالوصول إلى الصور والفيديوهات.",
          [
            { text: "إلغاء", style: "cancel" },
            ...(!error.canAskAgain
              ? [{ text: "فتح الإعدادات", onPress: () => Linking.openSettings().catch(() => {}) }]
              : []),
          ],
        );
      } else {
        Alert.alert(
          "تعذر الحفظ في المعرض",
          error instanceof Error ? error.message : "تحقق من وجود مساحة كافية ثم حاول مرة أخرى.",
        );
      }
    } finally {
      if (mountedRef.current) setGallerySavingId(null);
    }
  }, [gallerySavingId, loadDownloads]);

  /* تشغيل محلي — Modal كاملة الشاشة حتى لا يظهر شريط التنقل السفلي */
  const handleClosePlayer = useCallback(() => setPlayingItem(null), []);

  const handleHeaderBack = useCallback(() => {
    if (selectedGroupKey) {
      setSelectedGroupKey(null);
      return;
    }
    if (router.canGoBack()) router.back();
    else router.replace("/(tabs)" as any);
  }, [router, selectedGroupKey]);

  const handleScrollToEpisodes = useCallback(() => {
    scrollRef.current?.scrollTo({ y: episodeSectionOffset.current, animated: true });
  }, []);

  const hasActive    = activeDownloads.length > 0;
  const hasCompleted = downloads.length > 0;
  const isEmpty      = !hasActive && !hasCompleted && searchQuery.trim().length === 0;
  const columnCount = tvMode ? Math.max(2, Math.min(4, Math.floor(windowWidth / 270))) : 2;
  const gridGap = tvMode ? 14 : 10;
  const gridPadding = tvMode ? 28 : 14;
  const workCardWidth = Math.floor(
    (windowWidth - gridPadding * 2 - gridGap * (columnCount - 1)) / columnCount,
  );

  return (
    <>
    {/* ── تشغيل محلي — Modal كاملة الشاشة حتى لا يظهر شريط التنقل السفلي ── */}
    <Modal
      visible={playingItem !== null}
      animationType="slide"
      presentationStyle="fullScreen"
      onRequestClose={handleClosePlayer}
      statusBarTranslucent
    >
      {playingItem && <LocalPlayer item={playingItem} onClose={handleClosePlayer} />}
    </Modal>

    <View style={[s.screen, { paddingTop: topPad }]}>
      <View style={[s.header, tvMode && s.tvHeader]}>
        {hasCompleted && !selectedGroup && (
          <Pressable
            onPress={handleClearAll}
            focusable={tvMode}
            style={({ focused }) => [s.clearBtn, tvMode && s.tvClearBtn, tvMode && tvFocusStyle(focused)]}
            accessibilityRole="button"
            accessibilityLabel="حذف جميع التنزيلات المكتملة"
          >
            <Ionicons name="trash-outline" size={14} color={colors.destructive} />
            <Text style={s.clearBtnText}>حذف الكل</Text>
          </Pressable>
        )}
        <View style={[s.headerRight, tvMode && s.tvHeaderRight]}>
          <View style={s.headerInfo}>
            <Text style={[s.headerTitle, tvMode && s.tvHeaderTitle]} numberOfLines={1}>
              {selectedGroup?.title ?? "تنزيلاتي"}
            </Text>
            <Text style={[s.headerSub, tvMode && s.tvHeaderSub]} numberOfLines={1}>
              {selectedGroup
                ? `${selectedGroup.items.length} حلقات محملة · ${formatFileSize(selectedGroup.totalSize)}`
                : `${downloadGroups.length} أعمال · ${downloads.length} حلقات محملة · ${formatFileSize(totalDownloadedBytes)}`}
            </Text>
          </View>
          <View style={[s.headerIcon, tvMode && s.tvHeaderIcon]}>
            <Ionicons name="download" size={19} color={colors.buttonText} />
          </View>
          <Pressable
            onPress={handleHeaderBack}
            focusable={tvMode}
            style={({ focused }) => [s.headerBack, tvMode && s.tvHeaderBack, tvMode && tvFocusStyle(focused)]}
            accessibilityRole="button"
            accessibilityLabel={selectedGroup ? "العودة إلى التنزيلات" : "رجوع"}
            testID="downloads-back"
          >
            <Ionicons name="chevron-forward" size={21} color={colors.textPrimary} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        ref={scrollRef}
        contentContainerStyle={[s.scrollContent, { paddingBottom: insets.bottom + 96 }]}
        showsVerticalScrollIndicator={false}
        keyboardShouldPersistTaps="handled"
        keyboardDismissMode="on-drag"
      >
        {selectedGroup ? (
          <View style={[s.detailContent, tvMode && s.tvDetailContent]}>
            <View style={[s.detailHero, tvMode && s.tvDetailHero]}>
              <View style={s.detailInfo}>
                <View style={s.detailBadges}>
                  <View style={s.detailCountBadge}>
                    <Text style={s.detailCountText}>عدد الحلقات المحملة: {selectedGroup.items.length}</Text>
                  </View>
                  <View style={s.detailSizeBadge}>
                    <Text style={s.detailSizeText}>{formatFileSize(selectedGroup.totalSize)}</Text>
                  </View>
                </View>
                <Text style={[s.detailTitle, tvMode && s.tvDetailTitle]} numberOfLines={2}>{selectedGroup.title}</Text>
                <Text style={s.detailDescription}>
                  ملفات الحلقات محفوظة على الجهاز وجاهزة للتشغيل دون اتصال بالإنترنت.
                </Text>
                <View style={s.detailActions}>
                  <Pressable
                    onPress={() => void handlePlay(selectedGroup.items[0]!)}
                    focusable={tvMode}
                    style={({ focused }) => [s.detailPlayButton, tvMode && tvFocusStyle(focused)]}
                    accessibilityRole="button"
                    accessibilityLabel="تشغيل من البداية"
                  >
                    <Text style={s.detailPlayText}>تشغيل من البداية</Text>
                    <Ionicons name="play" size={13} color={colors.buttonText} />
                  </Pressable>
                  <Pressable
                    onPress={handleScrollToEpisodes}
                    focusable={tvMode}
                    style={({ focused }) => [s.detailListButton, tvMode && tvFocusStyle(focused)]}
                    accessibilityRole="button"
                    accessibilityLabel="عرض الحلقات المحملة"
                  >
                    <Text style={s.detailListText}>عرض الحلقات</Text>
                    <Ionicons name="chevron-forward" size={13} color={colors.textPrimary} />
                  </Pressable>
                </View>
              </View>
              <View style={[s.detailPosterWrap, tvMode && s.tvDetailPosterWrap]}>
                {selectedGroup.cover ? (
                  <Image source={{ uri: selectedGroup.cover }} style={s.detailPoster} resizeMode="cover" />
                ) : (
                  <View style={[s.detailPoster, s.posterFallback]}>
                    <Ionicons name="film" size={25} color={colors.accent} />
                  </View>
                )}
                <View style={s.detailPosterCount}>
                  <Text style={s.detailPosterCountText}>{selectedGroup.items.length} حلقات</Text>
                </View>
              </View>
            </View>

            <View
              style={s.detailSectionHeader}
              onLayout={({ nativeEvent }) => { episodeSectionOffset.current = nativeEvent.layout.y; }}
            >
              <View style={s.detailSectionTitleGroup}>
                <Ionicons name="checkmark-circle" size={15} color={colors.success} />
              <Text style={[s.detailSectionTitle, tvMode && s.tvDetailSectionTitle]}>الحلقات التي تم تنزيلها ({selectedGroup.items.length})</Text>
              </View>
              <Text style={s.detailSectionHint}>اضغط على أي حلقة للتشغيل</Text>
            </View>
            {selectedGroup.items.map(item => (
              <DownloadCard
                key={item.id}
                item={item}
                onPlay={handlePlay}
                onDelete={handleDelete}
                onSaveToGallery={handleSaveToGallery}
                savingToGallery={gallerySavingId === item.id}
              />
            ))}
          </View>
        ) : (
          <View style={[s.homeContent, tvMode && s.tvHomeContent]}>
            <View style={s.searchBar}>
              <TextInput
                value={searchQuery}
                onChangeText={setSearchQuery}
                placeholder="ابحث داخل تنزيلاتك..."
                placeholderTextColor={colors.textMuted}
                style={s.searchInput}
                returnKeyType="search"
                accessibilityLabel="ابحث داخل تنزيلاتك"
                testID="downloads-search"
              />
              <Ionicons name="search" size={18} color={colors.textMuted} />
            </View>

            {/* ── جاري التنزيل ── */}
            {visibleActiveDownloads.length > 0 && (
              <View style={s.activeSection}>
                <SectionHeader icon="download-outline" title="قيد التنزيل الآن" count={visibleActiveDownloads.length} accent />
                {visibleActiveDownloads.map(item => (
                  <ActiveDownloadCard
                    key={item.id}
                    item={item}
                    onCancel={() => handleCancelActive(item.id)}
                    onPause={() => handlePauseActive(item.id)}
                    onResume={() => handleResumeActive(item.id)}
                  />
                ))}
              </View>
            )}

            {hasCompleted && (
              <View style={s.completedSection}>
                <View style={s.completedHeading}>
                  <Text style={s.sectionHint}>ادخل لأي بوستر لعرض حلقاته</Text>
                  <View style={s.completedTitleGroup}>
                    <Ionicons name="checkmark-circle" size={16} color={colors.success} />
                    <Text style={s.completedTitle}>الأعمال المحملة ({downloadGroups.length})</Text>
                  </View>
                </View>
                {visibleGroups.length > 0 ? (
                  <View style={[s.workGrid, tvMode && s.tvWorkGrid, { gap: gridGap }]}>
                    {visibleGroups.map(group => (
                      <DownloadWorkCard
                        key={group.key}
                        group={group}
                        width={workCardWidth}
                        onOpen={() => {
                          setSelectedGroupKey(group.key);
                          scrollRef.current?.scrollTo({ y: 0, animated: false });
                        }}
                      />
                    ))}
                  </View>
                ) : searchQuery.trim().length > 0 && visibleActiveDownloads.length === 0 ? (
                  <View style={s.searchEmpty}>
                    <Ionicons name="search-outline" size={20} color={colors.textMuted} />
                    <Text style={s.searchEmptyText}>لا توجد تنزيلات مطابقة للبحث</Text>
                  </View>
                ) : null}
              </View>
            )}
            {searchQuery.trim().length > 0 && !hasCompleted && visibleActiveDownloads.length === 0 && (
              <View style={s.searchEmpty}>
                <Ionicons name="search-outline" size={20} color={colors.textMuted} />
                <Text style={s.searchEmptyText}>لا توجد تنزيلات مطابقة للبحث</Text>
              </View>
            )}
          </View>
        )}
      </ScrollView>

      {/* Empty state */}
      {isEmpty && !selectedGroup && (
        <View style={s.emptyWrap}>
          <View style={s.emptyIcon}>
            <Ionicons name="download-outline" size={42} color={colors.accent} />
          </View>
          <Text style={s.emptyTitle}>لا توجد تنزيلات</Text>
          <Text style={s.emptyDesc}>
            اضغط على أيقونة التنزيل بجانب المصدر في شاشة المشاهدة لتحميل الحلقة.
          </Text>
        </View>
      )}
    </View>
    </>
  );
}

// ── Styles ────────────────────────────────────────────────────────────────

const createDownloadStyles = (colors: ThemePalette) => StyleSheet.create({
  screen: { flex: 1, backgroundColor: colors.background },

  header: {
    height: 64, justifyContent: "center", position: "relative",
    backgroundColor: colors.surface, borderBottomWidth: 1, borderBottomColor: colors.border,
  },
  headerRight: {
    position: "absolute", top: 6, bottom: 6, left: 112, right: 14,
    flexDirection: "row", alignItems: "center", gap: 8, direction: "ltr",
  },
  headerInfo: { flex: 1, minWidth: 0, alignItems: "flex-end", gap: 1 },
  headerIcon: {
    width: 42, height: 42, borderRadius: 14,
    backgroundColor: colors.accent, borderWidth: 1,
    borderColor: colors.accentBorder, alignItems: "center", justifyContent: "center",
  },
  headerBack: {
    width: 42, height: 42, borderRadius: 14, backgroundColor: colors.surfaceElevated,
    borderWidth: 1, borderColor: colors.border, alignItems: "center", justifyContent: "center",
  },
  headerTitle: { maxWidth: "100%", fontSize: 15, lineHeight: 21, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right" },
  headerSub:   { maxWidth: "100%", fontSize: 9, lineHeight: 14, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },

  clearBtn: {
    position: "absolute", left: 14, top: 15,
    flexDirection: "row", alignItems: "center", gap: 5,
    paddingHorizontal: 11, paddingVertical: 8, borderRadius: 12,
    backgroundColor: colors.destructiveSurface, borderWidth: 1,
    borderColor: colors.destructiveBorder,
  },
  clearBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.destructive },
  tvHeader: { height: 74 },
  tvHeaderRight: { top: 8, bottom: 8, left: 146, right: 24, gap: 12 },
  tvHeaderIcon: { width: 50, height: 50, borderRadius: 16 },
  tvHeaderBack: { width: 50, height: 50, borderRadius: 16 },
  tvHeaderTitle: { fontSize: 18, lineHeight: 26 },
  tvHeaderSub: { fontSize: 12, lineHeight: 18 },
  tvClearBtn: { left: 24, top: 17, paddingHorizontal: 14, paddingVertical: 9 },

  /* Section header */
  sectionHeader: {
    flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2, direction: "rtl",
  },
  sectionTitle: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
  sectionBadge: {
    paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7,
    backgroundColor: colors.success + "18", borderWidth: 1,
    borderColor: colors.success + "40",
  },
  sectionBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.success },
  sectionHint: { fontSize: 10, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "left" },

  /* Active download card */
  activeCard: {
    flexDirection: "row", alignItems: "center", gap: 9, direction: "ltr",
    backgroundColor: colors.card, borderRadius: 17,
    borderWidth: 1, borderColor: colors.border, padding: 11,
  },
  activeCardError: { borderColor: colors.destructiveBorder },
  activeCancel: {
    backgroundColor: colors.destructiveSurface, borderColor: colors.destructiveBorder,
  },
  activeActions: { flexDirection: "row", alignItems: "center", gap: 6, flexShrink: 0, alignSelf: "flex-end" },
  activeAction: {
    width: 34, height: 34, borderRadius: 11,
    backgroundColor: colors.accentSurface, borderWidth: 1,
    borderColor: colors.accentBorder, alignItems: "center", justifyContent: "center",
  },
  activeActionResume: { backgroundColor: colors.success + "20", borderColor: colors.success + "40" },
  activeTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right", lineHeight: 19 },
  activeEp:    { fontSize: 9, lineHeight: 14, fontFamily: "Cairo_700Bold", color: colors.textSecondary, textAlign: "right" },
  activeInfo: { flex: 1, minWidth: 0, gap: 6, direction: "rtl" },
  activeHeading: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 7, direction: "rtl" },
  activePoster: { width: 57, height: 84, borderRadius: 9, flexShrink: 0 },

  progressTrack: {
    height: 5, borderRadius: 3,
    backgroundColor: colors.input, overflow: "hidden",
  },
  progressFill: {
    height: 5, borderRadius: 3,
    backgroundColor: colors.accent,
  },
  activeStatus: { fontSize: 10, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
  activeProgressMeta: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },

  activePctBadge: {
    paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8,
    backgroundColor: colors.accentSurface, borderWidth: 1,
    borderColor: colors.accentBorder, flexShrink: 0,
    alignSelf: "flex-start",
  },
  activePctBadgeError: { backgroundColor: colors.destructiveSurface, borderColor: colors.destructiveBorder },
  activePctText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.accent },

  /* Completed card */
  card: {
    flexDirection: "row", alignItems: "center", gap: 9, direction: "rtl",
    backgroundColor: colors.card, borderRadius: 18,
    borderWidth: 1, borderColor: colors.border, padding: 9,
  },

  posterWrap: { width: 70, height: 82, borderRadius: 10, overflow: "hidden", flexShrink: 0, position: "relative" },
  poster:     { width: "100%", height: "100%" },
  posterFallback: { backgroundColor: colors.surfaceElevated, alignItems: "center", justifyContent: "center" },

  cardInfo: { flex: 1, minWidth: 0, gap: 5, paddingVertical: 2, direction: "rtl" },
  cardTitle: { flex: 1, minWidth: 0, fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right", lineHeight: 21 },
  episodeTitleRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 6, direction: "ltr" },
  cardBadges: { flexDirection: "row", gap: 5, flexWrap: "wrap", direction: "rtl" },
  badge: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 7, paddingVertical: 3, borderRadius: 7,
    backgroundColor: colors.surfaceElevated, borderWidth: 1,
    borderColor: colors.border,
  },
  badgeDot:  { width: 5, height: 5, borderRadius: 3 },
  badgeText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: colors.textSecondary },

  cardDate: { fontSize: 9, fontFamily: "Cairo_400Regular", color: colors.textMuted, marginTop: 2 },
  cardActions: { flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap", marginTop: 1, direction: "rtl" },
  playButton: {
    flexDirection: "row", alignItems: "center", gap: 5,
    paddingHorizontal: 10, paddingVertical: 6, borderRadius: 9,
    backgroundColor: colors.accent, borderWidth: 1,
    borderColor: colors.accentBorder,
  },
  playButtonText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.buttonText },
  galleryButton: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 9, paddingVertical: 6, borderRadius: 9,
    backgroundColor: colors.accentSurface, borderWidth: 1,
    borderColor: colors.accentBorder,
  },
  galleryButtonText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.accent },
  gallerySavedButton: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 9, paddingVertical: 6, borderRadius: 9,
    backgroundColor: colors.success + "18", borderWidth: 1,
    borderColor: colors.success + "40",
  },
  gallerySavedText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.success },

  deleteBtn: {
    width: 40, height: 40, borderRadius: 12,
    backgroundColor: colors.destructiveSurface, borderWidth: 1,
    borderColor: colors.destructiveBorder, alignItems: "center", justifyContent: "center",
    flexShrink: 0,
  },

  scrollContent: { paddingHorizontal: 14, paddingTop: 12, gap: 16 },
  homeContent: { gap: 16 },
  tvHomeContent: { gap: 20 },
  detailContent: { gap: 14 },
  tvDetailContent: { gap: 18 },
  activeSection: { gap: 8 },
  completedSection: { gap: 10 },

  searchBar: {
    minHeight: 48, flexDirection: "row", alignItems: "center", gap: 9, direction: "ltr",
    paddingHorizontal: 13, borderRadius: 15, backgroundColor: colors.input,
    borderWidth: 1, borderColor: colors.border,
  },
  searchInput: {
    flex: 1, minWidth: 0, paddingVertical: 10, color: colors.textPrimary,
    fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right",
  },
  completedHeading: {
    minHeight: 24, flexDirection: "row", alignItems: "center",
    justifyContent: "space-between", direction: "ltr",
  },
  completedTitleGroup: { flexDirection: "row", alignItems: "center", gap: 6, direction: "rtl" },
  completedTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  workGrid: { flexDirection: "row", flexWrap: "wrap", justifyContent: "space-between", alignItems: "flex-start", direction: "rtl" },
  tvWorkGrid: { justifyContent: "flex-start" },
  workCard: {
    marginBottom: 1, overflow: "hidden", borderRadius: 18,
    backgroundColor: colors.card, borderWidth: 1, borderColor: colors.border,
  },
  workPoster: { height: 203, overflow: "hidden", position: "relative", backgroundColor: colors.surfaceElevated },
  workPosterImage: { ...StyleSheet.absoluteFillObject as any, width: "100%", height: "100%" },
  tvWorkPoster: { height: 290 },
  workPosterTop: {
    position: "absolute", top: 9, left: 9, right: 9,
    flexDirection: "row", alignItems: "flex-start", justifyContent: "space-between", gap: 5, direction: "ltr",
  },
  workSizeBadge: {
    paddingHorizontal: 8, paddingVertical: 4, borderRadius: 9,
    backgroundColor: "rgba(9,10,12,0.78)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)",
  },
  workSizeText: { color: "#FFFFFF", fontSize: 9, lineHeight: 13, fontFamily: "Cairo_800ExtraBold" },
  workCountBadge: {
    maxWidth: "76%", flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 8, paddingVertical: 4, borderRadius: 15,
    backgroundColor: colors.accent, borderWidth: 1, borderColor: colors.accentBorder,
  },
  workCountText: { color: colors.buttonText, fontSize: 8, lineHeight: 13, fontFamily: "Cairo_700Bold" },
  workPosterBottom: { position: "absolute", left: 10, right: 10, bottom: 10, gap: 3 },
  workTitle: { color: "#FFFFFF", fontSize: 12, lineHeight: 18, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  workPosterMeta: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 4, direction: "rtl" },
  workMetaText: { flex: 1, color: "rgba(255,255,255,0.84)", fontSize: 8, lineHeight: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },
  workOpenText: { color: "#FFFFFF", fontSize: 9, lineHeight: 14, fontFamily: "Cairo_700Bold" },
  workFooter: {
    minHeight: 34, paddingHorizontal: 8, paddingVertical: 5,
    flexDirection: "row-reverse", alignItems: "center", justifyContent: "space-between",
    gap: 6, backgroundColor: colors.card, borderTopWidth: 1, borderTopColor: colors.border, direction: "ltr",
  },
  workFooterLabel: { flex: 1, minWidth: 0, color: colors.textPrimary, fontSize: 10, lineHeight: 15, fontFamily: "Cairo_700Bold", textAlign: "right" },
  workEnterButton: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 9, backgroundColor: colors.accent },
  workEnterText: { color: colors.buttonText, fontSize: 10, lineHeight: 14, fontFamily: "Cairo_700Bold" },
  searchEmpty: { minHeight: 76, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8 },
  searchEmptyText: { color: colors.textMuted, fontSize: 11, fontFamily: "Cairo_400Regular" },

  detailHero: {
    minHeight: 144, flexDirection: "row", alignItems: "center", gap: 9, direction: "ltr",
    padding: 10, borderRadius: 18, backgroundColor: colors.card, borderWidth: 1, borderColor: colors.border,
  },
  tvDetailHero: { minHeight: 190, padding: 18, gap: 18 },
  detailInfo: { flex: 1, minWidth: 0, alignItems: "flex-end", gap: 6, direction: "rtl" },
  detailBadges: { width: "100%", flexDirection: "row", alignItems: "center", flexWrap: "wrap", gap: 5 },
  detailCountBadge: { paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.accentSurface, borderWidth: 1, borderColor: colors.accentBorder },
  detailCountText: { color: colors.accent, fontSize: 9, lineHeight: 14, fontFamily: "Cairo_700Bold" },
  detailSizeBadge: { paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  detailSizeText: { color: colors.textSecondary, fontSize: 9, lineHeight: 14, fontFamily: "Cairo_700Bold" },
  detailTitle: { width: "100%", color: colors.textPrimary, fontSize: 15, lineHeight: 22, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  detailDescription: { width: "100%", color: colors.textSecondary, fontSize: 10, lineHeight: 16, fontFamily: "Cairo_400Regular", textAlign: "right" },
  detailActions: { width: "100%", flexDirection: "row", alignItems: "center", flexWrap: "wrap", gap: 7, direction: "rtl", marginTop: 2 },
  detailPlayButton: { minHeight: 37, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingHorizontal: 10, borderRadius: 12, backgroundColor: colors.accent },
  detailPlayText: { color: colors.buttonText, fontSize: 10, lineHeight: 15, fontFamily: "Cairo_700Bold" },
  detailListButton: { minHeight: 37, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 4, paddingHorizontal: 9, borderRadius: 12, backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border },
  detailListText: { color: colors.textPrimary, fontSize: 9, lineHeight: 14, fontFamily: "Cairo_700Bold" },
  detailPosterWrap: { width: 68, height: 100, flexShrink: 0, position: "relative", borderRadius: 12, overflow: "hidden", backgroundColor: colors.surfaceElevated },
  detailPoster: { width: "100%", height: "100%" },
  detailPosterCount: { position: "absolute", left: 3, right: 3, bottom: 4, alignItems: "center", paddingVertical: 2, borderRadius: 7, backgroundColor: "rgba(9,10,12,0.78)" },
  detailPosterCountText: { color: "#FFFFFF", fontSize: 8, lineHeight: 12, fontFamily: "Cairo_700Bold" },
  detailSectionHeader: { minHeight: 32, flexDirection: "row-reverse", alignItems: "center", justifyContent: "space-between", gap: 8, direction: "ltr", marginTop: 1 },
  detailSectionTitleGroup: { flexDirection: "row", alignItems: "center", gap: 6, direction: "rtl" },
  detailSectionTitle: { color: colors.textPrimary, fontSize: 12, lineHeight: 18, fontFamily: "Cairo_800ExtraBold" },
  detailSectionHint: { color: colors.textSecondary, fontSize: 9, lineHeight: 14, fontFamily: "Cairo_400Regular", textAlign: "left" },
  episodeNumberBadge: { position: "absolute", top: 4, right: 4, paddingHorizontal: 5, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(9,10,12,0.78)" },
  episodeNumberText: { color: "#FFFFFF", fontSize: 8, lineHeight: 11, fontFamily: "Cairo_800ExtraBold" },
  tvActiveCard: { padding: 16, gap: 12 },
  tvEpisodeCard: { minHeight: 110, padding: 12, gap: 12 },
  tvEpisodePosterWrap: { width: 88, height: 100 },
  tvWorkCard: { maxWidth: 360 },
  tvDetailPosterWrap: { width: 90, height: 128 },
  tvDetailTitle: { fontSize: 19, lineHeight: 28 },
  tvDetailSectionTitle: { fontSize: 16, lineHeight: 24 },
  /* Empty */
  emptyWrap: {
    position: "absolute", top: 0, left: 0, right: 0, bottom: 0,
    alignItems: "center", justifyContent: "center",
    paddingHorizontal: 40, gap: 14, pointerEvents: "none" as any,
  },
  emptyIcon: {
    width: 80, height: 80, borderRadius: 28,
    backgroundColor: colors.accentSurface, borderWidth: 1,
    borderColor: colors.accentBorder, alignItems: "center", justifyContent: "center",
  },
  emptyTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "center" },
  emptyDesc:  { fontSize: 13, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "center", lineHeight: 20 },
});

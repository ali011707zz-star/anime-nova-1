import { Ionicons } from "@expo/vector-icons";
import React, { useEffect } from "react";
import {
  BackHandler,
  I18nManager,
  Modal,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { TvPressable as Pressable, tvFocusStyle, useTvMetrics } from "@/utils/tv";
import {
  BACKGROUND_META,
  type EffectiveReadingMode,
  type MangaReaderGlobalSettings,
  READING_MODE_META,
  type ReaderBackground,
  type ReaderRotation,
  type ReadingMode,
  ROTATION_META,
  SIDE_PADDING_OPTIONS,
  type SidePaddingPercent,
  getReadingModeLabel,
  resolveEffectiveReadingMode,
} from "@/utils/mangaReaderSettings.mjs";

const IS_RTL = I18nManager.isRTL;
const ROW_RTL = (IS_RTL ? "row" : "row-reverse") as "row" | "row-reverse";
const ALIGN_RIGHT = (IS_RTL ? "flex-start" : "flex-end") as "flex-start" | "flex-end";

const SHEET_TOKENS = {
  backdrop: "rgba(3, 4, 8, 0.72)",
  sheetBg: "#0D0F14",
  cardBg: "#141720",
  cardElevated: "#1B1F2B",
  trackBg: "#0A0C11",
  border: "rgba(255, 255, 255, 0.08)",
  hairline: "rgba(255, 255, 255, 0.06)",
  textPrimary: "#F4F5F7",
  textSecondary: "#9CA3AF",
  textMuted: "#717886",
  accent: "#F59E0B",
  accentLight: "#FBBF24",
  accentSurface: "rgba(245, 158, 11, 0.13)",
  accentBorder: "rgba(251, 191, 36, 0.42)",
  switchOffTrack: "#262B38",
  switchThumb: "#FFFFFF",
};

function NovaSwitch({ value }: { value: boolean }) {
  return (
    <View
      style={[
        styles.switchTrack,
        value && styles.switchTrackActive,
      ]}
    >
      <View
        style={[
          styles.switchThumb,
          value ? styles.switchThumbOn : styles.switchThumbOff,
        ]}
      />
    </View>
  );
}

type ToggleRowProps = {
  icon: keyof typeof Ionicons.glyphMap;
  title: string;
  subtitle: string;
  value: boolean;
  onToggle: () => void;
  isLast?: boolean;
  tvMode?: boolean;
};

function ToggleRow({
  icon,
  title,
  subtitle,
  value,
  onToggle,
  isLast = false,
  tvMode = false,
}: ToggleRowProps) {
  return (
    <Pressable
      onPress={onToggle}
      focusable={tvMode}
      accessibilityRole="switch"
      accessibilityState={{ checked: value }}
      accessibilityLabel={title}
      style={({ pressed, focused }) => [
        styles.toggleRow,
        !isLast && styles.toggleRowBorder,
        pressed && styles.rowPressed,
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={styles.toggleRowMain}>
        <View style={[styles.rowIconWrap, value && styles.rowIconWrapActive]}>
          <Ionicons
            name={icon}
            size={17}
            color={value ? SHEET_TOKENS.accentLight : SHEET_TOKENS.textSecondary}
          />
        </View>
        <View style={styles.toggleTextWrap}>
          <Text style={styles.toggleTitle}>{title}</Text>
          <Text style={styles.toggleSubtitle}>{subtitle}</Text>
        </View>
      </View>
      <NovaSwitch value={value} />
    </Pressable>
  );
}

export type MangaReaderSettingsSheetProps = {
  visible: boolean;
  mangaTitle: string;
  mangaSource: "manga" | "manhwa";
  countryOfOrigin?: string;
  selectedReadingMode: ReadingMode;
  effectiveReadingMode: EffectiveReadingMode;
  settings: MangaReaderGlobalSettings;
  onSelectReadingMode: (mode: ReadingMode) => void;
  onUpdateSettings: (patch: Partial<MangaReaderGlobalSettings>) => void;
  onResetDefaults: () => void;
  onClose: () => void;
};

export function MangaReaderSettingsSheet({
  visible,
  mangaTitle,
  mangaSource,
  countryOfOrigin,
  selectedReadingMode,
  effectiveReadingMode,
  settings,
  onSelectReadingMode,
  onUpdateSettings,
  onResetDefaults,
  onClose,
}: MangaReaderSettingsSheetProps) {
  const insets = useSafeAreaInsets();
  const { height } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();

  useEffect(() => {
    if (!visible || Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      onClose();
      return true;
    });
    return () => sub.remove();
  }, [visible, onClose]);

  const autoResolvedLabel = getReadingModeLabel(
    resolveEffectiveReadingMode("default", mangaSource, countryOfOrigin),
  );
  const currentModeLabel = getReadingModeLabel(effectiveReadingMode);

  return (
    <Modal
      visible={visible}
      transparent
      animationType="slide"
      statusBarTranslucent
      supportedOrientations={["portrait", "portrait-upside-down", "landscape", "landscape-left", "landscape-right"]}
      onRequestClose={onClose}
    >
      <View style={styles.overlay}>
        <Pressable style={styles.backdropTap} onPress={onClose} accessibilityLabel="إغلاق الإعدادات" />
        <View
          style={[
            styles.sheet,
            {
              maxHeight: Math.round(height * 0.86),
              paddingBottom: Math.max(insets.bottom, 16),
            },
          ]}
        >
          {/* Centered Grab Handle */}
          <View style={styles.handleWrap}>
            <View style={styles.handleBar} />
          </View>

          {/* Header */}
          <View style={styles.header}>
            <View style={styles.headerTitleCol}>
              <Text style={styles.headerTitle}>إعدادات القارئ</Text>
              <Text style={styles.headerSub} numberOfLines={1}>
                الوضع النشط: {currentModeLabel} • {settings.color32Bit ? "ألوان 32-bit" : "توفير الذاكرة"}
              </Text>
            </View>
            <View style={styles.headerActions}>
              <Pressable
                onPress={onResetDefaults}
                focusable={tvMode}
                accessibilityLabel="إعادة الإعدادات الافتراضية"
                style={({ pressed, focused }) => [
                  styles.resetBtn,
                  pressed && styles.btnPressed,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="refresh-outline" size={14} color={SHEET_TOKENS.textSecondary} />
                <Text style={styles.resetBtnText}>افتراضي</Text>
              </Pressable>
              <Pressable
                onPress={onClose}
                focusable={tvMode}
                accessibilityLabel="إغلاق"
                style={({ pressed, focused }) => [
                  styles.closeBtn,
                  pressed && styles.btnPressed,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="close" size={19} color={SHEET_TOKENS.textPrimary} />
              </Pressable>
            </View>
          </View>

          <ScrollView
            showsVerticalScrollIndicator={false}
            contentContainerStyle={styles.scrollContent}
            bounces={false}
          >
            {/* ── Section 1: Per-Manga Reading Mode ── */}
            <View style={styles.sectionHeaderRow}>
              <Text style={styles.sectionEyebrow}>لهذه المانجا</Text>
              <Text style={styles.sectionMangaHint} numberOfLines={1}>
                {mangaTitle}
              </Text>
            </View>

            <View style={styles.modeGrid}>
              {READING_MODE_META.map((item) => {
                const isSelected = selectedReadingMode === item.value;
                const subtitle =
                  item.value === "default"
                    ? `تلقائي: ${autoResolvedLabel}`
                    : item.shortDesc;
                return (
                  <Pressable
                    key={item.value}
                    onPress={() => onSelectReadingMode(item.value as ReadingMode)}
                    focusable={tvMode}
                    accessibilityRole="radio"
                    accessibilityState={{ selected: isSelected }}
                    style={({ pressed, focused }) => [
                      styles.modeTile,
                      isSelected && styles.modeTileActive,
                      pressed && styles.tilePressed,
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={styles.modeTileTop}>
                      <View
                        style={[
                          styles.modeIconWrap,
                          isSelected && styles.modeIconWrapActive,
                        ]}
                      >
                        <Ionicons
                          name={item.icon as keyof typeof Ionicons.glyphMap}
                          size={17}
                          color={
                            isSelected
                              ? SHEET_TOKENS.accentLight
                              : SHEET_TOKENS.textSecondary
                          }
                        />
                      </View>
                      {isSelected ? (
                        <View style={styles.activeCheckDot}>
                          <Ionicons name="checkmark" size={11} color="#09090B" />
                        </View>
                      ) : null}
                    </View>
                    <Text
                      style={[
                        styles.modeLabel,
                        isSelected && styles.modeLabelActive,
                      ]}
                      numberOfLines={1}
                    >
                      {item.label}
                    </Text>
                    <Text style={styles.modeDesc} numberOfLines={1}>
                      {subtitle}
                    </Text>
                  </Pressable>
                );
              })}
            </View>

            {/* ── Section 2: General Display & Behavior ── */}
            <View style={[styles.sectionHeaderRow, styles.sectionSpacing]}>
              <Text style={styles.sectionEyebrow}>عام</Text>
              <Text style={styles.sectionSubNote}>تُحفظ تلقائياً لجميع الفصول</Text>
            </View>

            <View style={styles.groupCard}>
              {/* Background Color Swatches */}
              <View style={styles.controlBlock}>
                <View style={styles.controlLabelRow}>
                  <Ionicons
                    name="color-palette-outline"
                    size={16}
                    color={SHEET_TOKENS.accentLight}
                  />
                  <Text style={styles.controlTitle}>لون الخلفية</Text>
                </View>
                <View style={styles.swatchRow}>
                  {BACKGROUND_META.map((bg) => {
                    const active = settings.background === bg.value;
                    return (
                      <Pressable
                        key={bg.value}
                        onPress={() =>
                          onUpdateSettings({ background: bg.value as ReaderBackground })
                        }
                        focusable={tvMode}
                        accessibilityRole="radio"
                        accessibilityState={{ selected: active }}
                        style={({ pressed, focused }) => [
                          styles.swatchCard,
                          active && styles.swatchCardActive,
                          pressed && styles.tilePressed,
                          tvMode && tvFocusStyle(focused),
                        ]}
                      >
                        <View
                          style={[
                            styles.swatchCircle,
                            {
                              backgroundColor: bg.swatch,
                              borderColor: active ? SHEET_TOKENS.accentLight : bg.ring,
                            },
                          ]}
                        >
                          {active ? (
                            <Ionicons
                              name="checkmark"
                              size={12}
                              color={bg.value === "white" ? "#111318" : "#FBBF24"}
                            />
                          ) : null}
                        </View>
                        <Text
                          style={[
                            styles.swatchLabel,
                            active && styles.swatchLabelActive,
                          ]}
                        >
                          {bg.label}
                        </Text>
                      </Pressable>
                    );
                  })}
                </View>
              </View>

              <View style={styles.cardDivider} />

              {/* Screen Rotation Segmented Control */}
              <View style={styles.controlBlock}>
                <View style={styles.controlLabelRow}>
                  <Ionicons
                    name="phone-portrait-outline"
                    size={16}
                    color={SHEET_TOKENS.accentLight}
                  />
                  <Text style={styles.controlTitle}>الدوران</Text>
                </View>
                <View style={styles.segmentedTrack}>
                  {ROTATION_META.map((rot) => {
                    const active = settings.rotation === rot.value;
                    return (
                      <Pressable
                        key={rot.value}
                        onPress={() =>
                          onUpdateSettings({ rotation: rot.value as ReaderRotation })
                        }
                        focusable={tvMode}
                        accessibilityRole="radio"
                        accessibilityState={{ selected: active }}
                        style={({ pressed, focused }) => [
                          styles.segmentItem,
                          active && styles.segmentItemActive,
                          pressed && styles.tilePressed,
                          tvMode && tvFocusStyle(focused),
                        ]}
                      >
                        <Ionicons
                          name={rot.icon as keyof typeof Ionicons.glyphMap}
                          size={14}
                          color={
                            active
                              ? SHEET_TOKENS.accentLight
                              : SHEET_TOKENS.textSecondary
                          }
                        />
                        <Text
                          style={[
                            styles.segmentLabel,
                            active && styles.segmentLabelActive,
                          ]}
                          numberOfLines={1}
                        >
                          {rot.label}
                        </Text>
                      </Pressable>
                    );
                  })}
                </View>
              </View>

              <View style={styles.cardDivider} />

              {/* General Toggle Rows */}
              <ToggleRow
                icon="document-text-outline"
                title="عرض رقم الصفحة"
                subtitle="مؤشر عائم أنيق يوضح رقم الصفحة الحالية أثناء التصفح"
                value={settings.showPageNumber}
                onToggle={() =>
                  onUpdateSettings({ showPageNumber: !settings.showPageNumber })
                }
                tvMode={tvMode}
              />
              <ToggleRow
                icon="expand-outline"
                title="وضع الشاشة الكاملة"
                subtitle="إخفاء شريط الحالة والأزرار مع التبديل بلمسة في منتصف الشاشة"
                value={settings.fullscreen}
                onToggle={() =>
                  onUpdateSettings({ fullscreen: !settings.fullscreen })
                }
                tvMode={tvMode}
              />
              <ToggleRow
                icon="sunny-outline"
                title="إبقاء الشاشة مفتوحة"
                subtitle="منع انطفاء الشاشة تلقائياً أثناء قراءة الفصول"
                value={settings.keepScreenOn}
                onToggle={() =>
                  onUpdateSettings({ keepScreenOn: !settings.keepScreenOn })
                }
                tvMode={tvMode}
              />
              <ToggleRow
                icon="information-circle-outline"
                title="معلومات بضغطة مستمرة"
                subtitle="الضغط المطوّل على الصفحة لعرض أبعادها وإعادة تحميلها"
                value={settings.longPressInfo}
                onToggle={() =>
                  onUpdateSettings({ longPressInfo: !settings.longPressInfo })
                }
                tvMode={tvMode}
              />
              <ToggleRow
                icon="color-filter-outline"
                title="ألوان 32-bit"
                subtitle="عمق لوني حقيقي (16.7 مليون لون) لمنع تقطع التدرجات وتنعيم الحواف"
                value={settings.color32Bit}
                onToggle={() =>
                  onUpdateSettings({ color32Bit: !settings.color32Bit })
                }
                isLast
                tvMode={tvMode}
              />
            </View>

            {/* ── Section 3: Webtoon & Vertical Strip Controls ── */}
            <View style={[styles.sectionHeaderRow, styles.sectionSpacing]}>
              <Text style={styles.sectionEyebrow}>ويبتون</Text>
              <Text style={styles.sectionSubNote}>تحسين عرض الفريم الطولي والهوامش</Text>
            </View>

            <View style={styles.groupCard}>
              <ToggleRow
                icon="crop-outline"
                title="اقتصاص الحدود"
                subtitle="إزالة الهوامش البيضاء أو السوداء الزائدة على حواف الصفحات"
                value={settings.cropBorders}
                onToggle={() =>
                  onUpdateSettings({ cropBorders: !settings.cropBorders })
                }
                tvMode={tvMode}
              />

              <View style={styles.controlBlock}>
                <View style={styles.controlLabelRow}>
                  <Ionicons
                    name="resize-outline"
                    size={16}
                    color={SHEET_TOKENS.accentLight}
                  />
                  <Text style={styles.controlTitle}>الحشو الجانبي</Text>
                  <Text style={styles.controlValueHint}>
                    {settings.sidePadding === 0 ? "لا شيء" : `${settings.sidePadding}%`}
                  </Text>
                </View>
                <View style={styles.segmentedTrack}>
                  {SIDE_PADDING_OPTIONS.map((pct) => {
                    const active = settings.sidePadding === pct;
                    return (
                      <Pressable
                        key={pct}
                        onPress={() =>
                          onUpdateSettings({ sidePadding: pct as SidePaddingPercent })
                        }
                        focusable={tvMode}
                        accessibilityRole="radio"
                        accessibilityState={{ selected: active }}
                        style={({ pressed, focused }) => [
                          styles.segmentItem,
                          active && styles.segmentItemActive,
                          pressed && styles.tilePressed,
                          tvMode && tvFocusStyle(focused),
                        ]}
                      >
                        <Text
                          style={[
                            styles.segmentLabel,
                            active && styles.segmentLabelActive,
                          ]}
                        >
                          {pct === 0 ? "لا شيء" : `${pct}%`}
                        </Text>
                      </Pressable>
                    );
                  })}
                </View>
              </View>
            </View>
          </ScrollView>
        </View>
      </View>
    </Modal>
  );
}

export type LongPressPagePayload = {
  page: number;
  total: number;
  url: string;
  naturalWidth: number;
  naturalHeight: number;
  loaded: boolean;
  isOffline?: boolean;
};

type MangaPageInfoSheetProps = {
  info: LongPressPagePayload | null;
  effectiveMode: EffectiveReadingMode;
  color32Bit: boolean;
  onReloadPage?: (page: number) => void;
  onOpenExternal?: (url: string) => void;
  onClose: () => void;
};

export function MangaPageInfoSheet({
  info,
  effectiveMode,
  color32Bit,
  onReloadPage,
  onOpenExternal,
  onClose,
}: MangaPageInfoSheetProps) {
  const insets = useSafeAreaInsets();
  if (!info) return null;

  const dimensionsLabel =
    info.naturalWidth > 0 && info.naturalHeight > 0
      ? `${info.naturalWidth} × ${info.naturalHeight} px`
      : info.loaded
        ? "مكتمل التحميل"
        : "جاري التحميل";

  return (
    <Modal
      visible={!!info}
      transparent
      animationType="fade"
      statusBarTranslucent
      supportedOrientations={["portrait", "portrait-upside-down", "landscape", "landscape-left", "landscape-right"]}
      onRequestClose={onClose}
    >
      <View style={styles.overlay}>
        <Pressable style={styles.backdropTap} onPress={onClose} />
        <View
          style={[
            styles.infoSheet,
            { paddingBottom: Math.max(insets.bottom, 18) },
          ]}
        >
          <View style={styles.handleWrap}>
            <View style={styles.handleBar} />
          </View>

          <View style={styles.infoHeader}>
            <View style={styles.infoTitleCol}>
              <Text style={styles.infoTitle}>
                الصفحة {info.page} من {info.total}
              </Text>
              <Text style={styles.infoSubtitle}>
                {info.isOffline ? "نسخة محفوطة بدون إنترنت" : "عرض مباشر بجودة القارئ"}
              </Text>
            </View>
            <Pressable onPress={onClose} style={styles.closeBtn}>
              <Ionicons name="close" size={18} color={SHEET_TOKENS.textPrimary} />
            </Pressable>
          </View>

          <View style={styles.metaGrid}>
            <View style={styles.metaBox}>
              <Text style={styles.metaLabel}>الأبعاد</Text>
              <Text style={styles.metaValue} numberOfLines={1}>
                {dimensionsLabel}
              </Text>
            </View>
            <View style={styles.metaBox}>
              <Text style={styles.metaLabel}>وضع القراءة</Text>
              <Text style={styles.metaValue} numberOfLines={1}>
                {getReadingModeLabel(effectiveMode)}
              </Text>
            </View>
            <View style={styles.metaBox}>
              <Text style={styles.metaLabel}>العمق اللوني</Text>
              <Text style={styles.metaValue} numberOfLines={1}>
                {color32Bit ? "32-bit True Color" : "توفير الذاكرة"}
              </Text>
            </View>
          </View>

          <View style={styles.infoActions}>
            {!info.isOffline && onReloadPage ? (
              <Pressable
                onPress={() => {
                  onReloadPage(info.page);
                  onClose();
                }}
                style={({ pressed }) => [
                  styles.infoPrimaryBtn,
                  pressed && styles.btnPressed,
                ]}
              >
                <Ionicons name="refresh" size={16} color="#09090B" />
                <Text style={styles.infoPrimaryText}>إعادة تحميل الصفحة</Text>
              </Pressable>
            ) : null}

            {!info.isOffline && info.url && onOpenExternal ? (
              <Pressable
                onPress={() => {
                  onOpenExternal(info.url);
                  onClose();
                }}
                style={({ pressed }) => [
                  styles.infoSecondaryBtn,
                  pressed && styles.btnPressed,
                ]}
              >
                <Ionicons
                  name="open-outline"
                  size={16}
                  color={SHEET_TOKENS.textPrimary}
                />
                <Text style={styles.infoSecondaryText}>فتح الصورة</Text>
              </Pressable>
            ) : null}
          </View>
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: SHEET_TOKENS.backdrop,
    justifyContent: "flex-end",
  },
  backdropTap: {
    flex: 1,
  },
  sheet: {
    backgroundColor: SHEET_TOKENS.sheetBg,
    borderTopLeftRadius: 28,
    borderTopRightRadius: 28,
    borderTopWidth: 1,
    borderLeftWidth: 1,
    borderRightWidth: 1,
    borderColor: SHEET_TOKENS.border,
    overflow: "hidden",
  },
  handleWrap: {
    alignItems: "center",
    paddingTop: 10,
    paddingBottom: 6,
  },
  handleBar: {
    width: 40,
    height: 4,
    borderRadius: 2,
    backgroundColor: "rgba(255, 255, 255, 0.22)",
  },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 18,
    paddingTop: 4,
    paddingBottom: 14,
    borderBottomWidth: 1,
    borderBottomColor: SHEET_TOKENS.hairline,
    gap: 12,
  },
  headerTitleCol: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  headerTitle: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 17,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  headerSub: {
    color: SHEET_TOKENS.textSecondary,
    fontSize: 11.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 1,
  },
  headerActions: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  resetBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    minHeight: 38,
    paddingHorizontal: 11,
    borderRadius: 12,
    backgroundColor: SHEET_TOKENS.cardBg,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.border,
  },
  resetBtnText: {
    color: SHEET_TOKENS.textSecondary,
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
  },
  closeBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    backgroundColor: SHEET_TOKENS.cardBg,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.border,
    alignItems: "center",
    justifyContent: "center",
  },
  btnPressed: {
    opacity: 0.78,
  },
  scrollContent: {
    paddingHorizontal: 16,
    paddingTop: 16,
    paddingBottom: 24,
  },
  sectionHeaderRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 10,
    paddingHorizontal: 4,
    gap: 10,
  },
  sectionSpacing: {
    marginTop: 22,
  },
  sectionEyebrow: {
    color: SHEET_TOKENS.accentLight,
    fontSize: 12.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  sectionMangaHint: {
    flex: 1,
    color: SHEET_TOKENS.textMuted,
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
    textAlign: IS_RTL ? "right" : "left",
  },
  sectionSubNote: {
    color: SHEET_TOKENS.textMuted,
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
  },
  modeGrid: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 9,
  },
  modeTile: {
    width: "48.4%",
    minHeight: 82,
    borderRadius: 16,
    backgroundColor: SHEET_TOKENS.cardBg,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.hairline,
    paddingHorizontal: 12,
    paddingVertical: 11,
    alignItems: ALIGN_RIGHT,
    justifyContent: "space-between",
  },
  modeTileActive: {
    backgroundColor: SHEET_TOKENS.accentSurface,
    borderColor: SHEET_TOKENS.accentBorder,
  },
  tilePressed: {
    opacity: 0.82,
  },
  modeTileTop: {
    width: "100%",
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 6,
  },
  modeIconWrap: {
    width: 32,
    height: 32,
    borderRadius: 10,
    backgroundColor: SHEET_TOKENS.cardElevated,
    alignItems: "center",
    justifyContent: "center",
  },
  modeIconWrapActive: {
    backgroundColor: "rgba(245, 158, 11, 0.22)",
  },
  activeCheckDot: {
    width: 19,
    height: 19,
    borderRadius: 10,
    backgroundColor: SHEET_TOKENS.accentLight,
    alignItems: "center",
    justifyContent: "center",
  },
  modeLabel: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 12.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  modeLabelActive: {
    color: "#FDE68A",
  },
  modeDesc: {
    color: SHEET_TOKENS.textMuted,
    fontSize: 10.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 1,
  },
  groupCard: {
    backgroundColor: SHEET_TOKENS.cardBg,
    borderRadius: 20,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.hairline,
    overflow: "hidden",
  },
  controlBlock: {
    paddingHorizontal: 14,
    paddingVertical: 14,
    gap: 11,
  },
  controlLabelRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  controlTitle: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  controlValueHint: {
    marginRight: IS_RTL ? "auto" : 0,
    marginLeft: IS_RTL ? 0 : "auto",
    color: SHEET_TOKENS.accentLight,
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  cardDivider: {
    height: 1,
    backgroundColor: SHEET_TOKENS.hairline,
    marginHorizontal: 14,
  },
  swatchRow: {
    flexDirection: ROW_RTL,
    gap: 10,
  },
  swatchCard: {
    flex: 1,
    minHeight: 54,
    borderRadius: 14,
    backgroundColor: SHEET_TOKENS.trackBg,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.hairline,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingHorizontal: 8,
  },
  swatchCardActive: {
    backgroundColor: SHEET_TOKENS.accentSurface,
    borderColor: SHEET_TOKENS.accentBorder,
  },
  swatchCircle: {
    width: 22,
    height: 22,
    borderRadius: 11,
    borderWidth: 2,
    alignItems: "center",
    justifyContent: "center",
  },
  swatchLabel: {
    color: SHEET_TOKENS.textSecondary,
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
  },
  swatchLabelActive: {
    color: "#FDE68A",
    fontFamily: "Cairo_700Bold",
  },
  segmentedTrack: {
    flexDirection: ROW_RTL,
    backgroundColor: SHEET_TOKENS.trackBg,
    borderRadius: 14,
    padding: 4,
    gap: 4,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.hairline,
  },
  segmentItem: {
    flex: 1,
    minHeight: 42,
    borderRadius: 10,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 4,
    paddingHorizontal: 4,
  },
  segmentItemActive: {
    backgroundColor: SHEET_TOKENS.cardElevated,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.accentBorder,
  },
  segmentLabel: {
    color: SHEET_TOKENS.textSecondary,
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
  },
  segmentLabelActive: {
    color: SHEET_TOKENS.accentLight,
    fontFamily: "Cairo_700Bold",
  },
  toggleRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    minHeight: 62,
    paddingHorizontal: 14,
    paddingVertical: 11,
    gap: 12,
  },
  toggleRowBorder: {
    borderBottomWidth: 1,
    borderBottomColor: SHEET_TOKENS.hairline,
  },
  rowPressed: {
    backgroundColor: "rgba(255, 255, 255, 0.03)",
  },
  toggleRowMain: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 11,
  },
  rowIconWrap: {
    width: 34,
    height: 34,
    borderRadius: 11,
    backgroundColor: SHEET_TOKENS.cardElevated,
    alignItems: "center",
    justifyContent: "center",
  },
  rowIconWrapActive: {
    backgroundColor: SHEET_TOKENS.accentSurface,
  },
  toggleTextWrap: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  toggleTitle: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 13.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  toggleSubtitle: {
    color: SHEET_TOKENS.textMuted,
    fontSize: 10.8,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    marginTop: 1,
    lineHeight: 16,
  },
  switchTrack: {
    width: 46,
    height: 26,
    borderRadius: 13,
    backgroundColor: SHEET_TOKENS.switchOffTrack,
    padding: 3,
    justifyContent: "center",
  },
  switchTrackActive: {
    backgroundColor: SHEET_TOKENS.accent,
  },
  switchThumb: {
    width: 20,
    height: 20,
    borderRadius: 10,
    backgroundColor: SHEET_TOKENS.switchThumb,
    shadowColor: "#000",
    shadowOpacity: 0.28,
    shadowRadius: 3,
    shadowOffset: { width: 0, height: 1 },
    elevation: 2,
  },
  switchThumbOn: {
    alignSelf: IS_RTL ? "flex-start" : "flex-end",
  },
  switchThumbOff: {
    alignSelf: IS_RTL ? "flex-end" : "flex-start",
  },
  /* Long-Press Page Info Sheet */
  infoSheet: {
    backgroundColor: SHEET_TOKENS.sheetBg,
    borderTopLeftRadius: 26,
    borderTopRightRadius: 26,
    borderTopWidth: 1,
    borderLeftWidth: 1,
    borderRightWidth: 1,
    borderColor: SHEET_TOKENS.border,
    paddingHorizontal: 18,
  },
  infoHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingVertical: 10,
    gap: 12,
  },
  infoTitleCol: {
    flex: 1,
    alignItems: ALIGN_RIGHT,
  },
  infoTitle: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  infoSubtitle: {
    color: SHEET_TOKENS.textSecondary,
    fontSize: 11.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  metaGrid: {
    flexDirection: ROW_RTL,
    gap: 8,
    marginTop: 8,
    marginBottom: 16,
  },
  metaBox: {
    flex: 1,
    backgroundColor: SHEET_TOKENS.cardBg,
    borderRadius: 14,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.hairline,
    paddingHorizontal: 10,
    paddingVertical: 10,
    alignItems: ALIGN_RIGHT,
    gap: 3,
  },
  metaLabel: {
    color: SHEET_TOKENS.textMuted,
    fontSize: 10.5,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  metaValue: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  infoActions: {
    flexDirection: ROW_RTL,
    gap: 10,
  },
  infoPrimaryBtn: {
    flex: 1,
    minHeight: 46,
    borderRadius: 14,
    backgroundColor: SHEET_TOKENS.accent,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  infoPrimaryText: {
    color: "#09090B",
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
  },
  infoSecondaryBtn: {
    minHeight: 46,
    paddingHorizontal: 16,
    borderRadius: 14,
    backgroundColor: SHEET_TOKENS.cardBg,
    borderWidth: 1,
    borderColor: SHEET_TOKENS.border,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
  },
  infoSecondaryText: {
    color: SHEET_TOKENS.textPrimary,
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
  },
});

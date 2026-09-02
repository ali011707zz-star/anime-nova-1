import { Ionicons } from "@expo/vector-icons";
import * as ScreenOrientation from "expo-screen-orientation";
import * as FileSystem from "expo-file-system";
import { StatusBar } from "expo-status-bar";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  Alert,
  BackHandler,
  Dimensions,
  PanResponder,
  Platform,
  StyleSheet,
  Text,
  View,
} from "react-native";
import {
  useNovaMedia3Player,
  NovaMedia3View,
  type NovaMedia3ViewProps,
} from "../lib/nova-media3";
import { openIsolatedPlayer } from "../lib/isolatedPlayer";
import { tvFocusStyle, useTvMetrics, TvPressable } from "../utils/tv";
import type { PlayerSource, SubCue } from "./RiftPlayer";
const Pressable = TvPressable;

type Props = {
  sources: PlayerSource[];
  initialSourceIndex?: number;
  title?: string;
  episode?: number;
  onBack: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
  onProgress?: (position: number, duration: number) => void;
  initialPosition?: number;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  subCues?: SubCue[];
  subEnabled?: boolean;
  autoPlayNext?: boolean;
  totalEps?: number;
  episodeTitle?: string;
  onError?: () => void;
};

const { width: SCREEN_WIDTH } = Dimensions.get("window");
const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];
const TV_SUBTITLE_SETTINGS_KEY = "nova-tv-subtitle-settings";
const TV_SUBTITLE_SIZES = [
  { value: 28, label: "صغير", detail: "28" },
  { value: 34, label: "متوسط", detail: "34" },
  { value: 46, label: "كبير", detail: "46" },
  { value: 62, label: "عملاق", detail: "62" },
  { value: 76, label: "عملاق جدًا", detail: "76" },
] as const;

type TvSubtitleSettings = {
  fontSize: number;
  bold: boolean;
  extraBold: boolean;
  verticalOffset: number;
};

const DEFAULT_TV_SUBTITLE_SETTINGS: TvSubtitleSettings = {
  fontSize: 34,
  bold: true,
  extraBold: false,
  verticalOffset: 0,
};

type TvPlayerSurfaceProps = {
  viewProps: NovaMedia3ViewProps;
  title?: string;
  episode?: number;
  episodeTitle?: string;
  onBack: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
  totalEps: number;
  activeCue?: SubCue;
  subOn: boolean;
  setSubOn: React.Dispatch<React.SetStateAction<boolean>>;
  subtitleSettings: TvSubtitleSettings;
  setSubtitleSettings: React.Dispatch<React.SetStateAction<TvSubtitleSettings>>;
  showSubtitleSettings: boolean;
  setShowSubtitleSettings: React.Dispatch<React.SetStateAction<boolean>>;
  buffering: boolean;
  position: number;
  duration: number;
  isPlaying: boolean;
  ended: boolean;
  autoPlayNext: boolean;
  controlsVisible: boolean;
  onTvFocus: () => void;
  togglePlayback: () => void;
  seek: (position: number) => void;
  playableSources: PlayerSource[];
  sourceIndex: number;
  changeSource: (index: number) => void;
  speed: number;
  chooseSpeed: (speed: number) => void;
  showSources: boolean;
  setShowSources: React.Dispatch<React.SetStateAction<boolean>>;
  showSpeeds: boolean;
  setShowSpeeds: React.Dispatch<React.SetStateAction<boolean>>;
}

function TvSubtitleSettingsPanel({
  subtitleSettings,
  setSubtitleSettings,
  onClose,
}: {
  subtitleSettings: TvSubtitleSettings;
  setSubtitleSettings: React.Dispatch<React.SetStateAction<TvSubtitleSettings>>;
  onClose: () => void;
}) {
  return (
    <View style={styles.tvSettingsLayer} pointerEvents="box-none">
      <Pressable
        accessibilityLabel="إغلاق إعدادات الترجمة"
        style={styles.tvSettingsBackdrop}
        onPress={onClose}
      />
      <View style={styles.tvSettingsPanel}>
        <View style={styles.tvSettingsHeader}>
          <View>
            <Text style={styles.tvSettingsTitle}>مظهر الترجمة</Text>
            <Text style={styles.tvSettingsHint}>تحكم سريع مناسب للريموت</Text>
          </View>
          <Pressable
            accessibilityLabel="إغلاق"
            onPress={onClose}
            focusable
            style={({ focused }) => [
              styles.tvSettingsClose,
              tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="close" size={24} color="#fff" />
          </Pressable>
        </View>

        <Text style={styles.tvSettingsSectionLabel}>حجم الخط</Text>
        <View style={styles.tvSettingsOptionRow}>
          {TV_SUBTITLE_SIZES.map((item, index) => (
            <Pressable
              key={item.value}
              accessibilityRole="button"
              accessibilityLabel={`حجم ${item.label}`}
              hasTVPreferredFocus={index === 0}
              onPress={() => setSubtitleSettings((current) => ({
                ...current,
                fontSize: item.value,
              }))}
              focusable
              style={({ focused }) => [
                styles.tvSettingsSizeButton,
                subtitleSettings.fontSize === item.value && styles.tvSettingsActive,
                tvFocusStyle(focused),
              ]}
            >
              <Text
                style={[
                  styles.tvSettingsSizeSample,
                      {
                        fontSize: Math.min(30, Math.max(21, Math.round(item.value * 0.45))),
                      },
                ]}
              >
                ع
              </Text>
              <Text style={styles.tvSettingsButtonLabel}>{item.label}</Text>
              <Text style={styles.tvSettingsButtonDetail}>{item.detail}</Text>
            </Pressable>
          ))}
        </View>
        <View style={styles.tvSettingsFineTuneRow}>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="تصغير حجم الترجمة"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              fontSize: Math.max(28, current.fontSize - 4),
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsFineTuneButton,
              tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="remove" size={22} color="#c4b5fd" />
            <Text style={styles.tvSettingsFineTuneText}>أصغر</Text>
          </Pressable>
          <Text style={styles.tvSettingsFineTuneValue}>
            حجم مخصص: {subtitleSettings.fontSize}
          </Text>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="تكبير حجم الترجمة"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              fontSize: Math.min(80, current.fontSize + 4),
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsFineTuneButton,
              tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="add" size={22} color="#c4b5fd" />
            <Text style={styles.tvSettingsFineTuneText}>أكبر</Text>
          </Pressable>
        </View>

        <Text style={styles.tvSettingsSectionLabel}>شكل النص</Text>
        <View style={styles.tvSettingsTextStyleRow}>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="تفعيل النص العريض"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              bold: !current.bold,
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsBoldButton,
              subtitleSettings.bold && styles.tvSettingsActive,
              tvFocusStyle(focused),
            ]}
          >
            <View style={styles.tvSettingsBoldIcon}>
              <Text style={styles.tvSettingsBoldIconText}>ع</Text>
            </View>
            <View style={styles.tvSettingsBoldCopy}>
              <Text style={styles.tvSettingsButtonLabel}>عريض وواضح</Text>
              <Text style={styles.tvSettingsButtonDetail}>
                {subtitleSettings.bold ? "مفعّل" : "رفيع"}
              </Text>
            </View>
            <Ionicons
              name={subtitleSettings.bold ? "checkmark-circle" : "ellipse-outline"}
              size={28}
              color={subtitleSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.35)"}
            />
          </Pressable>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="تفعيل النص العريض جدًا"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              extraBold: !current.extraBold,
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsBoldButton,
              subtitleSettings.extraBold && styles.tvSettingsActive,
              tvFocusStyle(focused),
            ]}
          >
            <View style={styles.tvSettingsBoldIcon}>
              <Text style={[styles.tvSettingsBoldIconText, { fontWeight: "900" }]}>ع</Text>
            </View>
            <View style={styles.tvSettingsBoldCopy}>
              <Text style={styles.tvSettingsButtonLabel}>عريض جدًا</Text>
              <Text style={styles.tvSettingsButtonDetail}>
                {subtitleSettings.extraBold ? "مفعّل" : "أقصى سماكة"}
              </Text>
            </View>
            <Ionicons
              name={subtitleSettings.extraBold ? "checkmark-circle" : "ellipse-outline"}
              size={28}
              color={subtitleSettings.extraBold ? "#c4b5fd" : "rgba(255,255,255,0.35)"}
            />
          </Pressable>
        </View>

        <Text style={styles.tvSettingsSectionLabel}>موضع الترجمة</Text>
        <View style={styles.tvSettingsPositionRow}>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="رفع الترجمة"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              verticalOffset: Math.min(96, current.verticalOffset + 24),
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsPositionButton,
              tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="arrow-up" size={27} color="#c4b5fd" />
            <Text style={styles.tvSettingsButtonLabel}>رفع</Text>
          </Pressable>
          <View style={styles.tvSettingsPositionValue}>
            <Text style={styles.tvSettingsPositionNumber}>
              {subtitleSettings.verticalOffset === 0
                ? "الوسط"
                : `${Math.abs(subtitleSettings.verticalOffset / 24)} خطوة`}
            </Text>
            <Text style={styles.tvSettingsButtonDetail}>
              {subtitleSettings.verticalOffset > 0
                ? "أعلى"
                : subtitleSettings.verticalOffset < 0
                  ? "أسفل"
                  : "افتراضي"}
            </Text>
          </View>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="خفض الترجمة"
            onPress={() => setSubtitleSettings((current) => ({
              ...current,
              verticalOffset: Math.max(-96, current.verticalOffset - 24),
            }))}
            focusable
            style={({ focused }) => [
              styles.tvSettingsPositionButton,
              tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="arrow-down" size={27} color="#c4b5fd" />
            <Text style={styles.tvSettingsButtonLabel}>خفض</Text>
          </Pressable>
        </View>
        <Pressable
          accessibilityRole="button"
          accessibilityLabel="إعادة موضع الترجمة"
          onPress={() => setSubtitleSettings((current) => ({
            ...current,
            verticalOffset: 0,
          }))}
          focusable
          style={({ focused }) => [
            styles.tvSettingsReset,
            tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="refresh-outline" size={20} color="rgba(255,255,255,0.65)" />
          <Text style={styles.tvSettingsResetText}>إعادة الموضع الافتراضي</Text>
        </Pressable>
      </View>
    </View>
  );
}

function TvPlayerSurface({
  viewProps,
  title,
  episode,
  episodeTitle,
  onBack,
  onNextEpisode,
  onPrevEpisode,
  totalEps,
  activeCue,
  subOn,
  setSubOn,
  subtitleSettings,
  setSubtitleSettings,
  showSubtitleSettings,
  setShowSubtitleSettings,
  buffering,
  position,
  duration,
  isPlaying,
  ended,
  autoPlayNext,
  controlsVisible,
  onTvFocus,
  togglePlayback,
  seek,
  playableSources,
  sourceIndex,
  changeSource,
  speed,
  chooseSpeed,
  showSources,
  setShowSources,
  showSpeeds,
  setShowSpeeds,
}: TvPlayerSurfaceProps) {
  const progress = duration > 0 ? Math.min(1, Math.max(0, position / duration)) : 0;
  const canNext = Boolean(onNextEpisode && (episode ?? 0) < totalEps);

  const closeMenus = () => {
    setShowSources(false);
    setShowSpeeds(false);
  };

  return (
    <View style={styles.tvRoot}>
      <StatusBar hidden />
      <NovaMedia3View
        {...viewProps}
        style={StyleSheet.absoluteFill}
        contentFit="contain"
      />
      {buffering && (
        <View pointerEvents="none" style={styles.buffering}>
          <ActivityIndicator color="#c4b5fd" size="large" />
        </View>
      )}
      {subOn && activeCue && (
        <View
          pointerEvents="none"
          style={[
            styles.tvCinemaSubtitle,
            { bottom: 300 + subtitleSettings.verticalOffset },
          ]}
        >
          <Text
            style={[
              styles.tvSubtitleText,
              {
                fontSize: subtitleSettings.fontSize,
                lineHeight: Math.round(subtitleSettings.fontSize * 1.4),
                fontWeight: subtitleSettings.bold ? "900" : "500",
              },
            ]}
          >
            {activeCue.text}
          </Text>
        </View>
      )}

      {controlsVisible && (
        <View pointerEvents="box-none" style={StyleSheet.absoluteFill}>
          <View style={styles.tvCinemaHeader}>
            <View style={styles.tvBrandBadge}>
              <Text style={styles.tvBrandText}>NOVA TV</Text>
            </View>
            <View style={styles.tvCinemaTitleBlock}>
              <Text numberOfLines={1} style={styles.tvCinemaTitle}>
                {title || "NOVA"}
              </Text>
              <Text numberOfLines={1} style={styles.tvCinemaMeta}>
                {episode != null ? `الحلقة ${episode}` : episodeTitle || ""}
              </Text>
            </View>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="إغلاق المشغل"
              onPress={onBack}
              onFocus={onTvFocus}
              focusable
              style={({ focused }) => [
                styles.tvCloseButton,
                tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="close" size={34} color="#fff" />
              <Text style={styles.tvCloseText}>خروج</Text>
            </Pressable>
          </View>

          <View style={styles.tvCinemaControls}>
            <View style={styles.tvProgressRow}>
              <Text style={styles.tvCinemaTime}>{formatTime(position)}</Text>
              <View style={styles.tvProgressTrack}>
                <View style={[styles.tvProgressFill, { width: `${progress * 100}%` }]} />
                <View style={[styles.tvProgressThumb, { left: `${progress * 100}%` }]} />
              </View>
              <Text style={styles.tvCinemaTime}>{formatTime(duration)}</Text>
            </View>

            <View style={styles.tvTransportRow}>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="الحلقة السابقة"
                onPress={onPrevEpisode}
                onFocus={onTvFocus}
                disabled={!onPrevEpisode}
                focusable
                style={({ focused }) => [
                  styles.tvTransportButton,
                  !onPrevEpisode && styles.tvDisabledButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="play-skip-back" size={32} color="#fff" />
                <Text style={styles.tvTransportLabel}>السابق</Text>
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="إرجاع ثلاثين ثانية"
                onPress={() => seek(position - 30)}
                onFocus={onTvFocus}
                focusable
                style={({ focused }) => [
                  styles.tvTransportButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="play-back" size={32} color="#fff" />
                <Text style={styles.tvTransportLabel}>30 ثانية</Text>
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel={isPlaying ? "إيقاف مؤقت" : "تشغيل"}
                onPress={togglePlayback}
                onFocus={onTvFocus}
                hasTVPreferredFocus
                focusable
                style={({ focused }) => [
                  styles.tvCinemaPlayButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name={isPlaying ? "pause" : "play"} size={42} color="#09090b" />
                <Text style={styles.tvPlayLabel}>{isPlaying ? "إيقاف" : "تشغيل"}</Text>
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="تقديم ثلاثين ثانية"
                onPress={() => seek(position + 30)}
                onFocus={onTvFocus}
                focusable
                style={({ focused }) => [
                  styles.tvTransportButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="play-forward" size={32} color="#fff" />
                <Text style={styles.tvTransportLabel}>30 ثانية</Text>
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="الحلقة التالية"
                onPress={onNextEpisode}
                onFocus={onTvFocus}
                disabled={!canNext}
                focusable
                style={({ focused }) => [
                  styles.tvTransportButton,
                  !canNext && styles.tvDisabledButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="play-skip-forward" size={32} color="#fff" />
                <Text style={styles.tvTransportLabel}>التالي</Text>
              </Pressable>
            </View>

            <View style={styles.tvUtilityRow}>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel={subOn ? "إيقاف الترجمة" : "تشغيل الترجمة"}
                onPress={() => { setSubOn((value) => !value); onTvFocus(); }}
                onFocus={onTvFocus}
                focusable
                style={({ focused }) => [
                  styles.tvUtilityButton,
                  subOn && styles.tvUtilityActive,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="chatbox-ellipses-outline" size={27} color="#fff" />
                <Text style={styles.tvUtilityText}>{subOn ? "الترجمة مفعلة" : "الترجمة مغلقة"}</Text>
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="مظهر الترجمة"
                onPress={() => { closeMenus(); setShowSubtitleSettings(true); onTvFocus(); }}
                onFocus={onTvFocus}
                focusable
                style={({ focused }) => [
                  styles.tvUtilityButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="text-outline" size={27} color="#fff" />
                <Text style={styles.tvUtilityText}>مظهر الترجمة</Text>
              </Pressable>
              <View style={styles.tvMenuAnchor}>
                {showSources && (
                  <View style={styles.tvCinemaMenu}>
                    {playableSources.map((item, index) => (
                      <Pressable
                        key={`${item.url}-${index}`}
                        accessibilityRole="button"
                        onPress={() => { changeSource(index); closeMenus(); }}
                        onFocus={onTvFocus}
                        focusable
                        style={({ focused }) => [
                          styles.tvCinemaMenuItem,
                          tvFocusStyle(focused),
                        ]}
                      >
                        <Text style={styles.tvCinemaMenuText}>{item.quality || item.label}</Text>
                        {index === sourceIndex && <Ionicons name="checkmark" size={22} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                <Pressable
                  accessibilityRole="button"
                  accessibilityLabel="اختيار الجودة"
                  onPress={() => { setShowSources((value) => !value); setShowSpeeds(false); onTvFocus(); }}
                  onFocus={onTvFocus}
                  focusable
                  style={({ focused }) => [
                    styles.tvUtilityButton,
                    tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name="options-outline" size={27} color="#fff" />
                  <Text style={styles.tvUtilityText}>الجودة</Text>
                </Pressable>
              </View>
              <View style={styles.tvMenuAnchor}>
                {showSpeeds && (
                  <View style={styles.tvCinemaMenu}>
                    {SPEEDS.map((item) => (
                      <Pressable
                        key={item}
                        accessibilityRole="button"
                        onPress={() => { chooseSpeed(item); closeMenus(); }}
                        onFocus={onTvFocus}
                        focusable
                        style={({ focused }) => [
                          styles.tvCinemaMenuItem,
                          tvFocusStyle(focused),
                        ]}
                      >
                        <Text style={styles.tvCinemaMenuText}>{item}x</Text>
                        {item === speed && <Ionicons name="checkmark" size={22} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                <Pressable
                  accessibilityRole="button"
                  accessibilityLabel="اختيار السرعة"
                  onPress={() => { setShowSpeeds((value) => !value); setShowSources(false); onTvFocus(); }}
                  onFocus={onTvFocus}
                  focusable
                  style={({ focused }) => [
                    styles.tvUtilityButton,
                    tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name="speedometer-outline" size={27} color="#fff" />
                  <Text style={styles.tvUtilityText}>{speed}x السرعة</Text>
                </Pressable>
              </View>
            </View>
          </View>

          {ended && (
            <View style={styles.tvEnded}>
              <Text style={styles.tvEndedText}>انتهت الحلقة</Text>
              {canNext && autoPlayNext && (
                <Pressable
                  accessibilityRole="button"
                  onPress={onNextEpisode}
                  onFocus={onTvFocus}
                  focusable
                  style={({ focused }) => [
                    styles.tvNextButton,
                    tvFocusStyle(focused),
                  ]}
                >
                  <Text style={styles.tvNextButtonText}>الحلقة التالية</Text>
                </Pressable>
              )}
            </View>
          )}
        </View>
      )}

      {showSubtitleSettings && (
        <TvSubtitleSettingsPanel
          subtitleSettings={subtitleSettings}
          setSubtitleSettings={setSubtitleSettings}
          onClose={() => setShowSubtitleSettings(false)}
        />
      )}
      {!controlsVisible && !showSubtitleSettings && (
        <Pressable
          accessibilityRole="button"
          accessibilityLabel="إظهار أدوات مشغل التلفاز"
          hasTVPreferredFocus
          focusable
          onFocus={onTvFocus}
          onPress={onTvFocus}
          style={styles.tvRevealTarget}
        >
          <View style={styles.tvRevealHint}>
            <Ionicons name="game-controller-outline" size={30} color="#c4b5fd" />
            <Text style={styles.tvRevealText}>اضغط OK لإظهار أدوات التلفاز</Text>
          </View>
        </Pressable>
      )}
    </View>
  );
}

function validUrl(value: unknown): value is string {
  if (typeof value !== "string" || !value.trim()) return false;
  try {
    const url = new URL(value);
    return ["http:", "https:", "file:"].includes(url.protocol) && !!url.pathname;
  } catch {
    return false;
  }
}

function formatTime(value: number) {
  if (!Number.isFinite(value) || value < 0) return "0:00";
  const seconds = Math.floor(value);
  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const rest = seconds % 60;
  return hours
    ? `${hours}:${String(minutes).padStart(2, "0")}:${String(rest).padStart(2, "0")}`
    : `${minutes}:${String(rest).padStart(2, "0")}`;
}

function parseVttTime(value: string) {
  const parts = value.replace(",", ".").split(":").map(Number);
  if (parts.some((part) => !Number.isFinite(part))) return 0;
  if (parts.length === 3) return parts[0] * 3600 + parts[1] * 60 + parts[2];
  return parts[0] * 60 + parts[1];
}

function parseVtt(text: string): SubCue[] {
  return text
    .replace(/\r/g, "")
    .split(/\n\s*\n/)
    .flatMap((block) => {
      const lines = block.split("\n");
      const timeIndex = lines.findIndex((line) => line.includes("-->"));
      if (timeIndex < 0) return [];
      const [start, end] = lines[timeIndex].split("-->");
      const cueText = lines.slice(timeIndex + 1).join("\n").trim();
      if (!cueText) return [];
      return [{ start: parseVttTime(start.trim()), end: parseVttTime(end.trim()), text: cueText }];
    })
    .sort((a, b) => a.start - b.start);
}

export function RiftPlayer({
  sources,
  initialSourceIndex = 0,
  title,
  episode,
  onBack,
  onNextEpisode,
  onPrevEpisode,
  onProgress,
  initialPosition = 0,
  skipIntro,
  skipOutro,
  subCues = [],
  subEnabled = false,
  autoPlayNext = true,
  /* Unknown totals must be fail-closed instead of assuming 999 episodes. */
  totalEps = 0,
  episodeTitle,
  onError,
}: Props) {
  const playableSources = useMemo(() => {
    const seen = new Set<string>();
    return sources.filter((source) => {
      if (!validUrl(source.url) || seen.has(source.url)) return false;
      seen.add(source.url);
      return true;
    });
  }, [sources]);
  const firstIndex = Math.min(
    Math.max(initialSourceIndex, 0),
    Math.max(playableSources.length - 1, 0),
  );
  const [sourceIndex, setSourceIndex] = useState(firstIndex);
  const source = playableSources[sourceIndex];
  const player = useNovaMedia3Player(
    source?.url ?? "",
    source?.headers,
    initialPosition > 5 ? initialPosition : 0,
  );

  const [position, setPosition] = useState(initialPosition > 5 ? initialPosition : 0);
  const [duration, setDuration] = useState(0);
  const [isPlaying, setIsPlaying] = useState(true);
  const [buffering, setBuffering] = useState(true);
  const { width: windowWidth, tv: tvMode } = useTvMetrics();
  const [failed, setFailed] = useState(!source);
  const [speed, setSpeed] = useState(1);
  const [showSources, setShowSources] = useState(false);
  const [showSpeeds, setShowSpeeds] = useState(false);
  const [subtitles, setSubtitles] = useState<SubCue[]>(subCues);
  const [subOn, setSubOn] = useState(subEnabled);
  const [subtitleSettings, setSubtitleSettings] = useState<TvSubtitleSettings>(
    DEFAULT_TV_SUBTITLE_SETTINGS,
  );
  const subtitleSettingsHydrated = useRef(false);
  const [showSubtitleSettings, setShowSubtitleSettings] = useState(false);
  const [isPortrait, setIsPortrait] = useState(false);
  const [ended, setEnded] = useState(false);
  const [controlsVisible, setControlsVisible] = useState(true);
  const lastProgress = useRef(0);
  const restoredInitialPosition = useRef(false);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    let cancelled = false;
    AsyncStorage.getItem(TV_SUBTITLE_SETTINGS_KEY)
      .then((raw) => {
        if (cancelled) return;
        if (raw) {
          try {
            const parsed = JSON.parse(raw) as Partial<TvSubtitleSettings>;
            setSubtitleSettings({
              fontSize: TV_SUBTITLE_SIZES.some((item) => item.value === parsed.fontSize)
                ? parsed.fontSize!
                : DEFAULT_TV_SUBTITLE_SETTINGS.fontSize,
              bold: typeof parsed.bold === "boolean"
                ? parsed.bold
                : DEFAULT_TV_SUBTITLE_SETTINGS.bold,
              extraBold: typeof parsed.extraBold === "boolean"
                ? parsed.extraBold
                : DEFAULT_TV_SUBTITLE_SETTINGS.extraBold,
              verticalOffset: typeof parsed.verticalOffset === "number"
                ? Math.max(-96, Math.min(96, parsed.verticalOffset))
                : DEFAULT_TV_SUBTITLE_SETTINGS.verticalOffset,
            });
          } catch {}
        }
        subtitleSettingsHydrated.current = true;
      })
      .catch(() => {
        if (!cancelled) subtitleSettingsHydrated.current = true;
      });
    return () => {
      cancelled = true;
    };
  }, []);

  useEffect(() => {
    if (!subtitleSettingsHydrated.current) return;
    AsyncStorage.setItem(
      TV_SUBTITLE_SETTINGS_KEY,
      JSON.stringify(subtitleSettings),
    ).catch(() => {});
  }, [subtitleSettings]);

  const activeCue = useMemo(
    () => subtitles.find((cue) => position >= cue.start && position <= cue.end),
    [position, subtitles],
  );

  const scheduleHide = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    setControlsVisible(true);
    hideTimer.current = setTimeout(
      () => setControlsVisible(false),
      tvMode ? 8000 : 4500,
    );
  }, [tvMode]);

  const onTvFocus = useCallback(() => {
    if (tvMode) scheduleHide();
  }, [scheduleHide, tvMode]);

  useEffect(() => {
    scheduleHide();
    return () => {
      if (hideTimer.current) clearTimeout(hideTimer.current);
    };
  }, [scheduleHide]);

  useEffect(() => {
    if (Platform.OS !== "android" || !tvMode) return;
    const subscription = BackHandler.addEventListener("hardwareBackPress", () => {
      if (showSubtitleSettings) {
        setShowSubtitleSettings(false);
        return true;
      }
      if (showSources || showSpeeds) {
        setShowSources(false);
        setShowSpeeds(false);
        return true;
      }
      onBack();
      return true;
    });
    return () => subscription.remove();
  }, [onBack, showSources, showSpeeds, showSubtitleSettings, tvMode]);

  useEffect(() => {
    const progressSub = player.addListener("progress", (event: any) => {
      const nextPosition = Number(event.currentTime) || 0;
      const nextDuration = Number(event.duration) || 0;
      setPosition(nextPosition);
      setDuration(nextDuration);
      if (nextPosition - lastProgress.current >= 2 || nextPosition === 0) {
        lastProgress.current = nextPosition;
        onProgress?.(nextPosition, nextDuration);
      }
    });
    const stateSub = player.addListener("playingChange", (event: any) => {
      setIsPlaying(Boolean(event.isPlaying));
      setBuffering(event.state === "loading");
    });
    const statusSub = player.addListener("statusChange", (event: any) => {
      if (event.state === "readyToPlay") {
        setBuffering(false);
        setFailed(false);
        if (!restoredInitialPosition.current && initialPosition > 5) {
          restoredInitialPosition.current = true;
          player.currentTime = initialPosition;
        }
        player.play();
      } else if (event.state === "loading") {
        setBuffering(true);
      } else if (event.state === "error") {
        setBuffering(false);
        setFailed(true);
        onError?.();
      } else if (event.state === "ended") {
        setEnded(true);
        setIsPlaying(false);
        onProgress?.(player.currentTime, player.duration);
      }
    });
    const endedSub = player.addListener("ended", () => {
      setEnded(true);
      setIsPlaying(false);
    });
    return () => {
      progressSub.remove();
      stateSub.remove();
      statusSub.remove();
      endedSub.remove();
    };
  }, [onError, onProgress, player]);

  useEffect(() => {
    if (!source?.subtitleUrl || subCues.length) return;
    const controller = new AbortController();
    const subtitleText = source.subtitleUrl.startsWith("file://")
      ? FileSystem.readAsStringAsync(source.subtitleUrl)
      : fetch(source.subtitleUrl, { signal: controller.signal }).then((response) => {
          if (!response.ok) throw new Error(`subtitle ${response.status}`);
          return response.text();
        });
    subtitleText
      .then((text) => {
        if (!controller.signal.aborted) {
          const cues = parseVtt(text);
          setSubtitles(cues);
          if (cues.length) setSubOn(true);
        }
      })
      .catch(() => {});
    return () => controller.abort();
  }, [source?.subtitleUrl, subCues.length]);

  useEffect(() => {
    setSubtitles(subCues);
  }, [sourceIndex, subCues]);

  const changeSource = useCallback(
    (index: number) => {
      const next = playableSources[index];
      if (!next) return;
      setSourceIndex(index);
      setFailed(false);
      setEnded(false);
      setBuffering(true);
      setPosition(0);
      player.replace(next.url, next.headers);
      scheduleHide();
    },
    [playableSources, player, scheduleHide],
  );

  const seek = useCallback(
    (next: number) => {
      const target = Math.max(0, Math.min(duration || next, next));
      player.currentTime = target;
      setPosition(target);
      onProgress?.(target, duration);
      scheduleHide();
    },
    [duration, onProgress, player, scheduleHide],
  );

  const seekPan = useRef(tvMode ? null : PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: () => true,
      onPanResponderRelease: (event) => {
        const seekWidth = tvMode ? windowWidth : SCREEN_WIDTH;
        const percentage = Math.max(0, Math.min(1, event.nativeEvent.locationX / Math.max(seekWidth, 1)));
        seek(percentage * duration);
      },
    })).current;

  const togglePortrait = useCallback(async () => {
    const next = !isPortrait;
    setIsPortrait(next);
    await ScreenOrientation.lockAsync(
      next
        ? ScreenOrientation.OrientationLock.PORTRAIT_UP
        : ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT,
    ).catch(() => {});
  }, [isPortrait]);

  const togglePlayback = useCallback(() => {
    if (isPlaying) player.pause();
    else player.play();
    setIsPlaying((value) => !value);
    scheduleHide();
  }, [isPlaying, player, scheduleHide]);

  const chooseSpeed = useCallback(
    (next: number) => {
      setSpeed(next);
      player.playbackRate = next;
      setShowSpeeds(false);
      scheduleHide();
    },
    [player, scheduleHide],
  );

  useEffect(() => {
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, [player]);

  const [isolatedTestBusy, setIsolatedTestBusy] = useState(false);

  // First testable slice of the process-isolated player (see
  // artifacts/nova-mobile/docs/NOVA_PLAYER_FULL_ISOLATION_PLAN.md). Wired
  // here as an explicit opt-in button rather than replacing RiftPlayer
  // outright, per the plan's staged rollout: prove stability on real
  // devices via a GitHub Actions APK build before making it the default.
  const testIsolatedPlayer = useCallback(async () => {
    if (Platform.OS !== "android" || !source?.url || isolatedTestBusy) return;
    setIsolatedTestBusy(true);
    player.pause();
    setIsPlaying(false);
    try {
      const result = await openIsolatedPlayer({
        sourceUrl: source.url,
        sourceHeaders: source.headers,
        subtitleUrl: source.subtitleUrl,
        title,
        episodeLabel: episode != null ? `الحلقة ${episode}` : episodeTitle,
        initialPositionSeconds: position,
        introStartSeconds: skipIntro?.start,
        introEndSeconds: skipIntro?.end,
        outroStartSeconds: skipOutro?.start,
        outroEndSeconds: skipOutro?.end,
      });
      if (result.positionSeconds > 0) {
        player.currentTime = result.positionSeconds;
        setPosition(result.positionSeconds);
        onProgress?.(result.positionSeconds, result.durationSeconds || duration);
      }
      if (result.ended) setEnded(true);
    } catch (error) {
      Alert.alert(
        "تعذّر فتح المشغّل المعزول",
        error instanceof Error ? error.message : "خطأ غير معروف",
      );
    } finally {
      setIsolatedTestBusy(false);
    }
  }, [
    duration,
    episode,
    episodeTitle,
    isolatedTestBusy,
    onProgress,
    player,
    position,
    skipIntro,
    skipOutro,
    source,
    title,
  ]);

  if (!source || failed) {
    return (
      <View style={styles.center}>
        <Ionicons name="alert-circle-outline" size={42} color="#f87171" />
        <Text style={styles.message}>تعذّر تحميل مصدر الفيديو</Text>
        {playableSources.length > 1 && (
          <Pressable onPress={() => changeSource((sourceIndex + 1) % playableSources.length)} style={styles.action}>
            <Text style={styles.actionText}>جرّب المصدر التالي</Text>
          </Pressable>
        )}
        <Pressable onPress={onBack} style={styles.secondaryAction}>
          <Text style={styles.secondaryText}>العودة</Text>
        </Pressable>
      </View>
    );
  }

  if (tvMode) {
    return (
      <TvPlayerSurface
        viewProps={player.viewProps}
        title={title}
        episode={episode}
        episodeTitle={episodeTitle}
        onBack={onBack}
        onNextEpisode={onNextEpisode}
        onPrevEpisode={onPrevEpisode}
        totalEps={totalEps}
        activeCue={activeCue}
        subOn={subOn}
        setSubOn={setSubOn}
        subtitleSettings={subtitleSettings}
        setSubtitleSettings={setSubtitleSettings}
        showSubtitleSettings={showSubtitleSettings}
        setShowSubtitleSettings={setShowSubtitleSettings}
        buffering={buffering}
        position={position}
        duration={duration}
        isPlaying={isPlaying}
        ended={ended}
        autoPlayNext={autoPlayNext}
        controlsVisible={controlsVisible}
        onTvFocus={onTvFocus}
        togglePlayback={togglePlayback}
        seek={seek}
        playableSources={playableSources}
        sourceIndex={sourceIndex}
        changeSource={changeSource}
        speed={speed}
        chooseSpeed={chooseSpeed}
        showSources={showSources}
        setShowSources={setShowSources}
        showSpeeds={showSpeeds}
        setShowSpeeds={setShowSpeeds}
      />
    );
  }

  const progress = duration > 0 ? Math.min(1, Math.max(0, position / duration)) : 0;
  const canNext = Boolean(onNextEpisode && (episode ?? 0) < totalEps);

  return (
    <View style={styles.root}>
      <StatusBar hidden />
      <NovaMedia3View
        {...player.viewProps}
        style={StyleSheet.absoluteFill}
        contentFit="contain"
      />
      {buffering && (
        <View pointerEvents="none" style={styles.buffering}>
          <ActivityIndicator color="#c4b5fd" size="large" />
        </View>
      )}
      {subOn && activeCue && (
        <View
          pointerEvents="none"
          style={[
            styles.subtitle,
            tvMode && styles.tvSubtitle,
            tvMode && { bottom: 172 + subtitleSettings.verticalOffset },
          ]}
        >
          <Text
            style={[
              styles.subtitleText,
              tvMode && styles.tvSubtitleText,
              tvMode && {
                fontSize: subtitleSettings.fontSize,
                lineHeight: Math.round(subtitleSettings.fontSize * 1.4),
                fontWeight: subtitleSettings.extraBold ? "900" : subtitleSettings.bold ? "700" : "500",
              },
            ]}
          >
            {activeCue.text}
          </Text>
        </View>
      )}
      <Pressable
        style={StyleSheet.absoluteFill}
        pointerEvents={tvMode ? "none" : "auto"}
        onPress={() => (controlsVisible ? setControlsVisible(false) : scheduleHide())}
      />
      {controlsVisible && (
        <View pointerEvents="box-none" style={StyleSheet.absoluteFill}>
          <View style={[styles.topBar, tvMode && styles.tvTopBar]}>
            <Pressable
              onPress={onBack}
              focusable={tvMode}
              hitSlop={tvMode ? 14 : 10}
              style={({ focused }) => [styles.iconButton, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="close" size={22} color="#fff" />
            </Pressable>
            <View style={styles.titleBlock}>
              <Text numberOfLines={1} style={[styles.title, tvMode && styles.tvTitle]}>{title || "NOVA"}</Text>
              <Text numberOfLines={1} style={[styles.meta, tvMode && styles.tvMeta]}>
                {episode != null ? `الحلقة ${episode}` : episodeTitle || ""}
              </Text>
            </View>
            {!tvMode && <Pressable onPress={togglePortrait} hitSlop={10} style={styles.iconButton}>
              <Ionicons name={isPortrait ? "phone-landscape-outline" : "phone-portrait-outline"} size={19} color="#fff" />
            </Pressable>}
            {!tvMode && <Pressable onPress={() => player.enterPictureInPicture()} hitSlop={10} style={styles.iconButton}>
              <Ionicons name="scan-outline" size={19} color="#fff" />
            </Pressable>}
            {Platform.OS === "android" && !tvMode && (
              <Pressable
                onPress={testIsolatedPlayer}
                disabled={isolatedTestBusy}
                hitSlop={10}
                style={styles.iconButton}
              >
                {isolatedTestBusy ? (
                  <ActivityIndicator size="small" color="#c4b5fd" />
                ) : (
                  <Ionicons name="flask-outline" size={19} color="#fff" />
                )}
              </Pressable>
            )}
          </View>
          <View style={[styles.bottomArea, tvMode && styles.tvBottomArea]}>
            <View style={styles.seekRow}>
              <Text style={[styles.time, tvMode && styles.tvTime]}>{formatTime(position)}</Text>
              <View {...(seekPan ? seekPan.panHandlers : {})} style={styles.seekTrack}>
                <View style={[styles.seekFill, { width: `${progress * 100}%` }]} />
                <View style={[styles.seekThumb, { left: `${progress * 100}%` }]} />
              </View>
              <Text style={[styles.time, tvMode && styles.tvTime]}>{formatTime(duration)}</Text>
            </View>
            <View style={styles.controlsRow}>
              <View style={styles.controlSide}>
                <Pressable
                  onPress={() => seek(position - 10)}
                  focusable={tvMode}
                  style={({ focused }) => [styles.control, tvMode && styles.tvControl, tvMode && tvFocusStyle(focused)]}
                >
                  <Ionicons name="play-back" size={20} color="#fff" />
                  <Text style={styles.controlText}>10</Text>
                </Pressable>
              </View>
              {tvMode && onPrevEpisode && (
                <Pressable
                  onPress={onPrevEpisode}
                  focusable
                  style={({ focused }) => [styles.control, styles.tvControl, styles.tvEpisodeControl, tvFocusStyle(focused)]}
                  accessibilityRole="button"
                  accessibilityLabel="الحلقة السابقة"
                >
                  <Ionicons name="play-skip-back" size={22} color="#fff" />
                  <Text style={styles.tvEpisodeText}>السابق</Text>
                </Pressable>
              )}
              <View style={styles.controlCenter}>
                <Pressable
                  onPress={togglePlayback}
                  focusable={tvMode}
                  hasTVPreferredFocus={tvMode}
                  style={({ focused }) => [styles.playButton, tvMode && styles.tvPlayButton, tvMode && tvFocusStyle(focused)]}
                >
                  <Ionicons name={isPlaying ? "pause" : "play"} size={24} color="#09090b" />
                </Pressable>
              </View>
              {tvMode && canNext && onNextEpisode && (
                <Pressable
                  onPress={onNextEpisode}
                  focusable
                  style={({ focused }) => [styles.control, styles.tvControl, styles.tvEpisodeControl, tvFocusStyle(focused)]}
                  accessibilityRole="button"
                  accessibilityLabel="الحلقة التالية"
                >
                  <Text style={styles.tvEpisodeText}>التالي</Text>
                  <Ionicons name="play-skip-forward" size={22} color="#fff" />
                </Pressable>
              )}
              <View style={styles.controlSide}>
                <Pressable
                  onPress={() => seek(position + 10)}
                  focusable={tvMode}
                  style={({ focused }) => [styles.control, tvMode && styles.tvControl, tvMode && tvFocusStyle(focused)]}
                >
                  <Ionicons name="play-forward" size={20} color="#fff" />
                  <Text style={styles.controlText}>10</Text>
                </Pressable>
              </View>
              {skipIntro && position >= skipIntro.start && position < skipIntro.end && !tvMode && (
                <Pressable onPress={() => seek(skipIntro.end)} style={styles.skip}>
                  <Text style={styles.skipText}>تخطي المقدمة</Text>
                </Pressable>
              )}
              {skipOutro && position >= skipOutro.start && position < skipOutro.end && !tvMode && (
                <Pressable onPress={() => seek(skipOutro.end)} style={styles.skip}>
                  <Text style={styles.skipText}>تخطي النهاية</Text>
                </Pressable>
              )}
              <View style={styles.flex} />
              <Pressable
                onPress={() => setSubOn((value) => !value)}
                focusable={tvMode}
                style={({ focused }) => [styles.pill, subOn && styles.pillActive, tvMode && styles.tvSubtitlePill, tvMode && tvFocusStyle(focused)]}
              >
                <Text style={[styles.pillText, tvMode && styles.tvSubtitleButtonText]}>
                  {tvMode ? "الترجمة" : "CC"}
                </Text>
              </Pressable>
              {tvMode && (
                <Pressable
                  accessibilityRole="button"
                  accessibilityLabel="مظهر الترجمة"
                  onPress={() => setShowSubtitleSettings(true)}
                  focusable
                  style={({ focused }) => [
                    styles.tvSubtitleSettingsPill,
                    tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name="text-outline" size={25} color="#fff" />
                  <Text style={styles.tvSubtitleSettingsText}>المظهر</Text>
                </Pressable>
              )}
              <View>
                {showSources && (
                  <View style={[styles.menu, tvMode && styles.tvMenu]}>
                    {playableSources.map((item, index) => (
                      <Pressable
                        key={`${item.url}-${index}`}
                        onPress={() => { changeSource(index); setShowSources(false); }}
                        focusable={tvMode}
                        hasTVPreferredFocus={tvMode && index === 0}
                        style={({ focused }) => [styles.menuItem, tvMode && styles.tvMenuItem, tvMode && tvFocusStyle(focused)]}
                      >
                        <Text style={[styles.menuText, tvMode && styles.tvMenuText]}>{item.quality || item.label}</Text>
                        {index === sourceIndex && <Ionicons name="checkmark" size={15} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                <Pressable
                  onPress={() => { setShowSources((value) => !value); setShowSpeeds(false); }}
                  focusable={tvMode}
                  style={({ focused }) => [styles.pill, tvMode && styles.tvPill, tvMode && tvFocusStyle(focused)]}
                >
                  <Text style={[styles.pillText, tvMode && styles.tvPillText]}>الجودة</Text>
                </Pressable>
              </View>
              <View>
                {showSpeeds && (
                  <View style={[styles.menu, tvMode && styles.tvMenu]}>
                    {SPEEDS.map((item, index) => (
                      <Pressable
                        key={item}
                        onPress={() => chooseSpeed(item)}
                        focusable={tvMode}
                        hasTVPreferredFocus={tvMode && index === 0}
                        style={({ focused }) => [styles.menuItem, tvMode && styles.tvMenuItem, tvMode && tvFocusStyle(focused)]}
                      >
                        <Text style={[styles.menuText, tvMode && styles.tvMenuText]}>{item}x</Text>
                        {item === speed && <Ionicons name="checkmark" size={15} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                <Pressable
                  onPress={() => { setShowSpeeds((value) => !value); setShowSources(false); }}
                  focusable={tvMode}
                  style={({ focused }) => [styles.pill, tvMode && styles.tvPill, tvMode && tvFocusStyle(focused)]}
                >
                  <Text style={[styles.pillText, tvMode && styles.tvPillText]}>{speed}x</Text>
                </Pressable>
              </View>
            </View>
            {ended && (
              <View style={styles.ended}>
                <Text style={styles.endedText}>انتهت الحلقة</Text>
                {canNext && autoPlayNext && (
                  <Pressable onPress={onNextEpisode} style={styles.action}>
                    <Text style={styles.actionText}>الحلقة التالية</Text>
                  </Pressable>
                )}
              </View>
            )}
          </View>
        </View>
      )}
      {tvMode && showSubtitleSettings && (
        <View style={styles.tvSettingsLayer} pointerEvents="box-none">
          <Pressable
            accessibilityLabel="إغلاق إعدادات الترجمة"
            style={styles.tvSettingsBackdrop}
            onPress={() => setShowSubtitleSettings(false)}
          />
          <View style={styles.tvSettingsPanel}>
            <View style={styles.tvSettingsHeader}>
              <View>
                <Text style={styles.tvSettingsTitle}>مظهر الترجمة</Text>
                <Text style={styles.tvSettingsHint}>تحكم سريع مناسب للريموت</Text>
              </View>
              <Pressable
                accessibilityLabel="إغلاق"
                onPress={() => setShowSubtitleSettings(false)}
                focusable
                style={({ focused }) => [
                  styles.tvSettingsClose,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="close" size={24} color="#fff" />
              </Pressable>
            </View>

            <Text style={styles.tvSettingsSectionLabel}>حجم الخط</Text>
            <View style={styles.tvSettingsOptionRow}>
              {TV_SUBTITLE_SIZES.map((item, index) => (
                <Pressable
                  key={item.value}
                  accessibilityRole="button"
                  accessibilityLabel={`حجم ${item.label}`}
                  hasTVPreferredFocus={index === 0}
                  onPress={() => setSubtitleSettings((current) => ({
                    ...current,
                    fontSize: item.value,
                  }))}
                  focusable
                  style={({ focused }) => [
                    styles.tvSettingsSizeButton,
                    subtitleSettings.fontSize === item.value && styles.tvSettingsActive,
                    tvFocusStyle(focused),
                  ]}
                >
                  <Text
                    style={[
                      styles.tvSettingsSizeSample,
                      {
                        fontSize: Math.min(30, Math.max(21, Math.round(item.value * 0.45))),
                      },
                    ]}
                  >
                    ع
                  </Text>
                  <Text style={styles.tvSettingsButtonLabel}>{item.label}</Text>
                  <Text style={styles.tvSettingsButtonDetail}>{item.detail}</Text>
                </Pressable>
              ))}
            </View>

            <Text style={styles.tvSettingsSectionLabel}>شكل النص</Text>
            <View style={styles.tvSettingsTextStyleRow}>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="تفعيل النص العريض"
                onPress={() => setSubtitleSettings((current) => ({
                  ...current,
                  bold: !current.bold,
                }))}
                focusable
                style={({ focused }) => [
                  styles.tvSettingsBoldButton,
                  subtitleSettings.bold && styles.tvSettingsActive,
                  tvFocusStyle(focused),
                ]}
              >
                <View style={styles.tvSettingsBoldIcon}>
                  <Text style={styles.tvSettingsBoldIconText}>ع</Text>
                </View>
                <View style={styles.tvSettingsBoldCopy}>
                  <Text style={styles.tvSettingsButtonLabel}>عريض وواضح</Text>
                  <Text style={styles.tvSettingsButtonDetail}>
                    {subtitleSettings.bold ? "مفعّل" : "رفيع"}
                  </Text>
                </View>
                <Ionicons
                  name={subtitleSettings.bold ? "checkmark-circle" : "ellipse-outline"}
                  size={28}
                  color={subtitleSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.35)"}
                />
              </Pressable>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="تفعيل النص العريض جدًا"
                onPress={() => setSubtitleSettings((current) => ({
                  ...current,
                  extraBold: !current.extraBold,
                }))}
                focusable
                style={({ focused }) => [
                  styles.tvSettingsBoldButton,
                  subtitleSettings.extraBold && styles.tvSettingsActive,
                  tvFocusStyle(focused),
                ]}
              >
                <View style={styles.tvSettingsBoldIcon}>
                  <Text style={[styles.tvSettingsBoldIconText, { fontWeight: "900" }]}>ع</Text>
                </View>
                <View style={styles.tvSettingsBoldCopy}>
                  <Text style={styles.tvSettingsButtonLabel}>عريض جدًا</Text>
                  <Text style={styles.tvSettingsButtonDetail}>
                    {subtitleSettings.extraBold ? "مفعّل" : "أقصى سماكة"}
                  </Text>
                </View>
                <Ionicons
                  name={subtitleSettings.extraBold ? "checkmark-circle" : "ellipse-outline"}
                  size={28}
                  color={subtitleSettings.extraBold ? "#c4b5fd" : "rgba(255,255,255,0.35)"}
                />
              </Pressable>
            </View>

            <Text style={styles.tvSettingsSectionLabel}>موضع الترجمة</Text>
            <View style={styles.tvSettingsPositionRow}>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="رفع الترجمة"
                onPress={() => setSubtitleSettings((current) => ({
                  ...current,
                  verticalOffset: Math.min(96, current.verticalOffset + 24),
                }))}
                focusable
                style={({ focused }) => [
                  styles.tvSettingsPositionButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="arrow-up" size={27} color="#c4b5fd" />
                <Text style={styles.tvSettingsButtonLabel}>رفع</Text>
              </Pressable>
              <View style={styles.tvSettingsPositionValue}>
                <Text style={styles.tvSettingsPositionNumber}>
                  {subtitleSettings.verticalOffset === 0
                    ? "الوسط"
                    : `${Math.abs(subtitleSettings.verticalOffset / 24)} خطوة`}
                </Text>
                <Text style={styles.tvSettingsButtonDetail}>
                  {subtitleSettings.verticalOffset > 0
                    ? "أعلى"
                    : subtitleSettings.verticalOffset < 0
                      ? "أسفل"
                      : "افتراضي"}
                </Text>
              </View>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="خفض الترجمة"
                onPress={() => setSubtitleSettings((current) => ({
                  ...current,
                  verticalOffset: Math.max(-96, current.verticalOffset - 24),
                }))}
                focusable
                style={({ focused }) => [
                  styles.tvSettingsPositionButton,
                  tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="arrow-down" size={27} color="#c4b5fd" />
                <Text style={styles.tvSettingsButtonLabel}>خفض</Text>
              </Pressable>
            </View>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="إعادة موضع الترجمة"
              onPress={() => setSubtitleSettings((current) => ({
                ...current,
                verticalOffset: 0,
              }))}
              focusable
              style={({ focused }) => [
                styles.tvSettingsReset,
                tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="refresh-outline" size={20} color="rgba(255,255,255,0.65)" />
              <Text style={styles.tvSettingsResetText}>إعادة الموضع الافتراضي</Text>
            </Pressable>
          </View>
        </View>
      )}
      {tvMode && !controlsVisible && (
        <Pressable
          accessibilityRole="button"
          accessibilityLabel="إظهار أدوات المشغل"
          hasTVPreferredFocus
          focusable
          onFocus={onTvFocus}
          onPress={onTvFocus}
          style={styles.tvRevealTarget}
        >
          <View style={styles.tvRevealHint}>
            <Ionicons name="game-controller-outline" size={26} color="#c4b5fd" />
            <Text style={styles.tvRevealText}>اضغط OK لإظهار أدوات المشغل</Text>
          </View>
        </Pressable>
      )}
      {Platform.OS !== "android" && (
        <Text style={styles.message}>المشغل الأصلي متاح على Android فقط</Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000" },
  /*
   * The native Media3 view is absolute-filled under the TV controls. Keep
   * this root an explicit clipped viewport so a post-rotation native child
   * cannot expose a stale side region outside the current window bounds.
   */
  tvRoot: { flex: 1, position: "relative", overflow: "hidden", backgroundColor: "#000" },
  center: { flex: 1, backgroundColor: "#09090b", alignItems: "center", justifyContent: "center", gap: 14 },
  message: { color: "rgba(255,255,255,0.75)", fontSize: 14, textAlign: "center" },
  buffering: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  tvCinemaHeader: {
    position: "absolute", top: 26, left: 40, right: 40,
    flexDirection: "row", alignItems: "center", gap: 16,
  },
  tvBrandBadge: {
    minWidth: 112, paddingHorizontal: 16, paddingVertical: 11,
    borderRadius: 14, backgroundColor: "rgba(139,92,246,0.88)",
    alignItems: "center",
  },
  tvBrandText: { color: "#fff", fontSize: 17, fontWeight: "900", letterSpacing: 1 },
  tvCinemaTitleBlock: { flex: 1, alignItems: "center" },
  tvCinemaTitle: { color: "#fff", fontSize: 26, fontWeight: "900" },
  tvCinemaMeta: { color: "rgba(255,255,255,0.62)", fontSize: 16, marginTop: 5 },
  tvCloseButton: {
    minWidth: 100, minHeight: 56, paddingHorizontal: 16, borderRadius: 14,
    flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6,
    backgroundColor: "rgba(255,255,255,0.10)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.20)",
  },
  tvCloseText: { color: "#fff", fontSize: 16, fontWeight: "800" },
  tvCinemaControls: {
    position: "absolute", left: 40, right: 40, bottom: 26,
    paddingHorizontal: 20, paddingTop: 18, paddingBottom: 16,
    borderRadius: 22, backgroundColor: "rgba(8,7,18,0.90)",
    borderWidth: 1, borderColor: "rgba(196,181,253,0.22)",
  },
  tvProgressRow: { flexDirection: "row", alignItems: "center", gap: 10 },
  tvCinemaTime: { color: "rgba(255,255,255,0.84)", fontSize: 16, minWidth: 60, textAlign: "center", fontVariant: ["tabular-nums"] },
  tvProgressTrack: { flex: 1, height: 14, justifyContent: "center", borderRadius: 7, backgroundColor: "rgba(255,255,255,0.18)" },
  tvProgressFill: { height: 5, borderRadius: 3, backgroundColor: "#a78bfa" },
  tvProgressThumb: { position: "absolute", width: 14, height: 14, borderRadius: 7, backgroundColor: "#fff", marginLeft: -7 },
  tvTransportRow: {
    flexDirection: "row", alignItems: "center", justifyContent: "center",
    gap: 12, marginTop: 16,
  },
  tvTransportButton: {
    width: 132, minHeight: 64, borderRadius: 16, paddingHorizontal: 12,
    flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8,
    backgroundColor: "rgba(255,255,255,0.09)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.16)",
  },
  tvDisabledButton: { opacity: 0.35 },
  tvTransportLabel: { color: "#fff", fontSize: 16, fontWeight: "800" },
  tvCinemaPlayButton: {
    width: 92, minHeight: 92, borderRadius: 46,
    alignItems: "center", justifyContent: "center",
    backgroundColor: "#c4b5fd",
  },
  tvPlayLabel: { color: "#09090b", fontSize: 14, fontWeight: "900", marginTop: 2 },
  tvUtilityRow: {
    flexDirection: "row", alignItems: "center", justifyContent: "center",
    gap: 9, marginTop: 14,
  },
  tvUtilityButton: {
    minHeight: 52, minWidth: 140, paddingHorizontal: 14, borderRadius: 14,
    flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 7,
    backgroundColor: "rgba(255,255,255,0.07)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.14)",
  },
  tvUtilityActive: { backgroundColor: "rgba(139,92,246,0.45)", borderColor: "rgba(196,181,253,0.65)" },
  tvUtilityText: { color: "#fff", fontSize: 15, fontWeight: "800" },
  tvMenuAnchor: { position: "relative" },
  tvCinemaMenu: {
    position: "absolute", bottom: 78, right: 0, minWidth: 238,
    padding: 8, borderRadius: 18, backgroundColor: "rgba(10,9,22,0.98)",
    borderWidth: 1, borderColor: "rgba(167,139,250,0.40)",
  },
  tvCinemaMenuItem: {
    minHeight: 62, paddingHorizontal: 18, paddingVertical: 14, borderRadius: 12,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 20,
  },
  tvCinemaMenuText: { color: "#fff", fontSize: 20, fontWeight: "800" },
  tvEnded: {
    position: "absolute", alignSelf: "center", top: "38%",
    alignItems: "center", gap: 16, padding: 28, borderRadius: 22,
    backgroundColor: "rgba(8,7,18,0.92)",
  },
  tvEndedText: { color: "#fff", fontSize: 22, fontWeight: "900" },
  tvNextButton: { paddingHorizontal: 20, paddingVertical: 12, borderRadius: 14, backgroundColor: "#c4b5fd" },
  tvNextButtonText: { color: "#09090b", fontSize: 17, fontWeight: "900" },
  tvCinemaSubtitle: {
    position: "absolute", left: 100, right: 100, bottom: 300,
    alignItems: "center",
  },
  topBar: { position: "absolute", top: 12, left: 12, right: 12, flexDirection: "row", alignItems: "center", gap: 8 },
  tvTopBar: { top: 34, left: 52, right: 52, gap: 24 },
  titleBlock: { flex: 1, alignItems: "center" },
  title: { color: "#fff", fontSize: 15, fontWeight: "700" },
  tvTitle: { fontSize: 30, fontWeight: "800" },
  meta: { color: "rgba(255,255,255,0.6)", fontSize: 11, marginTop: 2 },
  tvMeta: { fontSize: 20, marginTop: 6 },
  iconButton: { padding: 8, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)" },
  bottomArea: { position: "absolute", left: 12, right: 12, bottom: 12 },
  tvBottomArea: { left: 52, right: 52, bottom: 36 },
  seekRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  time: { color: "#fff", fontSize: 11, minWidth: 35, textAlign: "center" },
  tvTime: { fontSize: 20, minWidth: 72 },
  seekTrack: { flex: 1, height: 22, justifyContent: "center" },
  seekFill: { height: 4, borderRadius: 2, backgroundColor: "#a78bfa" },
  seekThumb: { position: "absolute", width: 12, height: 12, borderRadius: 6, backgroundColor: "#fff", marginLeft: -6 },
  controlsRow: { flexDirection: "row", alignItems: "center", marginTop: 4 },
  controlSide: { flex: 1, alignItems: "center" },
  controlCenter: { width: 66, alignItems: "center" },
  control: { flexDirection: "row", alignItems: "center", padding: 7 },
  tvControl: { padding: 18, minWidth: 104, justifyContent: "center" },
  tvEpisodeControl: { minWidth: 160, minHeight: 78, borderRadius: 18 },
  tvEpisodeText: { color: "#fff", fontSize: 20, fontWeight: "800", marginHorizontal: 7 },
  controlText: { color: "#fff", fontSize: 10, marginLeft: -5 },
  playButton: { width: 48, height: 48, borderRadius: 24, backgroundColor: "#c4b5fd", alignItems: "center", justifyContent: "center" },
  tvPlayButton: { width: 84, height: 84, borderRadius: 42 },
  flex: { flex: 1 },
  pill: { paddingHorizontal: 10, paddingVertical: 8, borderRadius: 10, backgroundColor: "rgba(0,0,0,0.55)" },
  tvPill: { paddingHorizontal: 24, paddingVertical: 18, minWidth: 104, alignItems: "center" },
  tvSubtitlePill: { minWidth: 190, minHeight: 72, paddingHorizontal: 30, paddingVertical: 20, borderRadius: 18, alignItems: "center", justifyContent: "center" },
  tvSubtitleSettingsPill: {
    minWidth: 138, minHeight: 72, paddingHorizontal: 22, paddingVertical: 16,
    borderRadius: 18, alignItems: "center", justifyContent: "center", gap: 3,
    backgroundColor: "rgba(255,255,255,0.10)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.20)",
  },
  tvSubtitleSettingsText: { color: "#fff", fontSize: 17, fontWeight: "800" },
  pillActive: { backgroundColor: "rgba(139,92,246,0.65)" },
  pillText: { color: "#fff", fontSize: 11, fontWeight: "700" },
  tvPillText: { fontSize: 20, fontWeight: "800" },
  tvSubtitleButtonText: { fontSize: 28, lineHeight: 40, fontWeight: "900" },
  skip: { paddingHorizontal: 10, paddingVertical: 8, borderRadius: 10, backgroundColor: "#fde68a" },
  skipText: { color: "#451a03", fontSize: 11, fontWeight: "700" },
  menu: { position: "absolute", bottom: 42, right: 0, minWidth: 130, backgroundColor: "rgba(20,20,25,0.97)", borderRadius: 12, padding: 5 },
  menuItem: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 10, paddingVertical: 9, gap: 15 },
  menuText: { color: "#fff", fontSize: 12 },
  tvMenu: { bottom: 86, minWidth: 240, borderRadius: 18, padding: 8, borderWidth: 1, borderColor: "rgba(167,139,250,0.35)" },
  tvMenuItem: { minHeight: 62, paddingHorizontal: 18, paddingVertical: 14, borderRadius: 12 },
  tvMenuText: { fontSize: 20, fontWeight: "800" },
  subtitle: { position: "absolute", left: 20, right: 20, bottom: 95, alignItems: "center" },
  tvSubtitle: { left: 80, right: 80, bottom: 172 },
  subtitleText: { color: "#fff", fontSize: 18, textAlign: "center", textShadowColor: "#000", textShadowRadius: 5, textShadowOffset: { width: 0, height: 1 } },
  tvSubtitleText: { fontSize: 30, lineHeight: 42, fontWeight: "900", textShadowRadius: 9, textShadowOffset: { width: 0, height: 2 } },
  ended: { position: "absolute", alignSelf: "center", bottom: 65, alignItems: "center", gap: 10 },
  endedText: { color: "#fff", fontSize: 15, fontWeight: "700" },
  action: { paddingHorizontal: 16, paddingVertical: 10, borderRadius: 10, backgroundColor: "#a78bfa" },
  actionText: { color: "#09090b", fontWeight: "700", fontSize: 12 },
  secondaryAction: { paddingHorizontal: 16, paddingVertical: 10 },
  secondaryText: { color: "rgba(255,255,255,0.7)", fontSize: 13 },
  tvSettingsLayer: { ...StyleSheet.absoluteFillObject, zIndex: 80 },
  tvSettingsBackdrop: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.58)" },
  tvSettingsPanel: {
    position: "absolute", right: 40, bottom: 104, width: 500,
    paddingHorizontal: 24, paddingVertical: 20, borderRadius: 22,
    backgroundColor: "rgba(10,9,22,0.98)",
    borderWidth: 1.5, borderColor: "rgba(167,139,250,0.38)",
    shadowColor: "#000", shadowOpacity: 0.8, shadowRadius: 24, elevation: 30,
  },
  tvSettingsHeader: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    paddingBottom: 18, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.10)",
  },
  tvSettingsTitle: { color: "#fff", fontSize: 28, fontWeight: "900" },
  tvSettingsHint: { color: "rgba(255,255,255,0.45)", fontSize: 15, marginTop: 4 },
  tvSettingsClose: {
    width: 58, height: 58, borderRadius: 18, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.08)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.16)",
  },
  tvSettingsSectionLabel: {
    color: "rgba(196,181,253,0.82)", fontSize: 17, fontWeight: "800",
    marginTop: 18, marginBottom: 10,
  },
  tvSettingsOptionRow: { flexDirection: "row", gap: 12 },
  tvSettingsTextStyleRow: { flexDirection: "row", gap: 12 },
  tvSettingsFineTuneRow: { flexDirection: "row", alignItems: "center", gap: 12, marginTop: 12 },
  tvSettingsFineTuneButton: {
    minWidth: 128, minHeight: 58, borderRadius: 14, paddingHorizontal: 16,
    flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.14)",
  },
  tvSettingsFineTuneText: { color: "#fff", fontSize: 16, fontWeight: "800" },
  tvSettingsFineTuneValue: { flex: 1, color: "rgba(255,255,255,0.58)", fontSize: 15, textAlign: "center", fontWeight: "700" },
  tvSettingsSizeButton: {
    flex: 1, minHeight: 102, borderRadius: 16, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.14)",
  },
  tvSettingsSizeSample: { color: "#fff", fontWeight: "900", lineHeight: 34 },
  tvSettingsButtonLabel: { color: "#fff", fontSize: 18, fontWeight: "800" },
  tvSettingsButtonDetail: { color: "rgba(255,255,255,0.42)", fontSize: 13, marginTop: 3 },
  tvSettingsActive: {
    backgroundColor: "rgba(139,92,246,0.25)",
    borderColor: "rgba(196,181,253,0.72)",
  },
  tvSettingsBoldButton: {
    flex: 1,
    minHeight: 76, borderRadius: 16, paddingHorizontal: 18,
    flexDirection: "row", alignItems: "center", gap: 14,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.14)",
  },
  tvSettingsBoldIcon: {
    width: 46, height: 46, borderRadius: 14, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(139,92,246,0.30)",
  },
  tvSettingsBoldIconText: { color: "#fff", fontSize: 25, fontWeight: "900" },
  tvSettingsBoldCopy: { flex: 1 },
  tvSettingsPositionRow: { flexDirection: "row", alignItems: "center", gap: 12 },
  tvSettingsPositionButton: {
    flex: 1, minHeight: 78, borderRadius: 16, alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.14)", gap: 2,
  },
  tvSettingsPositionValue: { width: 150, alignItems: "center", justifyContent: "center" },
  tvSettingsPositionNumber: { color: "#fff", fontSize: 19, fontWeight: "800" },
  tvSettingsReset: {
    minHeight: 54, marginTop: 12, borderRadius: 14, flexDirection: "row",
    alignItems: "center", justifyContent: "center", gap: 8,
    backgroundColor: "rgba(255,255,255,0.04)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
  },
  tvSettingsResetText: { color: "rgba(255,255,255,0.68)", fontSize: 16, fontWeight: "700" },
  tvRevealTarget: {
    ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center",
  },
  tvRevealHint: {
    flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 22,
    paddingVertical: 14, borderRadius: 18,
    backgroundColor: "rgba(8,7,18,0.72)",
    borderWidth: 1, borderColor: "rgba(167,139,250,0.34)",
  },
  tvRevealText: { color: "rgba(255,255,255,0.78)", fontSize: 17, fontWeight: "700" },
});
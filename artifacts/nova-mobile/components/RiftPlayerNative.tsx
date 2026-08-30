import { Ionicons } from "@expo/vector-icons";
import * as ScreenOrientation from "expo-screen-orientation";
import * as FileSystem from "expo-file-system";
import { StatusBar } from "expo-status-bar";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  Alert,
  Dimensions,
  PanResponder,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useNovaMedia3Player, NovaMedia3View } from "../lib/nova-media3";
import { openIsolatedPlayer } from "../lib/isolatedPlayer";
import { tvFocusStyle, useTvMetrics } from "../utils/tv";
import type { PlayerSource, SubCue } from "./RiftPlayer";

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
  const [isPortrait, setIsPortrait] = useState(false);
  const [ended, setEnded] = useState(false);
  const [controlsVisible, setControlsVisible] = useState(true);
  const lastProgress = useRef(0);
  const restoredInitialPosition = useRef(false);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const activeCue = useMemo(
    () => subtitles.find((cue) => position >= cue.start && position <= cue.end),
    [position, subtitles],
  );

  const scheduleHide = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    setControlsVisible(true);
    if (tvMode) return;
    hideTimer.current = setTimeout(() => setControlsVisible(false), 4500);
  }, [tvMode]);

  useEffect(() => {
    scheduleHide();
    return () => {
      if (hideTimer.current) clearTimeout(hideTimer.current);
    };
  }, [scheduleHide]);

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
    })),
  ).current;

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
        <View pointerEvents="none" style={styles.subtitle}>
          <Text style={styles.subtitleText}>{activeCue.text}</Text>
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
                <Text style={[styles.pillText, tvMode && styles.tvSubtitleText]}>
                  {tvMode ? "الترجمة" : "CC"}
                </Text>
              </Pressable>
              <View>
                {showSources && !tvMode && (
                  <View style={styles.menu}>
                    {playableSources.map((item, index) => (
                      <Pressable
                        key={`${item.url}-${index}`}
                        onPress={() => { changeSource(index); setShowSources(false); }}
                        focusable={tvMode}
                        style={({ focused }) => [styles.menuItem, tvMode && tvFocusStyle(focused)]}
                      >
                        <Text style={styles.menuText}>{item.quality || item.label}</Text>
                        {index === sourceIndex && <Ionicons name="checkmark" size={15} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                {!tvMode && <Pressable
                  onPress={() => { setShowSources((value) => !value); setShowSpeeds(false); }}
                  focusable={tvMode}
                  style={({ focused }) => [styles.pill, tvMode && styles.tvPill, tvMode && tvFocusStyle(focused)]}
                >
                  <Text style={styles.pillText}>الجودة</Text>
                </Pressable>}
              </View>
              <View>
                {showSpeeds && !tvMode && (
                  <View style={styles.menu}>
                    {SPEEDS.map((item) => (
                      <Pressable
                        key={item}
                        onPress={() => chooseSpeed(item)}
                        focusable={tvMode}
                        style={({ focused }) => [styles.menuItem, tvMode && tvFocusStyle(focused)]}
                      >
                        <Text style={styles.menuText}>{item}x</Text>
                        {item === speed && <Ionicons name="checkmark" size={15} color="#c4b5fd" />}
                      </Pressable>
                    ))}
                  </View>
                )}
                {!tvMode && <Pressable
                  onPress={() => { setShowSpeeds((value) => !value); setShowSources(false); }}
                  focusable={tvMode}
                  style={({ focused }) => [styles.pill, tvMode && styles.tvPill, tvMode && tvFocusStyle(focused)]}
                >
                  <Text style={styles.pillText}>{speed}x</Text>
                </Pressable>}
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
      {Platform.OS !== "android" && (
        <Text style={styles.message}>المشغل الأصلي متاح على Android فقط</Text>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000" },
  center: { flex: 1, backgroundColor: "#09090b", alignItems: "center", justifyContent: "center", gap: 14 },
  message: { color: "rgba(255,255,255,0.75)", fontSize: 14, textAlign: "center" },
  buffering: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  topBar: { position: "absolute", top: 12, left: 12, right: 12, flexDirection: "row", alignItems: "center", gap: 8 },
  tvTopBar: { top: 28, left: 40, right: 40, gap: 18 },
  titleBlock: { flex: 1, alignItems: "center" },
  title: { color: "#fff", fontSize: 15, fontWeight: "700" },
  tvTitle: { fontSize: 24, fontWeight: "800" },
  meta: { color: "rgba(255,255,255,0.6)", fontSize: 11, marginTop: 2 },
  tvMeta: { fontSize: 16, marginTop: 4 },
  iconButton: { padding: 8, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)" },
  bottomArea: { position: "absolute", left: 12, right: 12, bottom: 12 },
  tvBottomArea: { left: 40, right: 40, bottom: 28 },
  seekRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  time: { color: "#fff", fontSize: 11, minWidth: 35, textAlign: "center" },
  tvTime: { fontSize: 16, minWidth: 58 },
  seekTrack: { flex: 1, height: 22, justifyContent: "center" },
  seekFill: { height: 4, borderRadius: 2, backgroundColor: "#a78bfa" },
  seekThumb: { position: "absolute", width: 12, height: 12, borderRadius: 6, backgroundColor: "#fff", marginLeft: -6 },
  controlsRow: { flexDirection: "row", alignItems: "center", marginTop: 4 },
  controlSide: { flex: 1, alignItems: "center" },
  controlCenter: { width: 66, alignItems: "center" },
  control: { flexDirection: "row", alignItems: "center", padding: 7 },
  tvControl: { padding: 14, minWidth: 86, justifyContent: "center" },
  tvEpisodeControl: { minWidth: 128, minHeight: 64, borderRadius: 14 },
  tvEpisodeText: { color: "#fff", fontSize: 16, fontWeight: "800", marginHorizontal: 5 },
  controlText: { color: "#fff", fontSize: 10, marginLeft: -5 },
  playButton: { width: 48, height: 48, borderRadius: 24, backgroundColor: "#c4b5fd", alignItems: "center", justifyContent: "center" },
  tvPlayButton: { width: 68, height: 68, borderRadius: 34 },
  flex: { flex: 1 },
  pill: { paddingHorizontal: 10, paddingVertical: 8, borderRadius: 10, backgroundColor: "rgba(0,0,0,0.55)" },
  tvPill: { paddingHorizontal: 18, paddingVertical: 13, minWidth: 80, alignItems: "center" },
  tvSubtitlePill: { minWidth: 150, minHeight: 58, paddingHorizontal: 24, paddingVertical: 15, borderRadius: 14, alignItems: "center", justifyContent: "center" },
  pillActive: { backgroundColor: "rgba(139,92,246,0.65)" },
  pillText: { color: "#fff", fontSize: 11, fontWeight: "700" },
  tvSubtitleText: { fontSize: 21, fontWeight: "900" },
  skip: { paddingHorizontal: 10, paddingVertical: 8, borderRadius: 10, backgroundColor: "#fde68a" },
  skipText: { color: "#451a03", fontSize: 11, fontWeight: "700" },
  menu: { position: "absolute", bottom: 42, right: 0, minWidth: 130, backgroundColor: "rgba(20,20,25,0.97)", borderRadius: 12, padding: 5 },
  menuItem: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 10, paddingVertical: 9, gap: 15 },
  menuText: { color: "#fff", fontSize: 12 },
  subtitle: { position: "absolute", left: 20, right: 20, bottom: 95, alignItems: "center" },
  subtitleText: { color: "#fff", fontSize: 18, textAlign: "center", textShadowColor: "#000", textShadowRadius: 5, textShadowOffset: { width: 0, height: 1 } },
  ended: { position: "absolute", alignSelf: "center", bottom: 65, alignItems: "center", gap: 10 },
  endedText: { color: "#fff", fontSize: 15, fontWeight: "700" },
  action: { paddingHorizontal: 16, paddingVertical: 10, borderRadius: 10, backgroundColor: "#a78bfa" },
  actionText: { color: "#09090b", fontWeight: "700", fontSize: 12 },
  secondaryAction: { paddingHorizontal: 16, paddingVertical: 10 },
  secondaryText: { color: "rgba(255,255,255,0.7)", fontSize: 13 },
});
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import * as ScreenOrientation from "expo-screen-orientation";
import { StatusBar } from "expo-status-bar";
import { useVideoPlayer, VideoView } from "expo-video";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  Animated,
  BackHandler,
  Dimensions,
  Easing,
  I18nManager,
  PanResponder,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { WebView } from "react-native-webview";
import type { FilmServerLink, FilmSubtitleTrack } from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ROW_LTR = I18nManager.isRTL ? "row-reverse" : "row";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];
const FIT_MODES: { id: "contain" | "cover" | "fill"; label: string }[] = [
  { id: "contain", label: "افتراضي" },
  { id: "cover", label: "ملء" },
  { id: "fill", label: "تمديد" },
];

const AD_BLOCK_PATTERNS = [
  "doubleclick",
  "popads",
  "popcash",
  "propellerads",
  "adsterra",
  "adcash",
  "exoclick",
  "trafficjunky",
  "taboola",
  "outbrain",
  "googleadservices",
  "googlesyndication",
  "onclickalgo",
  "betway",
  "1xbet",
];

function isBlockedAdUrl(url: string): boolean {
  const lower = url.toLowerCase();
  return AD_BLOCK_PATTERNS.some((p) => lower.includes(p));
}

function fmtSec(sec: number): string {
  if (!Number.isFinite(sec) || sec <= 0) return "00:00";
  const s = Math.floor(sec);
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const r = s % 60;
  const pad = (n: number) => String(n).padStart(2, "0");
  return h > 0 ? `${h}:${pad(m)}:${pad(r)}` : `${pad(m)}:${pad(r)}`;
}

type SubCue = { start: number; end: number; text: string };

function parseTimestampSec(ts: string): number {
  const clean = ts.trim().replace(",", ".");
  const parts = clean.split(":").map(Number);
  if (parts.some((n) => !Number.isFinite(n))) return -1;
  if (parts.length === 3) return parts[0] * 3600 + parts[1] * 60 + parts[2];
  if (parts.length === 2) return parts[0] * 60 + parts[1];
  return -1;
}

function parseSubtitleText(raw: string): SubCue[] {
  const normalized = raw.replace(/\r\n/g, "\n").replace(/\r/g, "\n");
  const blocks = normalized.split(/\n{2,}/);
  const cues: SubCue[] = [];
  for (const block of blocks) {
    const lines = block.split("\n").map((l) => l.trim()).filter(Boolean);
    if (!lines.length) continue;
    const timingLineIdx = lines.findIndex((l) => l.includes("-->"));
    if (timingLineIdx < 0) continue;
    const [left, right] = lines[timingLineIdx].split("-->");
    const start = parseTimestampSec(left);
    const end = parseTimestampSec((right || "").trim().split(/\s+/)[0] || "");
    if (start < 0 || end <= start) continue;
    const text = lines
      .slice(timingLineIdx + 1)
      .join("\n")
      .replace(/<[^>]+>/g, "")
      .replace(/\{[^}]+\}/g, "")
      .trim();
    if (text) cues.push({ start, end, text });
  }
  return cues;
}

function SpinRing({ size = 50 }: { size?: number }) {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    const anim = Animated.loop(
      Animated.timing(rot, {
        toValue: 1,
        duration: 900,
        easing: Easing.linear,
        useNativeDriver: true,
      }),
    );
    anim.start();
    return () => anim.stop();
  }, [rot]);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  const r = size / 2;
  return (
    <View style={{ width: size, height: size }}>
      <View
        style={[
          StyleSheet.absoluteFill,
          { borderRadius: r, borderWidth: 2.5, borderColor: "rgba(14,165,233,0.2)" },
        ]}
      />
      <Animated.View
        style={[
          StyleSheet.absoluteFill,
          {
            borderRadius: r,
            borderWidth: 2.5,
            borderColor: "transparent",
            borderTopColor: "#0EA5E9",
            borderRightColor: "rgba(56,189,248,0.45)",
            transform: [{ rotate }],
          },
        ]}
      />
    </View>
  );
}

const EMBED_CLEANER_JS = `(function() {
  try {
    var style = document.createElement('style');
    style.innerHTML = 'html, body { background: #000 !important; margin: 0 !important; padding: 0 !important; overflow: hidden !important; } iframe, video { max-width: 100vw !important; max-height: 100vh !important; } .ads, .ad-banner, [id*="ad_"], [class*="pop"] { display: none !important; }';
    document.head && document.head.appendChild(style);
    window.open = function() { return null; };
  } catch (e) {}
})();true;`;

export type FilmPlayerProps = {
  title: string;
  episodeLabel: string;
  servers: FilmServerLink[];
  activeServer: FilmServerLink;
  subtitles?: FilmSubtitleTrack[];
  onSelectServer: (srv: FilmServerLink) => void;
  onBack: () => void;
  isWatched: boolean;
  onToggleWatched: () => void;
  onPrevEpisode?: () => void;
  onNextEpisode?: () => void;
  initialPosition?: number;
  onProgress?: (position: number, duration: number) => void;
};

export function FilmPlayer({
  title,
  episodeLabel,
  servers,
  activeServer,
  subtitles = [],
  onSelectServer,
  onBack,
  isWatched,
  onToggleWatched,
  onPrevEpisode,
  onNextEpisode,
  initialPosition = 0,
  onProgress,
}: FilmPlayerProps) {
  const insets = useSafeAreaInsets();
  const [landscape, setLandscape] = useState(true);
  const [locked, setLocked] = useState(false);
  const [hudVisible, setHudVisible] = useState(true);
  const [showServersSheet, setShowServersSheet] = useState(false);
  const [reloadNonce, setReloadNonce] = useState(0);
  const [sniffedDirectUrl, setSniffedDirectUrl] = useState<string | null>(null);
  const [subMode, setSubMode] = useState<"ar" | "en" | "off">("ar");
  const [subCues, setSubCues] = useState<SubCue[]>([]);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const scheduleHideHud = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    setHudVisible(true);
    hideTimer.current = setTimeout(() => {
      setHudVisible(false);
    }, 4500);
  }, []);

  useEffect(() => {
    scheduleHideHud();
    return () => {
      if (hideTimer.current) clearTimeout(hideTimer.current);
    };
  }, [scheduleHideHud]);

  useEffect(() => {
    ScreenOrientation.lockAsync(
      landscape
        ? ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT
        : ScreenOrientation.OrientationLock.PORTRAIT_UP,
    ).catch(() => {});
  }, [landscape]);

  useEffect(() => {
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, []);

  useEffect(() => {
    if (Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      if (showServersSheet) {
        setShowServersSheet(false);
        return true;
      }
      onBack();
      return true;
    });
    return () => sub.remove();
  }, [onBack, showServersSheet]);

  useEffect(() => {
    setSniffedDirectUrl(null);
  }, [activeServer.id, reloadNonce]);

  // Load selected subtitle track
  const activeSubUrl = useMemo(() => {
    if (subMode === "off") return null;
    if (subMode === "ar") {
      if (activeServer.subtitleUrl) return activeServer.subtitleUrl;
      const ar = subtitles.find((t) => t.lang === "ar" || t.lang === "ar-auto");
      return ar?.url || null;
    }
    const en = subtitles.find((t) => t.lang === "en");
    return en?.url || null;
  }, [subMode, activeServer.subtitleUrl, subtitles]);

  useEffect(() => {
    if (!activeSubUrl) {
      setSubCues([]);
      return;
    }
    let cancelled = false;
    fetch(activeSubUrl)
      .then((r) => (r.ok ? r.text() : ""))
      .then((text) => {
        if (!cancelled && text) setSubCues(parseSubtitleText(text));
      })
      .catch(() => {
        if (!cancelled) setSubCues([]);
      });
    return () => {
      cancelled = true;
    };
  }, [activeSubUrl]);

  const cycleSubMode = () => {
    setSubMode((prev) => (prev === "ar" ? "en" : prev === "en" ? "off" : "ar"));
    scheduleHideHud();
  };

  const directPlaybackUrl = activeServer.directUrl || sniffedDirectUrl || null;
  const isDirectEngine = Boolean(directPlaybackUrl);

  return (
    <View style={s.root}>
      <StatusBar hidden />

      {isDirectEngine && directPlaybackUrl ? (
        <DirectPlayer
          key={`${activeServer.id}-${reloadNonce}`}
          uri={directPlaybackUrl}
          headers={activeServer.headers}
          title={title}
          episodeLabel={episodeLabel}
          activeServer={activeServer}
          servers={servers}
          subMode={subMode}
          subCues={subCues}
          onCycleSubMode={cycleSubMode}
          insets={insets}
          hudVisible={hudVisible}
          locked={locked}
          isWatched={isWatched}
          initialPosition={initialPosition}
          onToggleHud={() => {
            if (hudVisible) setHudVisible(false);
            else scheduleHideHud();
          }}
          onInteract={scheduleHideHud}
          onToggleLock={() => setLocked((v) => !v)}
          onToggleOrientation={() => setLandscape((v) => !v)}
          onToggleWatched={onToggleWatched}
          onOpenServers={() => setShowServersSheet(true)}
          onSelectServer={onSelectServer}
          onPrevEpisode={onPrevEpisode}
          onNextEpisode={onNextEpisode}
          onProgress={onProgress}
          onBack={onBack}
          onFallbackToEmbed={() => setSniffedDirectUrl(null)}
        />
      ) : (
        <EmbedWebPlayer
          key={`${activeServer.id}-${reloadNonce}`}
          embedUrl={activeServer.embedUrl || activeServer.directUrl || ""}
          title={title}
          episodeLabel={episodeLabel}
          activeServer={activeServer}
          insets={insets}
          hudVisible={hudVisible}
          locked={locked}
          isWatched={isWatched}
          onToggleHud={() => {
            if (hudVisible) setHudVisible(false);
            else scheduleHideHud();
          }}
          onToggleLock={() => setLocked((v) => !v)}
          onToggleOrientation={() => setLandscape((v) => !v)}
          onToggleWatched={onToggleWatched}
          onOpenServers={() => setShowServersSheet(true)}
          onReload={() => setReloadNonce((n) => n + 1)}
          onPrevEpisode={onPrevEpisode}
          onNextEpisode={onNextEpisode}
          onBack={onBack}
          onSniffDirectStream={(url) => {
            if (url && !sniffedDirectUrl) setSniffedDirectUrl(url);
          }}
        />
      )}

      {showServersSheet ? (
        <View style={s.sheetBackdrop}>
          <Pressable
            style={StyleSheet.absoluteFill}
            onPress={() => setShowServersSheet(false)}
          />
          <View style={s.sheetCard}>
            <View style={s.sheetHeader}>
              <Pressable onPress={() => setShowServersSheet(false)} style={s.sheetCloseBtn}>
                <Ionicons name="close" size={18} color="#E2E8F0" />
              </Pressable>
              <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
                <Text style={s.sheetTitle}>تبديل السيرفر ({servers.length})</Text>
                <Text style={s.sheetSub}>اختر السيرفر الأنسب لاتصالك ودقة المشاهدة</Text>
              </View>
            </View>
            <ScrollView style={{ maxHeight: 280 }} contentContainerStyle={{ gap: 8 }}>
              {servers.map((srv) => {
                const active = srv.id === activeServer.id;
                return (
                  <Pressable
                    key={srv.id}
                    onPress={() => {
                      onSelectServer(srv);
                      setShowServersSheet(false);
                    }}
                    style={[s.sheetServerRow, active && s.sheetServerRowActive]}
                  >
                    <View
                      style={[
                        s.sheetSrvIcon,
                        { backgroundColor: active ? "#0EA5E9" : "rgba(56,189,248,0.14)" },
                      ]}
                    >
                      <Ionicons
                        name={srv.kind === "embed" ? "globe-outline" : "play"}
                        size={14}
                        color={active ? "#FFFFFF" : "#38BDF8"}
                      />
                    </View>
                    <View style={{ flex: 1, alignItems: ALIGN_RIGHT }}>
                      <Text style={s.sheetSrvName} numberOfLines={1}>
                        {srv.name}
                      </Text>
                      <Text style={s.sheetSrvMeta} numberOfLines={1}>
                        {srv.note || srv.quality}
                      </Text>
                    </View>
                    <View style={s.sheetQBadge}>
                      <Text style={s.sheetQText}>{srv.qualityTier}</Text>
                    </View>
                  </Pressable>
                );
              })}
            </ScrollView>
          </View>
        </View>
      ) : null}
    </View>
  );
}

/* ─────────────────── Direct Native Video Player Engine ─────────────────── */

function DirectPlayer({
  uri,
  headers,
  title,
  episodeLabel,
  activeServer,
  servers,
  subMode,
  subCues,
  onCycleSubMode,
  insets,
  hudVisible,
  locked,
  isWatched,
  initialPosition,
  onToggleHud,
  onInteract,
  onToggleLock,
  onToggleOrientation,
  onToggleWatched,
  onOpenServers,
  onSelectServer,
  onPrevEpisode,
  onNextEpisode,
  onProgress,
  onBack,
  onFallbackToEmbed,
}: {
  uri: string;
  headers?: Record<string, string>;
  title: string;
  episodeLabel: string;
  activeServer: FilmServerLink;
  servers: FilmServerLink[];
  subMode: "ar" | "en" | "off";
  subCues: SubCue[];
  onCycleSubMode: () => void;
  insets: { top: number; bottom: number; left: number; right: number };
  hudVisible: boolean;
  locked: boolean;
  isWatched: boolean;
  initialPosition: number;
  onToggleHud: () => void;
  onInteract: () => void;
  onToggleLock: () => void;
  onToggleOrientation: () => void;
  onToggleWatched: () => void;
  onOpenServers: () => void;
  onSelectServer: (srv: FilmServerLink) => void;
  onPrevEpisode?: () => void;
  onNextEpisode?: () => void;
  onProgress?: (pos: number, dur: number) => void;
  onBack: () => void;
  onFallbackToEmbed: () => void;
}) {
  const [isPlaying, setIsPlaying] = useState(true);
  const [buffering, setBuffering] = useState(true);
  const [hasError, setHasError] = useState(false);
  const [position, setPosition] = useState(initialPosition || 0);
  const [duration, setDuration] = useState(0);
  const [speedIdx, setSpeedIdx] = useState(2);
  const [fitIdx, setFitIdx] = useState(0);
  const [ended, setEnded] = useState(false);
  const seekAppliedRef = useRef(false);

  const sourceConfig = useMemo(
    () => (headers && Object.keys(headers).length > 0 ? { uri, headers } : { uri }),
    [uri, headers],
  );

  const player = useVideoPlayer(sourceConfig, (p) => {
    p.loop = false;
    p.timeUpdateEventInterval = 0.4;
    p.play();
  });

  useEffect(() => {
    const subs = [
      player.addListener("statusChange", ({ status }: any) => {
        if (status === "readyToPlay") {
          setBuffering(false);
          setHasError(false);
          if (initialPosition > 10 && !seekAppliedRef.current) {
            seekAppliedRef.current = true;
            try {
              player.currentTime = initialPosition;
            } catch {}
          }
        } else if (status === "loading") {
          setBuffering(true);
        } else if (status === "error") {
          setBuffering(false);
          setHasError(true);
        }
      }),
      player.addListener("playingChange", ({ isPlaying: playing }: any) => {
        setIsPlaying(Boolean(playing));
      }),
      player.addListener("timeUpdate", ({ currentTime }: any) => {
        const cur = Number(currentTime || 0);
        const dur = Number(player.duration || 0);
        setPosition(cur);
        if (dur > 0) setDuration(dur);
        onProgress?.(cur, dur);
      }),
      player.addListener("playToEnd", () => {
        setEnded(true);
      }),
    ];
    return () => {
      subs.forEach((sub) => sub?.remove?.());
    };
  }, [player, initialPosition, onProgress]);

  const activeCueText = useMemo(() => {
    if (subMode === "off" || !subCues.length) return "";
    const cue = subCues.find((c) => position >= c.start && position <= c.end);
    return cue?.text || "";
  }, [subMode, subCues, position]);

  const togglePlay = () => {
    onInteract();
    try {
      if (isPlaying) player.pause();
      else player.play();
    } catch {}
  };

  const seekBy = (delta: number) => {
    onInteract();
    try {
      const target = Math.max(0, Math.min(duration || 99999, position + delta));
      player.currentTime = target;
      setPosition(target);
    } catch {}
  };

  const cycleSpeed = () => {
    onInteract();
    const next = (speedIdx + 1) % SPEEDS.length;
    setSpeedIdx(next);
    try {
      player.playbackRate = SPEEDS[next];
    } catch {}
  };

  const cycleFit = () => {
    onInteract();
    setFitIdx((i) => (i + 1) % FIT_MODES.length);
  };

  const lastTapRef = useRef(0);
  const { width: screenW } = Dimensions.get("window");
  const onTapSurface = (evt: any) => {
    const now = Date.now();
    const x = evt?.nativeEvent?.locationX ?? screenW / 2;
    if (now - lastTapRef.current < 260 && !locked) {
      if (x < screenW * 0.35) seekBy(-10);
      else if (x > screenW * 0.65) seekBy(10);
      lastTapRef.current = 0;
      return;
    }
    lastTapRef.current = now;
    onToggleHud();
  };

  const trackWidthRef = useRef(1);
  const seekResponder = useMemo(
    () =>
      PanResponder.create({
        onStartShouldSetPanResponder: () => !locked && duration > 0,
        onMoveShouldSetPanResponder: () => !locked && duration > 0,
        onPanResponderGrant: (e) => {
          trackWidthRef.current = trackWidthRef.current || 1;
          const x = e.nativeEvent.locationX;
          const pct = Math.max(0, Math.min(1, x / trackWidthRef.current));
          const target = pct * duration;
          try {
            player.currentTime = target;
            setPosition(target);
          } catch {}
        },
        onPanResponderMove: (e) => {
          const x = e.nativeEvent.locationX;
          const pct = Math.max(0, Math.min(1, x / Math.max(1, trackWidthRef.current)));
          const target = pct * duration;
          try {
            player.currentTime = target;
            setPosition(target);
          } catch {}
        },
      }),
    [locked, duration, player],
  );

  const progressRatio = duration > 0 ? Math.min(1, Math.max(0, position / duration)) : 0;
  const nextAltServer = servers.find((srv) => srv.id !== activeServer.id);

  return (
    <View style={s.root}>
      <VideoView
        player={player}
        style={StyleSheet.absoluteFill}
        nativeControls={false}
        contentFit={FIT_MODES[fitIdx].id}
        surfaceType={Platform.OS === "android" ? "textureView" : undefined}
      />

      {activeCueText ? (
        <View pointerEvents="none" style={[s.subtitleWrap, { bottom: hudVisible ? 92 : 28 }]}>
          <View style={s.subtitlePill}>
            <Text style={s.subtitleText}>{activeCueText}</Text>
          </View>
        </View>
      ) : null}

      {buffering && !hasError ? (
        <View pointerEvents="none" style={s.loaderOverlay}>
          <SpinRing />
          <Text style={s.loaderText}>جارٍ تحضير البث المباشر ({activeServer.name})...</Text>
        </View>
      ) : null}

      {hasError ? (
        <View style={s.loaderOverlay}>
          <Ionicons name="cloud-offline-outline" size={38} color="#F87171" />
          <Text style={s.loaderText}>تعذّر التشغيل عبر {activeServer.name}</Text>
          <View style={{ flexDirection: ROW_RTL, gap: 10, marginTop: 4 }}>
            {nextAltServer ? (
              <Pressable onPress={() => onSelectServer(nextAltServer)} style={s.endedNextBtn}>
                <Ionicons name="swap-horizontal" size={15} color="#FFFFFF" />
                <Text style={s.endedNextText}>تجربة سيرفر بديل</Text>
              </Pressable>
            ) : null}
            <Pressable onPress={onOpenServers} style={s.endedReplayBtn}>
              <Text style={s.endedReplayText}>قائمة السيرفرات</Text>
            </Pressable>
            {activeServer.embedUrl ? (
              <Pressable onPress={onFallbackToEmbed} style={s.endedReplayBtn}>
                <Text style={s.endedReplayText}>وضع المضمّن</Text>
              </Pressable>
            ) : null}
          </View>
        </View>
      ) : null}

      <Pressable style={StyleSheet.absoluteFill} onPress={onTapSurface} />

      {locked ? (
        hudVisible ? (
          <View style={s.lockOnlyRow}>
            <Pressable onPress={onToggleLock} style={s.glassBtn}>
              <Ionicons name="lock-closed" size={18} color="#38BDF8" />
              <Text style={s.glassBtnText}>فك القفل</Text>
            </Pressable>
          </View>
        ) : null
      ) : hudVisible ? (
        <View pointerEvents="box-none" style={StyleSheet.absoluteFill}>
          <LinearGradient
            colors={["rgba(0,0,0,0.84)", "rgba(0,0,0,0.35)", "transparent"]}
            style={[s.topGrad, { paddingTop: Math.max(insets.top, 10) }]}
          >
            <View style={s.topHudRow}>
              <Pressable onPress={onBack} style={s.circleHudBtn}>
                <Ionicons name="chevron-forward" size={20} color="#FFFFFF" />
              </Pressable>
              <View style={s.titleCol}>
                <Text style={s.hudTitle} numberOfLines={1}>
                  {title}
                </Text>
                <Text style={s.hudSub} numberOfLines={1}>
                  {episodeLabel} · {activeServer.name}
                </Text>
              </View>
              <View style={s.hudActionsGroup}>
                <Pressable onPress={onOpenServers} style={s.serverPillBtn}>
                  <Ionicons name="layers-outline" size={14} color="#38BDF8" />
                  <Text style={s.serverPillText}>السيرفرات</Text>
                </Pressable>
                <Pressable onPress={onCycleSubMode} style={s.smallPillBtn}>
                  <Text style={s.smallPillText}>
                    {subMode === "ar" ? "CC عربي" : subMode === "en" ? "CC EN" : "CC إيقاف"}
                  </Text>
                </Pressable>
                <Pressable onPress={cycleSpeed} style={s.smallPillBtn}>
                  <Text style={s.smallPillText}>{SPEEDS[speedIdx]}x</Text>
                </Pressable>
                <Pressable onPress={cycleFit} style={s.smallPillBtn}>
                  <Text style={s.smallPillText}>{FIT_MODES[fitIdx].label}</Text>
                </Pressable>
                <Pressable onPress={onToggleWatched} style={s.circleHudBtn}>
                  <Ionicons
                    name={isWatched ? "eye" : "eye-outline"}
                    size={17}
                    color={isWatched ? "#34D399" : "#FFFFFF"}
                  />
                </Pressable>
                <Pressable onPress={onToggleOrientation} style={s.circleHudBtn}>
                  <Ionicons name="phone-landscape-outline" size={17} color="#FFFFFF" />
                </Pressable>
                <Pressable onPress={onToggleLock} style={s.circleHudBtn}>
                  <Ionicons name="lock-open-outline" size={17} color="#FFFFFF" />
                </Pressable>
              </View>
            </View>
          </LinearGradient>

          <View pointerEvents="box-none" style={s.centerControls}>
            <Pressable onPress={() => seekBy(-10)} style={s.seekStepBtn}>
              <Ionicons name="play-back" size={22} color="#FFFFFF" />
              <Text style={s.seekStepLabel}>10-</Text>
            </Pressable>
            <Pressable onPress={togglePlay} style={s.bigPlayBtn}>
              <Ionicons
                name={isPlaying ? "pause" : "play"}
                size={32}
                color="#FFFFFF"
                style={!isPlaying ? { marginLeft: 3 } : undefined}
              />
            </Pressable>
            <Pressable onPress={() => seekBy(10)} style={s.seekStepBtn}>
              <Ionicons name="play-forward" size={22} color="#FFFFFF" />
              <Text style={s.seekStepLabel}>10+</Text>
            </Pressable>
          </View>

          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.48)", "rgba(0,0,0,0.90)"]}
            style={[s.bottomGrad, { paddingBottom: Math.max(insets.bottom, 12) }]}
          >
            <View style={s.seekRow}>
              <Text style={s.timeText}>{fmtSec(position)}</Text>
              <View
                {...seekResponder.panHandlers}
                onLayout={(e) => {
                  trackWidthRef.current = e.nativeEvent.layout.width || 1;
                }}
                style={s.seekTrackHit}
              >
                <View style={s.seekTrack}>
                  <View style={[s.seekFill, { width: `${progressRatio * 100}%` }]} />
                </View>
              </View>
              <Text style={s.timeText}>{fmtSec(duration)}</Text>
            </View>

            <View style={s.bottomNavRow}>
              <View style={{ flexDirection: ROW_RTL, gap: 8 }}>
                {onPrevEpisode ? (
                  <Pressable onPress={onPrevEpisode} style={s.epActionBtn}>
                    <Ionicons name="play-skip-forward" size={14} color="#FFFFFF" />
                    <Text style={s.epActionText}>السابقة</Text>
                  </Pressable>
                ) : null}
                {onNextEpisode ? (
                  <Pressable onPress={onNextEpisode} style={[s.epActionBtn, s.epActionNext]}>
                    <Text style={s.epActionText}>الحلقة التالية</Text>
                    <Ionicons name="play-skip-back" size={14} color="#FFFFFF" />
                  </Pressable>
                ) : null}
              </View>
              <Text style={s.engineBadgeText}>مشغّل NOVA FILM المباشر</Text>
            </View>
          </LinearGradient>
        </View>
      ) : null}

      {ended && onNextEpisode ? (
        <View style={s.endedCard}>
          <Text style={s.endedTitle}>انتهى العرض</Text>
          <View style={{ flexDirection: ROW_RTL, gap: 10 }}>
            <Pressable onPress={onNextEpisode} style={s.endedNextBtn}>
              <Ionicons name="play" size={15} color="#FFFFFF" />
              <Text style={s.endedNextText}>تشغيل الحلقة التالية</Text>
            </Pressable>
            <Pressable
              onPress={() => {
                setEnded(false);
                try {
                  player.currentTime = 0;
                  player.play();
                } catch {}
              }}
              style={s.endedReplayBtn}
            >
              <Text style={s.endedReplayText}>إعادة التشغيل</Text>
            </Pressable>
          </View>
        </View>
      ) : null}
    </View>
  );
}

/* ─────────────────── Sandboxed Ad-Filtered Embed Player ────────────────── */

function EmbedWebPlayer({
  embedUrl,
  title,
  episodeLabel,
  activeServer,
  insets,
  hudVisible,
  locked,
  isWatched,
  onToggleHud,
  onToggleLock,
  onToggleOrientation,
  onToggleWatched,
  onOpenServers,
  onReload,
  onPrevEpisode,
  onNextEpisode,
  onBack,
  onSniffDirectStream,
}: {
  embedUrl: string;
  title: string;
  episodeLabel: string;
  activeServer: FilmServerLink;
  insets: { top: number; bottom: number; left: number; right: number };
  hudVisible: boolean;
  locked: boolean;
  isWatched: boolean;
  onToggleHud: () => void;
  onToggleLock: () => void;
  onToggleOrientation: () => void;
  onToggleWatched: () => void;
  onOpenServers: () => void;
  onReload: () => void;
  onPrevEpisode?: () => void;
  onNextEpisode?: () => void;
  onBack: () => void;
  onSniffDirectStream: (url: string) => void;
}) {
  const [loading, setLoading] = useState(true);

  return (
    <View style={s.root}>
      <WebView
        source={{ uri: embedUrl }}
        style={s.webview}
        allowsFullscreenVideo
        allowsInlineMediaPlayback
        mediaPlaybackRequiresUserAction={false}
        javaScriptEnabled
        domStorageEnabled
        injectedJavaScript={EMBED_CLEANER_JS}
        setSupportMultipleWindows={false}
        onLoadStart={() => setLoading(true)}
        onLoadEnd={() => setLoading(false)}
        onShouldStartLoadWithRequest={(req) => {
          if (isBlockedAdUrl(req.url)) return false;
          if (/\.m3u8(\?|$)|\.mp4(\?|$)/i.test(req.url)) {
            onSniffDirectStream(req.url);
            return false;
          }
          return true;
        }}
      />

      {loading ? (
        <View pointerEvents="none" style={s.loaderOverlay}>
          <SpinRing />
          <Text style={s.loaderText}>جاري تجهيز البث عبر {activeServer.name}...</Text>
        </View>
      ) : null}

      {!hudVisible && !locked ? (
        <Pressable onPress={onToggleHud} style={[s.floatingRevealChip, { top: Math.max(insets.top, 10) }]}>
          <Ionicons name="options-outline" size={14} color="#FFFFFF" />
          <Text style={s.floatingRevealText}>إظهار أدوات المشغل</Text>
        </Pressable>
      ) : null}

      {hudVisible ? (
        locked ? (
          <View style={s.lockOnlyRow}>
            <Pressable onPress={onToggleLock} style={s.glassBtn}>
              <Ionicons name="lock-closed" size={18} color="#38BDF8" />
              <Text style={s.glassBtnText}>فك القفل</Text>
            </Pressable>
          </View>
        ) : (
          <>
            <LinearGradient
              colors={["rgba(0,0,0,0.88)", "rgba(0,0,0,0.45)", "transparent"]}
              pointerEvents="box-none"
              style={[s.embedTopBar, { paddingTop: Math.max(insets.top, 10) }]}
            >
              <View style={s.topHudRow}>
                <Pressable onPress={onBack} style={s.circleHudBtn}>
                  <Ionicons name="chevron-forward" size={20} color="#FFFFFF" />
                </Pressable>
                <View style={s.titleCol}>
                  <Text style={s.hudTitle} numberOfLines={1}>
                    {title}
                  </Text>
                  <Text style={s.hudSub} numberOfLines={1}>
                    {episodeLabel} · {activeServer.name} ({activeServer.quality})
                  </Text>
                </View>
                <View style={s.hudActionsGroup}>
                  <Pressable onPress={onOpenServers} style={s.serverPillBtn}>
                    <Ionicons name="layers-outline" size={14} color="#38BDF8" />
                    <Text style={s.serverPillText}>السيرفرات</Text>
                  </Pressable>
                  <Pressable onPress={onReload} style={s.circleHudBtn}>
                    <Ionicons name="refresh" size={16} color="#FFFFFF" />
                  </Pressable>
                  <Pressable onPress={onToggleWatched} style={s.circleHudBtn}>
                    <Ionicons
                      name={isWatched ? "eye" : "eye-outline"}
                      size={16}
                      color={isWatched ? "#34D399" : "#FFFFFF"}
                    />
                  </Pressable>
                  <Pressable onPress={onToggleOrientation} style={s.circleHudBtn}>
                    <Ionicons name="phone-landscape-outline" size={16} color="#FFFFFF" />
                  </Pressable>
                  <Pressable onPress={onToggleLock} style={s.circleHudBtn}>
                    <Ionicons name="lock-open-outline" size={16} color="#FFFFFF" />
                  </Pressable>
                  <Pressable onPress={onToggleHud} style={s.circleHudBtn}>
                    <Ionicons name="chevron-up" size={17} color="#94A3B8" />
                  </Pressable>
                </View>
              </View>
            </LinearGradient>

            {(onPrevEpisode || onNextEpisode) ? (
              <View pointerEvents="box-none" style={[s.embedBottomBar, { bottom: Math.max(insets.bottom + 36, 54) }]}>
                {onPrevEpisode ? (
                  <Pressable onPress={onPrevEpisode} style={s.epActionBtn}>
                    <Ionicons name="play-skip-forward" size={14} color="#FFFFFF" />
                    <Text style={s.epActionText}>الحلقة السابقة</Text>
                  </Pressable>
                ) : <View />}
                {onNextEpisode ? (
                  <Pressable onPress={onNextEpisode} style={[s.epActionBtn, s.epActionNext]}>
                    <Text style={s.epActionText}>الحلقة التالية</Text>
                    <Ionicons name="play-skip-back" size={14} color="#FFFFFF" />
                  </Pressable>
                ) : null}
              </View>
            ) : null}
          </>
        )
      ) : null}
    </View>
  );
}

const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000000" },
  webview: { flex: 1, backgroundColor: "#000000" },
  loaderOverlay: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(7,8,12,0.88)",
    alignItems: "center",
    justifyContent: "center",
    gap: 12,
    paddingHorizontal: 24,
  },
  loaderText: {
    color: "#E2E8F0",
    fontSize: 13,
    lineHeight: 20,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
    textAlign: "center",
  },
  subtitleWrap: {
    position: "absolute",
    left: 24,
    right: 24,
    alignItems: "center",
    zIndex: 15,
  },
  subtitlePill: {
    backgroundColor: "rgba(9,10,12,0.78)",
    borderRadius: 10,
    paddingHorizontal: 14,
    paddingVertical: 6,
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.12)",
  },
  subtitleText: {
    color: "#FFFFFF",
    fontSize: 15.5,
    lineHeight: 23,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    includeFontPadding: true,
    textShadowColor: "rgba(0,0,0,0.9)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 4,
  },
  topGrad: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    paddingHorizontal: 16,
    paddingBottom: 22,
  },
  embedTopBar: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    paddingHorizontal: 16,
    paddingBottom: 16,
  },
  topHudRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  circleHudBtn: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: "rgba(15,23,42,0.72)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.16)",
    alignItems: "center",
    justifyContent: "center",
  },
  titleCol: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
  },
  hudTitle: {
    color: "#FFFFFF",
    fontSize: 14,
    lineHeight: 20,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
    textAlign: "right",
  },
  hudSub: {
    color: "#94A3B8",
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  hudActionsGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
  },
  serverPillBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "rgba(14,165,233,0.22)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.45)",
    borderRadius: 12,
    paddingHorizontal: 11,
    paddingVertical: 6,
  },
  serverPillText: {
    color: "#E0F2FE",
    fontSize: 11.5,
    lineHeight: 17,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  smallPillBtn: {
    backgroundColor: "rgba(15,23,42,0.72)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
    borderRadius: 10,
    paddingHorizontal: 10,
    paddingVertical: 6,
  },
  smallPillText: {
    color: "#FFFFFF",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  centerControls: {
    position: "absolute",
    top: "40%",
    left: 0,
    right: 0,
    flexDirection: ROW_LTR,
    alignItems: "center",
    justifyContent: "center",
    gap: 36,
  },
  seekStepBtn: {
    width: 54,
    height: 54,
    borderRadius: 27,
    backgroundColor: "rgba(15,23,42,0.65)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
    alignItems: "center",
    justifyContent: "center",
  },
  seekStepLabel: {
    color: "#E2E8F0",
    fontSize: 9.5,
    fontFamily: "Cairo_700Bold",
    marginTop: -2,
  },
  bigPlayBtn: {
    width: 68,
    height: 68,
    borderRadius: 34,
    backgroundColor: "rgba(14,165,233,0.88)",
    borderWidth: 2,
    borderColor: "rgba(255,255,255,0.35)",
    alignItems: "center",
    justifyContent: "center",
  },
  bottomGrad: {
    position: "absolute",
    left: 0,
    right: 0,
    bottom: 0,
    paddingHorizontal: 16,
    paddingTop: 22,
    gap: 8,
  },
  seekRow: {
    flexDirection: ROW_LTR,
    alignItems: "center",
    gap: 10,
  },
  timeText: {
    color: "#E2E8F0",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
    minWidth: 44,
    textAlign: "center",
  },
  seekTrackHit: {
    flex: 1,
    paddingVertical: 10,
    justifyContent: "center",
  },
  seekTrack: {
    height: 5,
    borderRadius: 3,
    backgroundColor: "rgba(255,255,255,0.28)",
    overflow: "hidden",
  },
  seekFill: {
    height: "100%",
    backgroundColor: "#0EA5E9",
    borderRadius: 3,
  },
  bottomNavRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
  },
  embedBottomBar: {
    position: "absolute",
    left: 16,
    right: 16,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
  },
  epActionBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "rgba(15,23,42,0.85)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.20)",
    paddingHorizontal: 14,
    paddingVertical: 7,
    borderRadius: 11,
  },
  epActionNext: {
    backgroundColor: "rgba(14,165,233,0.85)",
    borderColor: "rgba(56,189,248,0.5)",
  },
  epActionText: {
    color: "#FFFFFF",
    fontSize: 11.5,
    lineHeight: 17,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  engineBadgeText: {
    color: "rgba(255,255,255,0.65)",
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
  },
  floatingRevealChip: {
    position: "absolute",
    left: 14,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 999,
    backgroundColor: "rgba(15,23,42,0.72)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.20)",
  },
  floatingRevealText: {
    color: "#FFFFFF",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  lockOnlyRow: {
    position: "absolute",
    top: 16,
    left: 16,
  },
  glassBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "rgba(15,23,42,0.82)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.4)",
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 12,
  },
  glassBtnText: { color: "#FFFFFF", fontSize: 12, fontFamily: "Cairo_700Bold" },
  endedCard: {
    position: "absolute",
    alignSelf: "center",
    top: "35%",
    backgroundColor: "rgba(15,23,42,0.95)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.45)",
    borderRadius: 18,
    padding: 20,
    gap: 14,
    alignItems: "center",
  },
  endedTitle: { color: "#FFFFFF", fontSize: 16, fontFamily: "Cairo_800ExtraBold" },
  endedNextBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 12,
  },
  endedNextText: { color: "#FFFFFF", fontSize: 13, fontFamily: "Cairo_700Bold" },
  endedReplayBtn: {
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderRadius: 12,
    backgroundColor: "rgba(255,255,255,0.10)",
  },
  endedReplayText: { color: "#E2E8F0", fontSize: 12.5, fontFamily: "Cairo_700Bold" },
  sheetBackdrop: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.68)",
    justifyContent: "center",
    alignItems: "center",
    padding: 20,
    zIndex: 50,
  },
  sheetCard: {
    width: "100%",
    maxWidth: 460,
    maxHeight: "82%",
    backgroundColor: "#111319",
    borderRadius: 20,
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.14)",
    padding: 16,
    gap: 12,
  },
  sheetHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  sheetCloseBtn: {
    width: 34,
    height: 34,
    borderRadius: 11,
    backgroundColor: "rgba(255,255,255,0.08)",
    alignItems: "center",
    justifyContent: "center",
  },
  sheetTitle: {
    color: "#FFFFFF",
    fontSize: 15,
    lineHeight: 22,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
    textAlign: "right",
  },
  sheetSub: {
    color: "#94A3B8",
    fontSize: 11,
    lineHeight: 17,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
    textAlign: "right",
  },
  sheetServerRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    padding: 12,
    borderRadius: 14,
    backgroundColor: "rgba(255,255,255,0.04)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.09)",
  },
  sheetServerRowActive: {
    backgroundColor: "rgba(14,165,233,0.14)",
    borderColor: "rgba(56,189,248,0.55)",
  },
  sheetSrvIcon: {
    width: 32,
    height: 32,
    borderRadius: 10,
    alignItems: "center",
    justifyContent: "center",
  },
  sheetSrvName: {
    color: "#FFFFFF",
    fontSize: 13,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
    textAlign: "right",
  },
  sheetSrvMeta: {
    color: "#94A3B8",
    fontSize: 10.5,
    lineHeight: 15,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  sheetQBadge: {
    paddingHorizontal: 9,
    paddingVertical: 3,
    borderRadius: 8,
    backgroundColor: "rgba(56,189,248,0.16)",
  },
  sheetQText: {
    color: "#38BDF8",
    fontSize: 10,
    fontFamily: "Cairo_800ExtraBold",
  },
});

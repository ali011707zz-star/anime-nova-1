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
import type { FilmServerLink } from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
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

const EMBED_CLEANER_JS = `
(function() {
  try {
    var style = document.createElement('style');
    style.innerHTML = 'html, body { background: #000 !important; margin: 0 !important; padding: 0 !important; overflow: hidden !important; } iframe, video { max-width: 100vw !important; max-height: 100vh !important; } .ads, .ad-banner, [id*="ad_"], [class*="pop"] { display: none !important; }';
    document.head && document.head.appendChild(style);
    window.open = function() { return null; };
  } catch (e) {}
})();
true;
`;

export type FilmPlayerProps = {
  title: string;
  episodeLabel: string;
  servers: FilmServerLink[];
  activeServer: FilmServerLink;
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

  // Lock landscape cleanly while inside player, unlock back to portrait on exit
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

  // Reset sniffed stream when changing server
  useEffect(() => {
    setSniffedDirectUrl(null);
  }, [activeServer.id, reloadNonce]);

  const directPlaybackUrl = activeServer.directUrl || sniffedDirectUrl || null;
  const isDirectEngine = Boolean(directPlaybackUrl);

  return (
    <View style={s.root}>
      <StatusBar hidden />

      {isDirectEngine && directPlaybackUrl ? (
        <DirectRiftEngine
          url={directPlaybackUrl}
          streamMode={activeServer.streamMode}
          title={title}
          episodeLabel={episodeLabel}
          activeServer={activeServer}
          initialPosition={initialPosition}
          locked={locked}
          hudVisible={hudVisible}
          insetsTop={insets.top}
          onTapSurface={() => (hudVisible ? setHudVisible(false) : scheduleHideHud())}
          onBack={onBack}
          onToggleLock={() => {
            setLocked((v) => !v);
            scheduleHideHud();
          }}
          onToggleOrientation={() => {
            setLandscape((v) => !v);
            scheduleHideHud();
          }}
          onOpenServers={() => {
            setShowServersSheet(true);
            setHudVisible(true);
          }}
          isWatched={isWatched}
          onToggleWatched={onToggleWatched}
          onPrevEpisode={onPrevEpisode}
          onNextEpisode={onNextEpisode}
          onProgress={onProgress}
          onFallbackToEmbed={() => setSniffedDirectUrl(null)}
        />
      ) : (
        <EmbedRiftEngine
          key={`${activeServer.id}:${activeServer.embedUrl}:${reloadNonce}`}
          embedUrl={activeServer.embedUrl}
          title={title}
          episodeLabel={episodeLabel}
          activeServer={activeServer}
          locked={locked}
          hudVisible={hudVisible}
          onShowHud={scheduleHideHud}
          onToggleHud={() => {
            if (hudVisible) setHudVisible(false);
            else scheduleHideHud();
          }}
          onBack={onBack}
          onToggleLock={() => {
            setLocked((v) => !v);
            scheduleHideHud();
          }}
          onToggleOrientation={() => {
            setLandscape((v) => !v);
            scheduleHideHud();
          }}
          onReload={() => {
            setReloadNonce((n) => n + 1);
            scheduleHideHud();
          }}
          onOpenServers={() => {
            setShowServersSheet(true);
            setHudVisible(true);
          }}
          isWatched={isWatched}
          onToggleWatched={onToggleWatched}
          onPrevEpisode={onPrevEpisode}
          onNextEpisode={onNextEpisode}
        />
      )}

      {/* Built-in Glassy Server Switcher Overlay Drawer */}
      {showServersSheet ? (
        <View style={s.sheetBackdrop}>
          <Pressable
            style={StyleSheet.absoluteFill}
            onPress={() => setShowServersSheet(false)}
          />
          <View style={s.sheetCard}>
            <View style={s.sheetHeader}>
              <Pressable onPress={() => setShowServersSheet(false)} style={s.sheetCloseBtn}>
                <Ionicons name="close" size={18} color="#F8FAFC" />
              </Pressable>
              <View style={{ flex: 1, alignItems: "flex-end" }}>
                <Text style={s.sheetTitle}>تبديل السيرفر</Text>
                <Text style={s.sheetSub}>
                  اختر سيرفر بديل للتشغيل الفوري بدون الخروج من المشغّل
                </Text>
              </View>
            </View>

            <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ gap: 8 }}>
              {servers.map((srv) => {
                const active = srv.id === activeServer.id;
                return (
                  <Pressable
                    key={srv.id}
                    onPress={() => {
                      onSelectServer(srv);
                      setShowServersSheet(false);
                      scheduleHideHud();
                    }}
                    style={[
                      s.sheetServerRow,
                      active && s.sheetServerRowActive,
                    ]}
                  >
                    <View
                      style={[
                        s.sheetServerDot,
                        { backgroundColor: active ? "#0EA5E9" : srv.badgeColor || "#10B981" },
                      ]}
                    />
                    <View style={{ flex: 1, alignItems: "flex-end", gap: 2 }}>
                      <Text style={s.sheetServerName}>{srv.name}</Text>
                      <Text style={s.sheetServerMeta}>
                        {srv.speedLabel || srv.provider} · {srv.quality}
                      </Text>
                    </View>
                    <View style={[s.sheetQBadge, active && { backgroundColor: "#0EA5E9" }]}>
                      <Text style={[s.sheetQText, active && { color: "#FFFFFF" }]}>
                        {active ? "يعمل الآن" : srv.quality}
                      </Text>
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

/* ═══════════════ Direct Stream Engine (expo-video + full Rift HUD) ═══════════════ */
function DirectRiftEngine({
  url,
  streamMode,
  title,
  episodeLabel,
  activeServer,
  initialPosition,
  locked,
  hudVisible,
  onTapSurface,
  onBack,
  onToggleLock,
  onToggleOrientation,
  onOpenServers,
  isWatched,
  onToggleWatched,
  onPrevEpisode,
  onNextEpisode,
  onProgress,
  onFallbackToEmbed,
}: {
  url: string;
  streamMode?: string;
  title: string;
  episodeLabel: string;
  activeServer: FilmServerLink;
  initialPosition: number;
  locked: boolean;
  hudVisible: boolean;
  insetsTop: number;
  onTapSurface: () => void;
  onBack: () => void;
  onToggleLock: () => void;
  onToggleOrientation: () => void;
  onOpenServers: () => void;
  isWatched: boolean;
  onToggleWatched: () => void;
  onPrevEpisode?: () => void;
  onNextEpisode?: () => void;
  onProgress?: (position: number, duration: number) => void;
  onFallbackToEmbed: () => void;
}) {
  const [buffering, setBuffering] = useState(true);
  const [isPlaying, setIsPlaying] = useState(false);
  const [position, setPosition] = useState(initialPosition || 0);
  const [duration, setDuration] = useState(0);
  const [speedIdx, setSpeedIdx] = useState(2); // 1x
  const [fitIdx, setFitIdx] = useState(0);
  const [ended, setEnded] = useState(false);
  const initialSrcRef = useRef(
    streamMode === "hls" || /\.m3u8/i.test(url)
      ? { uri: url, contentType: "hls" as const }
      : { uri: url, contentType: "progressive" as const },
  );

  const player = useVideoPlayer(initialSrcRef.current, (p) => {
    p.preservesPitch = true;
    p.loop = false;
    p.volume = 1;
    if (initialPosition > 5) {
      try {
        p.currentTime = initialPosition;
      } catch {}
    }
  });

  useEffect(() => {
    const subs = [
      player.addListener("statusChange", ({ status }) => {
        if (status === "readyToPlay") {
          setBuffering(false);
          try {
            player.play();
            setIsPlaying(true);
          } catch {}
        } else if (status === "loading") {
          setBuffering(true);
        } else if (status === "error") {
          setBuffering(false);
          onFallbackToEmbed();
        }
      }),
      player.addListener("playingChange", ({ isPlaying: playing }) => {
        setIsPlaying(playing);
      }),
      player.addListener("playToEnd", () => {
        setEnded(true);
        setIsPlaying(false);
      }),
    ];

    const poll = setInterval(() => {
      try {
        const cur = Number(player.currentTime || 0);
        const dur = Number(player.duration || 0);
        setPosition(cur);
        if (dur > 0) setDuration(dur);
        if (dur > 0) onProgress?.(cur, dur);
      } catch {}
    }, 500);

    return () => {
      clearInterval(poll);
      subs.forEach((s) => {
        try {
          s.remove();
        } catch {}
      });
      try {
        player.pause();
      } catch {}
    };
  }, [onFallbackToEmbed, onProgress, player]);

  const seekBy = (delta: number) => {
    const next = Math.max(0, Math.min(duration || 99999, position + delta));
    try {
      player.currentTime = next;
      setPosition(next);
    } catch {}
  };

  const togglePlay = () => {
    try {
      if (isPlaying) player.pause();
      else player.play();
    } catch {}
  };

  const cycleSpeed = () => {
    const next = (speedIdx + 1) % SPEEDS.length;
    setSpeedIdx(next);
    try {
      player.playbackRate = SPEEDS[next];
    } catch {}
  };

  const cycleFit = () => {
    setFitIdx((i) => (i + 1) % FIT_MODES.length);
  };

  const barWidth = useMemo(() => Math.max(240, Dimensions.get("window").width - 48), []);
  const seekResponder = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onPanResponderRelease: (evt) => {
        if (!duration) return;
        const pct = Math.max(0, Math.min(1, evt.nativeEvent.locationX / barWidth));
        const target = pct * duration;
        try {
          player.currentTime = target;
          setPosition(target);
        } catch {}
      },
    }),
  ).current;

  const progressRatio = duration > 0 ? Math.min(1, Math.max(0, position / duration)) : 0;

  return (
    <View style={s.root}>
      <VideoView
        player={player}
        style={StyleSheet.absoluteFill}
        nativeControls={false}
        contentFit={FIT_MODES[fitIdx].id}
        surfaceType={Platform.OS === "android" ? "textureView" : undefined}
      />

      {buffering ? (
        <View pointerEvents="none" style={s.loaderOverlay}>
          <SpinRing />
          <Text style={s.loaderText}>جارٍ تحضير البث المباشر ({activeServer.name})...</Text>
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
          {/* Top Gradient & Bar */}
          <LinearGradient
            colors={["rgba(0,0,0,0.82)", "rgba(0,0,0,0.35)", "transparent"]}
            style={s.topGrad}
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

          {/* Center RiftPlayer Play / -10s / +10s Controls */}
          <View pointerEvents="box-none" style={s.centerControls}>
            <Pressable onPress={() => seekBy(10)} style={s.seekStepBtn}>
              <Ionicons name="play-forward" size={22} color="#FFFFFF" />
              <Text style={s.seekStepLabel}>10+</Text>
            </Pressable>

            <Pressable onPress={togglePlay} style={s.bigPlayBtn}>
              <Ionicons
                name={isPlaying ? "pause" : "play"}
                size={32}
                color="#FFFFFF"
                style={!isPlaying ? { marginLeft: 3 } : undefined}
              />
            </Pressable>

            <Pressable onPress={() => seekBy(-10)} style={s.seekStepBtn}>
              <Ionicons name="play-back" size={22} color="#FFFFFF" />
              <Text style={s.seekStepLabel}>10-</Text>
            </Pressable>
          </View>

          {/* Bottom Seekbar & Episode Nav */}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.48)", "rgba(0,0,0,0.88)"]}
            style={s.bottomGrad}
          >
            <View style={s.seekRow}>
              <Text style={s.timeText}>{fmtSec(position)}</Text>
              <View {...seekResponder.panHandlers} style={s.seekTrackHit}>
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

/* ═══════════════ Embed Engine (Full-Screen WebView + Floating Rift HUD) ═══════════════ */
function EmbedRiftEngine({
  embedUrl,
  title,
  episodeLabel,
  activeServer,
  locked,
  hudVisible,
  onShowHud,
  onToggleHud,
  onBack,
  onToggleLock,
  onToggleOrientation,
  onReload,
  onOpenServers,
  isWatched,
  onToggleWatched,
  onPrevEpisode,
  onNextEpisode,
}: {
  embedUrl: string;
  title: string;
  episodeLabel: string;
  activeServer: FilmServerLink;
  locked: boolean;
  hudVisible: boolean;
  onShowHud: () => void;
  onToggleHud: () => void;
  onBack: () => void;
  onToggleLock: () => void;
  onToggleOrientation: () => void;
  onReload: () => void;
  onOpenServers: () => void;
  isWatched: boolean;
  onToggleWatched: () => void;
  onPrevEpisode?: () => void;
  onNextEpisode?: () => void;
}) {
  const [loading, setLoading] = useState(true);

  return (
    <View style={s.root}>
      <WebView
        source={{ uri: embedUrl }}
        style={s.webview}
        allowsFullscreenVideo
        mediaPlaybackRequiresUserAction={false}
        javaScriptEnabled
        domStorageEnabled
        setSupportMultipleWindows={false}
        injectedJavaScript={EMBED_CLEANER_JS}
        onShouldStartLoadWithRequest={(req) => {
          const url = req.url || "";
          if (url.startsWith("http://") || url.startsWith("https://")) {
            return !isBlockedAdUrl(url);
          }
          return false;
        }}
        onLoadStart={() => setLoading(true)}
        onLoadEnd={() => setLoading(false)}
      />

      {loading ? (
        <View pointerEvents="none" style={s.loaderOverlay}>
          <SpinRing />
          <Text style={s.loaderText}>جارٍ الاتصال بالسيرفر ({activeServer.name})...</Text>
          <Text style={s.loaderSub}>{activeServer.quality} · محمي من النوافذ المنبثقة</Text>
        </View>
      ) : null}

      {/* Floating Toggle Chip when HUD is hidden — keeps WebView touch unobstructed! */}
      {!hudVisible ? (
        <Pressable onPress={onShowHud} style={s.floatingRevealChip}>
          <Ionicons name={locked ? "lock-closed" : "options-outline"} size={15} color="#FFFFFF" />
          <Text style={s.floatingRevealText}>{locked ? "مقفل" : "أدوات المشغّل"}</Text>
        </Pressable>
      ) : null}

      {/* Top Glassy HUD Bar */}
      {hudVisible ? (
        locked ? (
          <View style={s.lockOnlyRow}>
            <Pressable onPress={onToggleLock} style={s.glassBtn}>
              <Ionicons name="lock-closed" size={17} color="#38BDF8" />
              <Text style={s.glassBtnText}>فك القفل</Text>
            </Pressable>
          </View>
        ) : (
          <>
            <LinearGradient
              colors={["rgba(0,0,0,0.88)", "rgba(0,0,0,0.45)", "transparent"]}
              pointerEvents="box-none"
              style={s.embedTopBar}
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

            {/* Compact floating bottom bar for switching episodes without blocking embed play button */}
            {(onPrevEpisode || onNextEpisode) ? (
              <View pointerEvents="box-none" style={s.embedBottomBar}>
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
    gap: 10,
  },
  loaderText: {
    color: "#F8FAFC",
    fontSize: 13.5,
    lineHeight: 21,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  loaderSub: {
    color: "#38BDF8",
    fontSize: 11,
    lineHeight: 17,
    fontFamily: "Cairo_600SemiBold",
    includeFontPadding: true,
  },
  topGrad: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    paddingTop: 14,
    paddingBottom: 28,
    paddingHorizontal: 18,
  },
  embedTopBar: {
    position: "absolute",
    top: 0,
    left: 0,
    right: 0,
    paddingTop: 12,
    paddingBottom: 22,
    paddingHorizontal: 16,
  },
  topHudRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  circleHudBtn: {
    width: 36,
    height: 36,
    borderRadius: 12,
    backgroundColor: "rgba(15,23,42,0.78)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
    alignItems: "center",
    justifyContent: "center",
  },
  titleCol: {
    flex: 1,
    minWidth: 0,
    alignItems: "flex-end",
  },
  hudTitle: {
    color: "#FFFFFF",
    fontSize: 14,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  hudSub: {
    color: "#CBD5E1",
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_600SemiBold",
    includeFontPadding: true,
  },
  hudActionsGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
  },
  serverPillBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 12,
    height: 36,
    borderRadius: 12,
    backgroundColor: "rgba(14,165,233,0.20)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.45)",
  },
  serverPillText: {
    color: "#E0F2FE",
    fontSize: 11.5,
    lineHeight: 17,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  smallPillBtn: {
    paddingHorizontal: 10,
    height: 34,
    borderRadius: 10,
    backgroundColor: "rgba(15,23,42,0.78)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
    alignItems: "center",
    justifyContent: "center",
  },
  smallPillText: {
    color: "#F8FAFC",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  centerControls: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 38,
  },
  seekStepBtn: {
    width: 56,
    height: 56,
    borderRadius: 28,
    backgroundColor: "rgba(15,23,42,0.68)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.16)",
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
    width: 72,
    height: 72,
    borderRadius: 36,
    backgroundColor: "rgba(14,165,233,0.92)",
    borderWidth: 2,
    borderColor: "rgba(255,255,255,0.35)",
    alignItems: "center",
    justifyContent: "center",
  },
  bottomGrad: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    paddingHorizontal: 22,
    paddingTop: 28,
    paddingBottom: 18,
    gap: 10,
  },
  seekRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
  },
  timeText: {
    color: "#E2E8F0",
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
    minWidth: 44,
    textAlign: "center",
  },
  seekTrackHit: {
    flex: 1,
    height: 28,
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
    bottom: 54,
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
    top: 12,
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
    lineHeight: 16,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  lockOnlyRow: {
    position: "absolute",
    top: 16,
    left: 16,
  },
  glassBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 12,
    backgroundColor: "rgba(15,23,42,0.88)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.45)",
  },
  glassBtnText: {
    color: "#FFFFFF",
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  sheetBackdrop: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.66)",
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
  },
  sheetSub: {
    color: "#94A3B8",
    fontSize: 11,
    lineHeight: 17,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
  },
  sheetServerRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    padding: 12,
    borderRadius: 14,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)",
  },
  sheetServerRowActive: {
    backgroundColor: "rgba(14,165,233,0.14)",
    borderColor: "rgba(56,189,248,0.45)",
  },
  sheetServerDot: { width: 9, height: 9, borderRadius: 5 },
  sheetServerName: {
    color: "#FFFFFF",
    fontSize: 13,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  sheetServerMeta: {
    color: "#94A3B8",
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
  },
  sheetQBadge: {
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 9,
    backgroundColor: "rgba(255,255,255,0.10)",
  },
  sheetQText: {
    color: "#E2E8F0",
    fontSize: 10.5,
    lineHeight: 16,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  endedCard: {
    position: "absolute",
    alignSelf: "center",
    top: "38%",
    backgroundColor: "rgba(15,23,42,0.94)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.45)",
    borderRadius: 18,
    padding: 18,
    alignItems: "center",
    gap: 12,
  },
  endedTitle: {
    color: "#FFFFFF",
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
  },
  endedNextBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 16,
    paddingVertical: 9,
    borderRadius: 11,
  },
  endedNextText: {
    color: "#FFFFFF",
    fontSize: 12.5,
    fontFamily: "Cairo_800ExtraBold",
  },
  endedReplayBtn: {
    backgroundColor: "rgba(255,255,255,0.12)",
    paddingHorizontal: 14,
    paddingVertical: 9,
    borderRadius: 11,
  },
  endedReplayText: {
    color: "#E2E8F0",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
});

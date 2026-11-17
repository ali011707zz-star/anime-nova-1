import { Ionicons } from "@expo/vector-icons";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  I18nManager,
  Image,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { FilmPlayer } from "@/components/FilmPlayer";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  categorizeServers,
  loadAllPlaybackProgress,
  loadWatchedMap,
  makeEpisodeKey,
  saveFilmPlaybackProgress,
  saveWatchedMap,
  type FilmEpisode,
  type FilmServerLink,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

function fmtMinSec(sec: number): string {
  const s = Math.floor(sec);
  const m = Math.floor(s / 60);
  const r = s % 60;
  return `${String(m).padStart(2, "0")}:${String(r).padStart(2, "0")}`;
}

export default function FilmWatchScreen() {
  const { titleId, season, episode, autoplay } = useLocalSearchParams<{
    titleId: string;
    season?: string;
    episode?: string;
    autoplay?: string;
  }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();

  const title = useMemo(
    () => NOVA_FILM_CATALOG.find((t) => String(t.id) === String(titleId)) || NOVA_FILM_CATALOG[0],
    [titleId],
  );

  const [currentEp, setCurrentEp] = useState<FilmEpisode>(() => {
    const sNum = Number(season) || 1;
    const eNum = Number(episode) || 1;
    return (
      title.episodes.find((ep) => ep.seasonNumber === sNum && ep.episodeNumber === eNum) ||
      title.episodes[0]
    );
  });

  const [screen, setScreen] = useState<"picker" | "player">(
    autoplay === "1" ? "player" : "picker",
  );
  const [selectedServer, setSelectedServer] = useState<FilmServerLink>(
    currentEp.servers[0],
  );
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [savedResumeSec, setSavedResumeSec] = useState(0);
  const [refreshTick, setRefreshTick] = useState(0);

  useEffect(() => {
    const sNum = Number(season) || 1;
    const eNum = Number(episode) || 1;
    const found =
      title.episodes.find((ep) => ep.seasonNumber === sNum && ep.episodeNumber === eNum) ||
      title.episodes[0];
    setCurrentEp(found);
    setSelectedServer(found.servers[0]);
  }, [title, season, episode]);

  useFocusEffect(
    useCallback(() => {
      Promise.all([loadWatchedMap(), loadAllPlaybackProgress()]).then(([w, prog]) => {
        setWatchedMap(w);
        const rec = prog.find(
          (p) =>
            p.titleId === title.id &&
            p.seasonNumber === currentEp.seasonNumber &&
            p.episodeNumber === currentEp.episodeNumber,
        );
        setSavedResumeSec(rec?.position || 0);
      });
    }, [title.id, currentEp.seasonNumber, currentEp.episodeNumber, refreshTick]),
  );

  const isWatched = Boolean(
    watchedMap[makeEpisodeKey(title.id, currentEp.seasonNumber, currentEp.episodeNumber)],
  );

  const toggleWatched = async () => {
    const k = makeEpisodeKey(title.id, currentEp.seasonNumber, currentEp.episodeNumber);
    const next = { ...watchedMap };
    if (next[k]) delete next[k];
    else next[k] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const currentIdx = title.episodes.findIndex((e) => e.id === currentEp.id);
  const prevEp = currentIdx > 0 ? title.episodes[currentIdx - 1] : undefined;
  const nextEp =
    currentIdx >= 0 && currentIdx < title.episodes.length - 1
      ? title.episodes[currentIdx + 1]
      : undefined;

  const switchEpisode = (target: FilmEpisode, stayInPlayer = false) => {
    setCurrentEp(target);
    setSelectedServer(target.servers[0]);
    if (stayInPlayer) setScreen("player");
    void saveFilmPlaybackProgress({
      titleId: title.id,
      seasonNumber: target.seasonNumber,
      episodeNumber: target.episodeNumber,
      position: 0,
      duration: target.durationMinutes * 60,
      updatedAt: Date.now(),
      serverId: target.servers[0].id,
    });
  };

  const launchServer = (srv: FilmServerLink) => {
    setSelectedServer(srv);
    setScreen("player");
    void saveFilmPlaybackProgress({
      titleId: title.id,
      seasonNumber: currentEp.seasonNumber,
      episodeNumber: currentEp.episodeNumber,
      position: savedResumeSec > 5 ? savedResumeSec : 30,
      duration: currentEp.durationMinutes * 60,
      updatedAt: Date.now(),
      serverId: srv.id,
    });
  };

  const categorized = useMemo(
    () => categorizeServers(currentEp.servers),
    [currentEp.servers],
  );

  /* ═══════════════ INTERNAL VIDEO PLAYER (RiftPlayer HUD) ═══════════════ */
  if (screen === "player") {
    const epLabel =
      title.episodes.length > 1
        ? `الموسم ${currentEp.seasonNumber} · الحلقة ${currentEp.episodeNumber}`
        : currentEp.titleAr;

    return (
      <FilmPlayer
        title={title.titleAr}
        episodeLabel={epLabel}
        servers={currentEp.servers}
        activeServer={selectedServer}
        onSelectServer={(srv) => launchServer(srv)}
        onBack={() => setScreen("picker")}
        isWatched={isWatched}
        onToggleWatched={toggleWatched}
        onPrevEpisode={prevEp ? () => switchEpisode(prevEp, true) : undefined}
        onNextEpisode={nextEp ? () => switchEpisode(nextEp, true) : undefined}
        initialPosition={savedResumeSec}
        onProgress={(pos, dur) => {
          void saveFilmPlaybackProgress({
            titleId: title.id,
            seasonNumber: currentEp.seasonNumber,
            episodeNumber: currentEp.episodeNumber,
            position: pos,
            duration: dur || currentEp.durationMinutes * 60,
            updatedAt: Date.now(),
            serverId: selectedServer.id,
          });
        }}
      />
    );
  }

  /* ═══════════════ SERVERS PICKER SCREEN (Anime NOVA Style) ═══════════════ */
  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <Image
        source={title.posterSource}
        style={[StyleSheet.absoluteFill, { opacity: 0.08 }]}
        blurRadius={Platform.OS === "ios" ? 28 : 10}
        resizeMode="cover"
      />
      <View
        pointerEvents="none"
        style={[StyleSheet.absoluteFill, { backgroundColor: colors.background, opacity: 0.92 }]}
      />

      {/* Top Picker Header */}
      <View
        style={[
          s.header,
          {
            paddingTop: topPad + 6,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          style={[s.headerBack, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
        </Pressable>

        <View style={s.headerCenter}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {title.titleAr}
          </Text>
          <Text style={[s.headerSub, { color: colors.textSecondary }]} numberOfLines={1}>
            {title.episodes.length > 1
              ? `الموسم ${currentEp.seasonNumber} · الحلقة ${currentEp.episodeNumber}`
              : currentEp.titleAr}
          </Text>
        </View>

        <View style={s.headerNavGroup}>
          <Pressable
            disabled={!prevEp}
            onPress={() => prevEp && switchEpisode(prevEp, false)}
            style={[
              s.epNavBtn,
              {
                backgroundColor: colors.surface,
                borderColor: colors.border,
                opacity: prevEp ? 1 : 0.3,
              },
            ]}
          >
            <Ionicons name="chevron-forward" size={13} color={colors.textSecondary} />
            <Text style={[s.epNavText, { color: colors.textSecondary }]}>السابقة</Text>
          </Pressable>

          <Pressable
            disabled={!nextEp}
            onPress={() => nextEp && switchEpisode(nextEp, false)}
            style={[
              s.epNavBtn,
              {
                backgroundColor: colors.accentSurface,
                borderColor: colors.accentBorder,
                opacity: nextEp ? 1 : 0.3,
              },
            ]}
          >
            <Text style={[s.epNavText, { color: colors.accent }]}>التالية</Text>
            <Ionicons name="chevron-back" size={13} color={colors.accent} />
          </Pressable>

          <Pressable
            onPress={() => setRefreshTick((t) => t + 1)}
            style={[s.headerBack, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="refresh" size={15} color={colors.accent} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ padding: 14, paddingBottom: 48, gap: 14 }}
      >
        {/* Episode Info Card */}
        <View style={[s.infoCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Image source={title.posterSource} style={s.infoThumb} resizeMode="cover" />
          <View style={s.infoBody}>
            <Text style={[s.infoTitle, { color: colors.textPrimary }]} numberOfLines={2}>
              {currentEp.titleAr}
            </Text>
            <Text style={[s.infoMeta, { color: colors.textSecondary }]}>
              {currentEp.durationMinutes} دقيقة · {currentEp.audioType} · {title.qualityBadge}
            </Text>

            <View style={s.infoPillsRow}>
              <Pressable
                onPress={toggleWatched}
                style={[
                  s.eyePill,
                  {
                    backgroundColor: isWatched ? "rgba(16,185,129,0.16)" : colors.surfaceElevated,
                    borderColor: isWatched ? "#10B981" : colors.border,
                  },
                ]}
              >
                <Ionicons
                  name={isWatched ? "eye" : "eye-outline"}
                  size={15}
                  color={isWatched ? "#10B981" : colors.textMuted}
                />
                <Text
                  style={[
                    s.eyePillText,
                    { color: isWatched ? "#10B981" : colors.textPrimary },
                  ]}
                >
                  {isWatched ? "تمت المشاهدة" : "تحديد كمشاهد"}
                </Text>
              </Pressable>

              <Pressable
                onPress={() => launchServer(currentEp.servers[0])}
                style={s.quickStartBtn}
              >
                <Ionicons name="play" size={14} color="#FFFFFF" />
                <Text style={s.quickStartText}>
                  {savedResumeSec > 10
                    ? `استئناف (${fmtMinSec(savedResumeSec)})`
                    : "تشغيل سريع"}
                </Text>
              </Pressable>
            </View>
          </View>
        </View>

        {/* Categorized Quality Server Groups (Anime NOVA Picker style) */}
        {categorized.map((group) => (
          <View key={group.key} style={s.groupWrap}>
            <View style={s.groupHeader}>
              <View style={[s.groupDot, { backgroundColor: group.dotColor }]} />
              <View style={{ flex: 1, alignItems: "flex-end" }}>
                <Text style={[s.groupTitle, { color: colors.textPrimary }]}>
                  {group.title}
                </Text>
                <Text style={[s.groupSub, { color: colors.textMuted }]}>
                  {group.subtitle}
                </Text>
              </View>
              <View style={[s.groupCountPill, { backgroundColor: group.dotColor + "20" }]}>
                <Text style={[s.groupCountText, { color: group.dotColor }]}>
                  {group.items.length} سيرفرات
                </Text>
              </View>
            </View>

            <View
              style={[
                s.serverGroupCard,
                { backgroundColor: colors.card, borderColor: colors.border },
              ]}
            >
              {group.items.map((srv, idx) => {
                const isLast = idx === group.items.length - 1;
                return (
                  <Pressable
                    key={srv.id}
                    onPress={() => launchServer(srv)}
                    style={({ pressed }) => [
                      s.serverRow,
                      !isLast && { borderBottomWidth: 1, borderBottomColor: colors.border },
                      pressed && { backgroundColor: colors.surfaceElevated },
                    ]}
                  >
                    <View
                      style={[
                        s.serverStatusDot,
                        { backgroundColor: srv.badgeColor || group.dotColor },
                      ]}
                    />

                    <View style={s.serverInfoCol}>
                      <Text style={[s.serverName, { color: colors.textPrimary }]}>
                        {srv.name}
                      </Text>
                      <Text style={[s.serverSub, { color: colors.textMuted }]}>
                        {srv.speedLabel || srv.provider} · {currentEp.audioType}
                      </Text>
                    </View>

                    <View style={s.serverRightActions}>
                      <View
                        style={[
                          s.qBadge,
                          {
                            backgroundColor: (srv.badgeColor || group.dotColor) + "1C",
                            borderColor: (srv.badgeColor || group.dotColor) + "45",
                          },
                        ]}
                      >
                        <Text
                          style={[
                            s.qBadgeText,
                            { color: srv.badgeColor || group.dotColor },
                          ]}
                        >
                          {srv.quality}
                        </Text>
                      </View>

                      <View style={s.playRowBtn}>
                        <Ionicons name="play" size={13} color="#FFFFFF" />
                        <Text style={s.playRowBtnText}>تشغيل</Text>
                      </View>
                    </View>
                  </Pressable>
                );
              })}
            </View>
          </View>
        ))}

        {/* Quick Episodes Strip at Bottom */}
        {title.episodes.length > 1 ? (
          <View style={s.quickEpsSection}>
            <Text style={[s.groupTitle, { color: colors.textPrimary, textAlign: "right" }]}>
              الحلقات ({title.episodes.length})
            </Text>
            <View style={s.epsWrap}>
              {title.episodes.map((ep) => {
                const isCur = ep.id === currentEp.id;
                const done = Boolean(
                  watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
                );
                return (
                  <Pressable
                    key={ep.id}
                    onPress={() => switchEpisode(ep, false)}
                    style={[
                      s.epPill,
                      {
                        backgroundColor: isCur ? "#0EA5E9" : colors.card,
                        borderColor: isCur ? "#0EA5E9" : done ? "#10B981" : colors.border,
                      },
                    ]}
                  >
                    <Text
                      style={[
                        s.epPillText,
                        { color: isCur ? "#FFFFFF" : colors.textPrimary },
                      ]}
                    >
                      م{ep.seasonNumber} · ح {ep.episodeNumber} {done ? "✓" : ""}
                    </Text>
                  </Pressable>
                );
              })}
            </View>
          </View>
        ) : null}
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: 1,
    gap: 8,
  },
  headerBack: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerCenter: { flex: 1, minWidth: 0, alignItems: "flex-end" },
  headerTitle: {
    fontSize: 14.5,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  headerSub: {
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_600SemiBold",
  },
  headerNavGroup: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
  epNavBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 3,
    height: 36,
    paddingHorizontal: 10,
    borderRadius: 11,
    borderWidth: 1,
  },
  epNavText: { fontSize: 11, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  infoCard: {
    flexDirection: ROW_RTL,
    borderWidth: 1,
    borderRadius: 18,
    padding: 12,
    gap: 12,
    alignItems: "center",
  },
  infoThumb: { width: 78, height: 112, borderRadius: 12, backgroundColor: "#14171C" },
  infoBody: { flex: 1, alignItems: "flex-end", gap: 5 },
  infoTitle: {
    fontSize: 14.5,
    lineHeight: 22,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  infoMeta: { fontSize: 11.5, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  infoPillsRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 8,
    marginTop: 4,
  },
  eyePill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 11,
    paddingVertical: 6,
    borderRadius: 11,
    borderWidth: 1,
  },
  eyePillText: { fontSize: 11, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  quickStartBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 13,
    paddingVertical: 7,
    borderRadius: 11,
  },
  quickStartText: { color: "#FFFFFF", fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  groupWrap: { gap: 8 },
  groupHeader: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, paddingHorizontal: 2 },
  groupDot: { width: 8, height: 8, borderRadius: 4 },
  groupTitle: {
    fontSize: 14,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  groupSub: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  groupCountPill: { paddingHorizontal: 10, paddingVertical: 3, borderRadius: 999 },
  groupCountText: { fontSize: 10.5, fontFamily: "Cairo_700Bold" },
  serverGroupCard: {
    borderWidth: 1,
    borderRadius: 16,
    overflow: "hidden",
  },
  serverRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    paddingHorizontal: 13,
    paddingVertical: 13,
    gap: 10,
  },
  serverStatusDot: { width: 8, height: 8, borderRadius: 4 },
  serverInfoCol: { flex: 1, alignItems: "flex-end", gap: 2 },
  serverName: { fontSize: 13.5, lineHeight: 20, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  serverSub: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  serverRightActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  qBadge: {
    paddingHorizontal: 9,
    paddingVertical: 3.5,
    borderRadius: 8,
    borderWidth: 1,
  },
  qBadgeText: { fontSize: 10.5, fontFamily: "Cairo_800ExtraBold" },
  playRowBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "#10B981",
    paddingHorizontal: 12,
    paddingVertical: 6.5,
    borderRadius: 10,
  },
  playRowBtnText: { color: "#FFFFFF", fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  quickEpsSection: { marginTop: 6, gap: 10 },
  epsWrap: { flexDirection: ROW_RTL, flexWrap: "wrap", gap: 8 },
  epPill: {
    borderWidth: 1,
    borderRadius: 11,
    paddingHorizontal: 13,
    paddingVertical: 8,
  },
  epPillText: { fontSize: 12, fontFamily: "Cairo_700Bold", includeFontPadding: true },
});

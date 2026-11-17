import React, { useEffect, useMemo, useState } from "react";
import {
  ActivityIndicator,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { WebView } from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadWatchedMap,
  makeEpisodeKey,
  saveWatchedMap,
  type FilmEpisode,
  type FilmServerLink,
} from "@/utils/filmCatalog";

export default function FilmWatchScreen() {
  const { titleId, season, episode } = useLocalSearchParams<{
    titleId: string;
    season: string;
    episode: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();

  const title = useMemo(
    () => NOVA_FILM_CATALOG.find((t) => t.id === Number(titleId)) || NOVA_FILM_CATALOG[0],
    [titleId]
  );

  const [currentEp, setCurrentEp] = useState<FilmEpisode>(() => {
    const sNum = Number(season) || 1;
    const eNum = Number(episode) || 1;
    return (
      title.episodes.find((ep) => ep.seasonNumber === sNum && ep.episodeNumber === eNum) ||
      title.episodes[0]
    );
  });

  const [selectedServer, setSelectedServer] = useState<FilmServerLink>(
    currentEp.servers[0]
  );
  const [loadingPlayer, setLoadingPlayer] = useState<boolean>(true);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  useEffect(() => {
    loadWatchedMap().then(setWatchedMap);
  }, []);

  const isWatched = Boolean(
    watchedMap[makeEpisodeKey(title.id, currentEp.seasonNumber, currentEp.episodeNumber)]
  );

  const toggleWatched = async () => {
    const k = makeEpisodeKey(title.id, currentEp.seasonNumber, currentEp.episodeNumber);
    const next = { ...watchedMap };
    if (next[k]) delete next[k];
    else next[k] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  return (
    <View style={[s.container, { backgroundColor: colors.background, paddingTop: insets.top }]}>
      {/* Top Bar */}
      <View style={[s.header, { borderBottomColor: colors.border }]}>
        <TouchableOpacity
          onPress={toggleWatched}
          style={[
            s.eyePill,
            {
              backgroundColor: isWatched ? "rgba(16,185,129,0.2)" : colors.card,
              borderColor: isWatched ? "#10B981" : colors.border,
            },
          ]}
        >
          <Ionicons
            name={isWatched ? "eye" : "eye-outline"}
            size={16}
            color={isWatched ? "#34D399" : colors.textMuted}
          />
          <Text style={[s.eyePillText, { color: isWatched ? "#34D399" : colors.text }]}>
            {isWatched ? "تمت المشاهدة" : "تحديد كمشاهد"}
          </Text>
        </TouchableOpacity>

        <View style={s.headerTitleWrap}>
          <Text style={[s.headerTitle, { color: colors.text }]} numberOfLines={1}>
            {title.titleAr}
          </Text>
          <Text style={[s.headerSub, { color: colors.textMuted }]} numberOfLines={1}>
            {currentEp.titleAr}
          </Text>
        </View>

        <TouchableOpacity
          onPress={() => router.back()}
          style={[s.backBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
        >
          <Ionicons name="arrow-forward" size={18} color={colors.text} />
        </TouchableOpacity>
      </View>

      {/* Embedded Multi-Server Player */}
      <View style={s.playerBox}>
        <WebView
          key={selectedServer.embedUrl}
          source={{ uri: selectedServer.embedUrl }}
          style={s.webview}
          allowsFullscreenVideo
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled
          domStorageEnabled
          setSupportMultipleWindows={false}
          onShouldStartLoadWithRequest={(req) => {
            const url = req.url || "";
            if (
              url.startsWith("http://") ||
              url.startsWith("https://")
            ) {
              return !url.includes("doubleclick") && !url.includes("popads");
            }
            return false;
          }}
          onLoadStart={() => setLoadingPlayer(true)}
          onLoadEnd={() => setLoadingPlayer(false)}
        />
        {loadingPlayer && (
          <View style={s.loaderOverlay}>
            <ActivityIndicator size="large" color="#F59E0B" />
            <Text style={s.loaderText}>جارٍ تحميل السيرفر ({selectedServer.name})...</Text>
          </View>
        )}
      </View>

      <ScrollView contentContainerStyle={s.body}>
        {/* Server Selector Pills */}
        <Text style={[s.sectionHeading, { color: colors.text }]}>
          سيرفرات المشاهدة الدائمة ({currentEp.servers.length})
        </Text>
        <View style={s.serversGrid}>
          {currentEp.servers.map((srv) => {
            const active = selectedServer.id === srv.id;
            return (
              <TouchableOpacity
                key={srv.id}
                onPress={() => {
                  setLoadingPlayer(true);
                  setSelectedServer(srv);
                }}
                style={[
                  s.serverBtn,
                  {
                    backgroundColor: active ? "#F59E0B" : colors.card,
                    borderColor: active ? "#F59E0B" : colors.border,
                  },
                ]}
              >
                <Text style={[s.serverName, { color: active ? "#090A0C" : colors.text }]}>
                  {srv.name}
                </Text>
                <Text
                  style={[
                    s.serverQuality,
                    { color: active ? "#090A0C" : "#F59E0B" },
                  ]}
                >
                  {srv.quality}
                </Text>
              </TouchableOpacity>
            );
          })}
        </View>

        {/* Quick Episode Switcher */}
        {title.episodes.length > 1 && (
          <>
            <Text style={[s.sectionHeading, { color: colors.text, marginTop: 18 }]}>
              الحلقات ({title.episodes.length})
            </Text>
            <View style={s.episodesGrid}>
              {title.episodes.map((ep) => {
                const isCur = ep.id === currentEp.id;
                const done = Boolean(
                  watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)]
                );
                return (
                  <TouchableOpacity
                    key={ep.id}
                    onPress={() => {
                      setCurrentEp(ep);
                      setSelectedServer(ep.servers[0]);
                      setLoadingPlayer(true);
                    }}
                    style={[
                      s.epChip,
                      {
                        backgroundColor: isCur ? "#F59E0B" : colors.card,
                        borderColor: isCur ? "#F59E0B" : done ? "#10B981" : colors.border,
                      },
                    ]}
                  >
                    <Text style={[s.epChipText, { color: isCur ? "#090A0C" : colors.text }]}>
                      ح {ep.episodeNumber} {done ? "✓" : ""}
                    </Text>
                  </TouchableOpacity>
                );
              })}
            </View>
          </>
        )}
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderBottomWidth: 1,
    gap: 10,
  },
  backBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitleWrap: { flex: 1, alignItems: "flex-end" },
  headerTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold" },
  headerSub: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  eyePill: {
    flexDirection: "row",
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 10,
    borderWidth: 1,
  },
  eyePillText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  playerBox: {
    width: "100%",
    aspectRatio: 16 / 9,
    backgroundColor: "#000",
    position: "relative",
  },
  webview: { flex: 1, backgroundColor: "#000" },
  loaderOverlay: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.75)",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  loaderText: { color: "#FDE68A", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  body: { padding: 16, paddingBottom: 40 },
  sectionHeading: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", textAlign: "right", marginBottom: 10 },
  serversGrid: { flexDirection: "row-reverse", flexWrap: "wrap", gap: 8 },
  serverBtn: {
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 9,
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 8,
  },
  serverName: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  serverQuality: { fontSize: 10, fontFamily: "Cairo_800ExtraBold" },
  episodesGrid: { flexDirection: "row-reverse", flexWrap: "wrap", gap: 8 },
  epChip: {
    borderWidth: 1,
    borderRadius: 10,
    paddingHorizontal: 14,
    paddingVertical: 8,
  },
  epChipText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
});

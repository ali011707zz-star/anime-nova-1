import React, { useState, useEffect, useCallback } from "react";
import {
  View, Text, StyleSheet, Pressable,
  Image, ActivityIndicator, FlatList, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { CommentsSheet } from "@/components/CommentsSheet";
import { getBaseUrl } from "@/utils/api";

/* ═══════════════════════════════════════════════════════
   AniList GraphQL queries
═══════════════════════════════════════════════════════ */
const UPCOMING_Q = `query {
  Page(perPage: 10) {
    media(type: ANIME, sort: START_DATE_DESC, status: NOT_YET_RELEASED, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large } startDate { year month }
      genres episodes format averageScore
    }
  }
}`;

const TRENDING_Q = `query {
  Page(perPage: 8) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", status: RELEASING) {
      id title { romaji } coverImage { large } description(asHtml: false)
      averageScore popularity episodes nextAiringEpisode { episode airingAt }
      genres bannerImage
    }
  }
}`;

const RECENTLY_AIRED_Q = `query {
  Page(perPage: 15) {
    airingSchedules(notYetAired: false, sort: TIME_DESC) {
      episode airingAt
      media {
        id title { romaji } coverImage { large } averageScore format
        nextAiringEpisode { episode }
      }
    }
  }
}`;

/* ═══════════════════════════════════════════════════════
   Types
═══════════════════════════════════════════════════════ */
type Tab = "airing" | "upcoming" | "trending" | "latestnews";

interface NewsArticle {
  id: string;
  title: string;
  description: string;
  url: string;
  thumbnail: string | null;
  publishedAt: string;
  category: string;
}

/* ═══════════════════════════════════════════════════════
   Helpers
═══════════════════════════════════════════════════════ */
const MONTHS_AR = ["يناير","فبراير","مارس","أبريل","مايو","يونيو","يوليو","أغسطس","سبتمبر","أكتوبر","نوفمبر","ديسمبر"];

function timeAgo(ts: number | string): string {
  const ms = typeof ts === "number" ? ts * 1000 : new Date(ts).getTime();
  const diff = Date.now() - ms;
  const secs = Math.floor(diff / 1000);
  if (secs < 60) return "الآن";
  const mins = Math.floor(secs / 60);
  if (mins < 60) return `منذ ${mins} دقيقة`;
  const hrs = Math.floor(mins / 60);
  if (hrs < 24) return `منذ ${hrs} ساعة`;
  const days = Math.floor(hrs / 24);
  if (days < 7) return `منذ ${days} يوم`;
  return `منذ ${Math.floor(days / 7)} أسبوع`;
}

async function gqlFetch(query: string): Promise<any> {
  try {
    const r = await fetch(`${getBaseUrl()}/api/anilist`, {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({ query }),
    });
    if (!r.ok) return null;
    const json = await r.json();
    return json?.data?.Page ?? null;
  } catch {
    return null;
  }
}

async function fetchNewsArticles(page = 1): Promise<{ articles: NewsArticle[]; total: number }> {
  try {
    const base = getBaseUrl();
    const r = await fetch(`${base}/api/news?page=${page}&limit=20`);
    if (!r.ok) return { articles: [], total: 0 };
    return await r.json();
  } catch {
    return { articles: [], total: 0 };
  }
}

/* ═══════════════════════════════════════════════════════
   Main Screen
═══════════════════════════════════════════════════════ */
export default function NewsScreen() {
  const colors  = useColors();
  const insets  = useSafeAreaInsets();
  const router  = useRouter();

  /* AniList state */
  const [tab, setTab]         = useState<Tab>("latestnews");
  const [airing, setAiring]   = useState<any[]>([]);
  const [upcoming, setUpcoming] = useState<any[]>([]);
  const [trending, setTrending] = useState<any[]>([]);
  const [aniLoading, setAniLoading] = useState(false);
  const [aniError, setAniError]     = useState(false);
  const [aniLoaded, setAniLoaded]   = useState(false);

  /* News state */
  const [news, setNews]           = useState<NewsArticle[]>([]);
  const [newsLoading, setNewsLoading] = useState(true);
  const [newsError, setNewsError]     = useState(false);
  const [newsPage, setNewsPage]       = useState(1);
  const [newsTotal, setNewsTotal]     = useState(0);
  const [newsLoadingMore, setNewsLoadingMore] = useState(false);

  /* Comments sheet */
  const [commentsVisible, setCommentsVisible] = useState(false);
  const [activeArticle, setActiveArticle]     = useState<NewsArticle | null>(null);
  /* comment counts cache: newsId → count */
  const [commentCounts, setCommentCounts] = useState<Record<string, number>>({});

  /* ── load AniList data only when switching to those tabs ── */
  useEffect(() => {
    if (tab === "latestnews") return;
    if (aniLoaded || aniLoading) return;
    loadAniList();
  }, [tab]);

  function loadAniList() {
    setAniLoading(true);
    setAniError(false);
    Promise.all([
      gqlFetch(RECENTLY_AIRED_Q),
      gqlFetch(UPCOMING_Q),
      gqlFetch(TRENDING_Q),
    ]).then(([a, u, t]) => {
      if (!a && !u && !t) { setAniError(true); return; }
      const schedules = ((a?.airingSchedules) || []).filter((s: any) => s?.media);
      const seen = new Set<number>();
      const unique = schedules.filter((s: any) => {
        if (seen.has(s.media.id)) return false;
        seen.add(s.media.id); return true;
      });
      setAiring(unique);
      setUpcoming(u?.media || []);
      setTrending(t?.media || []);
      setAniLoaded(true);
    }).catch(() => setAniError(true))
      .finally(() => setAniLoading(false));
  }

  /* ── load news on mount ── */
  useEffect(() => {
    loadNews(1);
  }, []);

  async function loadNews(page: number) {
    if (page === 1) { setNewsLoading(true); setNewsError(false); }
    else setNewsLoadingMore(true);

    const { articles, total } = await fetchNewsArticles(page);

    if (page === 1 && articles.length === 0) setNewsError(true);

    setNews(prev => page === 1 ? articles : [...prev, ...articles]);
    setNewsTotal(total);
    setNewsPage(page);
    setNewsLoading(false);
    setNewsLoadingMore(false);

    // جلب عدد التعليقات لكل مقال
    if (articles.length > 0) {
      fetchCommentCountsBatch(articles);
    }
  }

  async function fetchCommentCountsBatch(articles: NewsArticle[]) {
    const base = getBaseUrl();
    await Promise.allSettled(
      articles.map(async (article) => {
        const newsId = `news-${article.id}`;
        try {
          const r = await fetch(`${base}/api/comments/count?tmdbId=${encodeURIComponent(newsId)}`);
          if (!r.ok) return;
          const d = await r.json();
          // d.counts: { anime: N, "1": N, ... } — we want all combined
          const total = Object.values(d.counts as Record<string, number>).reduce((a, b) => a + b, 0);
          setCommentCounts(prev => ({ ...prev, [newsId]: total }));
        } catch {}
      })
    );
  }

  function openComments(article: NewsArticle) {
    setActiveArticle(article);
    setCommentsVisible(true);
  }

  function goAnime(id: number) {
    router.push(`/anime/${id}` as any);
  }

  /* ═══════════════════════════════════════
     Tab config
  ═══════════════════════════════════════ */
  const TABS: { id: Tab; label: string; icon: keyof typeof Ionicons.glyphMap; color: string }[] = [
    { id: "latestnews", label: "آخر الأخبار",      icon: "newspaper",    color: "#06b6d4" },
    { id: "airing",     label: "يُبث الآن",        icon: "radio",        color: "#22c55e" },
    { id: "upcoming",   label: "قريباً",            icon: "time",         color: "#f59e0b" },
    { id: "trending",   label: "تريندنج",           icon: "trending-up",  color: "#ef4444" },
  ];

  /* ═══════════════════════════════════════
     Render helpers
  ═══════════════════════════════════════ */

  /* ─── News card ─── */
  const renderNewsItem = useCallback(({ item }: { item: NewsArticle }) => {
    const newsId = `news-${item.id}`;
    const commentCount = commentCounts[newsId] ?? 0;
    return (
      <Pressable
        onPress={() => Linking.openURL(item.url).catch(() => {})}
        style={({ pressed }) => [s.newsCard, pressed && { opacity: 0.78 }]}
      >
        {/* صورة مصغّرة */}
        {item.thumbnail ? (
          <Image
            source={{ uri: item.thumbnail }}
            style={s.newsThumb}
            resizeMode="cover"
          />
        ) : (
          <View style={[s.newsThumb, s.newsThumbPlaceholder]}>
            <Ionicons name="newspaper" size={24} color="rgba(6,182,212,0.35)" />
          </View>
        )}

        <View style={s.newsBody}>
          {/* تصنيف + وقت */}
          <View style={s.newsMetaRow}>
            <View style={s.newsCategoryBadge}>
              <Text style={s.newsCategoryText}>{item.category}</Text>
            </View>
            <Text style={s.newsTime}>{timeAgo(item.publishedAt)}</Text>
          </View>

          {/* العنوان */}
          <Text style={s.newsTitle} numberOfLines={2}>{item.title}</Text>

          {/* الوصف */}
          {!!item.description && (
            <Text style={s.newsDesc} numberOfLines={2}>{item.description}</Text>
          )}

          {/* أزرار */}
          <View style={s.newsActions}>
            <Pressable
              onPress={(e) => { e.stopPropagation(); openComments(item); }}
              style={s.newsActionBtn}
              hitSlop={8}
            >
              <Ionicons name="chatbubble-outline" size={14} color="rgba(139,92,246,0.75)" />
              <Text style={s.newsActionText}>
                {commentCount > 0 ? commentCount : "تعليق"}
              </Text>
            </Pressable>

            <Pressable
              onPress={() => Linking.openURL(item.url).catch(() => {})}
              style={s.newsActionBtn}
              hitSlop={8}
            >
              <Ionicons name="open-outline" size={14} color="rgba(255,255,255,0.3)" />
              <Text style={[s.newsActionText, { color: "rgba(255,255,255,0.3)" }]}>فتح</Text>
            </Pressable>
          </View>
        </View>
      </Pressable>
    );
  }, [commentCounts]);

  /* ─── Airing card ─── */
  const renderAiring = ({ item, index }: { item: any; index: number }) => (
    <Pressable
      onPress={() => goAnime(item.media.id)}
      style={({ pressed }) => [s.card, pressed && { opacity: 0.75 }]}
    >
      <Image source={{ uri: item.media.coverImage?.large }} style={s.cover} />
      <View style={s.cardInfo}>
        <View style={s.tagRow}>
          <View style={[s.tag, { backgroundColor: "rgba(34,197,94,0.15)", borderColor: "rgba(34,197,94,0.25)" }]}>
            <Text style={[s.tagText, { color: "#22c55e" }]}>يُبث الآن</Text>
          </View>
          {item.media.format && (
            <View style={[s.tag, { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.25)" }]}>
              <Text style={[s.tagText, { color: "#a78bfa" }]}>
                {item.media.format === "TV" ? "مسلسل" : item.media.format}
              </Text>
            </View>
          )}
        </View>
        <Text style={s.cardTitle} numberOfLines={2}>{item.media.title.romaji}</Text>
        <View style={s.metaRow}>
          <Ionicons name="time-outline" size={11} color="#8B5CF6" />
          <Text style={[s.metaText, { color: "#8B5CF6" }]}>{timeAgo(item.airingAt)}</Text>
          <Text style={s.metaSep}>·</Text>
          <Text style={s.metaText}>الحلقة {item.episode}</Text>
          {item.media.averageScore ? (
            <>
              <Text style={s.metaSep}>·</Text>
              <Text style={[s.metaText, { color: "#facc15" }]}>⭐ {(item.media.averageScore / 10).toFixed(1)}</Text>
            </>
          ) : null}
        </View>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.2)" />
    </Pressable>
  );

  /* ─── Upcoming card ─── */
  const renderUpcoming = ({ item }: { item: any }) => (
    <Pressable
      onPress={() => goAnime(item.id)}
      style={({ pressed }) => [s.card, pressed && { opacity: 0.75 }]}
    >
      <Image source={{ uri: item.coverImage?.large }} style={s.cover} />
      <View style={s.cardInfo}>
        <View style={s.tagRow}>
          <View style={[s.tag, { backgroundColor: "rgba(245,158,11,0.15)", borderColor: "rgba(245,158,11,0.25)" }]}>
            <Text style={[s.tagText, { color: "#f59e0b" }]}>قريباً</Text>
          </View>
        </View>
        <Text style={s.cardTitle} numberOfLines={2}>{item.title.romaji}</Text>
        {item.title.english && (
          <Text style={s.cardSubtitle} numberOfLines={1}>{item.title.english}</Text>
        )}
        <View style={s.metaRow}>
          {item.startDate?.year && (
            <>
              <Ionicons name="calendar-outline" size={11} color="#f59e0b" />
              <Text style={[s.metaText, { color: "#f59e0b" }]}>
                {item.startDate.month ? `${MONTHS_AR[item.startDate.month - 1]} ` : ""}{item.startDate.year}
              </Text>
            </>
          )}
          {item.genres?.[0] && (
            <>
              <Text style={s.metaSep}>·</Text>
              <Text style={s.metaText}>{item.genres[0]}</Text>
            </>
          )}
        </View>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.2)" />
    </Pressable>
  );

  /* ─── Trending card ─── */
  const renderTrending = ({ item, index }: { item: any; index: number }) => (
    <Pressable
      onPress={() => goAnime(item.id)}
      style={({ pressed }) => [s.trendCard, pressed && { opacity: 0.75 }]}
    >
      {item.bannerImage ? (
        <View style={s.bannerWrap}>
          <Image source={{ uri: item.bannerImage }} style={s.banner} />
          <View style={s.bannerGrad} />
          <View style={[s.tag, s.trendBadge, { backgroundColor: "rgba(239,68,68,0.8)" }]}>
            <Ionicons name="trending-up" size={9} color="#fff" />
            <Text style={[s.tagText, { color: "#fff" }]}>#{index + 1} تريندنج</Text>
          </View>
        </View>
      ) : null}
      <View style={[s.trendBody, item.bannerImage ? { paddingTop: 8 } : {}]}>
        {!item.bannerImage && (
          <Image source={{ uri: item.coverImage?.large }} style={[s.cover, { marginLeft: 0, marginRight: 12 }]} />
        )}
        <View style={{ flex: 1 }}>
          {!item.bannerImage && (
            <View style={[s.tag, { alignSelf: "flex-start", marginBottom: 4, backgroundColor: "rgba(239,68,68,0.15)", borderColor: "rgba(239,68,68,0.25)" }]}>
              <Text style={[s.tagText, { color: "#f87171" }]}>#{index + 1} تريندنج</Text>
            </View>
          )}
          <Text style={s.cardTitle} numberOfLines={1}>{item.title.romaji}</Text>
          {item.description && (
            <Text style={s.trendDesc} numberOfLines={2}>
              {item.description.replace(/<[^>]*>/g, "").slice(0, 110)}...
            </Text>
          )}
          <View style={[s.metaRow, { marginTop: 6 }]}>
            {item.averageScore ? (
              <Text style={[s.metaText, { color: "#facc15" }]}>⭐ {(item.averageScore / 10).toFixed(1)}</Text>
            ) : null}
            {item.nextAiringEpisode && (
              <>
                <Text style={s.metaSep}>·</Text>
                <Text style={[s.metaText, { color: "#8B5CF6" }]}>ح{item.nextAiringEpisode.episode} قريباً</Text>
              </>
            )}
            {item.popularity ? (
              <>
                <Text style={s.metaSep}>·</Text>
                <Ionicons name="eye-outline" size={10} color="rgba(255,255,255,0.3)" />
                <Text style={s.metaText}>{(item.popularity / 1000).toFixed(0)}K</Text>
              </>
            ) : null}
          </View>
        </View>
      </View>
    </Pressable>
  );

  /* ─── News footer (تحميل المزيد) ─── */
  const NewsFooter = () => {
    if (!newsLoadingMore) return null;
    return (
      <View style={{ paddingVertical: 16, alignItems: "center" }}>
        <ActivityIndicator size="small" color="#06b6d4" />
      </View>
    );
  };

  /* ─── AniList error view ─── */
  function AniListError() {
    return (
      <View style={s.loading}>
        <Ionicons name="cloud-offline-outline" size={48} color="rgba(139,92,246,0.35)" />
        <Text style={s.errorTitle}>تعذّر الاتصال بـ AniList</Text>
        <Text style={s.loadingText}>تحقق من اتصالك بالإنترنت</Text>
        <Pressable onPress={loadAniList} style={s.retryBtn}>
          <Ionicons name="refresh" size={14} color="#c4b5fd" />
          <Text style={s.retryText}>إعادة المحاولة</Text>
        </Pressable>
      </View>
    );
  }

  /* ═══════════════════════════════════════
     Render
  ═══════════════════════════════════════ */
  return (
    <View style={[s.root, { paddingTop: insets.top }]}>

      {/* ── Header ── */}
      <View style={s.header}>
        <View style={s.headerIcon}>
          <Ionicons name="newspaper" size={20} color="#8B5CF6" />
        </View>
        <View>
          <Text style={s.headerTitle}>أخبار الأنمي</Text>
          <Text style={s.headerSub}>آخر الأخبار والإضافات والإصدارات</Text>
        </View>
      </View>

      {/* ── Tab selector ── */}
      <View style={s.tabScrollWrap}>
        <View style={s.tabRow}>
          {TABS.map(t => (
            <Pressable
              key={t.id}
              onPress={() => setTab(t.id)}
              style={[s.tabBtn, tab === t.id && { backgroundColor: "#8B5CF6" }]}
            >
              <Ionicons
                name={t.icon}
                size={11}
                color={tab === t.id ? "#fff" : "rgba(255,255,255,0.35)"}
              />
              <Text style={[s.tabText, tab === t.id ? { color: "#fff" } : { color: "rgba(255,255,255,0.35)" }]}>
                {t.label}
              </Text>
            </Pressable>
          ))}
        </View>
      </View>

      {/* ══ Content ══ */}

      {/* ── Latest News tab ── */}
      {tab === "latestnews" && (
        newsLoading ? (
          <View style={s.loading}>
            <ActivityIndicator size="large" color="#06b6d4" />
            <Text style={s.loadingText}>جاري تحميل آخر الأخبار...</Text>
          </View>
        ) : newsError ? (
          <View style={s.loading}>
            <Ionicons name="cloud-offline-outline" size={48} color="rgba(6,182,212,0.3)" />
            <Text style={s.errorTitle}>تعذّر جلب الأخبار</Text>
            <Text style={s.loadingText}>تحقق من اتصالك بالإنترنت ثم أعد المحاولة</Text>
            <Pressable onPress={() => loadNews(1)} style={[s.retryBtn, { borderColor: "rgba(6,182,212,0.3)" }]}>
              <Ionicons name="refresh" size={14} color="#67e8f9" />
              <Text style={[s.retryText, { color: "#67e8f9" }]}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <FlatList
            data={news}
            keyExtractor={item => item.id}
            renderItem={renderNewsItem}
            contentContainerStyle={s.list}
            showsVerticalScrollIndicator={false}
            ListFooterComponent={<NewsFooter />}
            onEndReachedThreshold={0.3}
            onEndReached={() => {
              if (!newsLoadingMore && news.length < newsTotal) {
                loadNews(newsPage + 1);
              }
            }}
          />
        )
      )}

      {/* ── AniList tabs ── */}
      {tab !== "latestnews" && (
        aniLoading ? (
          <View style={s.loading}>
            <ActivityIndicator size="large" color="#8B5CF6" />
            <Text style={s.loadingText}>جاري التحميل...</Text>
          </View>
        ) : aniError ? (
          <AniListError />
        ) : (
          <FlatList
            data={tab === "airing" ? airing : tab === "upcoming" ? upcoming : trending}
            keyExtractor={(_, i) => String(i)}
            renderItem={
              tab === "airing" ? renderAiring :
              tab === "upcoming" ? renderUpcoming :
              renderTrending
            }
            contentContainerStyle={s.list}
            showsVerticalScrollIndicator={false}
          />
        )
      )}

      {/* ── Comments Sheet ── */}
      {activeArticle && (
        <CommentsSheet
          visible={commentsVisible}
          onClose={() => {
            setCommentsVisible(false);
            // تحديث عدد تعليقات هذا المقال بعد الإغلاق
            setTimeout(() => {
              if (activeArticle) fetchCommentCountsBatch([activeArticle]);
            }, 500);
          }}
          tmdbId={`news-${activeArticle.id}`}
          title={activeArticle.title}
        />
      )}
    </View>
  );
}

/* ═══════════════════════════════════════════════════════
   Styles
═══════════════════════════════════════════════════════ */
const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#09090B" },

  header: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingVertical: 14,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerIcon: {
    width: 40, height: 40, borderRadius: 12,
    backgroundColor: "rgba(139,92,246,0.1)",
    borderWidth: 1, borderColor: "rgba(139,92,246,0.15)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub:   { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 1 },

  tabScrollWrap: { paddingVertical: 10 },
  tabRow:  { flexDirection: "row", gap: 7, paddingHorizontal: 12 },
  tabBtn: {
    flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center",
    gap: 4, paddingVertical: 8, borderRadius: 12,
    backgroundColor: "#18181B",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
  },
  tabText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  loading:     { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", textAlign: "center", paddingHorizontal: 24 },
  errorTitle:  { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)", textAlign: "center" },
  retryBtn:    { flexDirection: "row", alignItems: "center", gap: 7, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 18, paddingVertical: 10, marginTop: 4 },
  retryText:   { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  list:        { paddingHorizontal: 14, paddingBottom: 110, gap: 10 },

  /* ── News card ── */
  newsCard: {
    flexDirection: "row", gap: 12,
    padding: 12, borderRadius: 16,
    backgroundColor: "#111116",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
  },
  newsThumb: {
    width: 90, height: 68, borderRadius: 10,
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    flexShrink: 0,
  },
  newsThumbPlaceholder: {
    backgroundColor: "rgba(6,182,212,0.06)",
    alignItems: "center", justifyContent: "center",
  },
  newsBody: { flex: 1, justifyContent: "space-between" },
  newsMetaRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 4 },
  newsCategoryBadge: {
    backgroundColor: "rgba(6,182,212,0.12)",
    borderRadius: 20, borderWidth: 1, borderColor: "rgba(6,182,212,0.22)",
    paddingHorizontal: 7, paddingVertical: 2,
  },
  newsCategoryText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "#67e8f9" },
  newsTime: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.25)" },
  newsTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.9)", lineHeight: 18 },
  newsDesc:  { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", lineHeight: 15, marginTop: 3 },
  newsActions: { flexDirection: "row", alignItems: "center", gap: 14, marginTop: 6 },
  newsActionBtn: { flexDirection: "row", alignItems: "center", gap: 4 },
  newsActionText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(139,92,246,0.75)" },

  /* ── Anime cards (shared) ── */
  card: {
    flexDirection: "row", alignItems: "center", gap: 12,
    padding: 12, borderRadius: 16,
    backgroundColor: "#111116",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
  },
  cover:       { width: 52, height: 74, borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  cardInfo:    { flex: 1 },
  tagRow:      { flexDirection: "row", gap: 5, marginBottom: 5 },
  tag: {
    flexDirection: "row", alignItems: "center", gap: 3,
    paddingHorizontal: 7, paddingVertical: 2.5,
    borderRadius: 20, borderWidth: 1,
  },
  tagText:     { fontSize: 8, fontFamily: "Cairo_700Bold" },
  cardTitle:   { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.9)", lineHeight: 20 },
  cardSubtitle:{ fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)", marginTop: 2 },
  metaRow:     { flexDirection: "row", alignItems: "center", gap: 4, marginTop: 6, flexWrap: "wrap" },
  metaText:    { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.35)" },
  metaSep:     { fontSize: 9, color: "rgba(255,255,255,0.15)" },

  /* ── Trending card ── */
  trendCard:   { borderRadius: 16, backgroundColor: "#111116", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", overflow: "hidden" },
  bannerWrap:  { position: "relative", height: 90 },
  banner:      { width: "100%", height: "100%" },
  bannerGrad:  { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(17,17,22,0.55)" },
  trendBadge:  { position: "absolute", top: 8, right: 10, borderWidth: 0, borderRadius: 20 },
  trendBody:   { flexDirection: "row", padding: 12, gap: 10 },
  trendDesc:   { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 4, lineHeight: 15 },
});

import { Router, type Request, type Response } from "express";

const router = Router();

const TMDB_KEY = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const TMDB_IMG_POSTER = "https://image.tmdb.org/t/p/w500";
const TMDB_IMG_BACKDROP = "https://image.tmdb.org/t/p/w1280";
const TMDB_IMG_PROFILE = "https://image.tmdb.org/t/p/w185";
const TMDB_IMG_STILL = "https://image.tmdb.org/t/p/w500";

const GENRE_AR_MAP: Record<number, string> = {
  28: "أكشن",
  12: "مغامرة",
  16: "أنميشن",
  35: "كوميديا",
  80: "جريمة",
  99: "وثائقي",
  18: "دراما",
  10751: "عائلي",
  14: "فانتازيا",
  36: "تاريخي",
  27: "رعب",
  10402: "موسيقي",
  9648: "غموض",
  10749: "رومانسي",
  878: "خيال علمي",
  10759: "أكشن ومغامرة",
  10762: "أطفال",
  10765: "خيال علمي وفانتازيا",
  10768: "حرب وسياسة",
  53: "إثارة",
  10752: "حرب",
  37: "ويسترن",
};

const GENRE_ID_BY_AR: Record<string, number> = Object.fromEntries(
  Object.entries(GENRE_AR_MAP).map(([id, name]) => [name, Number(id)]),
);

type CacheEntry = { data: any; ts: number };
const _cache = new Map<string, CacheEntry>();

function hasCJK(text: string): boolean {
  return /[\u3040-\u30ff\u4e00-\u9fff\u3400-\u4dbf\uff00-\uffef\uac00-\ud7a3]/.test(text);
}

function isJapaneseAnime(item: any): boolean {
  const genres: number[] = Array.isArray(item?.genre_ids)
    ? item.genre_ids
    : Array.isArray(item?.genres)
      ? item.genres.map((g: any) => g.id)
      : [];
  const origLang = String(item?.original_language || "").toLowerCase();
  const originCountry: string[] = Array.isArray(item?.origin_country) ? item.origin_country : [];
  if (genres.includes(16) && (origLang === "ja" || originCountry.includes("JP"))) {
    return true;
  }
  return false;
}

async function tmdbFetch(path: string, ttlMs = 10 * 60_000, lang = "ar"): Promise<any> {
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=${lang}`;
  const hit = _cache.get(url);
  if (hit && Date.now() - hit.ts < ttlMs) return hit.data;

  const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
  if (!r.ok) throw new Error(`TMDB ${r.status} for ${path}`);
  const data = await r.json();
  _cache.set(url, { data, ts: Date.now() });
  return data;
}

function mapGenres(raw: any): string[] {
  if (Array.isArray(raw?.genres) && raw.genres.length > 0) {
    return raw.genres
      .map((g: any) => GENRE_AR_MAP[g.id] || g.name)
      .filter(Boolean)
      .slice(0, 4);
  }
  if (Array.isArray(raw?.genre_ids)) {
    return raw.genre_ids
      .map((id: number) => GENRE_AR_MAP[id])
      .filter(Boolean)
      .slice(0, 4);
  }
  return ["دراما"];
}

function normalizeFilmSummary(raw: any, forceTmdbType?: "movie" | "tv"): any | null {
  if (!raw || !raw.id) return null;
  if (raw.media_type === "person" || (!raw.title && !raw.name)) return null;
  if (isJapaneseAnime(raw)) return null;

  const tmdbType: "movie" | "tv" =
    forceTmdbType || (raw.media_type === "tv" || (!raw.title && !!raw.name) ? "tv" : "movie");

  const rawTitleAr = String(raw.title || raw.name || "").trim();
  const rawTitleEn = String(raw.original_title || raw.original_name || rawTitleAr).trim();
  if (!rawTitleAr || (hasCJK(rawTitleAr) && hasCJK(rawTitleEn))) return null;
  if (!raw.poster_path && !raw.backdrop_path) return null;

  const genreIds: number[] = Array.isArray(raw.genre_ids)
    ? raw.genre_ids
    : Array.isArray(raw.genres)
      ? raw.genres.map((g: any) => g.id)
      : [];
  const isAnim = genreIds.includes(16);
  const mediaType = isAnim ? "animation" : tmdbType === "tv" ? "series" : "movie";
  const origLang = String(raw.original_language || "en").toLowerCase();
  const dateStr = String(raw.release_date || raw.first_air_date || "");
  const year = Number(dateStr.slice(0, 4)) || new Date().getFullYear();
  const voteAvg = Number(raw.vote_average || 0);
  const imdbRating = Number(Math.max(5.2, Math.min(9.9, voteAvg)).toFixed(1));

  let categoryLabel = "أفلام أجنبية";
  if (mediaType === "animation") {
    categoryLabel = tmdbType === "tv" ? "مسلسلات أنميشن" : "أفلام أنميشن";
  } else if (mediaType === "series") {
    categoryLabel = ["ko", "zh", "tr", "hi", "th"].includes(origLang)
      ? "مسلسلات آسيوية وعالمية"
      : "مسلسلات عالمية";
  } else if (["ko", "zh", "hi", "tr", "th"].includes(origLang)) {
    categoryLabel = "أفلام آسيوية";
  }

  return {
    id: Number(raw.id),
    tmdbType,
    mediaType,
    titleAr: hasCJK(rawTitleAr) ? rawTitleEn : rawTitleAr,
    titleEn: rawTitleEn,
    overviewAr: String(raw.overview || "").trim(),
    posterUrl: raw.poster_path ? `${TMDB_IMG_POSTER}${raw.poster_path}` : null,
    backdropUrl: raw.backdrop_path
      ? `${TMDB_IMG_BACKDROP}${raw.backdrop_path}`
      : raw.poster_path
        ? `${TMDB_IMG_POSTER}${raw.poster_path}`
        : null,
    year,
    imdbRating,
    voteCount: Number(raw.vote_count || 0),
    popularity: Number(raw.popularity || 0),
    qualityBadge: imdbRating >= 7.8 ? "4K UHD" : "1080p FHD",
    audioLabel: isAnim ? "مدبلج ومترجم" : "مترجم",
    categoryLabel,
    genres: mapGenres(raw),
    originalLanguage: origLang,
    releaseDate: dateStr,
  };
}

function dedupeAndFilter(list: any[], forceType?: "movie" | "tv"): any[] {
  const seen = new Set<string>();
  const out: any[] = [];
  for (const raw of list) {
    const item = normalizeFilmSummary(raw, forceType);
    if (!item) continue;
    const k = `${item.tmdbType}:${item.id}`;
    if (seen.has(k)) continue;
    seen.add(k);
    out.push(item);
  }
  return out;
}

// ── 1. Clean NOVA FILM remote config ─────────────────────────────────────────
router.get("/config", (_req: Request, res: Response) => {
  res.json({
    app: "nova-film",
    version: "1.0.9",
    latestVersion: "1.0.9",
    latestVersionCode: 9,
    forceUpdate: false,
    maintenanceMode: false,
    announcements: [],
    features: {
      comments: false,
      watchHistory: true,
      subscriptions: true,
      downloads: true,
      animationSection: true,
      subtitles: true,
    },
    sources: {
      starcima: true,
      vidfast: true,
      vidfast_vc: true,
      dahmermovies: true,
      nebula: true,
      vidbolt_flux3: true,
      nflixmovies_flux2: true,
      dulo_anim: true,
      vaplayer_anim: true,
    },
    limits: { downloadLimit: 6, watchAccessMinutes: 120 },
  });
});

// ── 2. Home batched real TMDB feeds ──────────────────────────────────────────
router.get("/home", async (_req: Request, res: Response) => {
  try {
    const [
      trendingRes,
      latestMoviesRes,
      asianMoviesRes,
      seriesRes,
      topRatedRes,
      animMoviesRes,
      animSeriesRes,
    ] = await Promise.all([
      tmdbFetch("/trending/all/week?page=1", 10 * 60_000),
      tmdbFetch("/discover/movie?without_genres=16&sort_by=popularity.desc&vote_count.gte=120&page=1", 10 * 60_000),
      tmdbFetch("/discover/movie?with_original_language=ko|zh|hi|tr&without_genres=16&sort_by=popularity.desc&vote_count.gte=30&page=1", 15 * 60_000),
      tmdbFetch("/discover/tv?without_genres=16&without_keywords=210024&sort_by=popularity.desc&vote_count.gte=80&page=1", 10 * 60_000),
      tmdbFetch("/discover/movie?without_genres=16&sort_by=vote_average.desc&vote_count.gte=2500&page=1", 30 * 60_000),
      tmdbFetch("/discover/movie?with_genres=16&without_keywords=210024&sort_by=popularity.desc&vote_count.gte=80&page=1", 15 * 60_000),
      tmdbFetch("/discover/tv?with_genres=16&without_keywords=210024&sort_by=popularity.desc&vote_count.gte=40&page=1", 15 * 60_000),
    ]);

    const trending = dedupeAndFilter(trendingRes?.results || []);
    const hero = trending.filter((x) => x.backdropUrl).slice(0, 6);
    const trendingMovies = trending.filter((x) => x.tmdbType === "movie").slice(0, 14);
    const latestMovies = dedupeAndFilter(latestMoviesRes?.results || [], "movie").slice(0, 14);
    const asianMovies = dedupeAndFilter(asianMoviesRes?.results || [], "movie").slice(0, 14);
    const popularSeries = dedupeAndFilter(seriesRes?.results || [], "tv").slice(0, 14);
    const topRated = dedupeAndFilter(topRatedRes?.results || [], "movie").slice(0, 14);
    const animations = [
      ...dedupeAndFilter(animMoviesRes?.results || [], "movie").slice(0, 8),
      ...dedupeAndFilter(animSeriesRes?.results || [], "tv").slice(0, 6),
    ];

    res.json({
      hero,
      trendingMovies,
      latestMovies,
      asianMovies,
      popularSeries,
      topRated,
      animations,
    });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

// ── 3. Browse / Filter / Paginated Discovery & Search ────────────────────────
router.get("/browse", async (req: Request, res: Response) => {
  try {
    const category = String(req.query.category || "all");
    const genreRaw = String(req.query.genre || "").trim();
    const sortRaw = String(req.query.sort || "popular");
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    const q = String(req.query.q || "").trim();

    if (q) {
      const searchType =
        category === "movie" ? "movie" : category === "series" ? "tv" : "multi";
      const data = await tmdbFetch(
        `/search/${searchType}?query=${encodeURIComponent(q)}&page=${page}&include_adult=false`,
        5 * 60_000,
      );
      let results = dedupeAndFilter(
        data?.results || [],
        searchType === "multi" ? undefined : searchType,
      );
      if (category === "animation") {
        results = results.filter((r) => r.mediaType === "animation");
      }
      res.json({
        results,
        page,
        totalPages: Math.min(20, Number(data?.total_pages || 1)),
        totalResults: Number(data?.total_results || results.length),
      });
      return;
    }

    const genreId =
      genreRaw && genreRaw !== "الكل" && genreRaw !== "all"
        ? Number.isFinite(Number(genreRaw))
          ? Number(genreRaw)
          : GENRE_ID_BY_AR[genreRaw] || 0
        : 0;

    const movieSort =
      sortRaw === "rating"
        ? "vote_average.desc"
        : sortRaw === "year" || sortRaw === "latest"
          ? "primary_release_date.desc"
          : "popularity.desc";
    const tvSort =
      sortRaw === "rating"
        ? "vote_average.desc"
        : sortRaw === "year" || sortRaw === "latest"
          ? "first_air_date.desc"
          : "popularity.desc";

    const minVotes = sortRaw === "rating" ? 400 : 25;

    if (category === "movie") {
      const gPart = genreId ? `&with_genres=${genreId}&without_genres=16` : "&without_genres=16";
      const data = await tmdbFetch(
        `/discover/movie?sort_by=${movieSort}&page=${page}&vote_count.gte=${minVotes}&include_adult=false${gPart}`,
      );
      res.json({
        results: dedupeAndFilter(data?.results || [], "movie"),
        page,
        totalPages: Math.min(30, Number(data?.total_pages || 1)),
        totalResults: Number(data?.total_results || 0),
      });
      return;
    }

    if (category === "series") {
      const gPart = genreId ? `&with_genres=${genreId}&without_genres=16` : "&without_genres=16";
      const data = await tmdbFetch(
        `/discover/tv?sort_by=${tvSort}&page=${page}&without_keywords=210024&vote_count.gte=${minVotes}&include_adult=false${gPart}`,
      );
      res.json({
        results: dedupeAndFilter(data?.results || [], "tv"),
        page,
        totalPages: Math.min(30, Number(data?.total_pages || 1)),
        totalResults: Number(data?.total_results || 0),
      });
      return;
    }

    if (category === "animation") {
      const gParam = genreId && genreId !== 16 ? `16,${genreId}` : "16";
      const [mData, tData] = await Promise.all([
        tmdbFetch(
          `/discover/movie?with_genres=${gParam}&without_keywords=210024&sort_by=${movieSort}&page=${page}&vote_count.gte=20&include_adult=false`,
        ),
        tmdbFetch(
          `/discover/tv?with_genres=${gParam}&without_keywords=210024&sort_by=${tvSort}&page=${page}&vote_count.gte=15&include_adult=false`,
        ),
      ]);
      const combined = [
        ...dedupeAndFilter(mData?.results || [], "movie"),
        ...dedupeAndFilter(tData?.results || [], "tv"),
      ].sort((a, b) => (sortRaw === "rating" ? b.imdbRating - a.imdbRating : b.popularity - a.popularity));
      res.json({
        results: combined,
        page,
        totalPages: Math.min(20, Math.max(Number(mData?.total_pages || 1), Number(tData?.total_pages || 1))),
        totalResults: combined.length,
      });
      return;
    }

    // "all": mix movies + series cleanly
    const gPart = genreId ? `&with_genres=${genreId}` : "";
    const [mData, tData] = await Promise.all([
      tmdbFetch(
        `/discover/movie?sort_by=${movieSort}&page=${page}&without_keywords=210024&vote_count.gte=${minVotes}&include_adult=false${gPart}`,
      ),
      tmdbFetch(
        `/discover/tv?sort_by=${tvSort}&page=${page}&without_keywords=210024&vote_count.gte=${minVotes}&include_adult=false${gPart}`,
      ),
    ]);
    const movies = dedupeAndFilter(mData?.results || [], "movie");
    const series = dedupeAndFilter(tData?.results || [], "tv");
    const mixed: any[] = [];
    const maxLen = Math.max(movies.length, series.length);
    for (let i = 0; i < maxLen; i++) {
      if (movies[i]) mixed.push(movies[i]);
      if (series[i]) mixed.push(series[i]);
    }
    res.json({
      results: mixed,
      page,
      totalPages: Math.min(30, Math.max(Number(mData?.total_pages || 1), Number(tData?.total_pages || 1))),
      totalResults: mixed.length,
    });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

// ── 4. Search ────────────────────────────────────────────────────────────────
router.get("/search", async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "").trim();
    const type = String(req.query.type || "multi");
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    if (!q) {
      res.json({ results: [], page: 1, totalPages: 1 });
      return;
    }
    const validType = type === "movie" || type === "tv" ? type : "multi";
    const data = await tmdbFetch(
      `/search/${validType}?query=${encodeURIComponent(q)}&page=${page}&include_adult=false`,
      5 * 60_000,
    );
    const results = dedupeAndFilter(
      data?.results || [],
      validType === "multi" ? undefined : validType,
    );
    res.json({
      results,
      page,
      totalPages: Math.min(20, Number(data?.total_pages || 1)),
    });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

// ── 5. Full Detail (credits, videos, seasons, episodes, recommendations) ─────
router.get("/detail", async (req: Request, res: Response) => {
  try {
    const type: "movie" | "tv" = String(req.query.type || "movie") === "tv" ? "tv" : "movie";
    const id = String(req.query.id || "").trim();
    if (!id) {
      res.status(400).json({ error: "id is required" });
      return;
    }

    const append =
      type === "tv"
        ? "aggregate_credits,credits,recommendations,videos,content_ratings,external_ids"
        : "credits,recommendations,videos,release_dates,external_ids";

    const [arData, enData] = await Promise.all([
      tmdbFetch(`/${type}/${id}?append_to_response=${append}`, 20 * 60_000, "ar"),
      tmdbFetch(`/${type}/${id}?append_to_response=videos`, 20 * 60_000, "en-US").catch(() => null),
    ]);

    const summary = normalizeFilmSummary(arData, type);
    const titleAr = summary?.titleAr || String(arData?.title || arData?.name || enData?.title || enData?.name || "عمل سينمائي");
    const titleEn = String(enData?.title || enData?.name || arData?.original_title || arData?.original_name || titleAr);
    const overviewAr = String(arData?.overview || "").trim() || String(enData?.overview || "").trim() || "لا يوجد ملخص متوفر حالياً.";

    // Trailer key (prefer YouTube Trailer -> Teaser -> English trailer)
    const arVideos: any[] = arData?.videos?.results || [];
    const enVideos: any[] = enData?.videos?.results || [];
    const allVideos = [...arVideos, ...enVideos];
    const trailer =
      allVideos.find((v) => v.site === "YouTube" && v.type === "Trailer") ||
      allVideos.find((v) => v.site === "YouTube" && v.type === "Teaser") ||
      allVideos.find((v) => v.site === "YouTube");

    // Credits (Director & Cast)
    const crew: any[] = arData?.credits?.crew || [];
    const directorObj =
      crew.find((c) => c.job === "Director") ||
      (Array.isArray(arData?.created_by) ? arData.created_by[0] : null);
    const director = directorObj?.name || (type === "tv" ? "إخراج عالمي" : "سينما عالمية");

    const rawCast: any[] =
      arData?.credits?.cast?.length > 0
        ? arData.credits.cast
        : arData?.aggregate_credits?.cast || [];
    const cast = rawCast.slice(0, 14).map((c: any) => ({
      id: Number(c.id),
      name: String(c.name || c.original_name || ""),
      character: String(
        c.character || (Array.isArray(c.roles) ? c.roles[0]?.character : "") || "ممثل",
      ),
      profileUrl: c.profile_path ? `${TMDB_IMG_PROFILE}${c.profile_path}` : null,
    }));

    // Production company
    const prodCompanies: any[] = arData?.production_companies || [];
    const productionCompany = prodCompanies[0]?.name || "NOVA FILM";

    // Age rating
    let ageRating = "PG-13";
    if (type === "tv") {
      const usR = (arData?.content_ratings?.results || []).find((r: any) => r.iso_3166_1 === "US");
      if (usR?.rating) ageRating = usR.rating;
    } else {
      const usR = (arData?.release_dates?.results || []).find((r: any) => r.iso_3166_1 === "US");
      const cert = usR?.release_dates?.find((d: any) => d.certification)?.certification;
      if (cert) ageRating = cert;
    }

    // Status
    const statusRaw = String(arData?.status || "");
    const statusLabel =
      type === "tv"
        ? statusRaw === "Returning Series"
          ? "مستمر"
          : statusRaw === "Ended"
            ? "مكتمل"
            : "يُعرض حالياً"
        : "فيلم كامل";

    // Seasons & Episodes
    const rawSeasons: any[] = Array.isArray(arData?.seasons)
      ? arData.seasons.filter((s: any) => Number(s.season_number) >= 1)
      : [];
    const seasons = rawSeasons.map((s: any) => ({
      seasonNumber: Number(s.season_number),
      name: String(s.name || `الموسم ${s.season_number}`),
      episodeCount: Number(s.episode_count || 0),
      posterUrl: s.poster_path ? `${TMDB_IMG_POSTER}${s.poster_path}` : summary?.posterUrl || null,
      airDate: String(s.air_date || ""),
    }));

    let episodes: any[] = [];
    if (type === "movie") {
      const runtimeMin = Number(arData?.runtime || 115);
      episodes = [
        {
          id: `${id}-m-1`,
          seasonNumber: 1,
          episodeNumber: 1,
          titleAr,
          titleEn,
          overview: overviewAr,
          runtimeMin,
          airDate: String(arData?.release_date || ""),
          stillUrl: summary?.backdropUrl || summary?.posterUrl || null,
        },
      ];
    } else {
      const firstSeasonNum = seasons[0]?.seasonNumber || 1;
      try {
        const sData = await tmdbFetch(`/tv/${id}/season/${firstSeasonNum}`, 15 * 60_000, "ar");
        episodes = normalizeSeasonEpisodes(sData, id, firstSeasonNum, summary?.backdropUrl);
      } catch {
        episodes = [];
      }
    }

    const runtimeMin =
      type === "movie"
        ? Number(arData?.runtime || 115)
        : Number(arData?.episode_run_time?.[0] || 45);
    const durationOrSeasons =
      type === "movie"
        ? `${runtimeMin} دقيقة`
        : `${Math.max(1, seasons.length || Number(arData?.number_of_seasons || 1))} مواسم · ${Number(arData?.number_of_episodes || episodes.length)} حلقة`;

    const recommendations = dedupeAndFilter(arData?.recommendations?.results || []).slice(0, 12);

    res.json({
      id: Number(id),
      tmdbType: type,
      mediaType: summary?.mediaType || (type === "tv" ? "series" : "movie"),
      titleAr,
      titleEn,
      overviewAr,
      posterUrl: summary?.posterUrl || (arData?.poster_path ? `${TMDB_IMG_POSTER}${arData.poster_path}` : null),
      backdropUrl: summary?.backdropUrl || (arData?.backdrop_path ? `${TMDB_IMG_BACKDROP}${arData.backdrop_path}` : null),
      year: summary?.year || Number(String(arData?.release_date || arData?.first_air_date || "").slice(0, 4)) || 2025,
      imdbRating: summary?.imdbRating || Number(Number(arData?.vote_average || 7.5).toFixed(1)),
      voteCount: Number(arData?.vote_count || 0),
      popularity: Number(arData?.popularity || 0),
      qualityBadge: summary?.qualityBadge || "1080p FHD",
      audioLabel: summary?.audioLabel || "مترجم",
      categoryLabel: summary?.categoryLabel || (type === "tv" ? "مسلسلات عالمية" : "أفلام أجنبية"),
      genres: mapGenres(arData),
      originalLanguage: String(arData?.original_language || "en"),
      runtimeMin,
      durationOrSeasons,
      statusLabel,
      ageRating,
      director,
      productionCompany,
      imdbId: arData?.external_ids?.imdb_id || null,
      trailerYoutubeKey: trailer?.key || null,
      cast,
      seasons,
      episodes,
      recommendations,
    });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

function normalizeSeasonEpisodes(sData: any, tmdbId: string, seasonNumber: number, fallbackBackdrop?: string | null) {
  const rawEps: any[] = Array.isArray(sData?.episodes) ? sData.episodes : [];
  return rawEps.map((ep: any) => ({
    id: `${tmdbId}-s${seasonNumber}-e${ep.episode_number}`,
    seasonNumber,
    episodeNumber: Number(ep.episode_number),
    titleAr: String(ep.name || `الحلقة ${ep.episode_number}`),
    titleEn: `Episode ${ep.episode_number}`,
    overview: String(ep.overview || "").trim(),
    runtimeMin: Number(ep.runtime || 45),
    airDate: String(ep.air_date || ""),
    stillUrl: ep.still_path ? `${TMDB_IMG_STILL}${ep.still_path}` : fallbackBackdrop || null,
  }));
}

// ── 6. Season episodes ───────────────────────────────────────────────────────
router.get("/season", async (req: Request, res: Response) => {
  try {
    const id = String(req.query.id || "").trim();
    const season = Math.max(1, Number.parseInt(String(req.query.season || "1"), 10) || 1);
    if (!id) {
      res.status(400).json({ error: "id is required" });
      return;
    }
    const data = await tmdbFetch(`/tv/${id}/season/${season}`, 15 * 60_000, "ar");
    res.json({
      seasonNumber: season,
      name: String(data?.name || `الموسم ${season}`),
      episodes: normalizeSeasonEpisodes(data, id, season, null),
    });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

// ── 7. Weekly Broadcast & Upcoming Cinema Schedule ───────────────────────────
router.get("/schedule", async (_req: Request, res: Response) => {
  try {
    const [tvAir, upMovies] = await Promise.all([
      tmdbFetch("/tv/on_the_air?page=1", 20 * 60_000),
      tmdbFetch("/movie/upcoming?page=1", 20 * 60_000),
    ]);
    const tvItems = dedupeAndFilter(tvAir?.results || [], "tv").slice(0, 14).map((item, idx) => {
      const parsed = item.releaseDate ? new Date(item.releaseDate) : null;
      const dayIdx = parsed && !Number.isNaN(parsed.getTime()) ? parsed.getDay() : idx % 7;
      return { ...item, releaseDayIndex: dayIdx, scheduleNote: "حلقة أسبوعية جديدة" };
    });
    const movieItems = dedupeAndFilter(upMovies?.results || [], "movie").slice(0, 10).map((item, idx) => {
      const parsed = item.releaseDate ? new Date(item.releaseDate) : null;
      const dayIdx = parsed && !Number.isNaN(parsed.getTime()) ? parsed.getDay() : (idx + 3) % 7;
      return { ...item, releaseDayIndex: dayIdx, scheduleNote: item.releaseDate || "قريباً في المنصة" };
    });
    res.json({ items: [...tvItems, ...movieItems] });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

// ── 8. Video Streaming Sources & Subtitles (delegating cleanly on localhost) ──
function forwardMobileHeaders(req: Request): Record<string, string> {
  const out: Record<string, string> = {};
  for (const h of [
    "x-app-token",
    "x-nova-client",
    "x-nova-version",
    "x-nova-package",
    "user-agent",
  ] as const) {
    const v = req.headers[h];
    if (typeof v === "string" && v) out[h] = v;
  }
  return out;
}

router.get("/sources-stream", async (req: Request, res: Response) => {
  const port = Number(process.env.PORT || 5000);
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  const ac = new AbortController();
  req.on("close", () => ac.abort());

  try {
    const upstream = await fetch(`http://127.0.0.1:${port}/api/animation/sources-stream?${qs}`, {
      headers: forwardMobileHeaders(req),
      signal: ac.signal,
    });
    if (!upstream.ok || !upstream.body) {
      res.status(upstream.status || 502).json({ error: `sources stream failed (${upstream.status})` });
      return;
    }

    res.setHeader("Content-Type", "text/event-stream; charset=utf-8");
    res.setHeader("Cache-Control", "no-cache");
    res.setHeader("Connection", "keep-alive");
    res.setHeader("X-Accel-Buffering", "no");
    res.flushHeaders();

    const reader = upstream.body.getReader();
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      if (value && !res.writableEnded) {
        res.write(Buffer.from(value));
      }
    }
    if (!res.writableEnded) res.end();
  } catch (err: any) {
    if (!res.headersSent) res.status(502).json({ error: String(err?.message || err) });
    else if (!res.writableEnded) res.end();
  }
});

router.post("/source-resolve", async (req: Request, res: Response) => {
  const port = Number(process.env.PORT || 5000);
  try {
    const upstream = await fetch(`http://127.0.0.1:${port}/api/animation/source-resolve`, {
      method: "POST",
      headers: {
        ...forwardMobileHeaders(req),
        "Content-Type": "application/json",
      },
      body: JSON.stringify(req.body || {}),
      signal: AbortSignal.timeout(28_000),
    });
    const text = await upstream.text();
    res.status(upstream.status).setHeader("Content-Type", "application/json").send(text);
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

router.get("/subtitle-tracks", async (req: Request, res: Response) => {
  const port = Number(process.env.PORT || 5000);
  const qs = new URLSearchParams(req.query as Record<string, string>).toString();
  try {
    const upstream = await fetch(`http://127.0.0.1:${port}/api/animation/subtitle-tracks?${qs}`, {
      headers: forwardMobileHeaders(req),
      signal: AbortSignal.timeout(14_000),
    });
    const text = await upstream.text();
    res.status(upstream.status).setHeader("Content-Type", "application/json").send(text);
  } catch (err: any) {
    res.status(502).json({ tracks: [], error: String(err?.message || err) });
  }
});

export default router;

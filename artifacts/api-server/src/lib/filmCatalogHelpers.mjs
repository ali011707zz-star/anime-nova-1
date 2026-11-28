export const TMDB_IMG_POSTER = "https://image.tmdb.org/t/p/w342";
export const TMDB_IMG_BACKDROP = "https://image.tmdb.org/t/p/w780";

const ARABIC_GENRE_TO_TMDB_MOVIE = {
  "أكشن": 28,
  "مغامرة": 12,
  "أنميشن": 16,
  "كوميديا": 35,
  "جريمة": 80,
  "وثائقي": 99,
  "دراما": 18,
  "عائلي": 10751,
  "فانتازيا": 14,
  "رعب": 27,
  "غموض": 9648,
  "خيال علمي": 878,
  "إثارة": 53,
};

const ARABIC_GENRE_TO_TMDB_TV = {
  "أكشن": 10759,
  "مغامرة": 10759,
  "أنميشن": 16,
  "كوميديا": 35,
  "جريمة": 80,
  "وثائقي": 99,
  "دراما": 18,
  "عائلي": 10751,
  "فانتازيا": 10765,
  "رعب": 9648,
  "غموض": 9648,
  "خيال علمي": 10765,
  "إثارة": 80,
};

const TMDB_GENRE_ID_TO_AR = {
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
  10402: "موسيقى",
  9648: "غموض",
  10749: "رومانسي",
  878: "خيال علمي",
  53: "إثارة",
  10752: "حرب",
  37: "غربي",
  10759: "أكشن ومغامرة",
  10762: "عائلي",
  10765: "خيال علمي وفانتازيا",
};

export function encodeSyntheticTmdbId(tmdbType, realTmdbId) {
  const id = Number(realTmdbId || 0);
  if (!Number.isFinite(id) || id <= 0) return 0;
  return (tmdbType === "tv" ? 1_800_000_000 : 1_500_000_000) + id;
}

export function decodeSyntheticTmdbId(rawId) {
  if (!Number.isFinite(rawId) || rawId <= 0) return null;
  if (rawId >= 1_500_000_000 && rawId < 1_690_000_000) {
    return { realTmdbId: rawId - 1_500_000_000, tmdbType: "movie" };
  }
  if (rawId >= 1_800_000_000 && rawId < 1_900_000_000) {
    return { realTmdbId: rawId - 1_800_000_000, tmdbType: "tv" };
  }
  return null;
}

export function isOfficialAnimationCategory(category) {
  const c = String(category || "").trim().toLowerCase();
  return c === "animation" || c === "animation_movies" || c === "animation_series";
}

export function normalizeArabicSearchVariants(rawQuery) {
  const original = String(rawQuery || "").trim().replace(/\s+/g, " ");
  if (!original) return [];
  const out = [];
  const add = (val) => {
    const cleaned = String(val || "").trim().replace(/\s+/g, " ");
    if (cleaned.length >= 2 && !out.includes(cleaned)) out.push(cleaned);
  };
  add(original);

  // Strip common Arabic prefixes like "مسلسل " / "فيلم " / "انمي "
  const noTypePrefix = original
    .replace(/^(?:مسلسل|فيلم|افلام|أفلام|انمي|أنمي|كرتون)\s+/i, "")
    .trim();
  add(noTypePrefix);

  // Strip leading "ال" from Arabic words (e.g., "البيكي بلايندرز" -> "بيكي بلايندرز")
  if (/[\u0600-\u06FF]/.test(noTypePrefix)) {
    const strippedAl = noTypePrefix
      .split(" ")
      .map((w) => (w.length >= 4 && /^(?:ال|أل)/.test(w) ? w.slice(2) : w))
      .join(" ")
      .trim();
    add(strippedAl);

    const normalizedChars = strippedAl
      .replace(/[\u064B-\u065F\u0670]/g, "")
      .replace(/[أإآ]/g, "ا")
      .replace(/ة\b/g, "ه")
      .replace(/ى/g, "ي")
      .trim();
    add(normalizedChars);

    // Fix common Arabic phonetic typo "بيلاندرز" -> "بلايندرز" or extra ی/ي
    const fixedLetters = strippedAl.replace(/بيلاندرز/g, "بلايندرز");
    add(fixedLetters);
  }

  return out.slice(0, 4);
}

/**
 * Returns an ISO date string (YYYY-MM-DD) N days before today.
 * Used for theatrical-to-digital release cutoff so unreleased / cinema-only movies
 * (with no working digital servers yet) never pollute Foreign, Animation, or Asian browse feeds.
 */
export function getDigitalReleaseCutoffIso(daysAgo = 45, nowDate = new Date()) {
  const d = new Date(nowDate.getTime() - Math.max(0, daysAgo) * 86_400_000);
  return d.toISOString().slice(0, 10);
}

/**
 * Returns true if a title contains CJK / Hangul / Hiragana / Katakana characters
 * with no Arabic letters (e.g., untranslated Korean title "시카고 타자기").
 */
export function hasUntranslatedCjkTitle(title) {
  const s = String(title || "").trim();
  if (!s) return false;
  if (/[\u0600-\u06FF]/.test(s)) return false;
  return /[\uAC00-\uD7AF\u3040-\u30FF\u4E00-\u9FFF]/.test(s);
}

export function buildTmdbDiscoverSpec(category, opts = {}) {
  const cat = String(category || "all").trim().toLowerCase();
  const genre = String(opts.genre || "").trim();
  const sortRaw = String(opts.sort || "popularity").trim().toLowerCase();
  const year = Number.isFinite(opts.year) && opts.year >= 1950 && opts.year <= 2035 ? Math.floor(opts.year) : null;
  const page = Math.max(1, Math.min(500, Number.parseInt(String(opts.page || "1"), 10) || 1));

  const specs = {
    animation_movies: {
      tmdbType: "movie",
      mediaType: "animation",
      categoryLabel: "أفلام أنميشن",
      audioLabel: "مترجم",
      baseParams: {
        with_genres: "16",
        with_original_language: "en|fr|es|de|it|pt|ru|nl",
        without_keywords: "210024",
        without_genres: "10749",
        certification_country: "US",
        "certification.lte": "PG-13",
        "vote_count.gte": "80",
      },
    },
    animation_series: {
      tmdbType: "tv",
      mediaType: "animation",
      categoryLabel: "مسلسلات أنميشن",
      audioLabel: "مترجم",
      baseParams: {
        with_genres: "16",
        with_original_language: "en|fr|es|de|it|pt|ru|nl",
        without_keywords: "210024",
        without_genres: "10749",
        certification_country: "US",
        "certification.lte": "TV-PG",
        "vote_count.gte": "20",
      },
    },
    animation: {
      tmdbType: "movie",
      mediaType: "animation",
      categoryLabel: "أفلام أنميشن",
      audioLabel: "مترجم",
      baseParams: {
        with_genres: "16",
        with_original_language: "en|fr|es|de|it|pt|ru|nl",
        without_keywords: "210024",
        without_genres: "10749",
        certification_country: "US",
        "certification.lte": "PG-13",
        "vote_count.gte": "80",
      },
    },
    arabic_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام عربية",
      audioLabel: "عربي",
      baseParams: {
        with_original_language: "ar",
      },
    },
    arabic_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات عربية",
      audioLabel: "عربي",
      baseParams: {
        with_original_language: "ar",
      },
    },
    turkish_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام تركية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "tr",
      },
    },
    turkish_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات تركية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "tr",
      },
    },
    indian_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام هندية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "hi|ta|te|ml",
        "vote_count.gte": "5",
      },
    },
    indian_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات هندية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "hi|ta|te",
      },
    },
    dubbed_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات مدبلجة",
      audioLabel: "مدبلج",
      baseParams: {
        with_original_language: "tr|ko|es",
        without_genres: "16",
        "vote_count.gte": "20",
      },
    },
    dubbed: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات مدبلجة",
      audioLabel: "مدبلج",
      baseParams: {
        with_original_language: "tr|ko|es",
        without_genres: "16",
        "vote_count.gte": "20",
      },
    },
    asian_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام آسيوية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "ko|ja|zh|th",
        without_genres: "16",
        "vote_count.gte": "10",
      },
    },
    asian_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات آسيوية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "ko|ja|zh",
        without_genres: "16",
        "vote_count.gte": "10",
      },
    },
    foreign_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "80",
      },
    },
    western_movies: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "80",
      },
    },
    movie: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "أفلام أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "80",
      },
    },
    foreign_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "30",
      },
    },
    western_series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "30",
      },
    },
    series: {
      tmdbType: "tv",
      mediaType: "series",
      categoryLabel: "مسلسلات أجنبية",
      audioLabel: "مترجم",
      baseParams: {
        with_original_language: "en|fr|es|de|it",
        without_genres: "16",
        "vote_count.gte": "30",
      },
    },
    top_rated: {
      tmdbType: "movie",
      mediaType: "movie",
      categoryLabel: "الأعلى تقييماً",
      audioLabel: "مترجم",
      baseParams: {
        without_genres: "16",
        "vote_count.gte": "2000",
      },
    },
  };

  const spec = specs[cat];
  if (!spec) return null;

  const isTv = spec.tmdbType === "tv";
  const qs = new URLSearchParams({
    include_adult: "false",
    page: String(page),
    ...spec.baseParams,
  });

  const today = new Date().toISOString().slice(0, 10);
  const isTheatricalDigitalMovieCat =
    !isTv &&
    ["foreign_movies", "western_movies", "movie", "animation_movies", "animation", "asian_movies", "top_rated"].includes(cat);
  const dateCap = isTheatricalDigitalMovieCat ? getDigitalReleaseCutoffIso(45) : today;
  if (!year || year <= Number(today.slice(0, 4))) {
    qs.set(isTv ? "first_air_date.lte" : "primary_release_date.lte", dateCap);
  }
  if (sortRaw === "rating" || cat === "top_rated") {
    qs.set("sort_by", "vote_average.desc");
    if (!qs.has("vote_count.gte")) qs.set("vote_count.gte", "50");
  } else if (sortRaw === "year" || sortRaw === "latest") {
    qs.set("sort_by", isTv ? "first_air_date.desc" : "primary_release_date.desc");
  } else {
    qs.set("sort_by", "popularity.desc");
  }

  if (year) {
    qs.set(isTv ? "first_air_date_year" : "primary_release_year", String(year));
  }

  if (genre && genre !== "الكل") {
    const gMap = isTv ? ARABIC_GENRE_TO_TMDB_TV : ARABIC_GENRE_TO_TMDB_MOVIE;
    const gId = gMap[genre];
    if (gId) {
      const existing = qs.get("with_genres");
      if (existing) {
        const parts = existing.split(",");
        if (!parts.includes(String(gId))) qs.set("with_genres", `${existing},${gId}`);
      } else {
        qs.set("with_genres", String(gId));
      }
      if (gId === 16) qs.delete("without_genres");
    }
  }

  return {
    path: `/discover/${spec.tmdbType}?${qs.toString()}`,
    tmdbType: spec.tmdbType,
    mediaType: spec.mediaType,
    categoryLabel: spec.categoryLabel,
    audioLabel: spec.audioLabel,
  };
}

export function mapTmdbItemToFilmSummary(raw, spec) {
  if (!raw || !raw.id || !raw.poster_path) return null;
  const tmdbType = spec?.tmdbType || (raw.media_type === "tv" ? "tv" : "movie");
  const realTmdbId = Number(raw.id);
  if (!Number.isFinite(realTmdbId) || realTmdbId <= 0) return null;

  const genreIds = Array.isArray(raw.genre_ids) ? raw.genre_ids.map(Number) : [];
  const rawDateStr = String(raw.release_date || raw.first_air_date || "").slice(0, 10);
  const todayIso = new Date().toISOString().slice(0, 10);
  if (/^\d{4}-\d{2}-\d{2}$/.test(rawDateStr) && rawDateStr > todayIso) {
    return null;
  }
  if (
    tmdbType === "movie" &&
    /^\d{4}-\d{2}-\d{2}$/.test(rawDateStr) &&
    !["ar", "tr", "hi", "ta", "te", "ml"].includes(String(raw.original_language || "").toLowerCase())
  ) {
    const digitalCutoff = getDigitalReleaseCutoffIso(45);
    const votes = Number(raw.vote_count || 0);
    if (rawDateStr > digitalCutoff && votes < 500) {
      return null;
    }
  }
  const origLang = String(raw.original_language || "").toLowerCase();
  const origCountries = Array.isArray(raw.origin_country) ? raw.origin_country.map((c) => String(c).toUpperCase()) : [];
  const origTitleRaw = String(raw.original_title || raw.original_name || "");
  const isJapaneseOrigin = origLang === "ja" || origCountries.includes("JP") || /[\u3040-\u30FF\u4E00-\u9FFF]/.test(origTitleRaw);
  if (spec?.mediaType === "animation") {
    if (isJapaneseOrigin) return null;
    if (genreIds.length > 0 && !genreIds.includes(16)) return null;
  }
  const isAnim = spec?.mediaType === "animation" || (genreIds.includes(16) && !isJapaneseOrigin);
  const mediaType = spec?.mediaType || (isAnim ? "animation" : tmdbType === "tv" ? "series" : "movie");

  const titleAr = String(raw.title || raw.name || raw.original_title || raw.original_name || "").trim();
  const titleEn = String(raw.original_title || raw.original_name || raw.title || raw.name || "").trim();
  if (!titleAr && !titleEn) return null;

  const posterUrl = `${TMDB_IMG_POSTER}${raw.poster_path}`;
  const backdropUrl = raw.backdrop_path ? `${TMDB_IMG_BACKDROP}${raw.backdrop_path}` : posterUrl;
  const dateStr = String(raw.release_date || raw.first_air_date || "");
  const year = Number(dateStr.slice(0, 4)) || new Date().getFullYear();
  const imdbRating = Number(Number(raw.vote_average || 0).toFixed(1));
  const genres = genreIds
    .map((id) => TMDB_GENRE_ID_TO_AR[id])
    .filter(Boolean)
    .slice(0, 4);

  return {
    id: encodeSyntheticTmdbId(tmdbType, realTmdbId),
    tmdbType,
    mediaType,
    titleAr: titleAr || titleEn,
    titleEn: titleEn || titleAr,
    overviewAr: String(raw.overview || "").trim(),
    posterUrl,
    backdropUrl,
    year,
    imdbRating: imdbRating > 0 ? imdbRating : 7.0,
    voteCount: Number(raw.vote_count || 50),
    popularity: Number(raw.popularity || year * 10),
    qualityBadge: "1080p FHD",
    audioLabel: spec?.audioLabel || (raw.original_language === "ar" ? "عربي" : "مترجم"),
    categoryLabel:
      spec?.categoryLabel ||
      (isAnim ? (tmdbType === "tv" ? "مسلسلات أنميشن" : "أفلام أنميشن") : tmdbType === "tv" ? "مسلسلات أجنبية" : "أفلام أجنبية"),
    genres: genres.length > 0 ? genres : isAnim ? ["أنميشن"] : ["دراما"],
    originalLanguage: origLang || undefined,
    releaseDate: rawDateStr || undefined,
    durationOrSeasons: tmdbType === "tv" ? "مسلسل · مواسم كاملة" : "فيلم كامل",
  };
}

export function mergeTvSeasons(vaultSeasons, tmdbSeasons, fallbackPosterUrl) {
  const byNum = new Map();

  for (const s of Array.isArray(vaultSeasons) ? vaultSeasons : []) {
    const num = Number(s?.seasonNumber || s?.season_number || 0);
    if (!Number.isFinite(num) || num < 1) continue;
    byNum.set(num, {
      seasonNumber: num,
      name: String(s?.name || `الموسم ${num}`),
      episodeCount: Math.max(1, Number(s?.episodeCount ?? s?.ep_count ?? 1)),
      posterUrl: s?.posterUrl || fallbackPosterUrl || null,
      airDate: String(s?.airDate || ""),
    });
  }

  for (const s of Array.isArray(tmdbSeasons) ? tmdbSeasons : []) {
    const num = Number(s?.seasonNumber ?? s?.season_number ?? 0);
    const epCount = Number(s?.episodeCount ?? s?.episode_count ?? 0);
    if (!Number.isFinite(num) || num < 1 || epCount <= 0) continue;
    const prev = byNum.get(num);
    const tmdbPoster = s?.posterUrl || (s?.poster_path ? `${TMDB_IMG_POSTER}${s.poster_path}` : null);
    byNum.set(num, {
      seasonNumber: num,
      name: String(s?.name || prev?.name || `الموسم ${num}`),
      episodeCount: Math.max(epCount, prev?.episodeCount || 0),
      posterUrl: tmdbPoster || prev?.posterUrl || fallbackPosterUrl || null,
      airDate: String(s?.airDate || s?.air_date || prev?.airDate || ""),
    });
  }

  return Array.from(byNum.values()).sort((a, b) => a.seasonNumber - b.seasonNumber);
}

export function mergeSeasonEpisodes(vaultEpisodes, tmdbEpisodes, parentId, seasonNumber, fallbackStillUrl) {
  const byEp = new Map();

  for (const ep of Array.isArray(vaultEpisodes) ? vaultEpisodes : []) {
    const epNum = Number(ep?.episodeNumber ?? ep?.episode_number ?? 0);
    if (!Number.isFinite(epNum) || epNum < 1) continue;
    byEp.set(epNum, {
      id: `${parentId}-s${seasonNumber}-e${epNum}`,
      seasonNumber,
      episodeNumber: epNum,
      titleAr: String(ep?.titleAr || `الحلقة ${epNum}`).trim(),
      titleEn: String(ep?.titleEn || `Episode ${epNum}`).trim(),
      overview: String(ep?.overview || "").trim(),
      runtimeMin: Number(ep?.runtimeMin || 45),
      airDate: String(ep?.airDate || ""),
      stillUrl: ep?.stillUrl || fallbackStillUrl || null,
    });
  }

  for (const ep of Array.isArray(tmdbEpisodes) ? tmdbEpisodes : []) {
    const epNum = Number(ep?.episodeNumber ?? ep?.episode_number ?? 0);
    if (!Number.isFinite(epNum) || epNum < 1) continue;
    const prev = byEp.get(epNum);
    byEp.set(epNum, {
      id: `${parentId}-s${seasonNumber}-e${epNum}`,
      seasonNumber,
      episodeNumber: epNum,
      titleAr: String(ep?.titleAr || prev?.titleAr || `الحلقة ${epNum}`).trim(),
      titleEn: String(ep?.titleEn || prev?.titleEn || `Episode ${epNum}`).trim(),
      overview: String(ep?.overview || prev?.overview || "").trim(),
      runtimeMin: Number(ep?.runtimeMin || prev?.runtimeMin || 45),
      airDate: String(ep?.airDate || prev?.airDate || ""),
      stillUrl: ep?.stillUrl || prev?.stillUrl || fallbackStillUrl || null,
    });
  }

  return Array.from(byEp.values()).sort((a, b) => a.episodeNumber - b.episodeNumber);
}

export function formatMergedSeriesDuration(seasons) {
  if (!Array.isArray(seasons) || seasons.length === 0) return "الموسم 1";
  const totalEps = seasons.reduce((sum, s) => sum + Math.max(0, Number(s?.episodeCount || 0)), 0);
  if (seasons.length > 1) {
    return totalEps > 0 ? `${seasons.length} مواسم · ${totalEps} حلقة` : `${seasons.length} مواسم`;
  }
  return totalEps > 0 ? `الموسم 1 · ${totalEps} حلقة` : "الموسم 1";
}

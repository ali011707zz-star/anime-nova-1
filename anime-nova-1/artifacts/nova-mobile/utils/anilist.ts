const ANILIST_API = "https://graphql.anilist.co";

export type AnilistMedia = {
  id: number;
  title: { romaji: string; english: string | null; native: string };
  coverImage: { large: string; extraLarge?: string };
  bannerImage: string | null;
  description: string | null;
  averageScore: number | null;
  popularity: number;
  episodes: number | null;
  status: string;
  format: string;
  genres: string[];
  nextAiringEpisode: { episode: number; airingAt: number } | null;
  studios?: { nodes: { name: string }[] };
  characters?: { edges: { role: string; node: { name: { full: string }; image: { large: string } } }[] };
  relations?: { edges: { relationType: string; node: { id: number; title: { romaji: string }; coverImage: { large: string }; type: string } }[] };
};

export async function anilistQuery<T = unknown>(
  query: string,
  variables?: Record<string, unknown>
): Promise<T> {
  const response = await fetch(ANILIST_API, {
    method: "POST",
    headers: { "Content-Type": "application/json", Accept: "application/json" },
    body: JSON.stringify({ query, variables }),
  });
  const json = await response.json();
  if (json.errors) throw new Error(json.errors[0].message);
  return json.data as T;
}

export const TRENDING_QUERY = `
query TrendingAnime($page: Int) {
  Page(page: $page, perPage: 20) {
    media(sort: TRENDING_DESC, type: ANIME, isAdult: false) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format nextAiringEpisode { episode airingAt }
    }
  }
}`;

export const POPULAR_QUERY = `
query PopularAnime($page: Int) {
  Page(page: $page, perPage: 20) {
    media(sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const AIRING_QUERY = `
query AiringAnime {
  Page(page: 1, perPage: 20) {
    media(status: RELEASING, sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes nextAiringEpisode { episode airingAt }
    }
  }
}`;

export const SEARCH_QUERY = `
query SearchAnime($search: String!, $page: Int, $genre: String, $format: MediaFormat) {
  Page(page: $page, perPage: 30) {
    media(search: $search, type: ANIME, isAdult: false, genre: $genre, format: $format) {
      id title { romaji english } coverImage { large } averageScore episodes format status genres
    }
  }
}`;

export const BROWSE_QUERY = `
query BrowseAnime($page: Int, $genre: String, $format: MediaFormat, $sort: [MediaSort]) {
  Page(page: $page, perPage: 30) {
    media(type: ANIME, isAdult: false, genre: $genre, format: $format, sort: $sort) {
      id title { romaji english } coverImage { large } averageScore episodes format status genres
    }
  }
}`;

export const DETAIL_QUERY = `
query AnimeDetail($id: Int!) {
  Media(id: $id, type: ANIME) {
    id title { romaji english native } coverImage { large extraLarge } bannerImage
    description averageScore popularity episodes status format genres
    studios(isMain: true) { nodes { name } }
    nextAiringEpisode { episode airingAt }
    relations { edges { relationType node { id title { romaji } coverImage { large } type } } }
    characters(sort: ROLE, role: MAIN) { edges { role node { name { full } image { large } } } }
    tags { name rank isMediaSpoiler }
    startDate { year month day }
  }
}`;

export const SEASONAL_QUERY = `
query SeasonalAnime($season: MediaSeason!, $year: Int!) {
  Page(page: 1, perPage: 30) {
    media(season: $season, seasonYear: $year, type: ANIME, isAdult: false, sort: POPULARITY_DESC) {
      id title { romaji english } coverImage { large } averageScore episodes status format nextAiringEpisode { episode airingAt }
    }
  }
}`;

export const TOP_RATED_QUERY = `
query TopRatedAnime {
  Page(page: 1, perPage: 20) {
    media(sort: SCORE_DESC, type: ANIME, isAdult: false, averageScore_greater: 70) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const MOVIES_QUERY = `
query AnimeMovies {
  Page(page: 1, perPage: 20) {
    media(format: MOVIE, type: ANIME, isAdult: false, sort: POPULARITY_DESC) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const UPCOMING_QUERY = `
query UpcomingAnime {
  Page(page: 1, perPage: 20) {
    media(status: NOT_YET_RELEASED, type: ANIME, isAdult: false, sort: POPULARITY_DESC) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const TODAY_EPISODES_QUERY = `
query TodayEpisodes($gt: Int!, $lt: Int!) {
  Page(page: 1, perPage: 20) {
    airingSchedules(airingAt_greater: $gt, airingAt_lesser: $lt, sort: TIME_DESC) {
      episode airingAt
      media {
        id title { romaji english } coverImage { large } averageScore popularity
        format isAdult genres
      }
    }
  }
}`;

export const ACTION_QUERY = `
query ActionAnime {
  Page(page: 1, perPage: 20) {
    media(genre: "Action", type: ANIME, isAdult: false, sort: POPULARITY_DESC, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const ROMANCE_QUERY = `
query RomanceAnime {
  Page(page: 1, perPage: 20) {
    media(genre: "Romance", type: ANIME, isAdult: false, sort: POPULARITY_DESC, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const ISEKAI_QUERY = `
query IsekaiAnime {
  Page(page: 1, perPage: 20) {
    media(genre: "Isekai", type: ANIME, isAdult: false, sort: POPULARITY_DESC, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const FANTASY_QUERY = `
query FantasyAnime {
  Page(page: 1, perPage: 20) {
    media(genre: "Fantasy", type: ANIME, isAdult: false, sort: POPULARITY_DESC, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes status format
    }
  }
}`;

export const SCHEDULE_QUERY = `
query Schedule($airingAt_greater: Int!, $airingAt_lesser: Int!) {
  Page(page: 1, perPage: 50) {
    airingSchedules(airingAt_greater: $airingAt_greater, airingAt_lesser: $airingAt_lesser, sort: TIME) {
      id airingAt episode
      media { id title { romaji english } coverImage { large } averageScore }
    }
  }
}`;

export function getCurrentSeason(): { season: string; year: number } {
  const now = new Date();
  const month = now.getMonth() + 1;
  const year = now.getFullYear();
  let season = "WINTER";
  if (month >= 4 && month <= 6) season = "SPRING";
  else if (month >= 7 && month <= 9) season = "SUMMER";
  else if (month >= 10 && month <= 12) season = "FALL";
  return { season, year };
}

export function stripHtml(html: string | null): string {
  if (!html) return "";
  return html.replace(/<[^>]*>/g, "").replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">").replace(/&#039;/g, "'").replace(/&quot;/g, '"').trim();
}

export function formatAiringTime(airingAt: number): string {
  const date = new Date(airingAt * 1000);
  return date.toLocaleTimeString("ar-SA", { hour: "2-digit", minute: "2-digit" });
}

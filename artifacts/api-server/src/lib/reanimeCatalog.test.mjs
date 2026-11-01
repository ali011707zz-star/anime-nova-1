import assert from "node:assert/strict";
import test from "node:test";

import {
  buildReanimeFlixUrl,
  findPlayableReanimeEpisode,
  resolveReanimeEpisode,
} from "./reanimeCatalog.mjs";

function fixtureFetch(animeRecords) {
  const calls = [];
  const fetchImpl = async (input) => {
    const url = new URL(String(input));
    calls.push(url);

    if (url.pathname === "/api/v1/search") {
      return Response.json({ results: animeRecords });
    }

    const detailMatch = url.pathname.match(/^\/api\/v1\/anime\/([^/]+)$/);
    if (detailMatch) {
      const record = animeRecords.find(item => item.anime_id === decodeURIComponent(detailMatch[1]));
      return record
        ? Response.json({ ...record, title: record.title })
        : new Response("not found", { status: 404 });
    }

    const episodesMatch = url.pathname.match(/^\/api\/v1\/anime\/([^/]+)\/episodes$/);
    if (episodesMatch) {
      const record = animeRecords.find(item => item.anime_id === decodeURIComponent(episodesMatch[1]));
      return record
        ? Response.json({ data: record.episodeRows })
        : new Response("not found", { status: 404 });
    }

    return new Response("unexpected path", { status: 404 });
  };
  return { calls, fetchImpl };
}

const bocchi = {
  anime_id: "bocchi-the-rock-6gepbk",
  anilist_id: 130003,
  title: { english: "BOCCHI THE ROCK!", romaji: "Bocchi the Rock!" },
  episodeRows: [1, 2, 3].map(episode_number => ({
    episodeId: `ep-${episode_number}`,
    episode_number,
    playable: true,
    subbed: true,
  })),
};

const frieren = {
  anime_id: "frieren-beyond-journey-s-end-yw2a3j",
  anilist_id: 154587,
  title: { english: "Frieren: Beyond Journey’s End", romaji: "Sousou no Frieren" },
  episodeRows: [1, 2, 28].map(episode_number => ({
    episodeId: `ep-${episode_number}`,
    episode_number,
    playable: true,
    subbed: true,
  })),
};

test("uses the current v1 catalog paths and preserves the exact requested episode", async () => {
  const { calls, fetchImpl } = fixtureFetch([bocchi]);
  const resolved = await resolveReanimeEpisode({
    anilistId: 130003,
    episodeNumber: 2,
    titleCandidates: ["Bocchi the Rock"],
    fetchImpl,
  });

  assert.equal(resolved?.slug, bocchi.anime_id);
  assert.equal(resolved?.anilistId, 130003);
  assert.equal(resolved?.episodeNumber, 2);
  assert.equal(resolved?.watchUrl, `https://reanime.to/watch/${bocchi.anime_id}?ep=2`);
  assert.deepEqual(calls.map(url => url.pathname), [
    "/api/v1/search",
    `/api/v1/anime/${bocchi.anime_id}`,
    `/api/v1/anime/${bocchi.anime_id}/episodes`,
  ]);
  assert.equal(calls[0].searchParams.get("limit"), "36");
  assert.equal(calls[0].searchParams.get("offset"), "0");
  assert.equal(calls[0].searchParams.get("q"), "Bocchi the Rock");
  assert.equal(calls[2].searchParams.get("limit"), "2000");
  assert.equal(buildReanimeFlixUrl(resolved.anilistId, resolved.episodeNumber), "https://reanime.to/api/flix/130003/2");
});

test("separates sequel catalogs by AniList id and resolves several episode numbers", async () => {
  const { fetchImpl } = fixtureFetch([bocchi, frieren]);
  const results = await Promise.all([
    resolveReanimeEpisode({
      anilistId: 130003,
      episodeNumber: 1,
      titleCandidates: ["Bocchi the Rock"],
      fetchImpl,
    }),
    resolveReanimeEpisode({
      anilistId: 154587,
      episodeNumber: 28,
      titleCandidates: ["Frieren: Beyond Journey’s End"],
      fetchImpl,
    }),
  ]);

  assert.deepEqual(results.map(item => [item?.anilistId, item?.episodeNumber]), [
    [130003, 1],
    [154587, 28],
  ]);
});

test("does not advertise a missing or non-playable episode", () => {
  const episodes = [
    { episode_number: 1, playable: true },
    { episode_number: 2, playable: false },
  ];
  assert.equal(findPlayableReanimeEpisode(episodes, 1)?.episode_number, 1);
  assert.equal(findPlayableReanimeEpisode(episodes, 2), null);
  assert.equal(findPlayableReanimeEpisode(episodes, 3), null);
});

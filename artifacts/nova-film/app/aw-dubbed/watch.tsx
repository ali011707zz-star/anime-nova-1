/** Keep existing AW deep links working while sharing the actual /watch page. */
import { Redirect, useLocalSearchParams } from "expo-router";

function safeDecode(value: string | string[] | undefined): string {
  const raw = Array.isArray(value) ? value[0] : value;
  if (!raw) return "";
  try { return decodeURIComponent(raw); } catch { return raw; }
}

export default function AwDubbedWatchRedirect() {
  const params = useLocalSearchParams<{
    series?: string;
    ep?: string;
    title?: string;
    titleAr?: string;
    season?: string;
    poster?: string;
    seasons?: string;
    key?: string;
  }>();

  const series = safeDecode(params.series);
  const seasons = safeDecode(params.seasons);
  let seasonIndex = 0;
  try {
    const parsed = JSON.parse(seasons);
    if (Array.isArray(parsed)) {
      const found = parsed.findIndex((item: any) => String(item?.animeId ?? "") === series);
      if (found >= 0) seasonIndex = found;
    }
  } catch {}

  return (
    <Redirect
      href={{
        pathname: "/watch",
        params: {
          mode: "aw-dubbed",
          awSeries: encodeURIComponent(series),
          ep: safeDecode(params.ep) || "1",
          title: safeDecode(params.title),
          titleAr: safeDecode(params.titleAr),
          awSeasonLabel: encodeURIComponent(safeDecode(params.season) || "الحلقات"),
          awSeasonIndex: String(seasonIndex),
          cover: encodeURIComponent(safeDecode(params.poster)),
          awSeasons: encodeURIComponent(seasons),
          awKey: encodeURIComponent(safeDecode(params.key)),
        },
      } as any}
    />
  );
}

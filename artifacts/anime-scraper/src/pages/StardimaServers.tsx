import { useCallback, useEffect, useMemo, useState } from "react";
import { useLocation, useSearch } from "wouter";
import { ArrowLeft, CheckCircle2, CircleAlert, Loader2, Play, RefreshCw, Server } from "lucide-react";
import { API_BASE } from "@/lib/apiBase";

type CatalogServer = {
  id: string | number;
  server_key?: string;
  server_name?: string | null;
  source_host?: string | null;
  quality?: string | null;
  language?: string | null;
  availability_status?: string | null;
  health_state?: string | null;
  health_reason?: string | null;
  page_url?: string | null;
};

function safePageHost(value: unknown) {
  try {
    const url = new URL(String(value || ""));
    if (!["http:", "https:"].includes(url.protocol) || url.username || url.password) return "";
    return url.hostname;
  } catch {
    return "";
  }
}

function displayQuality(value?: string | null) {
  const quality = String(value || "").trim();
  if (!quality) return "جودة غير محددة";
  return /p$/i.test(quality) ? quality.toUpperCase() : `${quality}P`;
}

export default function StardimaServersPage() {
  const [, navigate] = useLocation();
  const search = useSearch();
  const params = useMemo(() => new URLSearchParams(search), [search]);
  const episodeId = params.get("episodeId") || "";
  const providerTitleId = params.get("providerTitleId") || "";
  const title = params.get("title") || "StarDima";
  const episodeTitle = params.get("episodeTitle") || "الحلقة";
  const episodeNumber = params.get("episodeNumber") || "";
  const seasonNumber = params.get("seasonNumber") || "1";
  const [servers, setServers] = useState<CatalogServer[]>([]);
  const [omittedCount, setOmittedCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [retryKey, setRetryKey] = useState(0);
  const [openingId, setOpeningId] = useState("");

  const loadServers = useCallback(async (signal: AbortSignal) => {
    if (!episodeId) {
      setError("معرّف الحلقة غير موجود.");
      setLoading(false);
      return;
    }
    setLoading(true);
    setError("");
    try {
      const response = await fetch(
        `${API_BASE}/api/source-catalog/episodes/${encodeURIComponent(episodeId)}/servers`,
        { signal },
      );
      const data = await response.json().catch(() => ({})) as {
        servers?: CatalogServer[];
        omittedServerCount?: number;
      };
      if (!response.ok) throw new Error("تعذر تحميل خوادم الحلقة.");
      if (signal.aborted) return;
      const usable = (Array.isArray(data.servers) ? data.servers : [])
        .filter((server) => /^\d+$/.test(String(server.id)) && safePageHost(server.page_url))
        .filter((server) => String(server.health_state || "").toLowerCase() !== "source_removed");
      setServers(usable);
      setOmittedCount(Math.max(0, Number(data.omittedServerCount) || 0));
      if (!usable.length) {
        setError(Number(data.omittedServerCount) > 0
          ? "تم إخفاء روابط فشل فحصها مؤخرًا. لا يوجد خادم متاح الآن."
          : "لا توجد خوادم مسجلة لهذه الحلقة.");
      }
    } catch (loadError) {
      if (!signal.aborted) setError(loadError instanceof Error ? loadError.message : "تعذر تحميل خوادم الحلقة.");
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [episodeId]);

  useEffect(() => {
    const controller = new AbortController();
    void loadServers(controller.signal);
    return () => controller.abort();
  }, [loadServers, retryKey]);

  const groups = useMemo(() => {
    const grouped = new Map<string, CatalogServer[]>();
    for (const server of servers) {
      const key = displayQuality(server.quality);
      grouped.set(key, [...(grouped.get(key) || []), server]);
    }
    return [...grouped.entries()].sort((a, b) =>
      Number.parseInt(b[0], 10) - Number.parseInt(a[0], 10)
    );
  }, [servers]);

  const openServer = (server: CatalogServer) => {
    setOpeningId(String(server.id));
    const next = new URLSearchParams(params);
    next.set("serverId", String(server.id));
    next.set("serverName", server.server_name || server.source_host || "StarDima");
    next.set("quality", String(server.quality || ""));
    navigate(`/stardima/watch?${next.toString()}`);
  };

  const back = () => {
    if (providerTitleId) navigate(`/stardima/title/${encodeURIComponent(providerTitleId)}`);
    else navigate("/dubbed");
  };

  return (
    <main className="min-h-screen bg-[#09090b] text-white" dir="rtl">
      <header className="sticky top-0 z-20 flex items-center gap-3 border-b border-white/10 bg-[#09090b]/95 px-4 py-3 backdrop-blur">
        <button onClick={back} data-testid="button-stardima-servers-back"
          className="grid h-10 w-10 place-items-center rounded-xl border border-white/10 bg-white/5"
          aria-label="العودة إلى الحلقات"><ArrowLeft size={19} /></button>
        <div className="min-w-0 flex-1">
          <h1 className="truncate font-['Cairo'] text-base font-bold">{title}</h1>
          <p className="truncate font-['Cairo'] text-[11px] text-white/45">
            الموسم {seasonNumber} · {episodeTitle}{episodeNumber ? ` · الحلقة ${episodeNumber}` : ""}
          </p>
        </div>
      </header>

      <section className="mx-auto max-w-3xl px-4 py-6">
        <div className="mb-5 rounded-2xl border border-white/10 bg-white/[0.035] p-4">
          <div className="mb-2 flex items-center gap-2 text-emerald-200">
            <Server size={17} />
            <h2 className="font-['Cairo'] text-sm font-bold">اختر الجودة والخادم</h2>
          </div>
          <p className="font-['Cairo'] text-xs leading-6 text-white/50">
            الروابط تُفحص من الخادم قبل فتح المشغل. الخوادم غير المتاحة أو التي فشل فحصها تُستبعد تلقائيًا.
          </p>
        </div>

        {loading ? (
          <div className="grid min-h-48 place-items-center"><Loader2 className="animate-spin text-emerald-400" /></div>
        ) : error ? (
          <div className="flex flex-col items-center gap-3 rounded-2xl border border-white/10 bg-white/[0.03] px-5 py-10 text-center">
            <CircleAlert className="text-amber-300" />
            <p className="font-['Cairo'] text-sm text-white/65">{error}</p>
            <button onClick={() => setRetryKey((value) => value + 1)} data-testid="button-retry-stardima-servers"
              className="inline-flex items-center gap-2 rounded-xl border border-emerald-400/25 bg-emerald-500/10 px-4 py-2 font-['Cairo'] text-sm text-emerald-200">
              <RefreshCw size={15} /> إعادة الفحص
            </button>
          </div>
        ) : (
          <div className="space-y-6">
            {omittedCount > 0 ? (
              <p className="font-['Cairo'] text-xs text-amber-200/70">
                تم استبعاد {omittedCount} خادمًا بعد فحوصات الصحة.
              </p>
            ) : null}
            {groups.map(([quality, rows]) => (
              <section key={quality} className="space-y-2">
                <h3 className="font-['Cairo'] text-sm font-bold text-emerald-200">{quality}</h3>
                <div className="grid gap-2 sm:grid-cols-2">
                  {rows.map((server) => {
                    const health = String(server.health_state || "").toLowerCase();
                    return (
                      <button key={server.id} onClick={() => openServer(server)}
                        disabled={openingId === String(server.id)}
                        data-testid={`button-stardima-server-${server.id}`}
                        className="flex min-h-[76px] items-center gap-3 rounded-2xl border border-white/10 bg-white/[0.035] p-3 text-right transition hover:border-emerald-400/30 hover:bg-white/[0.07] disabled:opacity-60">
                        <span className="grid h-11 w-11 shrink-0 place-items-center rounded-xl bg-emerald-500/10 text-emerald-300">
                          {openingId === String(server.id) ? <Loader2 className="animate-spin" size={18} /> : <Play size={17} fill="currentColor" />}
                        </span>
                        <span className="min-w-0 flex-1">
                          <span className="block truncate font-['Cairo'] text-sm font-bold text-white">
                            {server.server_name || server.source_host || "خادم StarDima"}
                          </span>
                          <span className="mt-1 flex items-center gap-1 font-['Cairo'] text-[10px] text-white/45">
                            <span>{safePageHost(server.page_url) || "مصدر StarDima"}</span>
                            {server.language ? <span>· {server.language}</span> : null}
                          </span>
                        </span>
                        {health === "verified"
                          ? <CheckCircle2 size={16} className="text-emerald-300" />
                          : <span className="rounded-md bg-white/5 px-2 py-1 font-['Cairo'] text-[9px] text-white/50">تحقق عند التشغيل</span>}
                      </button>
                    );
                  })}
                </div>
              </section>
            ))}
          </div>
        )}
      </section>
    </main>
  );
}

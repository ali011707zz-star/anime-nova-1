import { Download, Send, Smartphone, X } from "lucide-react";
import { useEffect, useState } from "react";
import { useLocation } from "wouter";

const APP_VERSION = "1.0.10";
const APK_URL = `/Anime-Nova.apk?v=${APP_VERSION}`;
const TV_APK_URL = `/nova.apk?v=${APP_VERSION}`;
const TELEGRAM_URL = "https://t.me/Anime_NOVA_0";
const DOWNLOADER_CODE = "2576388";

export function WebAppDownloadModal() {
  const [location, navigate] = useLocation();
  const [open, setOpen] = useState(false);

  useEffect(() => {
    if (location !== "/" && location !== "") {
      setOpen(false);
      return;
    }

    const ua = typeof navigator !== "undefined" ? navigator.userAgent || "" : "";
    const isBot =
      (typeof navigator !== "undefined" && Boolean((navigator as any).webdriver)) ||
      /bot|google|crawl|spider|slurp|bing|duckduck|yandex|baidu|lighthouse|inspection|headless/i.test(ua);
    if (isBot) return;

    const timer = window.setTimeout(() => setOpen(true), 1800);
    return () => window.clearTimeout(timer);
  }, [location]);

  if (!open) return null;

  return (
    <div
      className="fixed inset-0 z-[120] flex items-center justify-center bg-black/70 p-3.5 backdrop-blur-sm"
      dir="rtl"
      role="presentation"
      onClick={() => setOpen(false)}
    >
      <div
        className="relative w-full max-w-[320px] sm:max-w-[340px] overflow-hidden rounded-[22px] border border-violet-300/20 bg-[#111118] p-4 text-center shadow-2xl shadow-black/70"
        role="dialog"
        aria-modal="true"
        aria-labelledby="web-app-download-title"
        onClick={(event) => event.stopPropagation()}
      >
        <div className="pointer-events-none absolute -right-10 -top-12 h-28 w-28 rounded-full bg-violet-600/20 blur-2xl" />

        <button
          type="button"
          onClick={() => setOpen(false)}
          aria-label="إغلاق نافذة الإعلان"
          className="absolute left-2.5 top-2.5 z-20 flex h-8 w-8 items-center justify-center rounded-xl border border-white/15 bg-black/50 text-white/75 transition-colors hover:bg-black/80 hover:text-white active:scale-90"
        >
          <X className="h-3.5 w-3.5" />
        </button>

        {/* Compact framed preview video */}
        <div className="relative mx-auto mb-2.5 h-[96px] w-[110px] overflow-hidden rounded-2xl border border-white/12 bg-black shadow-lg shadow-black/50">
          <video
            src="/deku-ad.mp4"
            className="h-full w-full object-cover"
            autoPlay
            loop
            muted
            playsInline
            aria-label="إعلان قناة Anime NOVA على تلجرام"
          />
        </div>

        <p className="font-['Cairo'] text-[10px] font-bold text-violet-300/80">
          تجربة أسرع على الهاتف والتلفاز · v{APP_VERSION}
        </p>
        <h2
          id="web-app-download-title"
          className="mt-0.5 font-['Cairo'] text-[15px] font-black text-white"
        >
          تطبيق Anime NOVA وقناتنا على تلجرام
        </h2>
        <p className="mt-1 font-['Cairo'] text-[11px] leading-5 text-white/60">
          تابع التحديثات على تلجرام أو حمّل التطبيق الرسمي لمشاهدة أسرع بدون تقطيع.
        </p>

        {/* Compact Android TV code row */}
        <div className="mt-2.5 flex items-center justify-between gap-2 rounded-xl border border-cyan-400/20 bg-cyan-500/10 px-2.5 py-1.5 text-right font-['Cairo']">
          <span className="text-[10px] font-bold text-cyan-200/90">
            📺 كود التلفاز:{" "}
            <span className="rounded bg-black/40 px-1.5 py-0.5 font-mono text-[11px] font-black text-amber-300">
              {DOWNLOADER_CODE}
            </span>
          </span>
          <a
            href={TV_APK_URL}
            download="Anime-Nova-TV-v1.0.10.apk"
            className="shrink-0 rounded-lg bg-cyan-500/20 px-2 py-0.5 text-[10px] font-black text-cyan-200 hover:bg-cyan-500/30"
          >
            TV APK
          </a>
        </div>

        {/* Primary compact CTAs */}
        <div className="mt-3 flex flex-col gap-2">
          <a
            href={TELEGRAM_URL}
            target="_blank"
            rel="noopener noreferrer"
            className="flex h-9 items-center justify-center gap-1.5 rounded-xl bg-gradient-to-l from-sky-600 to-cyan-500 font-['Cairo'] text-[12px] font-black text-white shadow-md shadow-sky-900/30 transition-transform hover:brightness-110 active:scale-[0.98]"
          >
            <Send className="h-3.5 w-3.5" />
            انضم لقناتنا على تلجرام
          </a>

          <div className="grid grid-cols-2 gap-2">
            <a
              href={APK_URL}
              download="Anime-Nova-v1.0.10.apk"
              className="flex h-9 items-center justify-center gap-1.5 rounded-xl bg-gradient-to-l from-violet-700 to-violet-500 font-['Cairo'] text-[11px] font-black text-white shadow-md shadow-violet-900/30 transition-transform hover:brightness-110 active:scale-[0.98]"
            >
              <Download className="h-3.5 w-3.5" />
              تحميل التطبيق
            </a>
            <button
              type="button"
              onClick={() => {
                setOpen(false);
                navigate("/app");
              }}
              className="flex h-9 items-center justify-center gap-1 rounded-xl border border-white/15 bg-white/5 font-['Cairo'] text-[11px] font-bold text-white/85 transition-colors hover:bg-white/10"
            >
              <Smartphone className="h-3.5 w-3.5 text-orange-300" />
              صفحة التطبيق
            </button>
          </div>
        </div>

        <button
          type="button"
          onClick={() => setOpen(false)}
          className="mt-2 h-7 w-full font-['Cairo'] text-[10.5px] font-bold text-white/40 transition-colors hover:text-white/70"
        >
          متابعة التصفح
        </button>
      </div>
    </div>
  );
}

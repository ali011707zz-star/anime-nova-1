import { Download, Smartphone, X } from "lucide-react";
import { useEffect, useState } from "react";

const APK_URL = "/Anime-Nova.apk";

export function WebAppDownloadModal() {
  const [open, setOpen] = useState(false);

  useEffect(() => {
    const timer = window.setTimeout(() => setOpen(true), 1800);
    return () => window.clearTimeout(timer);
  }, []);

  if (!open) return null;

  return (
    <div
      className="fixed inset-0 z-[120] flex items-center justify-center bg-black/75 p-4 backdrop-blur-sm"
      dir="rtl"
      role="presentation"
      onClick={() => setOpen(false)}
    >
      <div
        className="relative w-full max-w-md overflow-hidden rounded-[28px] border border-violet-300/20 bg-[#111116] p-6 text-right shadow-2xl shadow-black/60"
        role="dialog"
        aria-modal="true"
        aria-labelledby="web-app-download-title"
        onClick={(event) => event.stopPropagation()}
      >
        <div className="relative -mx-6 -mt-6 mb-5 aspect-[498/436] overflow-hidden bg-black">
          <video
            src="/deku-ad.mp4"
            className="h-full w-full object-contain"
            autoPlay
            loop
            muted
            playsInline
            aria-label="إعلان قناة Anime NOVA على تلجرام"
          />
        </div>
        <div className="pointer-events-none absolute -right-14 -top-16 h-44 w-44 rounded-full bg-violet-600/20 blur-3xl" />
        <button
          type="button"
          onClick={() => setOpen(false)}
          aria-label="إغلاق نافذة تحميل التطبيق"
          className="absolute left-3 top-3 z-20 flex h-10 w-10 items-center justify-center rounded-xl border border-white/20 bg-black/60 text-white/80 shadow-lg backdrop-blur-sm transition-colors hover:bg-black/80 hover:text-white active:scale-90"
        >
          <X className="h-4 w-4" />
        </button>

        <div className="relative flex items-start gap-3 pl-10">
          <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl border border-violet-300/25 bg-violet-500/15 text-violet-300">
            <Smartphone className="h-6 w-6" />
          </div>
          <div>
            <p className="mb-1 font-['Cairo'] text-[10px] font-bold text-violet-300/70">تجربة أفضل على الهاتف</p>
            <h2 id="web-app-download-title" className="font-['Cairo'] text-[18px] font-black text-white">
              حمّل تطبيق Anime NOVA
            </h2>
          </div>
        </div>

        <p className="relative mt-5 font-['Cairo'] text-[13px] leading-7 text-white/65">
          شاهد الأنمي بسرعة أفضل، واستمتع بمشغّل مخصص وتجربة مشاهدة أكثر سلاسة على هاتفك.
        </p>

        <a
          href={APK_URL}
          download
          className="relative mt-5 flex h-12 items-center justify-center gap-2 rounded-2xl bg-gradient-to-l from-violet-700 to-violet-500 font-['Cairo'] text-[13px] font-black text-white shadow-lg shadow-violet-900/30 transition-transform hover:brightness-110 active:scale-[0.98]"
        >
          <Download className="h-4 w-4" />
          تحميل التطبيق الآن
        </a>
        <button
          type="button"
          onClick={() => setOpen(false)}
          className="relative mt-3 h-9 w-full font-['Cairo'] text-[11px] font-bold text-white/35 transition-colors hover:text-white/65"
        >
          متابعة التصفح
        </button>
      </div>
    </div>
  );
}
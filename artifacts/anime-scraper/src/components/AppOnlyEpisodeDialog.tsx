import { Download, Smartphone, X } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

type AppOnlyEpisodeDialogProps = {
  open: boolean;
  episodeLabel: string;
  onClose: () => void;
  /** Add the official APK URL here when it is ready. */
  downloadUrl?: string;
};

export default function AppOnlyEpisodeDialog({
  open,
  episodeLabel,
  onClose,
  downloadUrl = "",
}: AppOnlyEpisodeDialogProps) {
  return (
    <AnimatePresence>
      {open && (
        <motion.div
          className="fixed inset-0 z-[100] flex items-end justify-center bg-black/75 p-3 backdrop-blur-sm sm:items-center"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          onClick={onClose}
          role="presentation"
          data-testid="dialog-backdrop-app-only"
        >
          <motion.div
            className="relative w-full max-w-md overflow-hidden rounded-[28px] border border-violet-300/20 bg-[#111116] p-5 text-right shadow-2xl shadow-black/60"
            initial={{ opacity: 0, y: 32 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: 32 }}
            transition={{ type: "spring", stiffness: 360, damping: 28 }}
            onClick={(event) => event.stopPropagation()}
            role="dialog"
            aria-modal="true"
            aria-labelledby="app-only-dialog-title"
            data-testid="dialog-app-only-episode"
          >
            <div className="pointer-events-none absolute -right-12 -top-16 h-40 w-40 rounded-full bg-violet-600/20 blur-3xl" />

            <button
              type="button"
              onClick={onClose}
              className="absolute left-4 top-4 flex h-9 w-9 items-center justify-center rounded-xl border border-white/10 bg-white/5 text-white/55 transition-colors hover:bg-white/10 hover:text-white active:scale-90"
              aria-label="إغلاق التنبيه"
              data-testid="button-close-app-only-dialog"
            >
              <X className="h-4 w-4" />
            </button>

            <div className="relative flex items-start gap-3 pl-10">
              <div className="flex h-12 w-12 shrink-0 items-center justify-center rounded-2xl border border-violet-300/25 bg-violet-500/15 text-violet-300">
                <Smartphone className="h-6 w-6" />
              </div>
              <div className="min-w-0">
                <p className="mb-1 text-[10px] font-bold text-violet-300/70 font-['Cairo']">محتوى حصري</p>
                <h2 id="app-only-dialog-title" className="text-[17px] font-black text-white font-['Cairo']">
                  هذه الحلقة حصرية للتطبيق
                </h2>
              </div>
            </div>

            <p className="relative mt-5 text-[13px] leading-7 text-white/65 font-['Cairo']">
              {episodeLabel} متاحة للمشاهدة داخل تطبيق Anime NOVA فقط.
              حمّل التطبيق واستمتع بالمشاهدة بجودة أفضل وتجربة أسرع.
            </p>

            {downloadUrl ? (
              <a
                href={downloadUrl}
                target="_blank"
                rel="noreferrer"
                className="relative mt-5 flex h-12 items-center justify-center gap-2 rounded-2xl bg-gradient-to-l from-violet-700 to-violet-500 text-[13px] font-black text-white shadow-lg shadow-violet-900/30 transition-transform active:scale-[0.98]"
                data-testid="link-download-app"
              >
                <Download className="h-4 w-4" />
                تنزيل تطبيق Anime NOVA
              </a>
            ) : (
              <button
                type="button"
                disabled
                className="relative mt-5 flex h-12 w-full cursor-not-allowed items-center justify-center gap-2 rounded-2xl border border-violet-300/15 bg-violet-500/10 text-[12px] font-black text-violet-200/55"
                data-testid="button-download-app-pending"
              >
                <Download className="h-4 w-4" />
                رابط تنزيل التطبيق سيُضاف قريباً
              </button>
            )}

            <button
              type="button"
              onClick={onClose}
              className="relative mt-3 h-10 w-full rounded-xl text-[11px] font-bold text-white/35 transition-colors hover:text-white/65"
              data-testid="button-continue-browsing"
            >
              متابعة التصفح
            </button>
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  );
}
import { AnimatePresence, motion } from "framer-motion";
import {
  Check,
  CheckCircle2,
  PauseCircle,
  PlayCircle,
  PlusCircle,
  Trash2,
  X,
  XCircle,
} from "lucide-react";
import { WATCHLIST_STATUSES, WatchlistStatus } from "@/lib/watchlistStatus";

interface Props {
  open: boolean;
  title: string;
  thumbnail?: string;
  currentStatus?: WatchlistStatus | null;
  isSaved: boolean;
  onSelect: (status: WatchlistStatus) => void;
  onRemove?: () => void;
  onClose: () => void;
}

const STATUS_ICON_MAP = {
  watching: PlayCircle,
  plan_to_watch: PlusCircle,
  completed: CheckCircle2,
  on_hold: PauseCircle,
  dropped: XCircle,
} as const;

export function WatchlistStatusSheet({
  open,
  title,
  thumbnail,
  currentStatus,
  isSaved,
  onSelect,
  onRemove,
  onClose,
}: Props) {
  return (
    <AnimatePresence>
      {open && (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          className="fixed inset-0 z-[90] bg-black/75 backdrop-blur-sm flex items-end sm:items-center justify-center p-0 sm:p-4"
          onClick={onClose}
          dir="rtl"
        >
          <motion.div
            initial={{ y: 40, opacity: 0.8 }}
            animate={{ y: 0, opacity: 1 }}
            exit={{ y: 40, opacity: 0 }}
            transition={{ type: "spring", damping: 28, stiffness: 320 }}
            onClick={(e) => e.stopPropagation()}
            className="w-full sm:max-w-md bg-[#111118] border border-white/10 rounded-t-3xl sm:rounded-3xl p-4 pb-6 shadow-2xl font-['Cairo']"
          >
            <div className="w-10 h-1 rounded-full bg-white/15 mx-auto mb-3 sm:hidden" />

            <div className="flex items-center gap-3 pb-3 border-b border-white/[0.07]">
              {thumbnail ? (
                <img
                  src={thumbnail}
                  alt=""
                  className="w-10 h-14 rounded-lg object-cover border border-white/10 shrink-0"
                />
              ) : null}
              <div className="flex-1 min-w-0">
                <p className="text-[11px] font-bold text-primary">قائمتي</p>
                <p className="text-sm font-black text-white truncate">{title}</p>
              </div>
              <button
                type="button"
                onClick={onClose}
                className="w-8 h-8 rounded-full bg-white/5 border border-white/10 flex items-center justify-center text-white/50 hover:text-white transition-colors"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            <div className="mt-3 space-y-2">
              {WATCHLIST_STATUSES.map((opt) => {
                const Icon = STATUS_ICON_MAP[opt.id];
                const active = isSaved && currentStatus === opt.id;
                return (
                  <button
                    key={opt.id}
                    type="button"
                    onClick={() => {
                      onSelect(opt.id);
                      onClose();
                    }}
                    className="w-full flex items-center justify-between px-3.5 py-3 rounded-2xl border transition-all active:scale-[0.99]"
                    style={{
                      background: active ? opt.bg : "rgba(255,255,255,0.03)",
                      borderColor: active ? opt.border : "rgba(255,255,255,0.07)",
                    }}
                  >
                    <div className="flex items-center gap-3">
                      <span
                        className="w-9 h-9 rounded-xl border flex items-center justify-center shrink-0"
                        style={{ background: opt.bg, borderColor: opt.border, color: opt.color }}
                      >
                        <Icon className="w-4.5 h-4.5" />
                      </span>
                      <span
                        className="text-sm font-black"
                        style={{ color: active ? opt.color : "rgba(255,255,255,0.9)" }}
                      >
                        {opt.label}
                      </span>
                    </div>
                    {active ? <Check className="w-5 h-5 shrink-0" style={{ color: opt.color }} /> : null}
                  </button>
                );
              })}
            </div>

            {isSaved && onRemove ? (
              <div className="mt-3 pt-3 border-t border-white/[0.07]">
                <button
                  type="button"
                  onClick={() => {
                    onRemove();
                    onClose();
                  }}
                  className="w-full flex items-center justify-center gap-2 py-3 rounded-2xl bg-rose-500/10 border border-rose-500/30 text-rose-400 text-sm font-black hover:bg-rose-500/15 transition-colors"
                >
                  <Trash2 className="w-4 h-4" />
                  إزالة من المحفوظات
                </button>
              </div>
            ) : null}
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  );
}

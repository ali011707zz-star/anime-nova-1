import { Send, X } from "lucide-react";
import { useState } from "react";

const TELEGRAM_URL = "https://t.me/Anime_NOVA_0";

export function TelegramTopBanner() {
  const [visible, setVisible] = useState(true);

  if (!visible) return null;

  return (
    <div
      className="relative z-[70] flex min-h-10 items-center justify-center gap-2 border-b border-sky-300/15 bg-[#111827] px-10 py-2 text-center text-[11px] text-white/75 shadow-lg shadow-black/10"
      dir="rtl"
      role="banner"
    >
      <Send className="h-3.5 w-3.5 shrink-0 text-sky-300" />
      <span className="font-['Cairo']">
        تابع أخبار وتحديثات NOVA Anime عبر قناتنا الرسمية على تلجرام
      </span>
      <a
        href={TELEGRAM_URL}
        target="_blank"
        rel="noreferrer"
        className="shrink-0 font-black text-sky-300 transition-colors hover:text-white"
      >
        انضم الآن
      </a>
      <button
        type="button"
        onClick={() => setVisible(false)}
        aria-label="إغلاق تنبيه تلجرام"
        className="absolute left-3 top-1/2 flex h-7 w-7 -translate-y-1/2 items-center justify-center rounded-lg text-white/45 transition-colors hover:bg-white/10 hover:text-white"
      >
        <X className="h-3.5 w-3.5" />
      </button>
    </div>
  );
}
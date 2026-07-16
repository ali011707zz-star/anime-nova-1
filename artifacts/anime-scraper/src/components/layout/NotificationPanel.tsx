import { useEffect, useRef, useState, useCallback } from "react";
import { useLocation } from "wouter";
import { Bell, Tv2, Film, X, Check, CheckCheck, Clock } from "lucide-react";

interface Notif {
  id: string;
  type: "anime_episode" | "animation_new";
  title: string;
  title_ar?: string;
  body?: string;
  image_url?: string;
  link_path?: string;
  anime_id?: number;
  tmdb_id?: string;
  episode_num?: number;
  is_read: boolean;
  created_at: string;
}

function timeAgo(dateStr: string): string {
  const diff = Date.now() - new Date(dateStr).getTime();
  const m = Math.floor(diff / 60_000);
  if (m < 1) return "الآن";
  if (m < 60) return `منذ ${m} دقيقة`;
  const h = Math.floor(m / 60);
  if (h < 24) return `منذ ${h} ساعة`;
  const d = Math.floor(h / 24);
  return `منذ ${d} يوم`;
}

export function NotificationPanel() {
  const [open, setOpen] = useState(false);
  const [notifs, setNotifs] = useState<Notif[]>([]);
  const [unread, setUnread] = useState(0);
  const [loading, setLoading] = useState(false);
  const panelRef = useRef<HTMLDivElement>(null);
  const [, navigate] = useLocation();

  const fetchNotifs = useCallback(async () => {
    try {
      const r = await fetch("/api/notifications");
      if (!r.ok) return;
      const data: Notif[] = await r.json();
      setNotifs(data);
      setUnread(data.filter(n => !n.is_read).length);
    } catch { /* silent */ }
  }, []);

  // Poll each 60s
  useEffect(() => {
    fetchNotifs();
    const t = setInterval(fetchNotifs, 60_000);
    return () => clearInterval(t);
  }, [fetchNotifs]);

  // Close on outside click
  useEffect(() => {
    if (!open) return;
    function handle(e: MouseEvent) {
      if (panelRef.current && !panelRef.current.contains(e.target as Node)) {
        setOpen(false);
      }
    }
    document.addEventListener("mousedown", handle);
    return () => document.removeEventListener("mousedown", handle);
  }, [open]);

  async function markAllRead() {
    setLoading(true);
    await fetch("/api/notifications/mark-all-read", { method: "POST" }).catch(() => {});
    setNotifs(prev => prev.map(n => ({ ...n, is_read: true })));
    setUnread(0);
    setLoading(false);
  }

  async function markOneRead(id: string) {
    await fetch(`/api/notifications/mark-read/${id}`, { method: "POST" }).catch(() => {});
    setNotifs(prev => prev.map(n => n.id === id ? { ...n, is_read: true } : n));
    setUnread(prev => Math.max(0, prev - 1));
  }

  async function handleClick(n: Notif) {
    if (!n.is_read) await markOneRead(n.id);
    if (n.link_path) {
      setOpen(false);
      navigate(n.link_path);
    }
  }

  const hasNotifs = notifs.length > 0;

  return (
    <div className="relative" ref={panelRef}>
      {/* Bell Button */}
      <button
        onClick={() => setOpen(o => !o)}
        className="relative w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all active:scale-90"
        aria-label="الإشعارات"
      >
        <Bell className={`w-4 h-4 transition-colors ${unread > 0 ? "text-white/80" : ""}`} />
        {unread > 0 && (
          <span className="absolute top-1 right-1 min-w-[14px] h-[14px] bg-primary rounded-full flex items-center justify-center text-[9px] font-black text-white px-[2px] shadow-lg shadow-primary/50">
            {unread > 99 ? "99+" : unread}
          </span>
        )}
      </button>

      {/* Panel */}
      {open && (
        <div
          className="absolute left-0 top-[calc(100%+8px)] w-[340px] max-w-[calc(100vw-24px)] rounded-2xl overflow-hidden shadow-2xl border border-white/[0.08] z-[200]"
          style={{ background: "linear-gradient(180deg, #16161A 0%, #111114 100%)" }}
          dir="rtl"
        >
          {/* Header */}
          <div className="flex items-center justify-between px-4 py-3 border-b border-white/[0.07]">
            <div className="flex items-center gap-2">
              <Bell className="w-4 h-4 text-primary" />
              <span className="text-[13px] font-black text-white font-['Cairo']">الإشعارات</span>
              {unread > 0 && (
                <span className="text-[10px] font-bold text-white/50 bg-primary/20 px-1.5 py-0.5 rounded-full">
                  {unread} جديد
                </span>
              )}
            </div>
            <div className="flex items-center gap-1">
              {unread > 0 && (
                <button
                  onClick={markAllRead}
                  disabled={loading}
                  className="flex items-center gap-1 text-[10px] text-primary hover:text-primary/80 font-bold px-2 py-1 rounded-lg hover:bg-primary/10 transition-all"
                >
                  <CheckCheck className="w-3 h-3" />
                  قراءة الكل
                </button>
              )}
              <button
                onClick={() => setOpen(false)}
                className="w-6 h-6 flex items-center justify-center rounded-lg hover:bg-white/8 text-white/40 hover:text-white/80 transition-all"
              >
                <X className="w-3.5 h-3.5" />
              </button>
            </div>
          </div>

          {/* Content */}
          <div className="max-h-[380px] overflow-y-auto">
            {!hasNotifs ? (
              <div className="flex flex-col items-center justify-center py-12 gap-3 text-white/30">
                <Bell className="w-10 h-10 opacity-30" />
                <p className="text-[13px] font-['Cairo']">لا توجد إشعارات بعد</p>
                <p className="text-[11px] opacity-60">ستصلك تنبيهات الحلقات الجديدة هنا</p>
              </div>
            ) : (
              <div className="divide-y divide-white/[0.04]">
                {notifs.map(n => (
                  <div
                    key={n.id}
                    onClick={() => handleClick(n)}
                    className={`flex gap-3 px-4 py-3 cursor-pointer transition-all hover:bg-white/[0.04] group relative ${!n.is_read ? "bg-primary/[0.04]" : ""}`}
                  >
                    {/* Unread dot */}
                    {!n.is_read && (
                      <span className="absolute right-2 top-1/2 -translate-y-1/2 w-1.5 h-1.5 bg-primary rounded-full" />
                    )}

                    {/* Poster */}
                    <div className="flex-shrink-0 w-11 h-14 rounded-lg overflow-hidden bg-white/5 flex items-center justify-center">
                      {n.image_url ? (
                        <img
                          src={n.image_url}
                          alt=""
                          className="w-full h-full object-cover"
                          loading="lazy"
                          onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
                        />
                      ) : n.type === "anime_episode" ? (
                        <Tv2 className="w-5 h-5 text-primary/60" />
                      ) : (
                        <Film className="w-5 h-5 text-violet-400/60" />
                      )}
                    </div>

                    {/* Text */}
                    <div className="flex-1 min-w-0 pt-0.5">
                      <div className="flex items-center gap-1.5 mb-0.5">
                        <span className={`text-[9px] font-bold px-1.5 py-0.5 rounded-full ${
                          n.type === "anime_episode"
                            ? "bg-primary/20 text-primary"
                            : "bg-violet-500/20 text-violet-400"
                        }`}>
                          {n.type === "anime_episode" ? "أنمي" : "أنيميشن"}
                        </span>
                      </div>
                      <p className="text-[12px] font-bold text-white/90 truncate leading-tight font-['Cairo']">
                        {n.title_ar || n.title}
                      </p>
                      {n.body && (
                        <p className="text-[11px] text-white/50 mt-0.5 truncate font-['Cairo']">{n.body}</p>
                      )}
                      <div className="flex items-center gap-1 mt-1">
                        <Clock className="w-2.5 h-2.5 text-white/30" />
                        <span className="text-[10px] text-white/30">{timeAgo(n.created_at)}</span>
                      </div>
                    </div>

                    {/* Mark read button */}
                    {!n.is_read && (
                      <button
                        onClick={e => { e.stopPropagation(); markOneRead(n.id); }}
                        className="flex-shrink-0 self-center w-6 h-6 flex items-center justify-center rounded-lg opacity-0 group-hover:opacity-100 hover:bg-primary/20 text-white/40 hover:text-primary transition-all"
                        title="تعليم كمقروء"
                      >
                        <Check className="w-3 h-3" />
                      </button>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* Footer */}
          {hasNotifs && (
            <div className="px-4 py-2.5 border-t border-white/[0.06] text-center">
              <p className="text-[10px] text-white/25 font-['Cairo']">تُحدَّث الإشعارات تلقائياً كل دقيقة</p>
            </div>
          )}
        </div>
      )}
    </div>
  );
}

import { useLocation } from 'wouter';
import { Bell, Search, Menu } from 'lucide-react';

interface HeaderProps {
  onMenuClick: () => void;
}

export function Header({ onMenuClick }: HeaderProps) {
  const [location, navigate] = useLocation();
  if (location.startsWith('/watch')) return null;

  return (
    <header className="sticky top-0 z-50 w-full bg-[#09090B]/90 backdrop-blur-xl border-b border-white/[0.06] px-4 py-3 flex items-center justify-between">
      <div className="flex items-center gap-3">
        <button
          onClick={onMenuClick}
          className="w-9 h-9 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/70 hover:text-white transition-all"
        >
          <Menu className="w-5 h-5" />
        </button>
        <div className="flex items-center gap-1">
          <span className="text-xl font-black tracking-tight" style={{ background: "linear-gradient(135deg,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>NOVA</span>
          <span className="text-xl font-black text-white/90 tracking-tight">ANIME</span>
        </div>
      </div>
      <div className="flex items-center gap-1">
        <button
          onClick={() => navigate('/search')}
          className="w-9 h-9 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all"
        >
          <Search className="w-5 h-5" />
        </button>
        <button className="relative w-9 h-9 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all">
          <Bell className="w-5 h-5" />
          <span className="absolute top-2 right-2 w-1.5 h-1.5 bg-primary rounded-full" />
        </button>
      </div>
    </header>
  );
}

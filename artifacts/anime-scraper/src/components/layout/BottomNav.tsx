import { Link, useLocation } from 'wouter';
import { Home, Search, Calendar, Library } from 'lucide-react';
import { motion } from 'framer-motion';

const navItems = [
  { icon: Home, label: 'الرئيسية', href: '/' },
  { icon: Search, label: 'البحث', href: '/search' },
  { icon: Calendar, label: 'الجدول', href: '/schedule' },
  { icon: Library, label: 'مكتبتي', href: '/library' },
];

export function BottomNav() {
  const [location] = useLocation();
  if (location.startsWith('/watch')) return null;

  return (
    <nav className="fixed bottom-0 left-0 right-0 z-50 pb-safe">
      <div className="mx-4 mb-4 flex items-center justify-around bg-[#111116]/95 backdrop-blur-xl border border-white/[0.08] rounded-[24px] px-2 py-2 shadow-2xl shadow-black/50">
        {navItems.map((item) => {
          const isActive = item.href === '/'
            ? (location === '/' || location === '')
            : location.startsWith(item.href);
          const Icon = item.icon;
          return (
            <Link key={item.href} href={item.href}
              className="relative flex flex-col items-center justify-center px-4 py-1.5 min-w-[60px]"
            >
              {isActive && (
                <motion.div
                  layoutId="nav-pill"
                  className="absolute inset-0 bg-primary/15 rounded-2xl border border-primary/20"
                  transition={{ type: 'spring', stiffness: 400, damping: 32 }}
                />
              )}
              <Icon className={`relative z-10 w-[22px] h-[22px] transition-all duration-200 ${isActive ? 'text-primary scale-110' : 'text-white/35'}`} />
              <span className={`relative z-10 mt-1 text-[9px] font-black transition-colors font-['Cairo'] ${isActive ? 'text-primary' : 'text-white/30'}`}>
                {item.label}
              </span>
            </Link>
          );
        })}
      </div>
    </nav>
  );
}

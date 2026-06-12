import { useState, useEffect, lazy, Suspense, Component, ReactNode } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Switch, Route, Router as WouterRouter, useLocation, useSearch } from "wouter";
import { Toaster } from "@/components/ui/toaster";
import { Header } from "@/components/layout/Header";
import { BottomNav } from "@/components/layout/BottomNav";
import { Sidebar } from "@/components/layout/Sidebar";
import { AuthProvider } from "@/lib/auth-context";

class ErrorBoundary extends Component<{ children: ReactNode; resetKey?: string }, { hasError: boolean; lastKey?: string }> {
  constructor(props: { children: ReactNode; resetKey?: string }) {
    super(props);
    this.state = { hasError: false, lastKey: props.resetKey };
  }
  static getDerivedStateFromError() { return { hasError: true }; }
  static getDerivedStateFromProps(props: { resetKey?: string }, state: { hasError: boolean; lastKey?: string }) {
    if (props.resetKey !== state.lastKey) return { hasError: false, lastKey: props.resetKey };
    return null;
  }
  componentDidCatch() {}
  render() {
    if (this.state.hasError) {
      return (
        <div className="bg-[#09090B] min-h-screen flex flex-col items-center justify-center gap-5 text-white" dir="rtl">
          <div className="w-16 h-16 rounded-full bg-white/5 border border-white/10 flex items-center justify-center text-3xl">⚠</div>
          <div className="text-center">
            <p className="font-black font-['Cairo'] text-lg mb-1">حدث خطأ غير متوقع</p>
            <p className="text-white/35 text-sm font-['Cairo']">تعذّر تحميل الصفحة</p>
          </div>
          <button
            onClick={() => { this.setState({ hasError: false }); window.location.href = "/"; }}
            className="px-6 py-3 bg-primary rounded-2xl font-black font-['Cairo'] text-white text-sm active:scale-95 transition-transform">
            العودة للرئيسية
          </button>
        </div>
      );
    }
    return this.props.children;
  }
}

/* ── Route wrappers that remount components when search params change ── */
function WatchWrapper() {
  const search = useSearch();
  return <Watch key={search} />;
}
function AnimationWatchWrapper() {
  const search = useSearch();
  return <AnimationWatch key={search} />;
}
function KartoonWatchWrapper() {
  const search = useSearch();
  return <KartoonWatch key={search} />;
}

const Home               = lazy(() => import("@/pages/Home"));
const AnimeDetail        = lazy(() => import("@/pages/AnimeDetail"));
const EpisodeList        = lazy(() => import("@/pages/EpisodeList"));
const Watch              = lazy(() => import("@/pages/Watch"));
const WatchById          = lazy(() => import("@/pages/WatchById"));
const Search             = lazy(() => import("@/pages/Search"));
const Schedule           = lazy(() => import("@/pages/Schedule"));
const Library            = lazy(() => import("@/pages/Library"));
const WatchHistory       = lazy(() => import("@/pages/WatchHistory"));
const Browse             = lazy(() => import("@/pages/Browse"));
const News               = lazy(() => import("@/pages/News"));
const Settings           = lazy(() => import("@/pages/Settings"));
const Profile            = lazy(() => import("@/pages/Profile"));
const NotFound           = lazy(() => import("@/pages/not-found"));
const AnimationLibrary   = lazy(() => import("@/pages/AnimationLibrary"));
const AnimationDetail    = lazy(() => import("@/pages/AnimationDetail"));
const AnimationEpisodes  = lazy(() => import("@/pages/AnimationEpisodes"));
const AnimationWatch     = lazy(() => import("@/pages/AnimationWatch"));
const KartoonLibrary     = lazy(() => import("@/pages/KartoonLibrary"));
const KartoonDetail      = lazy(() => import("@/pages/KartoonDetail"));
const KartoonWatch       = lazy(() => import("@/pages/KartoonWatch"));
const Updates            = lazy(() => import("@/pages/Updates"));
const AuthPage           = lazy(() => import("@/pages/Auth"));

function PageLoader() {
  return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <div className="relative w-10 h-10">
        <div className="w-10 h-10 border-2 border-primary/20 rounded-full" />
        <div className="w-10 h-10 border-2 border-primary border-t-transparent rounded-full animate-spin absolute inset-0" />
      </div>
    </div>
  );
}

const NO_GLOBAL_HEADER = ["/watch", "/episodes/", "/anime/", "/settings", "/profile", "/news", "/browse", "/animation/", "/auth", "/kartoon/"];

function applyTheme(t: string) {
  const root = document.documentElement;
  root.setAttribute("data-theme", t);
  if (t === "amoled") {
    root.style.setProperty("--bg-base", "#000000");
    root.style.setProperty("--bg-card", "#0A0A0A");
  } else if (t === "violet") {
    root.style.setProperty("--bg-base", "#0B0814");
    root.style.setProperty("--bg-card", "#130F1E");
  } else if (t === "blue") {
    root.style.setProperty("--bg-base", "#0B1120");
    root.style.setProperty("--bg-card", "#0F1829");
  } else if (t === "pink") {
    root.style.setProperty("--bg-base", "#130811");
    root.style.setProperty("--bg-card", "#1A0E15");
  } else {
    root.style.setProperty("--bg-base", "#09090B");
    root.style.setProperty("--bg-card", "#111116");
  }
}

function StartPageRedirect() {
  const [location, navigate] = useLocation();
  useEffect(() => {
    if (location === "/" || location === "") {
      const pref = localStorage.getItem("pref-startpage");
      if (pref === "browse") navigate("/browse");
      else if (pref === "animations") navigate("/animations");
      else if (pref === "library") navigate("/library");
    }
  }, []);
  return null;
}

function Router({ onMenuClick }: { onMenuClick: () => void }) {
  const [location] = useLocation();
  const hideHeader = NO_GLOBAL_HEADER.some(r => location.startsWith(r));

  return (
    <>
      <StartPageRedirect />
      {!hideHeader && <Header onMenuClick={onMenuClick} />}
      <ErrorBoundary resetKey={location}>
        <Suspense fallback={<PageLoader />}>
          {/* overflow:clip clips the absolutely-positioned exiting page in both
              axes without creating a scroll container, so sticky headers still work */}
          <div style={{ position: "relative", overflow: "clip" }}>
          <AnimatePresence mode="popLayout" initial={false}>
            <motion.div
              key={location}
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: -6 }}
              transition={{ duration: 0.17, ease: [0.22, 1, 0.36, 1] }}
              style={{ minHeight: "100%" }}
            >
              <Switch>
                <Route path="/"                        component={Home} />
                <Route path="/anime/:id"               component={AnimeDetail} />
                <Route path="/episodes/:id"            component={EpisodeList} />
                <Route path="/watch/:id"               component={WatchById} />
                <Route path="/watch"                   component={WatchWrapper} />
                <Route path="/search"                  component={Search} />
                <Route path="/schedule"               component={Schedule} />
                <Route path="/library"                 component={Library} />
                <Route path="/history"                 component={WatchHistory} />
                <Route path="/browse"                  component={Browse} />
                <Route path="/news"                    component={News} />
                <Route path="/updates"                 component={Updates} />
                <Route path="/settings"               component={Settings} />
                <Route path="/profile"                component={Profile} />
                <Route path="/auth"                    component={AuthPage} />
                <Route path="/animations"              component={AnimationLibrary} />
                <Route path="/animation/watch"                    component={AnimationWatchWrapper} />
                <Route path="/animation/:type/:id/episodes"    component={AnimationEpisodes} />
                <Route path="/animation/:type/:id"             component={AnimationDetail} />
                <Route path="/kartouns"                component={KartoonLibrary} />
                <Route path="/kartoon/watch"           component={KartoonWatchWrapper} />
                <Route path="/kartoon/series"          component={KartoonDetail} />
                <Route                                 component={NotFound} />
              </Switch>
            </motion.div>
          </AnimatePresence>
          </div>
        </Suspense>
      </ErrorBoundary>
      <BottomNav />
      <Toaster />
    </>
  );
}

function App() {
  const [sidebarOpen, setSidebarOpen] = useState(false);

  useEffect(() => {
    const saved = localStorage.getItem("pref-theme") || "dark";
    applyTheme(saved);
  }, []);

  return (
    <ErrorBoundary resetKey="root">
      <AuthProvider>
        <WouterRouter base={import.meta.env.BASE_URL.replace(/\/$/, "")}>
          <Router onMenuClick={() => setSidebarOpen(true)} />
          <Sidebar open={sidebarOpen} onClose={() => setSidebarOpen(false)} />
        </WouterRouter>
      </AuthProvider>
    </ErrorBoundary>
  );
}

export default App;

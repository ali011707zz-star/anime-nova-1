import { useState, useEffect, lazy, Suspense } from "react";
import { Switch, Route, Router as WouterRouter, useLocation } from "wouter";
import { Toaster } from "@/components/ui/toaster";
import { Header } from "@/components/layout/Header";
import { BottomNav } from "@/components/layout/BottomNav";
import { Sidebar } from "@/components/layout/Sidebar";
import Home from "@/pages/Home";
const AnimeDetail = lazy(() => import("@/pages/AnimeDetail"));
const EpisodeList = lazy(() => import("@/pages/EpisodeList"));
const Watch       = lazy(() => import("@/pages/Watch"));
const WatchById   = lazy(() => import("@/pages/WatchById"));
const Search      = lazy(() => import("@/pages/Search"));
const Schedule    = lazy(() => import("@/pages/Schedule"));
const Library     = lazy(() => import("@/pages/Library"));
const Browse      = lazy(() => import("@/pages/Browse"));
const News        = lazy(() => import("@/pages/News"));
const Settings    = lazy(() => import("@/pages/Settings"));
const NotFound    = lazy(() => import("@/pages/not-found"));

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

const NO_GLOBAL_HEADER = ["/watch", "/episodes/", "/anime/", "/settings", "/news", "/browse"];

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

function Router({ onMenuClick }: { onMenuClick: () => void }) {
  const [location] = useLocation();
  const hideHeader = NO_GLOBAL_HEADER.some(r => location.startsWith(r));

  return (
    <>
      {!hideHeader && <Header onMenuClick={onMenuClick} />}
      <Suspense fallback={<PageLoader />}>
        <Switch>
          <Route path="/" component={Home} />
          <Route path="/anime/:id" component={AnimeDetail} />
          <Route path="/episodes/:id" component={EpisodeList} />
          <Route path="/watch/:id" component={WatchById} />
          <Route path="/watch" component={Watch} />
          <Route path="/search" component={Search} />
          <Route path="/schedule" component={Schedule} />
          <Route path="/library" component={Library} />
          <Route path="/browse" component={Browse} />
          <Route path="/news" component={News} />
          <Route path="/settings" component={Settings} />
          <Route component={NotFound} />
        </Switch>
      </Suspense>
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
    <WouterRouter base={import.meta.env.BASE_URL.replace(/\/$/, "")}>
      <Router onMenuClick={() => setSidebarOpen(true)} />
      <Sidebar open={sidebarOpen} onClose={() => setSidebarOpen(false)} />
    </WouterRouter>
  );
}

export default App;

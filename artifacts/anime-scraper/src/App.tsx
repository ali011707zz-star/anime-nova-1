import { useState, useEffect } from "react";
import { Switch, Route, Router as WouterRouter, useLocation } from "wouter";
import { Toaster } from "@/components/ui/toaster";
import { Header } from "@/components/layout/Header";
import { BottomNav } from "@/components/layout/BottomNav";
import { Sidebar } from "@/components/layout/Sidebar";
import Home from "@/pages/Home";
import AnimeDetail from "@/pages/AnimeDetail";
import EpisodeList from "@/pages/EpisodeList";
import Watch from "@/pages/Watch";
import WatchById from "@/pages/WatchById";
import Search from "@/pages/Search";
import Schedule from "@/pages/Schedule";
import Library from "@/pages/Library";
import Browse from "@/pages/Browse";
import News from "@/pages/News";
import Settings from "@/pages/Settings";
import NotFound from "@/pages/not-found";

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

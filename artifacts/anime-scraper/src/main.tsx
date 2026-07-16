import { createRoot } from "react-dom/client";
import { HelmetProvider } from "react-helmet-async";
import App from "./App";
import "./index.css";

/* ── Global error guards — prevent silent white-screen crashes ── */
window.addEventListener("unhandledrejection", (e) => {
  e.preventDefault();
  console.error("[Nova] unhandled rejection:", e.reason);
});
window.addEventListener("error", (e) => {
  /* Suppress harmless ResizeObserver noise */
  if (
    e.message?.includes("ResizeObserver loop") ||
    e.message?.includes("ResizeObserver loop completed")
  ) {
    e.stopImmediatePropagation();
    return;
  }
  console.error("[Nova] global error:", e.error ?? e.message);
});

createRoot(document.getElementById("root")!).render(
  <HelmetProvider>
    <App />
  </HelmetProvider>
);

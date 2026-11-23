export const SITE_BASE: string;
export const APP_VERSION: string;
export function normalizeSeoPath(rawPath: string): string;
export function needsTrailingSlashRedirect(rawPath: string): boolean;
export function buildCanonicalUrl(cleanPath: string, base?: string): string;
export function classifySpaRoute(rawPath: string): {
  kind: "indexable" | "noindex_ok" | "not_found";
  status: number;
  robots: string;
  cleanPath: string;
};
export function buildPageJsonLd(opts: {
  base?: string;
  cleanPath?: string;
  title?: string;
  desc?: string;
  ogImage?: string;
  animeName?: string;
}): Record<string, any>;

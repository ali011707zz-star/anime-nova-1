/**
 * Nova Manga & Manhwa Offline Download Manager
 *
 * Downloads chapter pages (images or text) to FileSystem.documentDirectory
 * with automatic proxy fallback & retry, verifies every saved page, and
 * persists an offline index in AsyncStorage so chapters open instantaneously
 * with zero internet connection.
 */
import * as FileSystem from "expo-file-system";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";

const MANGA_DOWNLOADS_KEY = "nova-manga-downloads-v1";
const MANGA_DOWNLOADS_ROOT = `${FileSystem.documentDirectory ?? ""}manga-downloads/`;
const DOWNLOAD_CONCURRENCY = 3;

export interface DownloadedMangaChapter {
  id: string; // `${mangaId}::${chapterSlug}`
  mangaId: string;
  source: "manga" | "manhwa";
  mangaTitle: string;
  mangaTitleEn: string;
  coverUrl: string;
  localCoverUri?: string;
  chapterSlug: string;
  chapterNumber: string;
  chapterTitle: string;
  chapterDate?: string;
  contentType: "images" | "text";
  localPages: string[]; // ordered file:// URIs
  localTextUri?: string;
  pageCount: number;
  totalBytes: number;
  downloadedAt: number;
}

export interface ActiveMangaDownload {
  id: string;
  mangaId: string;
  chapterSlug: string;
  chapterTitle: string;
  progress: number; // 0..100
  downloadedPages: number;
  totalPages: number;
  status: "downloading" | "error";
  error?: string;
}

export interface DownloadMangaChapterInput {
  mangaId: string;
  source: "manga" | "manhwa";
  mangaTitle: string;
  mangaTitleEn?: string;
  coverUrl?: string;
  chapterSlug: string;
  chapterNumber: string;
  chapterTitle: string;
  chapterDate?: string;
}

const activeMap = new Map<string, ActiveMangaDownload>();
const listeners = new Set<() => void>();

function notifyListeners() {
  listeners.forEach((cb) => {
    try { cb(); } catch {}
  });
}

export function makeMangaDownloadId(mangaId: string, chapterSlug: string): string {
  return `${mangaId}::${chapterSlug}`;
}

function safeSegment(raw: string): string {
  return String(raw || "item")
    .replace(/[^a-zA-Z0-9_-]+/g, "_")
    .replace(/^_+|_+$/g, "")
    .slice(0, 64) || "item";
}

export function subscribeMangaDownloads(cb: () => void): () => void {
  listeners.add(cb);
  return () => {
    listeners.delete(cb);
  };
}

export function getActiveMangaDownloadsSnapshot(): ActiveMangaDownload[] {
  return Array.from(activeMap.values());
}

export function getActiveMangaDownload(mangaId: string, chapterSlug: string): ActiveMangaDownload | undefined {
  return activeMap.get(makeMangaDownloadId(mangaId, chapterSlug));
}

async function readIndex(): Promise<DownloadedMangaChapter[]> {
  try {
    const raw = await AsyncStorage.getItem(MANGA_DOWNLOADS_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
}

async function writeIndex(items: DownloadedMangaChapter[]): Promise<void> {
  await AsyncStorage.setItem(MANGA_DOWNLOADS_KEY, JSON.stringify(items));
  notifyListeners();
}

export async function getDownloadedMangaChapters(): Promise<DownloadedMangaChapter[]> {
  const list = await readIndex();
  return list.sort((a, b) => b.downloadedAt - a.downloadedAt);
}

export async function getDownloadedChapter(
  mangaId: string,
  chapterSlug: string,
): Promise<DownloadedMangaChapter | null> {
  const id = makeMangaDownloadId(mangaId, chapterSlug);
  const list = await readIndex();
  const found = list.find((it) => it.id === id) || null;
  if (!found) return null;

  // Verify at least the first page / text file still exists on disk
  try {
    if (found.contentType === "text" && found.localTextUri) {
      const info = await FileSystem.getInfoAsync(found.localTextUri);
      if (info.exists) return found;
    } else if (found.localPages.length > 0) {
      const info = await FileSystem.getInfoAsync(found.localPages[0]);
      if (info.exists) return found;
    }
  } catch {}
  return null;
}

export async function getDownloadedChaptersForManga(
  mangaId: string,
): Promise<DownloadedMangaChapter[]> {
  const list = await readIndex();
  return list.filter((it) => it.mangaId === mangaId);
}

async function downloadFileWithFallback(
  rawUrl: string,
  destUri: string,
  apiBase: string,
): Promise<number> {
  const trimmed = String(rawUrl || "").trim();
  if (!trimmed) throw new Error("Empty image URL");

  const directUrl = trimmed.startsWith("/") ? `${apiBase}${trimmed}` : trimmed;
  const proxyUrl =
    directUrl.includes("/api/manga/image-proxy") || directUrl.includes("/api/manga/img-proxy")
      ? directUrl
      : `${apiBase}/api/manga/image-proxy?url=${encodeURIComponent(directUrl)}`;

  // Prefer proxy first for azorafly/mangalik hotlink protection, then direct fallback
  const candidates =
    directUrl === proxyUrl
      ? [directUrl]
      : /azorafly|mangalik|mangatek|storage\./i.test(directUrl)
        ? [proxyUrl, directUrl]
        : [directUrl, proxyUrl];

  let lastErr: Error | null = null;
  for (let attempt = 0; attempt < 2; attempt++) {
    for (const url of candidates) {
      try {
        const res = await FileSystem.downloadAsync(url, destUri, {
          headers: {
            Accept: "image/webp,image/jpeg,image/png,image/*,*/*;q=0.8",
          },
        });
        if (res.status >= 200 && res.status < 300) {
          const info = await FileSystem.getInfoAsync(destUri);
          const size = info.exists && "size" in info && typeof info.size === "number" ? info.size : 0;
          if (size > 200) return size;
        }
        await FileSystem.deleteAsync(destUri, { idempotent: true }).catch(() => {});
      } catch (e: any) {
        lastErr = e instanceof Error ? e : new Error(String(e));
        await FileSystem.deleteAsync(destUri, { idempotent: true }).catch(() => {});
      }
    }
  }
  throw lastErr || new Error("تعذر تنزيل إحدى صفحات الفصل");
}

export async function downloadMangaChapter(
  input: DownloadMangaChapterInput,
): Promise<DownloadedMangaChapter> {
  if (!FileSystem.documentDirectory) {
    throw new Error("التحميل غير متاح على المتصفح");
  }
  const id = makeMangaDownloadId(input.mangaId, input.chapterSlug);
  if (activeMap.has(id)) {
    throw new Error("جاري تحميل هذا الفصل بالفعل");
  }

  const apiBase = getBaseUrl().replace(/\/+$/, "");
  activeMap.set(id, {
    id,
    mangaId: input.mangaId,
    chapterSlug: input.chapterSlug,
    chapterTitle: input.chapterTitle,
    progress: 2,
    downloadedPages: 0,
    totalPages: 0,
    status: "downloading",
  });
  notifyListeners();

  const mangaDir = `${MANGA_DOWNLOADS_ROOT}${safeSegment(input.mangaId)}/`;
  const chapterDir = `${mangaDir}${safeSegment(input.chapterSlug)}/`;

  try {
    await FileSystem.makeDirectoryAsync(chapterDir, { intermediates: true });

    // 1. Fetch chapter pages metadata from API
    const qs = new URLSearchParams({
      id: input.mangaId,
      chapter: input.chapterSlug,
      source: input.source,
    });
    const res = await fetch(`${apiBase}/api/manga/chapter?${qs.toString()}`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();

    // Optional local cover download (cached per manga folder)
    let localCoverUri: string | undefined;
    if (input.coverUrl) {
      const coverDest = `${mangaDir}cover.jpg`;
      try {
        const coverInfo = await FileSystem.getInfoAsync(coverDest);
        if (coverInfo.exists && "size" in coverInfo && (coverInfo.size || 0) > 200) {
          localCoverUri = coverDest;
        } else {
          await downloadFileWithFallback(input.coverUrl, coverDest, apiBase);
          localCoverUri = coverDest;
        }
      } catch {}
    }

    const isTextOnly =
      data?.contentType === "text" ||
      (Boolean(data?.contentHtml || data?.previewText) && (!Array.isArray(data?.pages) || data.pages.length === 0));

    if (isTextOnly) {
      const htmlText = String(data?.contentHtml || data?.previewText || "").trim();
      if (!htmlText) throw new Error("الفصل لا يحتوي على محتوى قابل للتحميل");
      const textDest = `${chapterDir}chapter.html`;
      await FileSystem.writeAsStringAsync(textDest, htmlText, {
        encoding: FileSystem.EncodingType.UTF8,
      });
      const info = await FileSystem.getInfoAsync(textDest);
      const totalBytes = info.exists && "size" in info && typeof info.size === "number" ? info.size : htmlText.length;

      const record: DownloadedMangaChapter = {
        id,
        mangaId: input.mangaId,
        source: input.source,
        mangaTitle: input.mangaTitle,
        mangaTitleEn: input.mangaTitleEn || input.mangaTitle,
        coverUrl: input.coverUrl || "",
        localCoverUri,
        chapterSlug: input.chapterSlug,
        chapterNumber: input.chapterNumber,
        chapterTitle: input.chapterTitle,
        chapterDate: input.chapterDate,
        contentType: "text",
        localPages: [],
        localTextUri: textDest,
        pageCount: 1,
        totalBytes,
        downloadedAt: Date.now(),
      };
      const existing = await readIndex();
      await writeIndex([record, ...existing.filter((x) => x.id !== id)]);
      activeMap.delete(id);
      notifyListeners();
      return record;
    }

    const rawPages: string[] = Array.isArray(data?.pages)
      ? data.pages
          .map((p: any) => (typeof p === "string" ? p : String(p?.url || "")))
          .map((u: string) => u.trim())
          .filter(Boolean)
      : [];

    if (rawPages.length === 0) {
      throw new Error("لم يتم العثور على صفحات لتحميل هذا الفصل");
    }

    activeMap.set(id, {
      id,
      mangaId: input.mangaId,
      chapterSlug: input.chapterSlug,
      chapterTitle: input.chapterTitle,
      progress: 5,
      downloadedPages: 0,
      totalPages: rawPages.length,
      status: "downloading",
    });
    notifyListeners();

    const localPages = new Array<string>(rawPages.length);
    let totalBytes = 0;
    let completed = 0;
    let nextIdx = 0;

    const worker = async () => {
      while (true) {
        const idx = nextIdx++;
        if (idx >= rawPages.length) break;
        const pageUrl = rawPages[idx];
        const padded = String(idx + 1).padStart(4, "0");
        const dest = `${chapterDir}p_${padded}.jpg`;
        const size = await downloadFileWithFallback(pageUrl, dest, apiBase);
        localPages[idx] = dest;
        totalBytes += size;
        completed++;
        const pct = Math.min(99, Math.max(5, Math.round((completed / rawPages.length) * 100)));
        activeMap.set(id, {
          id,
          mangaId: input.mangaId,
          chapterSlug: input.chapterSlug,
          chapterTitle: input.chapterTitle,
          progress: pct,
          downloadedPages: completed,
          totalPages: rawPages.length,
          status: "downloading",
        });
        notifyListeners();
      }
    };

    const workerCount = Math.min(DOWNLOAD_CONCURRENCY, rawPages.length);
    await Promise.all(Array.from({ length: workerCount }, () => worker()));

    const record: DownloadedMangaChapter = {
      id,
      mangaId: input.mangaId,
      source: input.source,
      mangaTitle: input.mangaTitle,
      mangaTitleEn: input.mangaTitleEn || input.mangaTitle,
      coverUrl: input.coverUrl || "",
      localCoverUri,
      chapterSlug: input.chapterSlug,
      chapterNumber: input.chapterNumber,
      chapterTitle: input.chapterTitle,
      chapterDate: input.chapterDate,
      contentType: "images",
      localPages,
      pageCount: localPages.length,
      totalBytes,
      downloadedAt: Date.now(),
    };

    const existing = await readIndex();
    await writeIndex([record, ...existing.filter((x) => x.id !== id)]);
    activeMap.delete(id);
    notifyListeners();
    return record;
  } catch (err: any) {
    // Cleanup partial chapter files on failure so disk stays clean
    await FileSystem.deleteAsync(chapterDir, { idempotent: true }).catch(() => {});
    activeMap.delete(id);
    notifyListeners();
    throw err instanceof Error ? err : new Error(String(err || "فشل تحميل الفصل"));
  }
}

export async function deleteDownloadedMangaChapter(id: string): Promise<void> {
  const existing = await readIndex();
  const target = existing.find((x) => x.id === id);
  if (target) {
    const chapterDir = `${MANGA_DOWNLOADS_ROOT}${safeSegment(target.mangaId)}/${safeSegment(target.chapterSlug)}/`;
    await FileSystem.deleteAsync(chapterDir, { idempotent: true }).catch(() => {});
  }
  await writeIndex(existing.filter((x) => x.id !== id));
}

export async function clearAllMangaDownloads(): Promise<void> {
  await FileSystem.deleteAsync(MANGA_DOWNLOADS_ROOT, { idempotent: true }).catch(() => {});
  await writeIndex([]);
}

export async function readOfflineChapterText(record: DownloadedMangaChapter): Promise<string> {
  if (!record.localTextUri) return "";
  try {
    return await FileSystem.readAsStringAsync(record.localTextUri, {
      encoding: FileSystem.EncodingType.UTF8,
    });
  } catch {
    return "";
  }
}

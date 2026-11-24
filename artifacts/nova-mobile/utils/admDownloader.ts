import { useCallback, useEffect, useState } from "react";
import { Alert, Linking, Platform, Share } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { hasNativeOpenInAdm, openInAdmNative } from "expo-nova-download";
import { getBaseUrl } from "@/utils/baseUrl";
import {
  ADM_MARKET_URL,
  ADM_PLAY_STORE_URL,
  DOWNLOAD_METHOD_STORAGE_KEY,
  buildAdmFileName,
  buildAdmIntentUrls,
  isAdmAvailableOnDevice,
  isSiteStaticallyEligibleForAdm,
  normalizeDownloadMethodPref,
  resolveAdmDirectMp4,
  type AdmResolutionInput,
  type AdmResolutionResult,
  type DownloadMethodPref,
} from "./admDownloadLogic.mjs";

export {
  isAdmAvailableOnDevice,
  isSiteStaticallyEligibleForAdm,
  normalizeDownloadMethodPref,
  resolveAdmDirectMp4,
  type DownloadMethodPref,
  type AdmResolutionInput,
  type AdmResolutionResult,
};

const prefListeners = new Set<(pref: DownloadMethodPref) => void>();
let cachedPref: DownloadMethodPref | null = null;

export async function getDownloadMethodPref(): Promise<DownloadMethodPref> {
  if (cachedPref) return cachedPref;
  try {
    const raw = await AsyncStorage.getItem(DOWNLOAD_METHOD_STORAGE_KEY);
    cachedPref = normalizeDownloadMethodPref(raw);
    return cachedPref;
  } catch {
    return "ask";
  }
}

export async function setDownloadMethodPref(pref: DownloadMethodPref): Promise<DownloadMethodPref> {
  const normalized = normalizeDownloadMethodPref(pref);
  cachedPref = normalized;
  try {
    await AsyncStorage.setItem(DOWNLOAD_METHOD_STORAGE_KEY, normalized);
  } catch {
    /* non-fatal storage error */
  }
  prefListeners.forEach((fn) => {
    try {
      fn(normalized);
    } catch {}
  });
  return normalized;
}

export function useDownloadMethodPref(): [
  DownloadMethodPref,
  (next: DownloadMethodPref) => Promise<void>,
] {
  const [pref, setPref] = useState<DownloadMethodPref>(cachedPref ?? "ask");

  useEffect(() => {
    let active = true;
    void getDownloadMethodPref().then((value) => {
      if (active) setPref(value);
    });
    const listener = (next: DownloadMethodPref) => {
      if (active) setPref(next);
    };
    prefListeners.add(listener);
    return () => {
      active = false;
      prefListeners.delete(listener);
    };
  }, []);

  const update = useCallback(async (next: DownloadMethodPref) => {
    const saved = await setDownloadMethodPref(next);
    setPref(saved);
  }, []);

  return [pref, update];
}

/**
 * Lightweight pre-flight verification directly from the user's device (0 VPS bandwidth).
 * Catches hidden 403/404/HTML/HLS responses before handing the URL to ADM.
 */
async function probeDirectMp4FromDevice(directUrl: string): Promise<{ ok: boolean; messageAr?: string }> {
  const ctrl = new AbortController();
  const timer = setTimeout(() => ctrl.abort(), 3500);
  try {
    const res = await fetch(directUrl, {
      method: "HEAD",
      redirect: "follow",
      signal: ctrl.signal,
    });

    // Some CDNs reject HEAD (405/501) while allowing GET — treat as neutral.
    if (res.status === 405 || res.status === 501) {
      return { ok: true };
    }
    if (res.status === 401 || res.status === 403 || res.status === 404 || res.status === 410) {
      return {
        ok: false,
        messageAr: "الرابط المباشر لهذا السيرفر محمي أو منتهي الصلاحية ولا يقبل التحميل الخارجي عبر ADM.",
      };
    }

    const ct = String(res.headers.get("content-type") || "").toLowerCase();
    if (ct) {
      if (
        ct.includes("mpegurl") ||
        ct.includes("x-mpegurl") ||
        ct.includes("dash+xml")
      ) {
        return {
          ok: false,
          messageAr: "هذا السيرفر يبث بصيغة HLS وليس MP4 مباشر — يدعم ADM ملفات MP4 فقط.",
        };
      }
      if (ct.includes("text/html") || ct.includes("application/json") || ct.includes("text/plain")) {
        return {
          ok: false,
          messageAr: "هذا السيرفر أعاد صفحة حماية بدلاً من ملف MP4 مباشر.",
        };
      }
    }
    return { ok: true };
  } catch {
    // Network/timeout on HEAD should not false-reject valid MediaFire/Pixeldrain CDN URLs
    return { ok: true };
  } finally {
    clearTimeout(timer);
  }
}

/**
 * Resolves and strictly validates a direct external MP4 URL for ADM (0% VPS video load).
 * For aw-dubbed MediaFire links, resolves the external MediaFire CDN URL via a tiny JSON call.
 */
export async function resolveStrictAdmUrlForClient(
  input: AdmResolutionInput,
): Promise<AdmResolutionResult> {
  const apiBase = input.apiBase || getBaseUrl();
  let result = resolveAdmDirectMp4({ ...input, apiBase });

  if (result.needsMfResolve && result.mfLink) {
    try {
      const ctrl = new AbortController();
      const tid = setTimeout(() => ctrl.abort(), 12000);
      try {
        const res = await fetch(
          `${apiBase}/api/aw-dubbed/mf-stream?link=${encodeURIComponent(result.mfLink)}&resolve=1`,
          { signal: ctrl.signal, cache: "no-store" },
        );
        const data = (await res.json().catch(() => ({}))) as {
          ok?: boolean;
          url?: string;
          directType?: string;
        };
        if (!res.ok || !data?.url) {
          return {
            eligible: false,
            directUrl: null,
            needsMfResolve: false,
            mfLink: null,
            reason: "mf_resolve_failed",
            messageAr: "تعذّر استخراج رابط MediaFire المباشر لهذا السيرفر حالياً.",
          };
        }
        result = resolveAdmDirectMp4({
          ...input,
          url: data.url,
          rawUrl: data.url,
          directUrl: data.url,
          directType: data.directType || "mp4",
          apiBase,
        });
      } finally {
        clearTimeout(tid);
      }
    } catch {
      return {
        eligible: false,
        directUrl: null,
        needsMfResolve: false,
        mfLink: null,
        reason: "mf_resolve_error",
        messageAr: "تعذّر الاتصال لاستخراج رابط MediaFire المباشر.",
      };
    }
  }

  if (!result.eligible || !result.directUrl) {
    return result;
  }

  // Final smart device-side verification (0 VPS bandwidth)
  const probe = await probeDirectMp4FromDevice(result.directUrl);
  if (!probe.ok) {
    return {
      eligible: false,
      directUrl: null,
      needsMfResolve: false,
      mfLink: null,
      reason: "device_probe_rejected",
      messageAr: probe.messageAr || "هذا الرابط لا يقبل التحميل المباشر عبر ADM.",
    };
  }

  return result;
}

export async function openAdmPlayStore(): Promise<void> {
  try {
    await Linking.openURL(ADM_MARKET_URL);
  } catch {
    await Linking.openURL(ADM_PLAY_STORE_URL).catch(() => {});
  }
}

export function showAdmIneligibleAlert(
  reasonAr: string,
  onFallbackInternal?: () => void,
): void {
  const buttons: { text: string; style?: "default" | "cancel" | "destructive"; onPress?: () => void }[] = [];
  if (onFallbackInternal) {
    buttons.push({
      text: "التحميل داخل التطبيق",
      onPress: onFallbackInternal,
    });
  }
  buttons.push({ text: "إلغاء", style: "cancel" });

  Alert.alert(
    "السيرفر لا يدعم ADM",
    `${reasonAr}\n\nيدعم ADM ملفات MP4 المباشرة الخارجية فقط.`,
    buttons,
  );
}

/**
 * Hands a strictly validated external MP4 URL to ADM (Standard or Pro) on Android.
 * Never falls back to an arbitrary browser unless user chooses Play Store / internal download.
 */
export async function launchAdmDownload(params: {
  directUrl: string;
  title?: string;
  ep?: number | string;
  quality?: string;
  onFallbackInternal?: () => void;
}): Promise<boolean> {
  if (Platform.OS !== "android" || !params.directUrl) return false;

  const fileName = buildAdmFileName({
    title: params.title,
    ep: params.ep,
    quality: params.quality,
  });

  // 1. Native Android direct launch into com.dv.adm.AEditor / com.dv.adm.pay.AEditor
  //    (zero extra taps + pre-filled filename when compiled into APK).
  if (hasNativeOpenInAdm()) {
    try {
      const opened = await openInAdmNative(params.directUrl, fileName);
      if (opened) return true;
    } catch {
      /* fall through to not-installed alert */
    }

    const buttons: { text: string; style?: "default" | "cancel" | "destructive"; onPress?: () => void }[] = [
      {
        text: "تثبيت ADM",
        onPress: () => {
          void openAdmPlayStore();
        },
      },
    ];
    if (params.onFallbackInternal) {
      buttons.push({
        text: "التحميل داخل التطبيق",
        onPress: params.onFallbackInternal,
      });
    }
    buttons.push({ text: "إلغاء", style: "cancel" });

    Alert.alert(
      "تطبيق ADM غير مثبّت",
      "لم يتم العثور على تطبيق Advanced Download Manager (ADM) على جهازك.\nيمكنك تثبيته الآن أو متابعة التنزيل داخل التطبيق.",
      buttons,
    );
    return false;
  }

  // 2. OTA compatibility path for existing v1.0.10 APKs:
  //    React Native Linking.openURL() does NOT parse intent:// URIs on Android,
  //    whereas Share.share() dispatches Android Intent.ACTION_SEND (text/plain)
  //    which ADM Editor (com.dv.adm) registers directly in the native chooser.
  try {
    await Share.share(
      {
        title: fileName,
        message: params.directUrl,
      },
      {
        dialogTitle: "اختر ADM Editor لبدء التنزيل",
      },
    );
    return true;
  } catch {
    // Final fallback: direct HTTPS URL via OS chooser
    try {
      await Linking.openURL(params.directUrl);
      return true;
    } catch {
      if (params.onFallbackInternal) {
        params.onFallbackInternal();
      }
      return false;
    }
  }
}

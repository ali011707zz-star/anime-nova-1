import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as FileSystem from "expo-file-system";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
  Linking,
  Modal,
  Platform,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import {
  enqueueNativeDownload,
  installApkNative,
  isNativeDownloadAvailable,
  listNativeDownloads,
} from "expo-nova-download";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const DISMISSED_VERSION_KEY = "nova-dismissed-update-version";
const UPDATE_JOB_ID = "nova-self-update-apk";

export const CURRENT_APP_VERSION: string = Constants.expoConfig?.version || "1.0.9";
export const CURRENT_VERSION_CODE: number = Number(Constants.expoConfig?.android?.versionCode || 10);

export function compareAppVersions(a: string, b: string): number {
  const pa = String(a || "0.0.0")
    .replace(/[^0-9.]/g, "")
    .split(".")
    .map((n) => parseInt(n, 10) || 0);
  const pb = String(b || "0.0.0")
    .replace(/[^0-9.]/g, "")
    .split(".")
    .map((n) => parseInt(n, 10) || 0);
  for (let i = 0; i < 3; i++) {
    const da = pa[i] || 0;
    const db = pb[i] || 0;
    if (da < db) return -1;
    if (da > db) return 1;
  }
  return 0;
}

type ManualOpenListener = () => void;
const manualOpenListeners = new Set<ManualOpenListener>();

export function openAppUpdateModal(): void {
  for (const fn of manualOpenListeners) {
    try {
      fn();
    } catch {}
  }
}

export function AppUpdateModal() {
  const colors = useColors();
  const { remoteConfig, refreshConfig, theme } = useApp();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const isWhite = theme === "white";

  const [visible, setVisible] = useState(false);
  const [manualCheckMode, setManualCheckMode] = useState(false);
  const [downloading, setDownloading] = useState(false);
  const [progressPct, setProgressPct] = useState(0);
  const [statusMessage, setStatusMessage] = useState<string | null>(null);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [downloadedPath, setDownloadedPath] = useState<string | null>(null);
  const pollTimerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const latestVersion = remoteConfig.latestVersion || remoteConfig.version || CURRENT_APP_VERSION;
  const latestVersionCode = Number(remoteConfig.latestVersionCode || CURRENT_VERSION_CODE);
  const apkUrl = remoteConfig.apkUrl || `https://animenovaa.duckdns.org/nova.apk?v=${latestVersion}`;
  const tvCode = remoteConfig.tvDownloaderCode || "2576388";
  const hasNewerVersion =
    compareAppVersions(CURRENT_APP_VERSION, latestVersion) < 0 ||
    (latestVersionCode > CURRENT_VERSION_CODE && compareAppVersions(CURRENT_APP_VERSION, latestVersion) <= 0);

  useEffect(() => {
    const handleManualOpen = () => {
      setErrorMessage(null);
      setStatusMessage(null);
      setManualCheckMode(true);
      setVisible(true);
      void refreshConfig();
    };
    manualOpenListeners.add(handleManualOpen);
    return () => {
      manualOpenListeners.delete(handleManualOpen);
    };
  }, [refreshConfig]);

  useEffect(() => {
    if (!hasNewerVersion) return;
    let cancelled = false;
    AsyncStorage.getItem(DISMISSED_VERSION_KEY)
      .then((dismissedVer) => {
        if (cancelled) return;
        if (dismissedVer === latestVersion && !remoteConfig.forceUpdate) return;
        setManualCheckMode(false);
        setVisible(true);
      })
      .catch(() => {
        if (!cancelled) setVisible(true);
      });
    return () => {
      cancelled = true;
    };
  }, [hasNewerVersion, latestVersion, remoteConfig.forceUpdate]);

  useEffect(() => {
    return () => {
      if (pollTimerRef.current) clearInterval(pollTimerRef.current);
    };
  }, []);

  const triggerInstall = useCallback(async (localUri: string) => {
    try {
      setStatusMessage("جارٍ فتح مثبت الحزم لتثبيت التحديث…");
      const res = await installApkNative(localUri);
      if (res === "permission_required") {
        setStatusMessage("يرجى تفعيل سماحية «تثبيت التطبيقات غير المعروفة» لـ Anime NOVA ثم اضغط «تثبيت التحديث الآن».");
      } else {
        setStatusMessage("تم فتح نافذة التثبيت بنجاح ✓");
      }
    } catch {
      Linking.openURL(apkUrl).catch(() => {});
    }
  }, [apkUrl]);

  const startInAppUpdate = useCallback(async () => {
    if (Platform.OS !== "android") {
      Linking.openURL(apkUrl).catch(() => {});
      return;
    }

    if (downloadedPath) {
      await triggerInstall(downloadedPath);
      return;
    }

    setDownloading(true);
    setProgressPct(1);
    setErrorMessage(null);
    setStatusMessage("جارٍ تنزيل التحديث داخل التطبيق…");

    const fileName = `Anime-Nova-v${latestVersion}.apk`;

    try {
      if (isNativeDownloadAvailable()) {
        const job = await enqueueNativeDownload({
          appId: UPDATE_JOB_ID,
          url: apkUrl,
          fileName,
          title: `تحديث Anime NOVA v${latestVersion}`,
          description: "جارٍ تنزيل الإصدار الجديد…",
          headers: {},
          metadata: { version: latestVersion },
        });

        if (pollTimerRef.current) clearInterval(pollTimerRef.current);
        pollTimerRef.current = setInterval(async () => {
          try {
            const list = await listNativeDownloads();
            const record = list.find((r) => r.appId === UPDATE_JOB_ID);
            if (!record) return;
            if (record.totalBytes > 0) {
              const pct = Math.min(99, Math.max(1, Math.round((record.bytesWritten / record.totalBytes) * 100)));
              setProgressPct(pct);
            }
            if (record.status === "successful") {
              if (pollTimerRef.current) clearInterval(pollTimerRef.current);
              pollTimerRef.current = null;
              setDownloading(false);
              setProgressPct(100);
              const finalPath = record.localPath || job.localPath;
              setDownloadedPath(finalPath);
              await triggerInstall(finalPath);
            } else if (record.status === "failed") {
              if (pollTimerRef.current) clearInterval(pollTimerRef.current);
              pollTimerRef.current = null;
              setDownloading(false);
              setErrorMessage(record.reasonMessage || "تعذر إكمال التنزيل، جرب التحميل المباشر");
            }
          } catch {}
        }, 700);
        return;
      }

      const targetUri = `${FileSystem.cacheDirectory || FileSystem.documentDirectory}${fileName}`;
      const resumable = FileSystem.createDownloadResumable(
        apkUrl,
        targetUri,
        {},
        (prog) => {
          if (prog.totalBytesExpectedToWrite > 0) {
            const pct = Math.min(
              99,
              Math.max(1, Math.round((prog.totalBytesWritten / prog.totalBytesExpectedToWrite) * 100)),
            );
            setProgressPct(pct);
          }
        },
      );
      const res = await resumable.downloadAsync();
      setDownloading(false);
      if (res?.uri) {
        setProgressPct(100);
        setDownloadedPath(res.uri);
        await triggerInstall(res.uri);
      } else {
        setErrorMessage("تعذر حفظ ملف التحديث، سيتم فتح الرابط المباشر");
        Linking.openURL(apkUrl).catch(() => {});
      }
    } catch {
      setDownloading(false);
      setErrorMessage("حدث خطأ أثناء التنزيل الداخلي، سيتم فتح التحميل المباشر");
      Linking.openURL(apkUrl).catch(() => {});
    }
  }, [apkUrl, downloadedPath, latestVersion, triggerInstall]);

  const handleDismiss = useCallback(() => {
    if (hasNewerVersion && !manualCheckMode) {
      AsyncStorage.setItem(DISMISSED_VERSION_KEY, latestVersion).catch(() => {});
    }
    setVisible(false);
  }, [hasNewerVersion, latestVersion, manualCheckMode]);

  if (!visible) return null;

  return (
    <Modal
      visible={visible}
      transparent
      animationType={tvMode ? "none" : "fade"}
      onRequestClose={handleDismiss}
      statusBarTranslucent
    >
      <View
        nativeID="nova-tv-modal-root"
        testID="nova-tv-modal-root"
        style={[styles.backdrop, tvMode && styles.tvBackdrop]}
      >
        <View
          style={[
            styles.card,
            {
              backgroundColor: isWhite ? "#FFFFFF" : "#12131C",
              borderColor: isWhite ? "#CBD5E1" : "rgba(56, 189, 248, 0.35)",
            },
            tvMode && styles.tvCard,
          ]}
        >
          <View style={styles.headerBadgeRow}>
            <View style={[styles.iconCircle, { backgroundColor: hasNewerVersion ? "rgba(14,165,233,0.16)" : "rgba(34,197,94,0.16)" }]}>
              <Ionicons
                name={hasNewerVersion ? "rocket" : "checkmark-circle"}
                size={tvMode ? 28 : 26}
                color={hasNewerVersion ? "#0EA5E9" : "#22C55E"}
              />
            </View>
            <View style={styles.versionPillsRow}>
              <View style={[styles.versionPill, { backgroundColor: isWhite ? "#F1F5F9" : "rgba(255,255,255,0.07)" }]}>
                <Text style={[styles.versionPillText, { color: colors.textSecondary }]}>
                  إصدارك الحالي: v{CURRENT_APP_VERSION}
                </Text>
              </View>
              {hasNewerVersion && (
                <View style={[styles.versionPill, { backgroundColor: "rgba(14,165,233,0.18)" }]}>
                  <Text style={[styles.versionPillText, { color: "#38BDF8" }]}>
                    الإصدار الجديد: v{latestVersion}
                  </Text>
                </View>
              )}
            </View>
          </View>

          <Text style={[styles.title, { color: colors.textPrimary }, tvMode && styles.tvTitle]}>
            {hasNewerVersion
              ? remoteConfig.updateTitle || `تحديث جديد متوفر (v${latestVersion})`
              : "أنت تستخدم أحدث إصدار من التطبيق ✓"}
          </Text>

          <Text style={[styles.desc, { color: colors.textSecondary }, tvMode && styles.tvDesc]}>
            {hasNewerVersion
              ? remoteConfig.updateMessage ||
                "يتوفر إصدار جديد من تطبيق Anime NOVA يتضمن تحسينات شاملة في سلاسة التنقل ووضوح المؤشر والأداء."
              : `لا توجد تحديثات جديدة حالياً. إصدارك المثبت (v${CURRENT_APP_VERSION}) هو الأحدث.`}
          </Text>

          {tvMode && hasNewerVersion && (
            <View style={[styles.tvCodeBox, { backgroundColor: isWhite ? "#F8FAFC" : "rgba(14,165,233,0.09)", borderColor: "rgba(14,165,233,0.3)" }]}>
              <Ionicons name="tv-outline" size={18} color="#0EA5E9" />
              <Text style={[styles.tvCodeText, { color: colors.textPrimary }]}>
                يمكنك التحديث مباشرة بالزر أدناه، أو عبر تطبيق Downloader بالكود: <Text style={{ color: "#0EA5E9", fontFamily: "Cairo_800ExtraBold" }}>{tvCode}</Text>
              </Text>
            </View>
          )}

          {downloading && (
            <View style={styles.progressSection}>
              <View style={styles.progressHeader}>
                <Text style={[styles.progressLabel, { color: colors.textPrimary }]}>
                  جارٍ تنزيل التحديث…
                </Text>
                <Text style={styles.progressPercent}>{progressPct}%</Text>
              </View>
              <View style={[styles.progressTrack, { backgroundColor: isWhite ? "#E2E8F0" : "rgba(255,255,255,0.12)" }]}>
                <View style={[styles.progressFill, { width: `${progressPct}%` }]} />
              </View>
            </View>
          )}

          {statusMessage ? (
            <Text style={[styles.statusText, { color: "#0EA5E9" }]}>{statusMessage}</Text>
          ) : null}

          {errorMessage ? (
            <Text style={[styles.statusText, { color: "#EF4444" }]}>{errorMessage}</Text>
          ) : null}

          <View style={[styles.actionsRow, tvMode && styles.tvActionsRow]}>
            {hasNewerVersion ? (
              <Pressable
                onPress={startInAppUpdate}
                disabled={downloading}
                focusable={tvMode}
                hasTVPreferredFocus={tvMode}
                testID="nova-tv-preferred-focus"
                style={({ focused }) => [
                  styles.primaryBtn,
                  downloading && { opacity: 0.7 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                {downloading ? (
                  <ActivityIndicator size="small" color="#FFFFFF" />
                ) : (
                  <Ionicons name={downloadedPath ? "checkmark-done" : "download"} size={19} color="#FFFFFF" />
                )}
                <Text style={styles.primaryBtnText}>
                  {downloading
                    ? `جارٍ التنزيل (${progressPct}%)`
                    : downloadedPath
                      ? "تثبيت التحديث الآن"
                      : "تحديث وتثبيت داخل التطبيق"}
                </Text>
              </Pressable>
            ) : (
              <Pressable
                onPress={startInAppUpdate}
                disabled={downloading}
                focusable={tvMode}
                style={({ focused }) => [
                  styles.secondaryActionBtn,
                  { borderColor: colors.border, backgroundColor: colors.surfaceElevated },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="cloud-download-outline" size={17} color={colors.textPrimary} />
                <Text style={[styles.secondaryActionText, { color: colors.textPrimary }]}>
                  إعادة تنزيل وتثبيت النسخة الحالية (v{latestVersion})
                </Text>
              </Pressable>
            )}

            <Pressable
              onPress={handleDismiss}
              focusable={tvMode}
              hasTVPreferredFocus={tvMode && !hasNewerVersion}
              testID={!hasNewerVersion ? "nova-tv-preferred-focus" : undefined}
              style={({ focused }) => [
                styles.closeBtn,
                {
                  backgroundColor: isWhite ? "#F1F5F9" : "rgba(255,255,255,0.08)",
                  borderColor: isWhite ? "#CBD5E1" : "rgba(255,255,255,0.16)",
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[styles.closeBtnText, { color: colors.textSecondary }]}>
                {hasNewerVersion ? "لاحقاً" : "إغلاق"}
              </Text>
            </Pressable>
          </View>
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  backdrop: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.78)",
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 20,
  },
  tvBackdrop: {
    paddingHorizontal: 48,
    backgroundColor: "rgba(2, 6, 18, 0.88)",
  },
  card: {
    width: "100%",
    maxWidth: 430,
    borderRadius: 24,
    borderWidth: 1.5,
    padding: 22,
    gap: 12,
  },
  tvCard: {
    maxWidth: 560,
    padding: 26,
    gap: 14,
  },
  headerBadgeRow: {
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "space-between",
    gap: 10,
  },
  iconCircle: {
    width: 50,
    height: 50,
    borderRadius: 16,
    alignItems: "center",
    justifyContent: "center",
  },
  versionPillsRow: {
    flexDirection: "row-reverse",
    flexWrap: "wrap",
    gap: 6,
    flex: 1,
  },
  versionPill: {
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 10,
  },
  versionPillText: {
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  title: {
    fontSize: 18,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  tvTitle: {
    fontSize: 20,
  },
  desc: {
    fontSize: 13,
    lineHeight: 21,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  tvDesc: {
    fontSize: 14,
    lineHeight: 23,
  },
  tvCodeBox: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 8,
    padding: 11,
    borderRadius: 12,
    borderWidth: 1,
  },
  tvCodeText: {
    flex: 1,
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    lineHeight: 19,
  },
  progressSection: {
    gap: 6,
    marginTop: 2,
  },
  progressHeader: {
    flexDirection: "row-reverse",
    justifyContent: "space-between",
    alignItems: "center",
  },
  progressLabel: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  progressPercent: {
    fontSize: 12,
    fontFamily: "Cairo_800ExtraBold",
    color: "#0EA5E9",
  },
  progressTrack: {
    width: "100%",
    height: 8,
    borderRadius: 4,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    backgroundColor: "#0EA5E9",
    borderRadius: 4,
  },
  statusText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    lineHeight: 18,
  },
  actionsRow: {
    flexDirection: "column",
    gap: 9,
    marginTop: 6,
  },
  tvActionsRow: {
    flexDirection: "row-reverse",
    gap: 12,
  },
  primaryBtn: {
    flex: 1,
    minHeight: 48,
    borderRadius: 14,
    backgroundColor: "#0EA5E9",
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingHorizontal: 16,
  },
  primaryBtnText: {
    color: "#FFFFFF",
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
  },
  secondaryActionBtn: {
    flex: 1,
    minHeight: 46,
    borderRadius: 14,
    borderWidth: 1,
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingHorizontal: 14,
  },
  secondaryActionText: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  closeBtn: {
    minHeight: 44,
    paddingHorizontal: 20,
    borderRadius: 13,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  closeBtnText: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
});

import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as FileSystem from "expo-file-system";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  AppState,
  BackHandler,
  Linking,
  Modal,
  Platform,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import {
  canInstallPackagesNative,
  enqueueNativeDownload,
  installApkNative,
  isNativeDownloadAvailable,
  listNativeDownloads,
  openInstallPermissionSettingsNative,
} from "expo-nova-download";
import { useApp } from "@/context/AppContext";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const DISMISSED_VERSION_KEY = "nova-dismissed-update-version";
const UPDATE_JOB_ID = "nova-self-update-apk";

export const CURRENT_APP_VERSION: string = Constants.expoConfig?.version || "1.0.8";
export const CURRENT_VERSION_CODE: number = Number(Constants.expoConfig?.android?.versionCode || 9);

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

function formatMb(bytes: number): string {
  if (!Number.isFinite(bytes) || bytes <= 0) return "0.0";
  return (bytes / (1024 * 1024)).toFixed(1);
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

type UpdateStep = "prompt" | "permission" | "downloading" | "ready_to_install";

const DEFAULT_CHANGELOG = [
  "تشغيل أسرع: بدء أسرع وتقديم شبه فوري في جميع سيرفرات الأنمي والمدبلج",
  "تحديث وتثبيت مباشر داخل التطبيق مع متابعة حجم التقدم بالميجابايت",
  "إطار تركيز مزدوج عالي التباين وتنقل فوري سلس بالريموت في جميع الصفحات",
  "تحسينات كبيرة في الأداء والثبات وإصلاحات عامة",
];

export function AppUpdateModal() {
  const { remoteConfig, refreshConfig } = useApp();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);

  const [visible, setVisible] = useState(false);
  const [manualCheckMode, setManualCheckMode] = useState(false);
  const [step, setStep] = useState<UpdateStep>("prompt");
  const [progressPct, setProgressPct] = useState(0);
  const [bytesWritten, setBytesWritten] = useState(0);
  const [totalBytes, setTotalBytes] = useState(78.3 * 1024 * 1024);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [downloadedPath, setDownloadedPath] = useState<string | null>(null);

  const pollTimerRef = useRef<ReturnType<typeof setInterval> | null>(null);
  const waitingPermissionRef = useRef(false);
  const startDownloadRef = useRef<() => Promise<void>>(async () => {});

  const latestVersion = remoteConfig.latestVersion || remoteConfig.version || CURRENT_APP_VERSION;
  const latestVersionCode = Number(remoteConfig.latestVersionCode || CURRENT_VERSION_CODE);
  const apkUrl = remoteConfig.apkUrl || `https://animenovaa.duckdns.org/nova.apk?v=${latestVersion}`;
  const changelog =
    Array.isArray(remoteConfig.updateChangelog) && remoteConfig.updateChangelog.length > 0
      ? remoteConfig.updateChangelog
      : DEFAULT_CHANGELOG;

  const hasNewerVersion =
    compareAppVersions(CURRENT_APP_VERSION, latestVersion) < 0 ||
    (latestVersionCode > CURRENT_VERSION_CODE && compareAppVersions(CURRENT_APP_VERSION, latestVersion) <= 0);

  const isMandatory = Boolean(hasNewerVersion && (remoteConfig.forceUpdate !== false));

  useEffect(() => {
    const handleManualOpen = () => {
      setErrorMessage(null);
      setManualCheckMode(true);
      setStep("prompt");
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
    if (isMandatory) {
      setManualCheckMode(false);
      setStep("prompt");
      setVisible(true);
      return;
    }
    AsyncStorage.getItem(DISMISSED_VERSION_KEY)
      .then((dismissedVer) => {
        if (cancelled) return;
        if (dismissedVer === latestVersion) return;
        setManualCheckMode(false);
        setStep("prompt");
        setVisible(true);
      })
      .catch(() => {
        if (!cancelled) setVisible(true);
      });
    return () => {
      cancelled = true;
    };
  }, [hasNewerVersion, isMandatory, latestVersion]);

  // Block hardware back button when update is mandatory
  useEffect(() => {
    if (!visible || !isMandatory) return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => true);
    return () => sub.remove();
  }, [visible, isMandatory]);

  useEffect(() => {
    return () => {
      if (pollTimerRef.current) clearInterval(pollTimerRef.current);
    };
  }, []);

  const triggerInstall = useCallback(async (localUri: string) => {
    try {
      const res = await installApkNative(localUri);
      if (res === "permission_required") {
        waitingPermissionRef.current = true;
        setStep("permission");
      } else {
        setStep("ready_to_install");
      }
    } catch {
      Linking.openURL(apkUrl).catch(() => {});
    }
  }, [apkUrl]);

  const beginDownload = useCallback(async () => {
    if (Platform.OS !== "android") {
      Linking.openURL(apkUrl).catch(() => {});
      return;
    }

    if (downloadedPath) {
      await triggerInstall(downloadedPath);
      return;
    }

    setStep("downloading");
    setProgressPct(1);
    setBytesWritten(0);
    setErrorMessage(null);

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
            if (record.bytesWritten > 0) {
              setBytesWritten(record.bytesWritten);
            }
            if (record.totalBytes > 0) {
              setTotalBytes(record.totalBytes);
              const pct = Math.min(99, Math.max(1, Math.round((record.bytesWritten / record.totalBytes) * 100)));
              setProgressPct(pct);
            }
            if (record.status === "successful") {
              if (pollTimerRef.current) clearInterval(pollTimerRef.current);
              pollTimerRef.current = null;
              setProgressPct(100);
              const finalPath = record.localPath || job.localPath;
              setDownloadedPath(finalPath);
              setStep("ready_to_install");
              await triggerInstall(finalPath);
            } else if (record.status === "failed") {
              if (pollTimerRef.current) clearInterval(pollTimerRef.current);
              pollTimerRef.current = null;
              setStep("prompt");
              setErrorMessage(record.reasonMessage || "تعذر إكمال التنزيل الداخلي — جرب التنزيل من المتصفح");
            }
          } catch {}
        }, 500);
        return;
      }

      const targetUri = `${FileSystem.cacheDirectory || FileSystem.documentDirectory}${fileName}`;
      const resumable = FileSystem.createDownloadResumable(
        apkUrl,
        targetUri,
        {},
        (prog) => {
          if (prog.totalBytesWritten > 0) {
            setBytesWritten(prog.totalBytesWritten);
          }
          if (prog.totalBytesExpectedToWrite > 0) {
            setTotalBytes(prog.totalBytesExpectedToWrite);
            const pct = Math.min(
              99,
              Math.max(1, Math.round((prog.totalBytesWritten / prog.totalBytesExpectedToWrite) * 100)),
            );
            setProgressPct(pct);
          }
        },
      );
      const res = await resumable.downloadAsync();
      if (res?.uri) {
        setProgressPct(100);
        setDownloadedPath(res.uri);
        setStep("ready_to_install");
        await triggerInstall(res.uri);
      } else {
        setStep("prompt");
        setErrorMessage("تعذر حفظ ملف التحديث — جرب التنزيل من المتصفح");
      }
    } catch {
      setStep("prompt");
      setErrorMessage("حدث خطأ أثناء التنزيل الداخلي — جرب التنزيل من المتصفح");
    }
  }, [apkUrl, downloadedPath, latestVersion, triggerInstall]);

  useEffect(() => {
    startDownloadRef.current = beginDownload;
  }, [beginDownload]);

  // When user returns from Android "Install unknown apps" settings screen, automatically resume download/install
  useEffect(() => {
    if (!visible || Platform.OS !== "android") return;
    const sub = AppState.addEventListener("change", async (nextState) => {
      if (nextState === "active" && (waitingPermissionRef.current || step === "permission")) {
        try {
          const allowed = await canInstallPackagesNative();
          if (allowed) {
            waitingPermissionRef.current = false;
            if (downloadedPath) {
              await triggerInstall(downloadedPath);
            } else {
              await startDownloadRef.current();
            }
          }
        } catch {}
      }
    });
    return () => sub.remove();
  }, [visible, step, downloadedPath, triggerInstall]);

  const handlePrimaryPress = useCallback(async () => {
    if (Platform.OS !== "android") {
      Linking.openURL(apkUrl).catch(() => {});
      return;
    }

    if (step === "permission") {
      waitingPermissionRef.current = true;
      await openInstallPermissionSettingsNative();
      return;
    }

    if (step === "downloading") return;

    // Check unknown sources permission first (just like HDO FLIX)
    try {
      const allowed = await canInstallPackagesNative();
      if (!allowed) {
        waitingPermissionRef.current = true;
        setStep("permission");
        return;
      }
    } catch {}

    await beginDownload();
  }, [apkUrl, beginDownload, step]);

  const handleBrowserDownload = useCallback(() => {
    Linking.openURL(apkUrl).catch(() => {});
  }, [apkUrl]);

  const handleClose = useCallback(() => {
    if (isMandatory) return;
    if (hasNewerVersion && !manualCheckMode) {
      AsyncStorage.setItem(DISMISSED_VERSION_KEY, latestVersion).catch(() => {});
    }
    setVisible(false);
  }, [hasNewerVersion, isMandatory, latestVersion, manualCheckMode]);

  if (!visible) return null;

  return (
    <Modal
      visible={visible}
      transparent
      animationType={tvMode ? "none" : "fade"}
      onRequestClose={handleClose}
      statusBarTranslucent
    >
      <View
        nativeID="nova-tv-modal-root"
        testID="nova-tv-modal-root"
        style={[styles.backdrop, tvMode && styles.tvBackdrop]}
      >
        <View style={[styles.card, tvMode && styles.tvCard]}>
          {/* Top circular red/amber warning icon */}
          <View style={styles.warningIconOuter}>
            <Ionicons name="warning-outline" size={tvMode ? 32 : 30} color="#EF4444" />
          </View>

          {/* Main title */}
          <Text style={[styles.title, tvMode && styles.tvTitle]}>
            {hasNewerVersion ? "التحديث مطلوب" : "تحديث التطبيق"}
          </Text>

          {/* Dynamic subtitle depending on state (Prompt vs Permission vs Downloading) */}
          {step === "permission" ? (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              لتثبيت التحديث من داخل التطبيق، اسمح لـ ANIME NOVA بتثبيت التحديثات. فعّل «السماح من هذا المصدر» ثم ارجع.
            </Text>
          ) : step === "downloading" ? (
            <View style={styles.downloadingSubWrap}>
              <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>جارٍ تنزيل التحديث...</Text>
              <Text style={styles.mbCounterText}>
                {formatMb(bytesWritten)} / {formatMb(totalBytes)} MB
              </Text>
            </View>
          ) : hasNewerVersion ? (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              {`يجب تحديث التطبيق إلى الإصدار ${latestVersion} للمتابعة — هذا الإصدار لم يعد مدعوماً.`}
            </Text>
          ) : (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              {`أنت تستخدم أحدث إصدار من التطبيق (${CURRENT_APP_VERSION}). يمكنك إعادة تنزيل وتثبيت النسخة الحالية من الزر أدناه.`}
            </Text>
          )}

          {/* What's New inner card */}
          <View style={styles.whatsNewBox}>
            <Text style={styles.whatsNewTitle}>ما الجديد</Text>
            {changelog.map((item, idx) => (
              <View key={idx} style={styles.bulletRow}>
                <View style={styles.redDot} />
                <Text style={[styles.bulletText, tvMode && styles.tvBulletText]}>{item}</Text>
              </View>
            ))}
          </View>

          {/* Version Tag */}
          <View style={styles.versionTagRow}>
            <Text style={styles.versionTagText}>الإصدار {latestVersion}</Text>
            <Ionicons name="pricetag-outline" size={13} color="#9CA3AF" style={{ transform: [{ scaleX: -1 }] }} />
          </View>

          {errorMessage ? (
            <Text style={styles.errorText}>{errorMessage}</Text>
          ) : null}

          {/* Primary Pill Action Button */}
          <Pressable
            onPress={handlePrimaryPress}
            disabled={step === "downloading"}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode}
            testID="nova-tv-preferred-focus"
            style={({ focused }) => [
              styles.primaryPillBtn,
              tvMode && tvFocusStyle(focused),
            ]}
          >
            {step === "permission" ? (
              <>
                <Text style={styles.primaryPillBtnText}>فتح الإعدادات</Text>
                <Ionicons name="settings-outline" size={18} color="#FFFFFF" />
              </>
            ) : step === "downloading" ? (
              <>
                <Text style={styles.primaryPillBtnText}>{progressPct}%</Text>
                <Ionicons name="download-outline" size={18} color="#FFFFFF" />
              </>
            ) : downloadedPath ? (
              <>
                <Text style={styles.primaryPillBtnText}>تثبيت التحديث الآن</Text>
                <Ionicons name="checkmark-circle-outline" size={18} color="#FFFFFF" />
              </>
            ) : (
              <>
                <Text style={styles.primaryPillBtnText}>حدّث الآن</Text>
                <Ionicons name="download-outline" size={18} color="#FFFFFF" />
              </>
            )}
          </Pressable>

          {/* Secondary Browser Download Link (shown in permission & downloading states or on TV) */}
          {(step === "permission" || step === "downloading" || errorMessage || tvMode) && (
            <Pressable
              onPress={handleBrowserDownload}
              focusable={tvMode}
              style={({ focused }) => [
                styles.browserLinkBtn,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={styles.browserLinkText}>التنزيل من المتصفّح</Text>
            </Pressable>
          )}

          {/* Close button only when opened manually and already up to date */}
          {!isMandatory && (
            <Pressable
              onPress={handleClose}
              focusable={tvMode}
              style={({ focused }) => [
                styles.browserLinkBtn,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={styles.browserLinkText}>إغلاق</Text>
            </Pressable>
          )}
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  backdrop: {
    flex: 1,
    backgroundColor: "rgba(0, 0, 0, 0.82)",
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 22,
  },
  tvBackdrop: {
    paddingHorizontal: 48,
    backgroundColor: "rgba(0, 0, 0, 0.86)",
  },
  card: {
    width: "100%",
    maxWidth: 390,
    backgroundColor: "#14151B",
    borderRadius: 24,
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.09)",
    paddingHorizontal: 22,
    paddingTop: 26,
    paddingBottom: 22,
    alignItems: "center",
    shadowColor: "#000",
    shadowOpacity: 0.65,
    shadowRadius: 28,
    elevation: 18,
  },
  tvCard: {
    maxWidth: 460,
    paddingHorizontal: 26,
    paddingTop: 24,
    paddingBottom: 20,
  },
  warningIconOuter: {
    width: 68,
    height: 68,
    borderRadius: 34,
    backgroundColor: "rgba(239, 68, 68, 0.12)",
    borderWidth: 1.5,
    borderColor: "rgba(239, 68, 68, 0.35)",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 14,
  },
  title: {
    color: "#FFFFFF",
    fontSize: 21,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "center",
    marginBottom: 6,
  },
  tvTitle: {
    fontSize: 22,
  },
  subtitle: {
    color: "#9CA3AF",
    fontSize: 13.5,
    lineHeight: 21,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    paddingHorizontal: 6,
  },
  tvSubtitle: {
    fontSize: 14,
    lineHeight: 22,
  },
  downloadingSubWrap: {
    alignItems: "center",
    gap: 2,
  },
  mbCounterText: {
    color: "#9CA3AF",
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    writingDirection: "ltr",
  },
  whatsNewBox: {
    width: "100%",
    backgroundColor: "#0E0F14",
    borderRadius: 16,
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.08)",
    paddingHorizontal: 16,
    paddingVertical: 14,
    marginTop: 16,
    gap: 10,
  },
  whatsNewTitle: {
    color: "#FFFFFF",
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    marginBottom: 2,
  },
  bulletRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
  },
  redDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
    backgroundColor: "#EF4444",
    marginTop: 2,
  },
  bulletText: {
    flex: 1,
    color: "#D1D5DB",
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  tvBulletText: {
    fontSize: 13,
    lineHeight: 20,
  },
  versionTagRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 5,
    marginTop: 14,
    marginBottom: 12,
  },
  versionTagText: {
    color: "#9CA3AF",
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
  },
  errorText: {
    color: "#EF4444",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    marginBottom: 8,
  },
  primaryPillBtn: {
    width: "100%",
    height: 50,
    borderRadius: 25,
    backgroundColor: "#F04438",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  primaryPillBtnText: {
    color: "#FFFFFF",
    fontSize: 15,
    fontFamily: "Cairo_800ExtraBold",
  },
  browserLinkBtn: {
    marginTop: 12,
    paddingVertical: 6,
    paddingHorizontal: 16,
    borderRadius: 10,
  },
  browserLinkText: {
    color: "#9CA3AF",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
  },
});

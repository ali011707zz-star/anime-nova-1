import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
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
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import * as FileSystem from "expo-file-system";
import * as Updates from "expo-updates";
import { Ionicons } from "@expo/vector-icons";
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

type UpdateStep = "prompt" | "permission" | "downloading" | "ready_to_install" | "ota_updating" | "up_to_date";

const DEFAULT_CHANGELOG = [
  "تشغيل فوري وسيرفرات متعددة الجودات للأفلام والمسلسلات",
  "تحديث وتثبيت مباشر من داخل التطبيق مع متابعة التقدم",
  "تحسينات سرعة التمرير وواجهة تفاصيل العمل والترجمات",
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
  const [statusNote, setStatusNote] = useState<string | null>(null);
  const [downloadedPath, setDownloadedPath] = useState<string | null>(null);

  const pollTimerRef = useRef<ReturnType<typeof setInterval> | null>(null);
  const waitingPermissionRef = useRef(false);
  const startDownloadRef = useRef<() => Promise<void>>(async () => {});

  const rawRemoteVersion = remoteConfig.latestVersion || remoteConfig.version || CURRENT_APP_VERSION;
  const latestVersionCode = Number(remoteConfig.latestVersionCode || CURRENT_VERSION_CODE);
  const hasNewerVersion =
    compareAppVersions(CURRENT_APP_VERSION, rawRemoteVersion) < 0 ||
    (latestVersionCode > CURRENT_VERSION_CODE && compareAppVersions(CURRENT_APP_VERSION, rawRemoteVersion) <= 0);

  const displayVersion = hasNewerVersion ? rawRemoteVersion : CURRENT_APP_VERSION;
  const apkUrl = remoteConfig.apkUrl || `https://animenovaa.duckdns.org/nova.apk?v=${displayVersion}`;
  const rawChangelog =
    hasNewerVersion && Array.isArray(remoteConfig.updateChangelog) && remoteConfig.updateChangelog.length > 0
      ? remoteConfig.updateChangelog
      : DEFAULT_CHANGELOG;
  const changelog = rawChangelog.slice(0, 3);
  const isMandatory = Boolean(hasNewerVersion && (remoteConfig.forceUpdate !== false));

  useEffect(() => {
    const handleManualOpen = () => {
      setErrorMessage(null);
      setStatusNote(null);
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
        if (dismissedVer === rawRemoteVersion) return;
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
  }, [hasNewerVersion, isMandatory, rawRemoteVersion]);

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
    setErrorMessage(null);
    try {
      if (isNativeDownloadAvailable()) {
        const res = await installApkNative(localUri);
        if (res === "permission_required") {
          waitingPermissionRef.current = true;
          setStep("permission");
          return;
        }
        setStep("ready_to_install");
        return;
      }
    } catch {}

    // Fallback using FileSystem content:// URI directly inside Android without opening remote HTTP URL in browser
    try {
      const contentUri = await FileSystem.getContentUriAsync(localUri);
      if (contentUri) {
        await Linking.openURL(contentUri);
        setStep("ready_to_install");
        return;
      }
    } catch {}

    setStep("ready_to_install");
    setErrorMessage("تم حفظ ملف التحديث داخل جهازك. افتح ملفات الجهاز لتثبيته.");
  }, []);

  const beginDownload = useCallback(async () => {
    if (Platform.OS !== "android") return;
    if (downloadedPath) {
      await triggerInstall(downloadedPath);
      return;
    }

    // If user is already on the latest APK version (e.g. 1.0.10), check and apply in-app OTA update first!
    if (!hasNewerVersion && Updates.isEnabled) {
      setStep("ota_updating");
      setErrorMessage(null);
      setStatusNote("جارٍ فحص وتثبيت التحديث الداخلي الفوري...");
      try {
        const update = await Updates.checkForUpdateAsync();
        if (update.isAvailable) {
          setStatusNote("جارٍ تنزيل وتطبيق التحديث الداخلي...");
          await Updates.fetchUpdateAsync();
          await Updates.reloadAsync();
          return;
        }
        setStep("up_to_date");
        setStatusNote("أنت على أحدث نسخة والتحديث الداخلي مطبّق بالكامل ✓");
        return;
      } catch {
        setStep("up_to_date");
        setStatusNote("أنت تستخدم أحدث إصدار من التطبيق حالياً ✓");
        return;
      }
    }

    setStep("downloading");
    setProgressPct(1);
    setBytesWritten(0);
    setErrorMessage(null);
    setStatusNote(null);

    const fileName = `Nova-Film-v${displayVersion}.apk`;

    try {
      if (isNativeDownloadAvailable()) {
        const job = await enqueueNativeDownload({
          appId: UPDATE_JOB_ID,
          url: apkUrl,
          fileName,
          title: `تحديث NOVA FILM v${displayVersion}`,
          description: "جارٍ تنزيل الإصدار الجديد…",
          headers: {},
          metadata: { version: displayVersion },
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
              setErrorMessage(record.reasonMessage || "تعذر إكمال التنزيل الداخلي — أعد المحاولة");
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
        setErrorMessage("تعذر حفظ ملف التحديث — أعد المحاولة");
      }
    } catch {
      setStep("prompt");
      setErrorMessage("حدث خطأ أثناء التنزيل الداخلي — أعد المحاولة");
    }
  }, [apkUrl, displayVersion, downloadedPath, hasNewerVersion, triggerInstall]);

  useEffect(() => {
    startDownloadRef.current = beginDownload;
  }, [beginDownload]);

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
    if (step === "up_to_date") {
      setVisible(false);
      return;
    }
    if (step === "permission") {
      waitingPermissionRef.current = true;
      await openInstallPermissionSettingsNative();
      return;
    }
    if (step === "downloading" || step === "ota_updating") return;

    if (hasNewerVersion && isNativeDownloadAvailable()) {
      try {
        const allowed = await canInstallPackagesNative();
        if (!allowed) {
          waitingPermissionRef.current = true;
          setStep("permission");
          return;
        }
      } catch {}
    }

    await beginDownload();
  }, [beginDownload, hasNewerVersion, step]);

  const handleClose = useCallback(() => {
    if (isMandatory) return;
    if (hasNewerVersion && !manualCheckMode) {
      AsyncStorage.setItem(DISMISSED_VERSION_KEY, rawRemoteVersion).catch(() => {});
    }
    setVisible(false);
  }, [hasNewerVersion, isMandatory, rawRemoteVersion, manualCheckMode]);

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
          <View style={styles.warningIconOuter}>
            <Ionicons
              name={hasNewerVersion ? "warning-outline" : "sparkles-outline"}
              size={tvMode ? 24 : 22}
              color="#EF4444"
            />
          </View>

          <Text style={[styles.title, tvMode && styles.tvTitle]}>
            {hasNewerVersion ? "التحديث مطلوب" : "تحديث التطبيق"}
          </Text>

          {step === "permission" ? (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              لتثبيت التحديث داخل التطبيق، فعّل «السماح من هذا المصدر» لـ NOVA FILM ثم ارجع.
            </Text>
          ) : step === "downloading" ? (
            <View style={styles.downloadingSubWrap}>
              <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>جارٍ تنزيل التحديث داخل التطبيق...</Text>
              <Text style={styles.mbCounterText}>
                {formatMb(bytesWritten)} / {formatMb(totalBytes)} MB ({progressPct}%)
              </Text>
            </View>
          ) : step === "ota_updating" || statusNote ? (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              {statusNote || "جارٍ فحص وتثبيت التحديث الداخلي..."}
            </Text>
          ) : hasNewerVersion ? (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              {`يتوفر الإصدار ${displayVersion} الجديد — سيتم التنزيل والتثبيت مباشرة داخل التطبيق.`}
            </Text>
          ) : (
            <Text style={[styles.subtitle, tvMode && styles.tvSubtitle]}>
              {`أنت تستخدم أحدث إصدار (${CURRENT_APP_VERSION}). اضغط بالأسفل لفحص وتطبيق أي تحديث داخلي فوري.`}
            </Text>
          )}

          <View style={styles.whatsNewBox}>
            <Text style={styles.whatsNewTitle}>ما الجديد</Text>
            {changelog.map((item, idx) => (
              <View key={idx} style={styles.bulletRow}>
                <View style={styles.redDot} />
                <Text style={[styles.bulletText, tvMode && styles.tvBulletText]} numberOfLines={2}>
                  {item}
                </Text>
              </View>
            ))}
          </View>

          <View style={styles.versionTagRow}>
            <Text style={styles.versionTagText}>الإصدار {displayVersion}</Text>
            <Ionicons name="pricetag-outline" size={12} color="#9CA3AF" style={{ transform: [{ scaleX: -1 }] }} />
          </View>

          {errorMessage ? (
            <Text style={styles.errorText}>{errorMessage}</Text>
          ) : null}

          <Pressable
            onPress={handlePrimaryPress}
            disabled={step === "downloading" || step === "ota_updating"}
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
                <Ionicons name="settings-outline" size={16} color="#FFFFFF" />
              </>
            ) : step === "downloading" ? (
              <>
                <Text style={styles.primaryPillBtnText}>{progressPct}%</Text>
                <ActivityIndicator size="small" color="#FFFFFF" />
              </>
            ) : step === "ota_updating" ? (
              <>
                <Text style={styles.primaryPillBtnText}>جارٍ التحديث...</Text>
                <ActivityIndicator size="small" color="#FFFFFF" />
              </>
            ) : step === "up_to_date" ? (
              <>
                <Text style={styles.primaryPillBtnText}>تم التحديث ✓</Text>
              </>
            ) : downloadedPath ? (
              <>
                <Text style={styles.primaryPillBtnText}>تثبيت التحديث الآن</Text>
                <Ionicons name="checkmark-circle-outline" size={17} color="#FFFFFF" />
              </>
            ) : (
              <>
                <Text style={styles.primaryPillBtnText}>
                  {hasNewerVersion ? "تنزيل وتثبيت الآن" : "فحص وتحديث داخلي"}
                </Text>
                <Ionicons name="download-outline" size={17} color="#FFFFFF" />
              </>
            )}
          </Pressable>

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
    backgroundColor: "rgba(0, 0, 0, 0.78)",
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 24,
  },
  tvBackdrop: {
    paddingHorizontal: 48,
    backgroundColor: "rgba(0, 0, 0, 0.86)",
  },
  card: {
    width: "100%",
    maxWidth: 336,
    backgroundColor: "#14151B",
    borderRadius: 20,
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.09)",
    paddingHorizontal: 16,
    paddingTop: 16,
    paddingBottom: 14,
    alignItems: "center",
    shadowColor: "#000",
    shadowOpacity: 0.6,
    shadowRadius: 20,
    elevation: 16,
  },
  tvCard: {
    maxWidth: 420,
    paddingHorizontal: 22,
    paddingTop: 20,
    paddingBottom: 18,
  },
  warningIconOuter: {
    width: 46,
    height: 46,
    borderRadius: 23,
    backgroundColor: "rgba(239, 68, 68, 0.12)",
    borderWidth: 1.5,
    borderColor: "rgba(239, 68, 68, 0.35)",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 8,
  },
  title: {
    color: "#FFFFFF",
    fontSize: 17,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "center",
    marginBottom: 4,
  },
  tvTitle: {
    fontSize: 19,
  },
  subtitle: {
    color: "#9CA3AF",
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    paddingHorizontal: 4,
  },
  tvSubtitle: {
    fontSize: 13,
    lineHeight: 20,
  },
  downloadingSubWrap: {
    alignItems: "center",
    gap: 2,
  },
  mbCounterText: {
    color: "#E5E7EB",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    writingDirection: "ltr",
  },
  whatsNewBox: {
    width: "100%",
    backgroundColor: "#0E0F14",
    borderRadius: 13,
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.08)",
    paddingHorizontal: 12,
    paddingVertical: 10,
    marginTop: 10,
    gap: 6,
  },
  whatsNewTitle: {
    color: "#FFFFFF",
    fontSize: 12.5,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    marginBottom: 1,
  },
  bulletRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  redDot: {
    width: 5,
    height: 5,
    borderRadius: 2.5,
    backgroundColor: "#EF4444",
    marginTop: 1,
  },
  bulletText: {
    flex: 1,
    color: "#D1D5DB",
    fontSize: 11.5,
    lineHeight: 16.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  tvBulletText: {
    fontSize: 12,
    lineHeight: 18,
  },
  versionTagRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 5,
    marginTop: 10,
    marginBottom: 8,
  },
  versionTagText: {
    color: "#9CA3AF",
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
  },
  errorText: {
    color: "#EF4444",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    marginBottom: 6,
  },
  primaryPillBtn: {
    width: "100%",
    height: 42,
    borderRadius: 21,
    backgroundColor: "#F04438",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
  },
  primaryPillBtnText: {
    color: "#FFFFFF",
    fontSize: 13.5,
    fontFamily: "Cairo_800ExtraBold",
  },
  browserLinkBtn: {
    marginTop: 8,
    paddingVertical: 4,
    paddingHorizontal: 14,
    borderRadius: 8,
  },
  browserLinkText: {
    color: "#9CA3AF",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
  },
});

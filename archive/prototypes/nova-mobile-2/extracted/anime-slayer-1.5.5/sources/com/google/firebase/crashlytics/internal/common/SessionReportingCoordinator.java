package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;
import com.google.firebase.crashlytics.internal.log.LogFileManager;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class SessionReportingCoordinator {
    private final CrashlyticsReportDataCapture dataCapture;
    private final LogFileManager logFileManager;
    private final UserMetadata reportMetadata;
    private final CrashlyticsReportPersistence reportPersistence;
    private final DataTransportCrashlyticsReportSender reportsSender;

    public SessionReportingCoordinator(CrashlyticsReportDataCapture crashlyticsReportDataCapture, CrashlyticsReportPersistence crashlyticsReportPersistence, DataTransportCrashlyticsReportSender dataTransportCrashlyticsReportSender, LogFileManager logFileManager, UserMetadata userMetadata) {
        this.dataCapture = crashlyticsReportDataCapture;
        this.reportPersistence = crashlyticsReportPersistence;
        this.reportsSender = dataTransportCrashlyticsReportSender;
        this.logFileManager = logFileManager;
        this.reportMetadata = userMetadata;
    }

    private CrashlyticsReport.Session.Event addLogsAndCustomKeysToEvent(CrashlyticsReport.Session.Event event) {
        return addLogsAndCustomKeysToEvent(event, this.logFileManager, this.reportMetadata);
    }

    private static CrashlyticsReport.ApplicationExitInfo convertApplicationExitInfo(ApplicationExitInfo applicationExitInfo) {
        String str;
        try {
            str = convertInputStreamToString(applicationExitInfo.getTraceInputStream());
        } catch (IOException | NullPointerException e10) {
            Logger.getLogger().w("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e10);
            str = null;
        }
        return CrashlyticsReport.ApplicationExitInfo.builder().setImportance(applicationExitInfo.getImportance()).setProcessName(applicationExitInfo.getProcessName()).setReasonCode(applicationExitInfo.getReason()).setTimestamp(applicationExitInfo.getTimestamp()).setPid(applicationExitInfo.getPid()).setPss(applicationExitInfo.getPss()).setRss(applicationExitInfo.getRss()).setTraceFile(str).build();
    }

    public static String convertInputStreamToString(InputStream inputStream) throws IOException, NullPointerException {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName(StandardCharsets.UTF_8.name())));
        while (true) {
            try {
                int read = bufferedReader.read();
                if (read != -1) {
                    sb2.append((char) read);
                } else {
                    String sb3 = sb2.toString();
                    bufferedReader.close();
                    return sb3;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
    }

    public static SessionReportingCoordinator create(Context context, IdManager idManager, FileStore fileStore, AppData appData, LogFileManager logFileManager, UserMetadata userMetadata, StackTraceTrimmingStrategy stackTraceTrimmingStrategy, SettingsDataProvider settingsDataProvider) {
        return new SessionReportingCoordinator(new CrashlyticsReportDataCapture(context, idManager, appData, stackTraceTrimmingStrategy), new CrashlyticsReportPersistence(new File(fileStore.getFilesDirPath()), settingsDataProvider), DataTransportCrashlyticsReportSender.create(context), logFileManager, userMetadata);
    }

    private static List<CrashlyticsReport.CustomAttribute> getSortedCustomAttributes(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(CrashlyticsReport.CustomAttribute.builder().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        Collections.sort(arrayList, new Comparator() { // from class: ba.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$getSortedCustomAttributes$0;
                lambda$getSortedCustomAttributes$0 = SessionReportingCoordinator.lambda$getSortedCustomAttributes$0((CrashlyticsReport.CustomAttribute) obj, (CrashlyticsReport.CustomAttribute) obj2);
                return lambda$getSortedCustomAttributes$0;
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getSortedCustomAttributes$0(CrashlyticsReport.CustomAttribute customAttribute, CrashlyticsReport.CustomAttribute customAttribute2) {
        return customAttribute.getKey().compareTo(customAttribute2.getKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onReportSendComplete(Task<CrashlyticsReportWithSessionId> task) {
        if (task.isSuccessful()) {
            CrashlyticsReportWithSessionId result = task.getResult();
            Logger.getLogger().d("Crashlytics report successfully enqueued to DataTransport: " + result.getSessionId());
            this.reportPersistence.deleteFinalizedReport(result.getSessionId());
            return true;
        }
        Logger.getLogger().w("Crashlytics report could not be enqueued to DataTransport", task.getException());
        return false;
    }

    private void persistEvent(Throwable th, Thread thread, String str, String str2, long j10, boolean z10) {
        this.reportPersistence.persistEvent(addLogsAndCustomKeysToEvent(this.dataCapture.captureEventData(th, thread, str2, j10, 4, 8, z10)), str, str2.equals(AppMeasurement.CRASH_ORIGIN));
    }

    public void finalizeSessionWithNativeEvent(String str, List<NativeSessionFile> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<NativeSessionFile> it2 = list.iterator();
        while (it2.hasNext()) {
            CrashlyticsReport.FilesPayload.File asFilePayload = it2.next().asFilePayload();
            if (asFilePayload != null) {
                arrayList.add(asFilePayload);
            }
        }
        this.reportPersistence.finalizeSessionWithNativeEvent(str, CrashlyticsReport.FilesPayload.builder().setFiles(ImmutableList.from(arrayList)).build());
    }

    public void finalizeSessions(long j10, String str) {
        this.reportPersistence.finalizeReports(str, j10);
    }

    public boolean hasReportsToSend() {
        return this.reportPersistence.hasFinalizedReports();
    }

    public List<String> listSortedOpenSessionIds() {
        return this.reportPersistence.listSortedOpenSessionIds();
    }

    public void onBeginSession(String str, long j10) {
        this.reportPersistence.persistReport(this.dataCapture.captureReportData(str, j10));
    }

    public void persistAppExitInfoEvent(String str, ApplicationExitInfo applicationExitInfo, LogFileManager logFileManager, UserMetadata userMetadata) {
        if (applicationExitInfo.getTimestamp() >= this.reportPersistence.getStartTimestampMillis(str) && applicationExitInfo.getReason() == 6) {
            CrashlyticsReport.Session.Event captureAnrEventData = this.dataCapture.captureAnrEventData(convertApplicationExitInfo(applicationExitInfo));
            Logger.getLogger().d("Persisting anr for session " + str);
            this.reportPersistence.persistEvent(addLogsAndCustomKeysToEvent(captureAnrEventData, logFileManager, userMetadata), str, true);
        }
    }

    public void persistFatalEvent(Throwable th, Thread thread, String str, long j10) {
        Logger.getLogger().v("Persisting fatal event for session " + str);
        persistEvent(th, thread, str, AppMeasurement.CRASH_ORIGIN, j10, true);
    }

    public void persistNonFatalEvent(Throwable th, Thread thread, String str, long j10) {
        Logger.getLogger().v("Persisting non-fatal event for session " + str);
        persistEvent(th, thread, str, "error", j10, false);
    }

    public void removeAllReports() {
        this.reportPersistence.deleteAllReports();
    }

    public Task<Void> sendReports(Executor executor) {
        List<CrashlyticsReportWithSessionId> loadFinalizedReports = this.reportPersistence.loadFinalizedReports();
        ArrayList arrayList = new ArrayList();
        Iterator<CrashlyticsReportWithSessionId> it2 = loadFinalizedReports.iterator();
        while (it2.hasNext()) {
            arrayList.add(this.reportsSender.sendReport(it2.next()).continueWith(executor, new Continuation() { // from class: ba.b
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    boolean onReportSendComplete;
                    onReportSendComplete = SessionReportingCoordinator.this.onReportSendComplete(task);
                    return Boolean.valueOf(onReportSendComplete);
                }
            }));
        }
        return Tasks.whenAll(arrayList);
    }

    private CrashlyticsReport.Session.Event addLogsAndCustomKeysToEvent(CrashlyticsReport.Session.Event event, LogFileManager logFileManager, UserMetadata userMetadata) {
        CrashlyticsReport.Session.Event.Builder builder = event.toBuilder();
        String logString = logFileManager.getLogString();
        if (logString != null) {
            builder.setLog(CrashlyticsReport.Session.Event.Log.builder().setContent(logString).build());
        } else {
            Logger.getLogger().v("No log data to include with this event.");
        }
        List<CrashlyticsReport.CustomAttribute> sortedCustomAttributes = getSortedCustomAttributes(userMetadata.getCustomKeys());
        List<CrashlyticsReport.CustomAttribute> sortedCustomAttributes2 = getSortedCustomAttributes(userMetadata.getInternalKeys());
        if (!sortedCustomAttributes.isEmpty()) {
            builder.setApp(event.getApp().toBuilder().setCustomAttributes(ImmutableList.from(sortedCustomAttributes)).setInternalKeys(ImmutableList.from(sortedCustomAttributes2)).build());
        }
        return builder.build();
    }
}

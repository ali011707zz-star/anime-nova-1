package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import h9.b;
import h9.c;
import h9.e;
import h9.f;
import h9.g;
import h9.h;
import i9.a;
import java.nio.charset.Charset;
import k9.r;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public class DataTransportCrashlyticsReportSender {
    private final f<CrashlyticsReport> transport;
    private final e<CrashlyticsReport, byte[]> transportTransform;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final String CRASHLYTICS_ENDPOINT = mergeStrings("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    private static final String CRASHLYTICS_API_KEY = mergeStrings("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");
    private static final e<CrashlyticsReport, byte[]> DEFAULT_TRANSFORM = new e() { // from class: da.a
        @Override // h9.e
        public final Object apply(Object obj) {
            byte[] lambda$static$0;
            lambda$static$0 = DataTransportCrashlyticsReportSender.lambda$static$0((CrashlyticsReport) obj);
            return lambda$static$0;
        }
    };

    public DataTransportCrashlyticsReportSender(f<CrashlyticsReport> fVar, e<CrashlyticsReport, byte[]> eVar) {
        this.transport = fVar;
        this.transportTransform = eVar;
    }

    public static DataTransportCrashlyticsReportSender create(Context context) {
        r.f(context);
        g g10 = r.c().g(new a(CRASHLYTICS_ENDPOINT, CRASHLYTICS_API_KEY));
        b b10 = b.b("json");
        e<CrashlyticsReport, byte[]> eVar = DEFAULT_TRANSFORM;
        return new DataTransportCrashlyticsReportSender(g10.a("FIREBASE_CRASHLYTICS_REPORT", CrashlyticsReport.class, b10, eVar), eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendReport$1(TaskCompletionSource taskCompletionSource, CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, Exception exc) {
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
        } else {
            taskCompletionSource.trySetResult(crashlyticsReportWithSessionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] lambda$static$0(CrashlyticsReport crashlyticsReport) {
        return TRANSFORM.reportToJson(crashlyticsReport).getBytes(Charset.forName(HTTP.UTF_8));
    }

    private static String mergeStrings(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
            for (int i10 = 0; i10 < str.length(); i10++) {
                sb2.append(str.charAt(i10));
                if (str2.length() > i10) {
                    sb2.append(str2.charAt(i10));
                }
            }
            return sb2.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }

    public Task<CrashlyticsReportWithSessionId> sendReport(final CrashlyticsReportWithSessionId crashlyticsReportWithSessionId) {
        CrashlyticsReport report = crashlyticsReportWithSessionId.getReport();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.transport.b(c.e(report), new h() { // from class: da.b
            @Override // h9.h
            public final void a(Exception exc) {
                DataTransportCrashlyticsReportSender.lambda$sendReport$1(TaskCompletionSource.this, crashlyticsReportWithSessionId, exc);
            }
        });
        return taskCompletionSource.getTask();
    }
}

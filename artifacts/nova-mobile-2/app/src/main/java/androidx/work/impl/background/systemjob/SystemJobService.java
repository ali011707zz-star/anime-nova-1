package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.WorkerParameters;
import d2.l;
import e2.b;
import e2.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SystemJobService extends JobService implements b {

    /* renamed from: h, reason: collision with root package name */
    public static final String f3372h = l.f("SystemJobService");

    /* renamed from: f, reason: collision with root package name */
    public i f3373f;

    /* renamed from: g, reason: collision with root package name */
    public final Map<String, JobParameters> f3374g = new HashMap();

    public static String b(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return extras.getString("EXTRA_WORK_SPEC_ID");
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        JobParameters remove;
        l.c().a(f3372h, String.format("%s executed on JobScheduler", str), new Throwable[0]);
        synchronized (this.f3374g) {
            remove = this.f3374g.remove(str);
        }
        if (remove != null) {
            jobFinished(remove, z10);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            i r10 = i.r(getApplicationContext());
            this.f3373f = r10;
            r10.t().c(this);
        } catch (IllegalStateException unused) {
            if (Application.class.equals(getApplication().getClass())) {
                l.c().h(f3372h, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.", new Throwable[0]);
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        i iVar = this.f3373f;
        if (iVar != null) {
            iVar.t().h(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        if (this.f3373f == null) {
            l.c().a(f3372h, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            jobFinished(jobParameters, true);
            return false;
        }
        String b10 = b(jobParameters);
        if (TextUtils.isEmpty(b10)) {
            l.c().b(f3372h, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        synchronized (this.f3374g) {
            if (this.f3374g.containsKey(b10)) {
                l.c().a(f3372h, String.format("Job is already being executed by SystemJobService: %s", b10), new Throwable[0]);
                return false;
            }
            l.c().a(f3372h, String.format("onStartJob for %s", b10), new Throwable[0]);
            this.f3374g.put(b10, jobParameters);
            WorkerParameters.a aVar = null;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24) {
                aVar = new WorkerParameters.a();
                if (jobParameters.getTriggeredContentUris() != null) {
                    aVar.f3303b = Arrays.asList(jobParameters.getTriggeredContentUris());
                }
                if (jobParameters.getTriggeredContentAuthorities() != null) {
                    aVar.f3302a = Arrays.asList(jobParameters.getTriggeredContentAuthorities());
                }
                if (i10 >= 28) {
                    aVar.f3304c = jobParameters.getNetwork();
                }
            }
            this.f3373f.D(b10, aVar);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f3373f == null) {
            l.c().a(f3372h, "WorkManager is not initialized; requesting retry.", new Throwable[0]);
            return true;
        }
        String b10 = b(jobParameters);
        if (TextUtils.isEmpty(b10)) {
            l.c().b(f3372h, "WorkSpec id not found!", new Throwable[0]);
            return false;
        }
        l.c().a(f3372h, String.format("onStopJob for %s", b10), new Throwable[0]);
        synchronized (this.f3374g) {
            this.f3374g.remove(b10);
        }
        this.f3373f.F(b10);
        return !this.f3373f.t().e(b10);
    }
}

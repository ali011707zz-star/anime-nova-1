package q9;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
import org.apache.http.protocol.HTTP;

/* compiled from: JobInfoScheduler.java */
/* loaded from: classes.dex */
public class e implements v {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12562a;

    /* renamed from: b, reason: collision with root package name */
    public final r9.c f12563b;

    /* renamed from: c, reason: collision with root package name */
    public final g f12564c;

    public e(Context context, r9.c cVar, g gVar) {
        this.f12562a = context;
        this.f12563b = cVar;
        this.f12564c = gVar;
    }

    @Override // q9.v
    public void a(k9.m mVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f12562a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f12562a.getSystemService("jobscheduler");
        int c10 = c(mVar);
        if (!z10 && d(jobScheduler, c10, i10)) {
            n9.a.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", mVar);
            return;
        }
        long p02 = this.f12563b.p0(mVar);
        JobInfo.Builder c11 = this.f12564c.c(new JobInfo.Builder(c10, componentName), mVar.d(), p02, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", mVar.b());
        persistableBundle.putInt("priority", u9.a.a(mVar.d()));
        if (mVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(mVar.c(), 0));
        }
        c11.setExtras(persistableBundle);
        n9.a.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", mVar, Integer.valueOf(c10), Long.valueOf(this.f12564c.g(mVar.d(), p02, i10)), Long.valueOf(p02), Integer.valueOf(i10));
        jobScheduler.schedule(c11.build());
    }

    @Override // q9.v
    public void b(k9.m mVar, int i10) {
        a(mVar, i10, false);
    }

    public int c(k9.m mVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f12562a.getPackageName().getBytes(Charset.forName(HTTP.UTF_8)));
        adler32.update(mVar.b().getBytes(Charset.forName(HTTP.UTF_8)));
        adler32.update(ByteBuffer.allocate(4).putInt(u9.a.a(mVar.d())).array());
        if (mVar.c() != null) {
            adler32.update(mVar.c());
        }
        return (int) adler32.getValue();
    }

    public final boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                return i12 >= i11;
            }
        }
        return false;
    }
}

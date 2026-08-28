package h2;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import d2.l;
import d2.u;
import e2.e;
import e2.i;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import m2.g;
import m2.p;
import m2.q;
import n2.c;

/* compiled from: SystemJobScheduler.java */
/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: j, reason: collision with root package name */
    public static final String f7201j = l.f("SystemJobScheduler");

    /* renamed from: f, reason: collision with root package name */
    public final Context f7202f;

    /* renamed from: g, reason: collision with root package name */
    public final JobScheduler f7203g;

    /* renamed from: h, reason: collision with root package name */
    public final i f7204h;

    /* renamed from: i, reason: collision with root package name */
    public final a f7205i;

    public b(Context context, i iVar) {
        this(context, iVar, (JobScheduler) context.getSystemService("jobscheduler"), new a(context));
    }

    public static void a(Context context) {
        List<JobInfo> g10;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (g10 = g(context, jobScheduler)) == null || g10.isEmpty()) {
            return;
        }
        Iterator<JobInfo> it2 = g10.iterator();
        while (it2.hasNext()) {
            c(jobScheduler, it2.next().getId());
        }
    }

    public static void c(JobScheduler jobScheduler, int i10) {
        try {
            jobScheduler.cancel(i10);
        } catch (Throwable th) {
            l.c().b(f7201j, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i10)), th);
        }
    }

    public static List<Integer> d(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> g10 = g(context, jobScheduler);
        if (g10 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : g10) {
            if (str.equals(h(jobInfo))) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static List<JobInfo> g(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        try {
            list = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            l.c().b(f7201j, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static String h(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return extras.getString("EXTRA_WORK_SPEC_ID");
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean i(Context context, i iVar) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> g10 = g(context, jobScheduler);
        List<String> a10 = iVar.w().L().a();
        boolean z10 = false;
        HashSet hashSet = new HashSet(g10 != null ? g10.size() : 0);
        if (g10 != null && !g10.isEmpty()) {
            for (JobInfo jobInfo : g10) {
                String h10 = h(jobInfo);
                if (!TextUtils.isEmpty(h10)) {
                    hashSet.add(h10);
                } else {
                    c(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it2 = a10.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (!hashSet.contains(it2.next())) {
                l.c().a(f7201j, "Reconciling jobs", new Throwable[0]);
                z10 = true;
                break;
            }
        }
        if (z10) {
            WorkDatabase w10 = iVar.w();
            w10.e();
            try {
                q O = w10.O();
                Iterator<String> it3 = a10.iterator();
                while (it3.hasNext()) {
                    O.f(it3.next(), -1L);
                }
                w10.D();
            } finally {
                w10.i();
            }
        }
        return z10;
    }

    @Override // e2.e
    public void b(String str) {
        List<Integer> d10 = d(this.f7202f, this.f7203g, str);
        if (d10 == null || d10.isEmpty()) {
            return;
        }
        Iterator<Integer> it2 = d10.iterator();
        while (it2.hasNext()) {
            c(this.f7203g, it2.next().intValue());
        }
        this.f7204h.w().L().d(str);
    }

    @Override // e2.e
    public boolean e() {
        return true;
    }

    @Override // e2.e
    public void f(p... pVarArr) {
        int d10;
        List<Integer> d11;
        int d12;
        WorkDatabase w10 = this.f7204h.w();
        c cVar = new c(w10);
        for (p pVar : pVarArr) {
            w10.e();
            try {
                p l10 = w10.O().l(pVar.f10827a);
                if (l10 == null) {
                    l.c().h(f7201j, "Skipping scheduling " + pVar.f10827a + " because it's no longer in the DB", new Throwable[0]);
                    w10.D();
                } else if (l10.f10828b != u.a.ENQUEUED) {
                    l.c().h(f7201j, "Skipping scheduling " + pVar.f10827a + " because it is no longer enqueued", new Throwable[0]);
                    w10.D();
                } else {
                    g b10 = w10.L().b(pVar.f10827a);
                    if (b10 != null) {
                        d10 = b10.f10805b;
                    } else {
                        d10 = cVar.d(this.f7204h.p().h(), this.f7204h.p().f());
                    }
                    if (b10 == null) {
                        this.f7204h.w().L().c(new g(pVar.f10827a, d10));
                    }
                    j(pVar, d10);
                    if (Build.VERSION.SDK_INT == 23 && (d11 = d(this.f7202f, this.f7203g, pVar.f10827a)) != null) {
                        int indexOf = d11.indexOf(Integer.valueOf(d10));
                        if (indexOf >= 0) {
                            d11.remove(indexOf);
                        }
                        if (!d11.isEmpty()) {
                            d12 = d11.get(0).intValue();
                        } else {
                            d12 = cVar.d(this.f7204h.p().h(), this.f7204h.p().f());
                        }
                        j(pVar, d12);
                    }
                    w10.D();
                }
                w10.i();
            } catch (Throwable th) {
                w10.i();
                throw th;
            }
        }
    }

    public void j(p pVar, int i10) {
        JobInfo a10 = this.f7205i.a(pVar, i10);
        l.c().a(f7201j, String.format("Scheduling work ID %s Job ID %s", pVar.f10827a, Integer.valueOf(i10)), new Throwable[0]);
        try {
            this.f7203g.schedule(a10);
        } catch (IllegalStateException e10) {
            List<JobInfo> g10 = g(this.f7202f, this.f7203g);
            String format = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(g10 != null ? g10.size() : 0), Integer.valueOf(this.f7204h.w().O().s().size()), Integer.valueOf(this.f7204h.p().g()));
            l.c().b(f7201j, format, new Throwable[0]);
            throw new IllegalStateException(format, e10);
        } catch (Throwable th) {
            l.c().b(f7201j, String.format("Unable to schedule %s", pVar), th);
        }
    }

    public b(Context context, i iVar, JobScheduler jobScheduler, a aVar) {
        this.f7202f = context;
        this.f7204h = iVar;
        this.f7203g = jobScheduler;
        this.f7205i = aVar;
    }
}

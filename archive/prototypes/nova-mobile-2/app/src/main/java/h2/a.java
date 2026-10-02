package h2;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.impl.background.systemjob.SystemJobService;
import d2.c;
import d2.d;
import d2.l;
import d2.m;
import java.util.Iterator;
import m2.p;

/* compiled from: SystemJobInfoConverter.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    public static final String f7198b = l.f("SystemJobInfoConverter");

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f7199a;

    /* compiled from: SystemJobInfoConverter.java */
    /* renamed from: h2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0137a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7200a;

        static {
            int[] iArr = new int[m.values().length];
            f7200a = iArr;
            try {
                iArr[m.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7200a[m.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7200a[m.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7200a[m.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7200a[m.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public a(Context context) {
        this.f7199a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    public static JobInfo.TriggerContentUri b(d.a aVar) {
        return new JobInfo.TriggerContentUri(aVar.a(), aVar.b() ? 1 : 0);
    }

    public static int c(m mVar) {
        int i10 = C0137a.f7200a[mVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 != 4) {
            if (i10 == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        l.c().a(f7198b, String.format("API version too low. Cannot convert network type value %s", mVar), new Throwable[0]);
        return 1;
    }

    public JobInfo a(p pVar, int i10) {
        c cVar = pVar.f10836j;
        int c10 = c(cVar.b());
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", pVar.f10827a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", pVar.d());
        JobInfo.Builder extras = new JobInfo.Builder(i10, this.f7199a).setRequiredNetworkType(c10).setRequiresCharging(cVar.g()).setRequiresDeviceIdle(cVar.h()).setExtras(persistableBundle);
        if (!cVar.h()) {
            extras.setBackoffCriteria(pVar.f10839m, pVar.f10838l == d2.a.LINEAR ? 0 : 1);
        }
        long max = Math.max(pVar.a() - System.currentTimeMillis(), 0L);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else {
            extras.setImportantWhileForeground(true);
        }
        if (i11 >= 24 && cVar.e()) {
            Iterator<d.a> it2 = cVar.a().b().iterator();
            while (it2.hasNext()) {
                extras.addTriggerContentUri(b(it2.next()));
            }
            extras.setTriggerContentUpdateDelay(cVar.c());
            extras.setTriggerContentMaxDelay(cVar.d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(cVar.f());
            extras.setRequiresStorageNotLow(cVar.i());
        }
        return extras.build();
    }
}

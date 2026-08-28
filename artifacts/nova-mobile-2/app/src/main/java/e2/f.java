package e2;

import android.content.Context;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemjob.SystemJobService;
import d2.l;
import java.util.Iterator;
import java.util.List;
import m2.p;
import m2.q;
import org.apache.http.HttpStatus;

/* compiled from: Schedulers.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5945a = l.f("Schedulers");

    public static e a(Context context, i iVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            h2.b bVar = new h2.b(context, iVar);
            n2.e.a(context, SystemJobService.class, true);
            l.c().a(f5945a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
            return bVar;
        }
        e c10 = c(context);
        if (c10 != null) {
            return c10;
        }
        g2.b bVar2 = new g2.b(context);
        n2.e.a(context, SystemAlarmService.class, true);
        l.c().a(f5945a, "Created SystemAlarmScheduler", new Throwable[0]);
        return bVar2;
    }

    public static void b(d2.b bVar, WorkDatabase workDatabase, List<e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        q O = workDatabase.O();
        workDatabase.e();
        try {
            List<p> k10 = O.k(bVar.g());
            List<p> t10 = O.t(HttpStatus.SC_OK);
            if (k10 != null && k10.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator<p> it2 = k10.iterator();
                while (it2.hasNext()) {
                    O.f(it2.next().f10827a, currentTimeMillis);
                }
            }
            workDatabase.D();
            if (k10 != null && k10.size() > 0) {
                p[] pVarArr = (p[]) k10.toArray(new p[k10.size()]);
                for (e eVar : list) {
                    if (eVar.e()) {
                        eVar.f(pVarArr);
                    }
                }
            }
            if (t10 == null || t10.size() <= 0) {
                return;
            }
            p[] pVarArr2 = (p[]) t10.toArray(new p[t10.size()]);
            for (e eVar2 : list) {
                if (!eVar2.e()) {
                    eVar2.f(pVarArr2);
                }
            }
        } finally {
            workDatabase.i();
        }
    }

    public static e c(Context context) {
        try {
            e eVar = (e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            l.c().a(f5945a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return eVar;
        } catch (Throwable th) {
            l.c().a(f5945a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}

package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import d2.l;
import d2.u;
import e2.f;
import e2.h;
import e2.i;
import h2.b;
import java.util.List;
import java.util.concurrent.TimeUnit;
import m2.n;
import m2.p;
import m2.q;
import n2.g;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {

    /* renamed from: i, reason: collision with root package name */
    public static final String f3405i = l.f("ForceStopRunnable");

    /* renamed from: j, reason: collision with root package name */
    public static final long f3406j = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: f, reason: collision with root package name */
    public final Context f3407f;

    /* renamed from: g, reason: collision with root package name */
    public final i f3408g;

    /* renamed from: h, reason: collision with root package name */
    public int f3409h = 0;

    /* loaded from: classes.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3410a = l.f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            l.c().g(f3410a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.g(context);
        }
    }

    public ForceStopRunnable(Context context, i iVar) {
        this.f3407f = context.getApplicationContext();
        this.f3408g = iVar;
    }

    public static Intent c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    public static PendingIntent d(Context context, int i10) {
        return PendingIntent.getBroadcast(context, -1, c(context), i10);
    }

    public static void g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent d10 = d(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f3406j;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, d10);
            } else {
                alarmManager.set(0, currentTimeMillis, d10);
            }
        }
    }

    public boolean a() {
        boolean i10 = Build.VERSION.SDK_INT >= 23 ? b.i(this.f3407f, this.f3408g) : false;
        WorkDatabase w10 = this.f3408g.w();
        q O = w10.O();
        n N = w10.N();
        w10.e();
        try {
            List<p> c10 = O.c();
            boolean z10 = (c10 == null || c10.isEmpty()) ? false : true;
            if (z10) {
                for (p pVar : c10) {
                    O.b(u.a.ENQUEUED, pVar.f10827a);
                    O.f(pVar.f10827a, -1L);
                }
            }
            N.b();
            w10.D();
            return z10 || i10;
        } finally {
            w10.i();
        }
    }

    public void b() {
        boolean a10 = a();
        if (h()) {
            l.c().a(f3405i, "Rescheduling Workers.", new Throwable[0]);
            this.f3408g.A();
            this.f3408g.s().c(false);
        } else if (e()) {
            l.c().a(f3405i, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f3408g.A();
        } else if (a10) {
            l.c().a(f3405i, "Found unfinished work, scheduling it.", new Throwable[0]);
            f.b(this.f3408g.p(), this.f3408g.w(), this.f3408g.v());
        }
        this.f3408g.z();
    }

    public boolean e() {
        if (d(this.f3407f, NTLMEngineImpl.FLAG_NEGOTIATE_128) != null) {
            return false;
        }
        g(this.f3407f);
        return true;
    }

    public boolean f() {
        if (this.f3408g.u() == null) {
            return true;
        }
        l c10 = l.c();
        String str = f3405i;
        c10.a(str, "Found a remote implementation for WorkManager", new Throwable[0]);
        boolean b10 = g.b(this.f3407f, this.f3408g.p());
        l.c().a(str, String.format("Is default app process = %s", Boolean.valueOf(b10)), new Throwable[0]);
        return b10;
    }

    public boolean h() {
        return this.f3408g.s().a();
    }

    public void i(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10;
        if (!f()) {
            return;
        }
        while (true) {
            h.e(this.f3407f);
            l.c().a(f3405i, "Performing cleanup operations.", new Throwable[0]);
            try {
                b();
                return;
            } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e10) {
                i10 = this.f3409h + 1;
                this.f3409h = i10;
                if (i10 >= 3) {
                    l c10 = l.c();
                    String str = f3405i;
                    c10.b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                    IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                    d2.i c11 = this.f3408g.p().c();
                    if (c11 != null) {
                        l.c().a(str, "Routing exception to the specified exception handler", illegalStateException);
                        c11.a(illegalStateException);
                        return;
                    }
                    throw illegalStateException;
                }
                l.c().a(f3405i, String.format("Retrying after %s", Long.valueOf(i10 * 300)), e10);
                i(this.f3409h * 300);
            }
            l.c().a(f3405i, String.format("Retrying after %s", Long.valueOf(i10 * 300)), e10);
            i(this.f3409h * 300);
        }
    }
}

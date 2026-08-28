package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.d;
import d2.l;
import java.util.HashMap;
import java.util.Map;
import m2.p;

/* compiled from: CommandHandler.java */
/* loaded from: classes.dex */
public class a implements e2.b {

    /* renamed from: i, reason: collision with root package name */
    public static final String f3337i = l.f("CommandHandler");

    /* renamed from: f, reason: collision with root package name */
    public final Context f3338f;

    /* renamed from: g, reason: collision with root package name */
    public final Map<String, e2.b> f3339g = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public final Object f3340h = new Object();

    public a(Context context) {
        this.f3338f = context;
    }

    public static Intent b(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    public static Intent c(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context, String str, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z10);
        return intent;
    }

    public static Intent e(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    public static Intent f(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent g(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static boolean n(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        synchronized (this.f3340h) {
            e2.b remove = this.f3339g.remove(str);
            if (remove != null) {
                remove.a(str, z10);
            }
        }
    }

    public final void h(Intent intent, int i10, d dVar) {
        l.c().a(f3337i, String.format("Handling constraints changed %s", intent), new Throwable[0]);
        new b(this.f3338f, i10, dVar).a();
    }

    public final void i(Intent intent, int i10, d dVar) {
        Bundle extras = intent.getExtras();
        synchronized (this.f3340h) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            l c10 = l.c();
            String str = f3337i;
            c10.a(str, String.format("Handing delay met for %s", string), new Throwable[0]);
            if (!this.f3339g.containsKey(string)) {
                c cVar = new c(this.f3338f, i10, string, dVar);
                this.f3339g.put(string, cVar);
                cVar.f();
            } else {
                l.c().a(str, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string), new Throwable[0]);
            }
        }
    }

    public final void j(Intent intent, int i10) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z10 = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        l.c().a(f3337i, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
        a(string, z10);
    }

    public final void k(Intent intent, int i10, d dVar) {
        l.c().a(f3337i, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i10)), new Throwable[0]);
        dVar.g().A();
    }

    public final void l(Intent intent, int i10, d dVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        l c10 = l.c();
        String str = f3337i;
        c10.a(str, String.format("Handling schedule work for %s", string), new Throwable[0]);
        WorkDatabase w10 = dVar.g().w();
        w10.e();
        try {
            p l10 = w10.O().l(string);
            if (l10 == null) {
                l.c().h(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                return;
            }
            if (l10.f10828b.a()) {
                l.c().h(str, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                return;
            }
            long a10 = l10.a();
            if (!l10.b()) {
                l.c().a(str, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(a10)), new Throwable[0]);
                g2.a.c(this.f3338f, dVar.g(), string, a10);
            } else {
                l.c().a(str, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(a10)), new Throwable[0]);
                g2.a.c(this.f3338f, dVar.g(), string, a10);
                dVar.k(new d.b(dVar, b(this.f3338f), i10));
            }
            w10.D();
        } finally {
            w10.i();
        }
    }

    public final void m(Intent intent, d dVar) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        l.c().a(f3337i, String.format("Handing stopWork work for %s", string), new Throwable[0]);
        dVar.g().F(string);
        g2.a.a(this.f3338f, dVar.g(), string);
        dVar.a(string, false);
    }

    public boolean o() {
        boolean z10;
        synchronized (this.f3340h) {
            z10 = !this.f3339g.isEmpty();
        }
        return z10;
    }

    public void p(Intent intent, int i10, d dVar) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            h(intent, i10, dVar);
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            k(intent, i10, dVar);
            return;
        }
        if (!n(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            l.c().b(f3337i, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            l(intent, i10, dVar);
            return;
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            i(intent, i10, dVar);
            return;
        }
        if ("ACTION_STOP_WORK".equals(action)) {
            m(intent, dVar);
        } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            j(intent, i10);
        } else {
            l.c().h(f3337i, String.format("Ignoring intent %s", intent), new Throwable[0]);
        }
    }
}

package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import d2.g;
import d2.l;
import e2.i;
import i2.c;
import i2.d;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import m2.p;

/* compiled from: SystemForegroundDispatcher.java */
/* loaded from: classes.dex */
public class a implements c, e2.b {

    /* renamed from: p, reason: collision with root package name */
    public static final String f3391p = l.f("SystemFgDispatcher");

    /* renamed from: f, reason: collision with root package name */
    public Context f3392f;

    /* renamed from: g, reason: collision with root package name */
    public i f3393g;

    /* renamed from: h, reason: collision with root package name */
    public final p2.a f3394h;

    /* renamed from: i, reason: collision with root package name */
    public final Object f3395i = new Object();

    /* renamed from: j, reason: collision with root package name */
    public String f3396j;

    /* renamed from: k, reason: collision with root package name */
    public final Map<String, g> f3397k;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, p> f3398l;

    /* renamed from: m, reason: collision with root package name */
    public final Set<p> f3399m;

    /* renamed from: n, reason: collision with root package name */
    public final d f3400n;

    /* renamed from: o, reason: collision with root package name */
    public b f3401o;

    /* compiled from: SystemForegroundDispatcher.java */
    /* renamed from: androidx.work.impl.foreground.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0061a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ WorkDatabase f3402f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f3403g;

        public RunnableC0061a(WorkDatabase workDatabase, String str) {
            this.f3402f = workDatabase;
            this.f3403g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p l10 = this.f3402f.O().l(this.f3403g);
            if (l10 == null || !l10.b()) {
                return;
            }
            synchronized (a.this.f3395i) {
                a.this.f3398l.put(this.f3403g, l10);
                a.this.f3399m.add(l10);
                a aVar = a.this;
                aVar.f3400n.d(aVar.f3399m);
            }
        }
    }

    /* compiled from: SystemForegroundDispatcher.java */
    /* loaded from: classes.dex */
    public interface b {
        void b(int i10);

        void c(int i10, int i11, Notification notification);

        void d(int i10, Notification notification);

        void stop();
    }

    public a(Context context) {
        this.f3392f = context;
        i r10 = i.r(context);
        this.f3393g = r10;
        p2.a x10 = r10.x();
        this.f3394h = x10;
        this.f3396j = null;
        this.f3397k = new LinkedHashMap();
        this.f3399m = new HashSet();
        this.f3398l = new HashMap();
        this.f3400n = new d(this.f3392f, x10, this);
        this.f3393g.t().c(this);
    }

    public static Intent b(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        Map.Entry<String, g> entry;
        synchronized (this.f3395i) {
            p remove = this.f3398l.remove(str);
            if (remove != null ? this.f3399m.remove(remove) : false) {
                this.f3400n.d(this.f3399m);
            }
        }
        g remove2 = this.f3397k.remove(str);
        if (str.equals(this.f3396j) && this.f3397k.size() > 0) {
            Iterator<Map.Entry<String, g>> it2 = this.f3397k.entrySet().iterator();
            Map.Entry<String, g> next = it2.next();
            while (true) {
                entry = next;
                if (!it2.hasNext()) {
                    break;
                } else {
                    next = it2.next();
                }
            }
            this.f3396j = entry.getKey();
            if (this.f3401o != null) {
                g value = entry.getValue();
                this.f3401o.c(value.c(), value.a(), value.b());
                this.f3401o.b(value.c());
            }
        }
        b bVar = this.f3401o;
        if (remove2 == null || bVar == null) {
            return;
        }
        l.c().a(f3391p, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.c()), str, Integer.valueOf(remove2.a())), new Throwable[0]);
        bVar.b(remove2.c());
    }

    @Override // i2.c
    public void c(List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        for (String str : list) {
            l.c().a(f3391p, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
            this.f3393g.E(str);
        }
    }

    @Override // i2.c
    public void d(List<String> list) {
    }

    public final void e(Intent intent) {
        l.c().d(f3391p, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f3393g.l(UUID.fromString(stringExtra));
    }

    public final void f(Intent intent) {
        int i10 = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        l.c().a(f3391p, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f3401o == null) {
            return;
        }
        this.f3397k.put(stringExtra, new g(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f3396j)) {
            this.f3396j = stringExtra;
            this.f3401o.c(intExtra, intExtra2, notification);
            return;
        }
        this.f3401o.d(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator<Map.Entry<String, g>> it2 = this.f3397k.entrySet().iterator();
        while (it2.hasNext()) {
            i10 |= it2.next().getValue().a();
        }
        g gVar = this.f3397k.get(this.f3396j);
        if (gVar != null) {
            this.f3401o.c(gVar.c(), i10, gVar.b());
        }
    }

    public final void g(Intent intent) {
        l.c().d(f3391p, String.format("Started foreground service %s", intent), new Throwable[0]);
        this.f3394h.b(new RunnableC0061a(this.f3393g.w(), intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    public void h(Intent intent) {
        l.c().d(f3391p, "Stopping foreground service", new Throwable[0]);
        b bVar = this.f3401o;
        if (bVar != null) {
            bVar.stop();
        }
    }

    public void i() {
        this.f3401o = null;
        synchronized (this.f3395i) {
            this.f3400n.e();
        }
        this.f3393g.t().h(this);
    }

    public void j(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            g(intent);
            f(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            f(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            e(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            h(intent);
        }
    }

    public void k(b bVar) {
        if (this.f3401o != null) {
            l.c().b(f3391p, "A callback already exists.", new Throwable[0]);
        } else {
            this.f3401o = bVar;
        }
    }
}

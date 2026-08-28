package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.d;
import d2.l;
import java.util.Collections;
import java.util.List;
import m2.p;
import n2.k;
import n2.n;

/* compiled from: DelayMetCommandHandler.java */
/* loaded from: classes.dex */
public class c implements i2.c, e2.b, n.b {

    /* renamed from: o, reason: collision with root package name */
    public static final String f3346o = l.f("DelayMetCommandHandler");

    /* renamed from: f, reason: collision with root package name */
    public final Context f3347f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3348g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3349h;

    /* renamed from: i, reason: collision with root package name */
    public final d f3350i;

    /* renamed from: j, reason: collision with root package name */
    public final i2.d f3351j;

    /* renamed from: m, reason: collision with root package name */
    public PowerManager.WakeLock f3354m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f3355n = false;

    /* renamed from: l, reason: collision with root package name */
    public int f3353l = 0;

    /* renamed from: k, reason: collision with root package name */
    public final Object f3352k = new Object();

    public c(Context context, int i10, String str, d dVar) {
        this.f3347f = context;
        this.f3348g = i10;
        this.f3350i = dVar;
        this.f3349h = str;
        this.f3351j = new i2.d(context, dVar.f(), this);
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        l.c().a(f3346o, String.format("onExecuted %s, %s", str, Boolean.valueOf(z10)), new Throwable[0]);
        e();
        if (z10) {
            Intent f10 = a.f(this.f3347f, this.f3349h);
            d dVar = this.f3350i;
            dVar.k(new d.b(dVar, f10, this.f3348g));
        }
        if (this.f3355n) {
            Intent b10 = a.b(this.f3347f);
            d dVar2 = this.f3350i;
            dVar2.k(new d.b(dVar2, b10, this.f3348g));
        }
    }

    @Override // n2.n.b
    public void b(String str) {
        l.c().a(f3346o, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        g();
    }

    @Override // i2.c
    public void c(List<String> list) {
        g();
    }

    @Override // i2.c
    public void d(List<String> list) {
        if (list.contains(this.f3349h)) {
            synchronized (this.f3352k) {
                if (this.f3353l == 0) {
                    this.f3353l = 1;
                    l.c().a(f3346o, String.format("onAllConstraintsMet for %s", this.f3349h), new Throwable[0]);
                    if (this.f3350i.e().i(this.f3349h)) {
                        this.f3350i.h().b(this.f3349h, 600000L, this);
                    } else {
                        e();
                    }
                } else {
                    l.c().a(f3346o, String.format("Already started work for %s", this.f3349h), new Throwable[0]);
                }
            }
        }
    }

    public final void e() {
        synchronized (this.f3352k) {
            this.f3351j.e();
            this.f3350i.h().c(this.f3349h);
            PowerManager.WakeLock wakeLock = this.f3354m;
            if (wakeLock != null && wakeLock.isHeld()) {
                l.c().a(f3346o, String.format("Releasing wakelock %s for WorkSpec %s", this.f3354m, this.f3349h), new Throwable[0]);
                this.f3354m.release();
            }
        }
    }

    public void f() {
        this.f3354m = k.b(this.f3347f, String.format("%s (%s)", this.f3349h, Integer.valueOf(this.f3348g)));
        l c10 = l.c();
        String str = f3346o;
        c10.a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f3354m, this.f3349h), new Throwable[0]);
        this.f3354m.acquire();
        p l10 = this.f3350i.g().w().O().l(this.f3349h);
        if (l10 == null) {
            g();
            return;
        }
        boolean b10 = l10.b();
        this.f3355n = b10;
        if (!b10) {
            l.c().a(str, String.format("No constraints for %s", this.f3349h), new Throwable[0]);
            d(Collections.singletonList(this.f3349h));
        } else {
            this.f3351j.d(Collections.singletonList(l10));
        }
    }

    public final void g() {
        synchronized (this.f3352k) {
            if (this.f3353l < 2) {
                this.f3353l = 2;
                l c10 = l.c();
                String str = f3346o;
                c10.a(str, String.format("Stopping work for WorkSpec %s", this.f3349h), new Throwable[0]);
                Intent g10 = a.g(this.f3347f, this.f3349h);
                d dVar = this.f3350i;
                dVar.k(new d.b(dVar, g10, this.f3348g));
                if (this.f3350i.e().f(this.f3349h)) {
                    l.c().a(str, String.format("WorkSpec %s needs to be rescheduled", this.f3349h), new Throwable[0]);
                    Intent f10 = a.f(this.f3347f, this.f3349h);
                    d dVar2 = this.f3350i;
                    dVar2.k(new d.b(dVar2, f10, this.f3348g));
                } else {
                    l.c().a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f3349h), new Throwable[0]);
                }
            } else {
                l.c().a(f3346o, String.format("Already stopped work for %s", this.f3349h), new Throwable[0]);
            }
        }
    }
}

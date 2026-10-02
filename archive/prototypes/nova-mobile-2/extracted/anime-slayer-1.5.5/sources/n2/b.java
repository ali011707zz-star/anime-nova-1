package n2;

import android.os.Build;
import android.text.TextUtils;
import androidx.work.a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import d2.o;
import d2.u;
import d2.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import m2.p;
import m2.q;
import m2.s;

/* compiled from: EnqueueRunnable.java */
/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: h, reason: collision with root package name */
    public static final String f11193h = d2.l.f("EnqueueRunnable");

    /* renamed from: f, reason: collision with root package name */
    public final e2.g f11194f;

    /* renamed from: g, reason: collision with root package name */
    public final e2.c f11195g = new e2.c();

    public b(e2.g gVar) {
        this.f11194f = gVar;
    }

    public static boolean b(e2.g gVar) {
        boolean c10 = c(gVar.i(), gVar.h(), (String[]) e2.g.n(gVar).toArray(new String[0]), gVar.f(), gVar.d());
        gVar.m();
        return c10;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e1 A[LOOP:5: B:86:0x01db->B:88:0x01e1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(e2.i iVar, List<? extends w> list, String[] strArr, String str, d2.f fVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        long j10;
        int i10;
        Iterator<String> it2;
        boolean z14;
        m2.b bVar;
        e2.i iVar2 = iVar;
        String[] strArr2 = strArr;
        long currentTimeMillis = System.currentTimeMillis();
        WorkDatabase w10 = iVar.w();
        boolean z15 = strArr2 != null && strArr2.length > 0;
        if (z15) {
            z10 = true;
            z11 = false;
            z12 = false;
            for (String str2 : strArr2) {
                p l10 = w10.O().l(str2);
                if (l10 == null) {
                    d2.l.c().b(f11193h, String.format("Prerequisite %s doesn't exist; not enqueuing", str2), new Throwable[0]);
                    return false;
                }
                u.a aVar = l10.f10828b;
                z10 &= aVar == u.a.SUCCEEDED;
                if (aVar == u.a.FAILED) {
                    z12 = true;
                } else if (aVar == u.a.CANCELLED) {
                    z11 = true;
                }
            }
        } else {
            z10 = true;
            z11 = false;
            z12 = false;
        }
        boolean z16 = !TextUtils.isEmpty(str);
        if (z16 && !z15) {
            List<p.b> h10 = w10.O().h(str);
            if (!h10.isEmpty()) {
                if (fVar != d2.f.APPEND && fVar != d2.f.APPEND_OR_REPLACE) {
                    if (fVar == d2.f.KEEP) {
                        Iterator<p.b> it3 = h10.iterator();
                        while (it3.hasNext()) {
                            u.a aVar2 = it3.next().f10845b;
                            if (aVar2 == u.a.ENQUEUED || aVar2 == u.a.RUNNING) {
                                return false;
                            }
                        }
                    }
                    a.c(str, iVar2, false).run();
                    q O = w10.O();
                    Iterator<p.b> it4 = h10.iterator();
                    while (it4.hasNext()) {
                        O.a(it4.next().f10844a);
                    }
                    z13 = true;
                    for (w wVar : list) {
                        p d10 = wVar.d();
                        if (!z15 || z10) {
                            if (!d10.d()) {
                                d10.f10840n = currentTimeMillis;
                            } else {
                                j10 = currentTimeMillis;
                                d10.f10840n = 0L;
                                i10 = Build.VERSION.SDK_INT;
                                if (i10 < 23 && i10 <= 25) {
                                    g(d10);
                                } else if (i10 <= 22 && h(iVar2, "androidx.work.impl.background.gcm.GcmScheduler")) {
                                    g(d10);
                                }
                                if (d10.f10828b == u.a.ENQUEUED) {
                                    z13 = true;
                                }
                                w10.O().e(d10);
                                if (z15) {
                                    for (String str3 : strArr2) {
                                        w10.G().a(new m2.a(wVar.b(), str3));
                                    }
                                }
                                it2 = wVar.c().iterator();
                                while (it2.hasNext()) {
                                    w10.P().a(new s(it2.next(), wVar.b()));
                                }
                                if (!z16) {
                                    w10.M().a(new m2.j(str, wVar.b()));
                                }
                                iVar2 = iVar;
                                currentTimeMillis = j10;
                            }
                        } else if (z12) {
                            d10.f10828b = u.a.FAILED;
                        } else if (z11) {
                            d10.f10828b = u.a.CANCELLED;
                        } else {
                            d10.f10828b = u.a.BLOCKED;
                        }
                        j10 = currentTimeMillis;
                        i10 = Build.VERSION.SDK_INT;
                        if (i10 < 23) {
                        }
                        if (i10 <= 22) {
                            g(d10);
                        }
                        if (d10.f10828b == u.a.ENQUEUED) {
                        }
                        w10.O().e(d10);
                        if (z15) {
                        }
                        it2 = wVar.c().iterator();
                        while (it2.hasNext()) {
                        }
                        if (!z16) {
                        }
                        iVar2 = iVar;
                        currentTimeMillis = j10;
                    }
                    return z13;
                }
                m2.b G = w10.G();
                List arrayList = new ArrayList();
                for (p.b bVar2 : h10) {
                    if (G.c(bVar2.f10844a)) {
                        bVar = G;
                    } else {
                        u.a aVar3 = bVar2.f10845b;
                        bVar = G;
                        boolean z17 = (aVar3 == u.a.SUCCEEDED) & z10;
                        if (aVar3 == u.a.FAILED) {
                            z12 = true;
                        } else if (aVar3 == u.a.CANCELLED) {
                            z11 = true;
                        }
                        arrayList.add(bVar2.f10844a);
                        z10 = z17;
                    }
                    G = bVar;
                }
                if (fVar == d2.f.APPEND_OR_REPLACE && (z11 || z12)) {
                    q O2 = w10.O();
                    Iterator<p.b> it5 = O2.h(str).iterator();
                    while (it5.hasNext()) {
                        O2.a(it5.next().f10844a);
                    }
                    arrayList = Collections.emptyList();
                    z14 = false;
                    z11 = false;
                } else {
                    z14 = z12;
                }
                strArr2 = (String[]) arrayList.toArray(strArr2);
                z15 = strArr2.length > 0;
                z12 = z14;
            }
        }
        z13 = false;
        while (r7.hasNext()) {
        }
        return z13;
    }

    public static boolean e(e2.g gVar) {
        List<e2.g> g10 = gVar.g();
        boolean z10 = false;
        if (g10 != null) {
            boolean z11 = false;
            for (e2.g gVar2 : g10) {
                if (!gVar2.l()) {
                    z11 |= e(gVar2);
                } else {
                    d2.l.c().h(f11193h, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", gVar2.e())), new Throwable[0]);
                }
            }
            z10 = z11;
        }
        return b(gVar) | z10;
    }

    public static void g(p pVar) {
        d2.c cVar = pVar.f10836j;
        if (cVar.f() || cVar.i()) {
            String str = pVar.f10829c;
            a.C0058a c0058a = new a.C0058a();
            c0058a.c(pVar.f10831e).g("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            pVar.f10829c = ConstraintTrackingWorker.class.getName();
            pVar.f10831e = c0058a.a();
        }
    }

    public static boolean h(e2.i iVar, String str) {
        try {
            Class<?> cls = Class.forName(str);
            Iterator<e2.e> it2 = iVar.v().iterator();
            while (it2.hasNext()) {
                if (cls.isAssignableFrom(it2.next().getClass())) {
                    return true;
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }

    public boolean a() {
        WorkDatabase w10 = this.f11194f.i().w();
        w10.e();
        try {
            boolean e10 = e(this.f11194f);
            w10.D();
            return e10;
        } finally {
            w10.i();
        }
    }

    public o d() {
        return this.f11195g;
    }

    public void f() {
        e2.i i10 = this.f11194f.i();
        e2.f.b(i10.p(), i10.w(), i10.v());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!this.f11194f.j()) {
                if (a()) {
                    e.a(this.f11194f.i().o(), RescheduleReceiver.class, true);
                    f();
                }
                this.f11195g.a(o.f5585a);
                return;
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f11194f));
        } catch (Throwable th) {
            this.f11195g.a(new o.b.a(th));
        }
    }
}

package f2;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import d2.l;
import d2.u;
import e2.e;
import e2.i;
import i2.c;
import i2.d;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import m2.p;
import n2.g;

/* compiled from: GreedyScheduler.java */
/* loaded from: classes.dex */
public class b implements e, c, e2.b {

    /* renamed from: n, reason: collision with root package name */
    public static final String f6387n = l.f("GreedyScheduler");

    /* renamed from: f, reason: collision with root package name */
    public final Context f6388f;

    /* renamed from: g, reason: collision with root package name */
    public final i f6389g;

    /* renamed from: h, reason: collision with root package name */
    public final d f6390h;

    /* renamed from: j, reason: collision with root package name */
    public a f6392j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6393k;

    /* renamed from: m, reason: collision with root package name */
    public Boolean f6395m;

    /* renamed from: i, reason: collision with root package name */
    public final Set<p> f6391i = new HashSet();

    /* renamed from: l, reason: collision with root package name */
    public final Object f6394l = new Object();

    public b(Context context, d2.b bVar, p2.a aVar, i iVar) {
        this.f6388f = context;
        this.f6389g = iVar;
        this.f6390h = new d(context, aVar, this);
        this.f6392j = new a(this, bVar.j());
    }

    @Override // e2.b
    public void a(String str, boolean z10) {
        i(str);
    }

    @Override // e2.e
    public void b(String str) {
        if (this.f6395m == null) {
            g();
        }
        if (!this.f6395m.booleanValue()) {
            l.c().d(f6387n, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        h();
        l.c().a(f6387n, String.format("Cancelling work ID %s", str), new Throwable[0]);
        a aVar = this.f6392j;
        if (aVar != null) {
            aVar.b(str);
        }
        this.f6389g.F(str);
    }

    @Override // i2.c
    public void c(List<String> list) {
        for (String str : list) {
            l.c().a(f6387n, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f6389g.F(str);
        }
    }

    @Override // i2.c
    public void d(List<String> list) {
        for (String str : list) {
            l.c().a(f6387n, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.f6389g.C(str);
        }
    }

    @Override // e2.e
    public boolean e() {
        return false;
    }

    @Override // e2.e
    public void f(p... pVarArr) {
        if (this.f6395m == null) {
            g();
        }
        if (!this.f6395m.booleanValue()) {
            l.c().d(f6387n, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (p pVar : pVarArr) {
            long a10 = pVar.a();
            long currentTimeMillis = System.currentTimeMillis();
            if (pVar.f10828b == u.a.ENQUEUED) {
                if (currentTimeMillis < a10) {
                    a aVar = this.f6392j;
                    if (aVar != null) {
                        aVar.a(pVar);
                    }
                } else if (pVar.b()) {
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 23 && pVar.f10836j.h()) {
                        l.c().a(f6387n, String.format("Ignoring WorkSpec %s, Requires device idle.", pVar), new Throwable[0]);
                    } else if (i10 >= 24 && pVar.f10836j.e()) {
                        l.c().a(f6387n, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", pVar), new Throwable[0]);
                    } else {
                        hashSet.add(pVar);
                        hashSet2.add(pVar.f10827a);
                    }
                } else {
                    l.c().a(f6387n, String.format("Starting work for %s", pVar.f10827a), new Throwable[0]);
                    this.f6389g.C(pVar.f10827a);
                }
            }
        }
        synchronized (this.f6394l) {
            if (!hashSet.isEmpty()) {
                l.c().a(f6387n, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f6391i.addAll(hashSet);
                this.f6390h.d(this.f6391i);
            }
        }
    }

    public final void g() {
        this.f6395m = Boolean.valueOf(g.b(this.f6388f, this.f6389g.p()));
    }

    public final void h() {
        if (this.f6393k) {
            return;
        }
        this.f6389g.t().c(this);
        this.f6393k = true;
    }

    public final void i(String str) {
        synchronized (this.f6394l) {
            Iterator<p> it2 = this.f6391i.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                p next = it2.next();
                if (next.f10827a.equals(str)) {
                    l.c().a(f6387n, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f6391i.remove(next);
                    this.f6390h.d(this.f6391i);
                    break;
                }
            }
        }
    }
}

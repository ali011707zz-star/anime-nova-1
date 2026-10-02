package i2;

import android.content.Context;
import d2.l;
import j2.c;
import j2.e;
import j2.f;
import j2.g;
import j2.h;
import java.util.ArrayList;
import java.util.List;
import m2.p;

/* compiled from: WorkConstraintsTracker.java */
/* loaded from: classes.dex */
public class d implements c.a {

    /* renamed from: d, reason: collision with root package name */
    public static final String f7541d = l.f("WorkConstraintsTracker");

    /* renamed from: a, reason: collision with root package name */
    public final c f7542a;

    /* renamed from: b, reason: collision with root package name */
    public final j2.c<?>[] f7543b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7544c;

    public d(Context context, p2.a aVar, c cVar) {
        Context applicationContext = context.getApplicationContext();
        this.f7542a = cVar;
        this.f7543b = new j2.c[]{new j2.a(applicationContext, aVar), new j2.b(applicationContext, aVar), new h(applicationContext, aVar), new j2.d(applicationContext, aVar), new g(applicationContext, aVar), new f(applicationContext, aVar), new e(applicationContext, aVar)};
        this.f7544c = new Object();
    }

    @Override // j2.c.a
    public void a(List<String> list) {
        synchronized (this.f7544c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (c(str)) {
                    l.c().a(f7541d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            c cVar = this.f7542a;
            if (cVar != null) {
                cVar.d(arrayList);
            }
        }
    }

    @Override // j2.c.a
    public void b(List<String> list) {
        synchronized (this.f7544c) {
            c cVar = this.f7542a;
            if (cVar != null) {
                cVar.c(list);
            }
        }
    }

    public boolean c(String str) {
        synchronized (this.f7544c) {
            for (j2.c<?> cVar : this.f7543b) {
                if (cVar.d(str)) {
                    l.c().a(f7541d, String.format("Work %s constrained by %s", str, cVar.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public void d(Iterable<p> iterable) {
        synchronized (this.f7544c) {
            for (j2.c<?> cVar : this.f7543b) {
                cVar.g(null);
            }
            for (j2.c<?> cVar2 : this.f7543b) {
                cVar2.e(iterable);
            }
            for (j2.c<?> cVar3 : this.f7543b) {
                cVar3.g(this);
            }
        }
    }

    public void e() {
        synchronized (this.f7544c) {
            for (j2.c<?> cVar : this.f7543b) {
                cVar.f();
            }
        }
    }
}

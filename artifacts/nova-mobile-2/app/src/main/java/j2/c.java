package j2;

import java.util.ArrayList;
import java.util.List;
import m2.p;

/* compiled from: ConstraintController.java */
/* loaded from: classes.dex */
public abstract class c<T> implements i2.a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f8069a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public T f8070b;

    /* renamed from: c, reason: collision with root package name */
    public k2.d<T> f8071c;

    /* renamed from: d, reason: collision with root package name */
    public a f8072d;

    /* compiled from: ConstraintController.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(List<String> list);

        void b(List<String> list);
    }

    public c(k2.d<T> dVar) {
        this.f8071c = dVar;
    }

    @Override // i2.a
    public void a(T t10) {
        this.f8070b = t10;
        h(this.f8072d, t10);
    }

    public abstract boolean b(p pVar);

    public abstract boolean c(T t10);

    public boolean d(String str) {
        T t10 = this.f8070b;
        return t10 != null && c(t10) && this.f8069a.contains(str);
    }

    public void e(Iterable<p> iterable) {
        this.f8069a.clear();
        for (p pVar : iterable) {
            if (b(pVar)) {
                this.f8069a.add(pVar.f10827a);
            }
        }
        if (this.f8069a.isEmpty()) {
            this.f8071c.c(this);
        } else {
            this.f8071c.a(this);
        }
        h(this.f8072d, this.f8070b);
    }

    public void f() {
        if (this.f8069a.isEmpty()) {
            return;
        }
        this.f8069a.clear();
        this.f8071c.c(this);
    }

    public void g(a aVar) {
        if (this.f8072d != aVar) {
            this.f8072d = aVar;
            h(aVar, this.f8070b);
        }
    }

    public final void h(a aVar, T t10) {
        if (this.f8069a.isEmpty() || aVar == null) {
            return;
        }
        if (t10 != null && !c(t10)) {
            aVar.a(this.f8069a);
        } else {
            aVar.b(this.f8069a);
        }
    }
}

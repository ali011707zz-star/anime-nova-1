package y8;

import c9.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x8.i;

/* compiled from: ChartData.java */
/* loaded from: classes.dex */
public abstract class h<T extends c9.d<? extends j>> {

    /* renamed from: a, reason: collision with root package name */
    public float f16757a;

    /* renamed from: b, reason: collision with root package name */
    public float f16758b;

    /* renamed from: c, reason: collision with root package name */
    public float f16759c;

    /* renamed from: d, reason: collision with root package name */
    public float f16760d;

    /* renamed from: e, reason: collision with root package name */
    public float f16761e;

    /* renamed from: f, reason: collision with root package name */
    public float f16762f;

    /* renamed from: g, reason: collision with root package name */
    public float f16763g;

    /* renamed from: h, reason: collision with root package name */
    public float f16764h;

    /* renamed from: i, reason: collision with root package name */
    public List<T> f16765i;

    public h() {
        this.f16757a = -3.4028235E38f;
        this.f16758b = Float.MAX_VALUE;
        this.f16759c = -3.4028235E38f;
        this.f16760d = Float.MAX_VALUE;
        this.f16761e = -3.4028235E38f;
        this.f16762f = Float.MAX_VALUE;
        this.f16763g = -3.4028235E38f;
        this.f16764h = Float.MAX_VALUE;
        this.f16765i = new ArrayList();
    }

    public final List<T> a(T[] tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            arrayList.add(t10);
        }
        return arrayList;
    }

    public void b() {
        List<T> list = this.f16765i;
        if (list == null) {
            return;
        }
        this.f16757a = -3.4028235E38f;
        this.f16758b = Float.MAX_VALUE;
        this.f16759c = -3.4028235E38f;
        this.f16760d = Float.MAX_VALUE;
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            c(it2.next());
        }
        this.f16761e = -3.4028235E38f;
        this.f16762f = Float.MAX_VALUE;
        this.f16763g = -3.4028235E38f;
        this.f16764h = Float.MAX_VALUE;
        T j10 = j(this.f16765i);
        if (j10 != null) {
            this.f16761e = j10.q();
            this.f16762f = j10.Q();
            for (T t10 : this.f16765i) {
                if (t10.a0() == i.a.LEFT) {
                    if (t10.Q() < this.f16762f) {
                        this.f16762f = t10.Q();
                    }
                    if (t10.q() > this.f16761e) {
                        this.f16761e = t10.q();
                    }
                }
            }
        }
        T k10 = k(this.f16765i);
        if (k10 != null) {
            this.f16763g = k10.q();
            this.f16764h = k10.Q();
            for (T t11 : this.f16765i) {
                if (t11.a0() == i.a.RIGHT) {
                    if (t11.Q() < this.f16764h) {
                        this.f16764h = t11.Q();
                    }
                    if (t11.q() > this.f16763g) {
                        this.f16763g = t11.q();
                    }
                }
            }
        }
    }

    public void c(T t10) {
        if (this.f16757a < t10.q()) {
            this.f16757a = t10.q();
        }
        if (this.f16758b > t10.Q()) {
            this.f16758b = t10.Q();
        }
        if (this.f16759c < t10.O()) {
            this.f16759c = t10.O();
        }
        if (this.f16760d > t10.o()) {
            this.f16760d = t10.o();
        }
        if (t10.a0() == i.a.LEFT) {
            if (this.f16761e < t10.q()) {
                this.f16761e = t10.q();
            }
            if (this.f16762f > t10.Q()) {
                this.f16762f = t10.Q();
                return;
            }
            return;
        }
        if (this.f16763g < t10.q()) {
            this.f16763g = t10.q();
        }
        if (this.f16764h > t10.Q()) {
            this.f16764h = t10.Q();
        }
    }

    public void d(float f10, float f11) {
        Iterator<T> it2 = this.f16765i.iterator();
        while (it2.hasNext()) {
            it2.next().D(f10, f11);
        }
        b();
    }

    public T e(int i10) {
        List<T> list = this.f16765i;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return null;
        }
        return this.f16765i.get(i10);
    }

    public int f() {
        List<T> list = this.f16765i;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<T> g() {
        return this.f16765i;
    }

    public int h() {
        Iterator<T> it2 = this.f16765i.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            i10 += it2.next().e0();
        }
        return i10;
    }

    public j i(a9.c cVar) {
        if (cVar.c() >= this.f16765i.size()) {
            return null;
        }
        return this.f16765i.get(cVar.c()).A(cVar.g(), cVar.i());
    }

    public T j(List<T> list) {
        for (T t10 : list) {
            if (t10.a0() == i.a.LEFT) {
                return t10;
            }
        }
        return null;
    }

    public T k(List<T> list) {
        for (T t10 : list) {
            if (t10.a0() == i.a.RIGHT) {
                return t10;
            }
        }
        return null;
    }

    public T l() {
        List<T> list = this.f16765i;
        if (list == null || list.isEmpty()) {
            return null;
        }
        T t10 = this.f16765i.get(0);
        for (T t11 : this.f16765i) {
            if (t11.e0() > t10.e0()) {
                t10 = t11;
            }
        }
        return t10;
    }

    public float m() {
        return this.f16759c;
    }

    public float n() {
        return this.f16760d;
    }

    public float o() {
        return this.f16757a;
    }

    public float p(i.a aVar) {
        if (aVar == i.a.LEFT) {
            float f10 = this.f16761e;
            return f10 == -3.4028235E38f ? this.f16763g : f10;
        }
        float f11 = this.f16763g;
        return f11 == -3.4028235E38f ? this.f16761e : f11;
    }

    public float q() {
        return this.f16758b;
    }

    public float r(i.a aVar) {
        if (aVar == i.a.LEFT) {
            float f10 = this.f16762f;
            return f10 == Float.MAX_VALUE ? this.f16764h : f10;
        }
        float f11 = this.f16764h;
        return f11 == Float.MAX_VALUE ? this.f16762f : f11;
    }

    public void s() {
        b();
    }

    public void t(boolean z10) {
        Iterator<T> it2 = this.f16765i.iterator();
        while (it2.hasNext()) {
            it2.next().c0(z10);
        }
    }

    public h(T... tArr) {
        this.f16757a = -3.4028235E38f;
        this.f16758b = Float.MAX_VALUE;
        this.f16759c = -3.4028235E38f;
        this.f16760d = Float.MAX_VALUE;
        this.f16761e = -3.4028235E38f;
        this.f16762f = Float.MAX_VALUE;
        this.f16763g = -3.4028235E38f;
        this.f16764h = Float.MAX_VALUE;
        this.f16765i = a(tArr);
        s();
    }
}

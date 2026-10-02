package vb;

import java.io.Serializable;

/* compiled from: LazyJVM.kt */
/* loaded from: classes2.dex */
public final class m<T> implements e<T>, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public ic.a<? extends T> f15027f;

    /* renamed from: g, reason: collision with root package name */
    public volatile Object f15028g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f15029h;

    public m(ic.a<? extends T> aVar, Object obj) {
        jc.l.f(aVar, "initializer");
        this.f15027f = aVar;
        this.f15028g = o.f15030a;
        this.f15029h = obj == null ? this : obj;
    }

    public boolean a() {
        return this.f15028g != o.f15030a;
    }

    @Override // vb.e
    public T getValue() {
        T t10;
        T t11 = (T) this.f15028g;
        o oVar = o.f15030a;
        if (t11 != oVar) {
            return t11;
        }
        synchronized (this.f15029h) {
            t10 = (T) this.f15028g;
            if (t10 == oVar) {
                ic.a<? extends T> aVar = this.f15027f;
                jc.l.c(aVar);
                t10 = aVar.invoke();
                this.f15028g = t10;
                this.f15027f = null;
            }
        }
        return t10;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ m(ic.a aVar, Object obj, int i10, jc.g gVar) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }
}

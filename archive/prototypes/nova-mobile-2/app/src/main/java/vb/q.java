package vb;

import java.io.Serializable;

/* compiled from: Lazy.kt */
/* loaded from: classes2.dex */
public final class q<T> implements e<T>, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public ic.a<? extends T> f15032f;

    /* renamed from: g, reason: collision with root package name */
    public Object f15033g;

    public q(ic.a<? extends T> aVar) {
        jc.l.f(aVar, "initializer");
        this.f15032f = aVar;
        this.f15033g = o.f15030a;
    }

    public boolean a() {
        return this.f15033g != o.f15030a;
    }

    @Override // vb.e
    public T getValue() {
        if (this.f15033g == o.f15030a) {
            ic.a<? extends T> aVar = this.f15032f;
            jc.l.c(aVar);
            this.f15033g = aVar.invoke();
            this.f15032f = null;
        }
        return (T) this.f15033g;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}

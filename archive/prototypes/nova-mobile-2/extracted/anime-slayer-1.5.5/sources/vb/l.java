package vb;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: LazyJVM.kt */
/* loaded from: classes2.dex */
public final class l<T> implements e<T>, Serializable {

    /* renamed from: i, reason: collision with root package name */
    public static final a f15022i = new a(null);

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater<l<?>, Object> f15023j = AtomicReferenceFieldUpdater.newUpdater(l.class, Object.class, "g");

    /* renamed from: f, reason: collision with root package name */
    public volatile ic.a<? extends T> f15024f;

    /* renamed from: g, reason: collision with root package name */
    public volatile Object f15025g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f15026h;

    /* compiled from: LazyJVM.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    public l(ic.a<? extends T> aVar) {
        jc.l.f(aVar, "initializer");
        this.f15024f = aVar;
        o oVar = o.f15030a;
        this.f15025g = oVar;
        this.f15026h = oVar;
    }

    public boolean a() {
        return this.f15025g != o.f15030a;
    }

    @Override // vb.e
    public T getValue() {
        T t10 = (T) this.f15025g;
        o oVar = o.f15030a;
        if (t10 != oVar) {
            return t10;
        }
        ic.a<? extends T> aVar = this.f15024f;
        if (aVar != null) {
            T invoke = aVar.invoke();
            if (ad.c.a(f15023j, this, oVar, invoke)) {
                this.f15024f = null;
                return invoke;
            }
        }
        return (T) this.f15025g;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}

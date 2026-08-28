package wc;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.u0;

/* compiled from: Atomic.kt */
/* loaded from: classes2.dex */
public abstract class d<T> extends w {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15477a = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_consensus");
    private volatile /* synthetic */ Object _consensus = c.f15474a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // wc.w
    public d<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // wc.w
    public final Object c(Object obj) {
        Object obj2 = this._consensus;
        if (obj2 == c.f15474a) {
            obj2 = e(i(obj));
        }
        d(obj, obj2);
        return obj2;
    }

    public abstract void d(T t10, Object obj);

    public final Object e(Object obj) {
        if (u0.a()) {
            if (!(obj != c.f15474a)) {
                throw new AssertionError();
            }
        }
        Object obj2 = this._consensus;
        Object obj3 = c.f15474a;
        return obj2 != obj3 ? obj2 : ad.c.a(f15477a, this, obj3, obj) ? obj : this._consensus;
    }

    public final Object f() {
        return this._consensus;
    }

    public long g() {
        return 0L;
    }

    public final boolean h() {
        return this._consensus != c.f15474a;
    }

    public abstract Object i(T t10);
}

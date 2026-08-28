package m9;

/* compiled from: DoubleCheck.java */
/* loaded from: classes.dex */
public final class a<T> implements ub.a<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11058c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile ub.a<T> f11059a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f11060b = f11058c;

    public a(ub.a<T> aVar) {
        this.f11059a = aVar;
    }

    public static <P extends ub.a<T>, T> ub.a<T> a(P p10) {
        d.b(p10);
        return p10 instanceof a ? p10 : new a(p10);
    }

    public static Object b(Object obj, Object obj2) {
        if (!(obj != f11058c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // ub.a
    public T get() {
        T t10 = (T) this.f11060b;
        Object obj = f11058c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.f11060b;
                if (t10 == obj) {
                    t10 = this.f11059a.get();
                    this.f11060b = b(this.f11060b, t10);
                    this.f11059a = null;
                }
            }
        }
        return t10;
    }
}

package m9;

/* compiled from: InstanceFactory.java */
/* loaded from: classes.dex */
public final class c<T> implements b<T> {

    /* renamed from: b, reason: collision with root package name */
    public static final c<Object> f11061b = new c<>(null);

    /* renamed from: a, reason: collision with root package name */
    public final T f11062a;

    public c(T t10) {
        this.f11062a = t10;
    }

    public static <T> b<T> a(T t10) {
        return new c(d.c(t10, "instance cannot be null"));
    }

    @Override // ub.a
    public T get() {
        return this.f11062a;
    }
}

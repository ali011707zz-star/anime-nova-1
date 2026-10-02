package p0;

/* compiled from: Pools.java */
/* loaded from: classes.dex */
public class h<T> extends g<T> {

    /* renamed from: c, reason: collision with root package name */
    public final Object f11994c;

    public h(int i10) {
        super(i10);
        this.f11994c = new Object();
    }

    @Override // p0.g, p0.f
    public boolean a(T t10) {
        boolean a10;
        synchronized (this.f11994c) {
            a10 = super.a(t10);
        }
        return a10;
    }

    @Override // p0.g, p0.f
    public T b() {
        T t10;
        synchronized (this.f11994c) {
            t10 = (T) super.b();
        }
        return t10;
    }
}

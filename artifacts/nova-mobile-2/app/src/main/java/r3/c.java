package r3;

/* compiled from: LottieValueCallback.java */
/* loaded from: classes.dex */
public class c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final b<T> f12852a;

    /* renamed from: b, reason: collision with root package name */
    public h3.a<?, ?> f12853b;

    /* renamed from: c, reason: collision with root package name */
    public T f12854c;

    public c() {
        this.f12852a = new b<>();
        this.f12854c = null;
    }

    public T a(b<T> bVar) {
        return this.f12854c;
    }

    public final T b(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        return a(this.f12852a.a(f10, f11, t10, t11, f12, f13, f14));
    }

    public final void c(h3.a<?, ?> aVar) {
        this.f12853b = aVar;
    }

    public c(T t10) {
        this.f12852a = new b<>();
        this.f12854c = null;
        this.f12854c = t10;
    }
}

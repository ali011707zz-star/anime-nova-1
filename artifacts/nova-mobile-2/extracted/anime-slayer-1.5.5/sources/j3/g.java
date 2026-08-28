package j3;

/* compiled from: LottieCompositionCache.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    public static final g f8107b = new g();

    /* renamed from: a, reason: collision with root package name */
    public final s.e<String, e3.d> f8108a = new s.e<>(20);

    public static g b() {
        return f8107b;
    }

    public e3.d a(String str) {
        if (str == null) {
            return null;
        }
        return this.f8108a.get(str);
    }

    public void c(String str, e3.d dVar) {
        if (str == null) {
            return;
        }
        this.f8108a.put(str, dVar);
    }
}

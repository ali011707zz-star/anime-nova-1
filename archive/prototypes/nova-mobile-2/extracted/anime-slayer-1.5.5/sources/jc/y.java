package jc;

/* compiled from: Reflection.java */
/* loaded from: classes2.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public static final z f9195a;

    /* renamed from: b, reason: collision with root package name */
    public static final oc.b[] f9196b;

    static {
        z zVar = null;
        try {
            zVar = (z) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (zVar == null) {
            zVar = new z();
        }
        f9195a = zVar;
        f9196b = new oc.b[0];
    }

    public static oc.d a(i iVar) {
        return f9195a.a(iVar);
    }

    public static oc.b b(Class cls) {
        return f9195a.b(cls);
    }

    public static oc.c c(Class cls) {
        return f9195a.c(cls, "");
    }

    public static oc.c d(Class cls, String str) {
        return f9195a.c(cls, str);
    }

    public static oc.e e(n nVar) {
        return f9195a.d(nVar);
    }

    public static oc.f f(r rVar) {
        return f9195a.e(rVar);
    }

    public static String g(h hVar) {
        return f9195a.f(hVar);
    }

    public static String h(m mVar) {
        return f9195a.g(mVar);
    }
}

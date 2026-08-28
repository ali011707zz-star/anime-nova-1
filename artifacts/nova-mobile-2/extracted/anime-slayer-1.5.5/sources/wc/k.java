package wc;

import vb.j;

/* compiled from: FastServiceLoader.kt */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f15509a;

    static {
        Object a10;
        try {
            j.a aVar = vb.j.f15020f;
            a10 = vb.j.a(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            j.a aVar2 = vb.j.f15020f;
            a10 = vb.j.a(vb.k.a(th));
        }
        f15509a = vb.j.d(a10);
    }

    public static final boolean a() {
        return f15509a;
    }
}

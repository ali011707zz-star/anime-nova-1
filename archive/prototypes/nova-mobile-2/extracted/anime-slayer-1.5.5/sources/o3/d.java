package o3;

import java.io.IOException;
import java.util.List;

/* compiled from: AnimatableValueParser.java */
/* loaded from: classes.dex */
public class d {
    public static <T> List<r3.a<T>> a(p3.c cVar, float f10, e3.d dVar, m0<T> m0Var) throws IOException {
        return u.a(cVar, dVar, f10, m0Var, false);
    }

    public static <T> List<r3.a<T>> b(p3.c cVar, e3.d dVar, m0<T> m0Var) throws IOException {
        return u.a(cVar, dVar, 1.0f, m0Var, false);
    }

    public static k3.a c(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.a(b(cVar, dVar, g.f11689a));
    }

    public static k3.j d(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.j(b(cVar, dVar, i.f11694a));
    }

    public static k3.b e(p3.c cVar, e3.d dVar) throws IOException {
        return f(cVar, dVar, true);
    }

    public static k3.b f(p3.c cVar, e3.d dVar, boolean z10) throws IOException {
        return new k3.b(a(cVar, z10 ? q3.h.e() : 1.0f, dVar, l.f11712a));
    }

    public static k3.c g(p3.c cVar, e3.d dVar, int i10) throws IOException {
        return new k3.c(b(cVar, dVar, new o(i10)));
    }

    public static k3.d h(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.d(b(cVar, dVar, r.f11723a));
    }

    public static k3.f i(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.f(u.a(cVar, dVar, q3.h.e(), b0.f11679a, true));
    }

    public static k3.g j(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.g(b(cVar, dVar, f0.f11688a));
    }

    public static k3.h k(p3.c cVar, e3.d dVar) throws IOException {
        return new k3.h(a(cVar, q3.h.e(), dVar, g0.f11690a));
    }
}

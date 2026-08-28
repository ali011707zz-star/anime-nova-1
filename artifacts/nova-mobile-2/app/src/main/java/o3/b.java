package o3;

import java.io.IOException;
import p3.c;

/* compiled from: AnimatableTextPropertiesParser.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11677a = c.a.a("a");

    /* renamed from: b, reason: collision with root package name */
    public static c.a f11678b = c.a.a("fc", "sc", "sw", "t");

    public static k3.k a(p3.c cVar, e3.d dVar) throws IOException {
        cVar.h();
        k3.k kVar = null;
        while (cVar.z()) {
            if (cVar.c0(f11677a) != 0) {
                cVar.h0();
                cVar.k0();
            } else {
                kVar = b(cVar, dVar);
            }
        }
        cVar.x();
        return kVar == null ? new k3.k(null, null, null, null) : kVar;
    }

    public static k3.k b(p3.c cVar, e3.d dVar) throws IOException {
        cVar.h();
        k3.a aVar = null;
        k3.a aVar2 = null;
        k3.b bVar = null;
        k3.b bVar2 = null;
        while (cVar.z()) {
            int c02 = cVar.c0(f11678b);
            if (c02 == 0) {
                aVar = d.c(cVar, dVar);
            } else if (c02 == 1) {
                aVar2 = d.c(cVar, dVar);
            } else if (c02 == 2) {
                bVar = d.e(cVar, dVar);
            } else if (c02 != 3) {
                cVar.h0();
                cVar.k0();
            } else {
                bVar2 = d.e(cVar, dVar);
            }
        }
        cVar.x();
        return new k3.k(aVar, aVar2, bVar, bVar2);
    }
}

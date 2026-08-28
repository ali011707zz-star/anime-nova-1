package o3;

import java.io.IOException;
import p3.c;

/* compiled from: ShapePathParser.java */
/* loaded from: classes.dex */
public class j0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11702a = c.a.a("nm", "ind", "ks", "hd");

    public static l3.p a(p3.c cVar, e3.d dVar) throws IOException {
        int i10 = 0;
        String str = null;
        k3.h hVar = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11702a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                i10 = cVar.L();
            } else if (c02 == 2) {
                hVar = d.k(cVar, dVar);
            } else if (c02 != 3) {
                cVar.k0();
            } else {
                z10 = cVar.F();
            }
        }
        return new l3.p(str, i10, hVar, z10);
    }
}

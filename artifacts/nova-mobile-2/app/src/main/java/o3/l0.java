package o3;

import java.io.IOException;
import l3.r;
import p3.c;

/* compiled from: ShapeTrimPathParser.java */
/* loaded from: classes.dex */
public class l0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11713a = c.a.a("s", o7.e.f11821u, "o", "nm", "m", "hd");

    public static l3.r a(p3.c cVar, e3.d dVar) throws IOException {
        String str = null;
        r.a aVar = null;
        k3.b bVar = null;
        k3.b bVar2 = null;
        k3.b bVar3 = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11713a);
            if (c02 == 0) {
                bVar = d.f(cVar, dVar, false);
            } else if (c02 == 1) {
                bVar2 = d.f(cVar, dVar, false);
            } else if (c02 == 2) {
                bVar3 = d.f(cVar, dVar, false);
            } else if (c02 == 3) {
                str = cVar.R();
            } else if (c02 == 4) {
                aVar = r.a.a(cVar.L());
            } else if (c02 != 5) {
                cVar.k0();
            } else {
                z10 = cVar.F();
            }
        }
        return new l3.r(str, aVar, bVar, bVar2, bVar3, z10);
    }
}

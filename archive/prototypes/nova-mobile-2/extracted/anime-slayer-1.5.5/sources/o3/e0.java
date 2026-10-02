package o3;

import java.io.IOException;
import p3.c;

/* compiled from: RepeaterParser.java */
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11686a = c.a.a("nm", "c", "o", "tr", "hd");

    public static l3.l a(p3.c cVar, e3.d dVar) throws IOException {
        String str = null;
        k3.b bVar = null;
        k3.b bVar2 = null;
        k3.l lVar = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11686a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                bVar = d.f(cVar, dVar, false);
            } else if (c02 == 2) {
                bVar2 = d.f(cVar, dVar, false);
            } else if (c02 == 3) {
                lVar = c.g(cVar, dVar);
            } else if (c02 != 4) {
                cVar.k0();
            } else {
                z10 = cVar.F();
            }
        }
        return new l3.l(str, bVar, bVar2, lVar, z10);
    }
}

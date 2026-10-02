package o3;

import java.io.IOException;
import java.util.ArrayList;
import p3.c;

/* compiled from: ShapeGroupParser.java */
/* loaded from: classes.dex */
public class i0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11696a = c.a.a("nm", "hd", "it");

    public static l3.o a(p3.c cVar, e3.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11696a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                z10 = cVar.F();
            } else if (c02 != 2) {
                cVar.k0();
            } else {
                cVar.d();
                while (cVar.z()) {
                    l3.c a10 = h.a(cVar, dVar);
                    if (a10 != null) {
                        arrayList.add(a10);
                    }
                }
                cVar.k();
            }
        }
        return new l3.o(str, arrayList, z10);
    }
}

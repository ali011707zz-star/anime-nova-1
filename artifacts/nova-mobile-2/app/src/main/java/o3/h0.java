package o3;

import android.graphics.Path;
import java.io.IOException;
import java.util.Collections;
import p3.c;

/* compiled from: ShapeFillParser.java */
/* loaded from: classes.dex */
public class h0 {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11693a = c.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    public static l3.n a(p3.c cVar, e3.d dVar) throws IOException {
        k3.d dVar2 = null;
        String str = null;
        k3.a aVar = null;
        int i10 = 1;
        boolean z10 = false;
        boolean z11 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11693a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                aVar = d.c(cVar, dVar);
            } else if (c02 == 2) {
                dVar2 = d.h(cVar, dVar);
            } else if (c02 == 3) {
                z10 = cVar.F();
            } else if (c02 == 4) {
                i10 = cVar.L();
            } else if (c02 != 5) {
                cVar.h0();
                cVar.k0();
            } else {
                z11 = cVar.F();
            }
        }
        return new l3.n(str, z10, i10 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVar, dVar2 == null ? new k3.d(Collections.singletonList(new r3.a(100))) : dVar2, z11);
    }
}

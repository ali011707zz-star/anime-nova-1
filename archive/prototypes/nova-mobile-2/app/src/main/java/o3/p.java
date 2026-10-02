package o3;

import android.graphics.Path;
import java.io.IOException;
import java.util.Collections;
import p3.c;

/* compiled from: GradientFillParser.java */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11718a = c.a.a("nm", "g", "o", "t", "s", o7.e.f11821u, "r", "hd");

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11719b = c.a.a("p", "k");

    public static l3.e a(p3.c cVar, e3.d dVar) throws IOException {
        k3.d dVar2 = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String str = null;
        l3.g gVar = null;
        k3.c cVar2 = null;
        k3.f fVar = null;
        k3.f fVar2 = null;
        boolean z10 = false;
        while (cVar.z()) {
            switch (cVar.c0(f11718a)) {
                case 0:
                    str = cVar.R();
                    break;
                case 1:
                    int i10 = -1;
                    cVar.h();
                    while (cVar.z()) {
                        int c02 = cVar.c0(f11719b);
                        if (c02 == 0) {
                            i10 = cVar.L();
                        } else if (c02 != 1) {
                            cVar.h0();
                            cVar.k0();
                        } else {
                            cVar2 = d.g(cVar, dVar, i10);
                        }
                    }
                    cVar.x();
                    break;
                case 2:
                    dVar2 = d.h(cVar, dVar);
                    break;
                case 3:
                    gVar = cVar.L() == 1 ? l3.g.LINEAR : l3.g.RADIAL;
                    break;
                case 4:
                    fVar = d.i(cVar, dVar);
                    break;
                case 5:
                    fVar2 = d.i(cVar, dVar);
                    break;
                case 6:
                    fillType = cVar.L() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    z10 = cVar.F();
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    break;
            }
        }
        return new l3.e(str, gVar, fillType, cVar2, dVar2 == null ? new k3.d(Collections.singletonList(new r3.a(100))) : dVar2, fVar, fVar2, null, null, z10);
    }
}

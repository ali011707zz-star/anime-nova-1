package o3;

import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;
import p3.c;

/* compiled from: AnimatablePathValueParser.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11675a = c.a.a("k", "x", "y");

    public static k3.e a(p3.c cVar, e3.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (cVar.V() == c.b.BEGIN_ARRAY) {
            cVar.d();
            while (cVar.z()) {
                arrayList.add(z.a(cVar, dVar));
            }
            cVar.k();
            u.b(arrayList);
        } else {
            arrayList.add(new r3.a(s.e(cVar, q3.h.e())));
        }
        return new k3.e(arrayList);
    }

    public static k3.m<PointF, PointF> b(p3.c cVar, e3.d dVar) throws IOException {
        cVar.h();
        k3.e eVar = null;
        k3.b bVar = null;
        k3.b bVar2 = null;
        boolean z10 = false;
        while (cVar.V() != c.b.END_OBJECT) {
            int c02 = cVar.c0(f11675a);
            if (c02 == 0) {
                eVar = a(cVar, dVar);
            } else if (c02 != 1) {
                if (c02 != 2) {
                    cVar.h0();
                    cVar.k0();
                } else if (cVar.V() == c.b.STRING) {
                    cVar.k0();
                    z10 = true;
                } else {
                    bVar2 = d.e(cVar, dVar);
                }
            } else if (cVar.V() == c.b.STRING) {
                cVar.k0();
                z10 = true;
            } else {
                bVar = d.e(cVar, dVar);
            }
        }
        cVar.x();
        if (z10) {
            dVar.a("Lottie doesn't support expressions.");
        }
        return eVar != null ? eVar : new k3.i(bVar, bVar2);
    }
}

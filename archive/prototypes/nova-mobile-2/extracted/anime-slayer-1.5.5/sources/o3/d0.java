package o3;

import android.graphics.PointF;
import java.io.IOException;
import p3.c;

/* compiled from: RectangleShapeParser.java */
/* loaded from: classes.dex */
public class d0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11683a = c.a.a("nm", "p", "s", "r", "hd");

    public static l3.k a(p3.c cVar, e3.d dVar) throws IOException {
        String str = null;
        k3.m<PointF, PointF> mVar = null;
        k3.f fVar = null;
        k3.b bVar = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11683a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                mVar = a.b(cVar, dVar);
            } else if (c02 == 2) {
                fVar = d.i(cVar, dVar);
            } else if (c02 == 3) {
                bVar = d.e(cVar, dVar);
            } else if (c02 != 4) {
                cVar.k0();
            } else {
                z10 = cVar.F();
            }
        }
        return new l3.k(str, mVar, fVar, bVar, z10);
    }
}

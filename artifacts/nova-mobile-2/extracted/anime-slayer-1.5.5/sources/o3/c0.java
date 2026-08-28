package o3;

import android.graphics.PointF;
import java.io.IOException;
import l3.j;
import p3.c;

/* compiled from: PolystarShapeParser.java */
/* loaded from: classes.dex */
public class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11682a = c.a.a("nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd");

    public static l3.j a(p3.c cVar, e3.d dVar) throws IOException {
        String str = null;
        j.a aVar = null;
        k3.b bVar = null;
        k3.m<PointF, PointF> mVar = null;
        k3.b bVar2 = null;
        k3.b bVar3 = null;
        k3.b bVar4 = null;
        k3.b bVar5 = null;
        k3.b bVar6 = null;
        boolean z10 = false;
        while (cVar.z()) {
            switch (cVar.c0(f11682a)) {
                case 0:
                    str = cVar.R();
                    break;
                case 1:
                    aVar = j.a.a(cVar.L());
                    break;
                case 2:
                    bVar = d.f(cVar, dVar, false);
                    break;
                case 3:
                    mVar = a.b(cVar, dVar);
                    break;
                case 4:
                    bVar2 = d.f(cVar, dVar, false);
                    break;
                case 5:
                    bVar4 = d.e(cVar, dVar);
                    break;
                case 6:
                    bVar6 = d.f(cVar, dVar, false);
                    break;
                case 7:
                    bVar3 = d.e(cVar, dVar);
                    break;
                case 8:
                    bVar5 = d.f(cVar, dVar, false);
                    break;
                case 9:
                    z10 = cVar.F();
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    break;
            }
        }
        return new l3.j(str, aVar, bVar, mVar, bVar2, bVar3, bVar4, bVar5, bVar6, z10);
    }
}

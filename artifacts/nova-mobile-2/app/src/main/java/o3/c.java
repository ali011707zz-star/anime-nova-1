package o3;

import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import p3.c;

/* compiled from: AnimatableTransformParser.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final p3.c.a f11680a = p3.c.a.a("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* renamed from: b, reason: collision with root package name */
    public static final p3.c.a f11681b = p3.c.a.a("k");

    public static boolean a(k3.e eVar) {
        return eVar == null || (eVar.c() && eVar.b().get(0).f12830b.equals(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
    }

    public static boolean b(k3.m<PointF, PointF> mVar) {
        return mVar == null || (!(mVar instanceof k3.i) && mVar.c() && mVar.b().get(0).f12830b.equals(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean c(k3.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((r3.a) bVar.b().get(0)).f12830b).floatValue() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean d(k3.g gVar) {
        return gVar == null || (gVar.c() && ((r3.d) ((r3.a) gVar.b().get(0)).f12830b).a(1.0f, 1.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean e(k3.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((r3.a) bVar.b().get(0)).f12830b).floatValue() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean f(k3.b bVar) {
        return bVar == null || (bVar.c() && ((Float) ((r3.a) bVar.b().get(0)).f12830b).floatValue() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static k3.l g(p3.c cVar, e3.d dVar) throws IOException {
        k3.b f10;
        boolean z10 = false;
        boolean z11 = cVar.V() == p3.c.b.BEGIN_OBJECT;
        if (z11) {
            cVar.h();
        }
        k3.b bVar = null;
        k3.e eVar = null;
        k3.m<PointF, PointF> mVar = null;
        k3.g gVar = null;
        k3.b bVar2 = null;
        k3.b bVar3 = null;
        k3.d dVar2 = null;
        k3.b bVar4 = null;
        k3.b bVar5 = null;
        while (cVar.z()) {
            switch (cVar.c0(f11680a)) {
                case 0:
                    cVar.h();
                    while (cVar.z()) {
                        if (cVar.c0(f11681b) != 0) {
                            cVar.h0();
                            cVar.k0();
                        } else {
                            eVar = a.a(cVar, dVar);
                        }
                    }
                    cVar.x();
                    z10 = false;
                    break;
                case 1:
                    mVar = a.b(cVar, dVar);
                    z10 = false;
                    break;
                case 2:
                    gVar = d.j(cVar, dVar);
                    z10 = false;
                    break;
                case 3:
                    dVar.a("Lottie doesn't support 3D layers.");
                    f10 = d.f(cVar, dVar, z10);
                    if (!f10.b().isEmpty()) {
                        f10.b().add(new r3.a(dVar, Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), null, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Float.valueOf(dVar.f())));
                    } else if (((r3.a) f10.b().get(0)).f12830b == 0) {
                        f10.b().set(0, new r3.a(dVar, Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD), null, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Float.valueOf(dVar.f())));
                        bVar = f10;
                        z10 = false;
                        break;
                    }
                    bVar = f10;
                    z10 = false;
                case 4:
                    f10 = d.f(cVar, dVar, z10);
                    if (!f10.b().isEmpty()) {
                    }
                    bVar = f10;
                    z10 = false;
                    break;
                case 5:
                    dVar2 = d.h(cVar, dVar);
                    break;
                case 6:
                    bVar4 = d.f(cVar, dVar, z10);
                    break;
                case 7:
                    bVar5 = d.f(cVar, dVar, z10);
                    break;
                case 8:
                    bVar2 = d.f(cVar, dVar, z10);
                    break;
                case 9:
                    bVar3 = d.f(cVar, dVar, z10);
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    z10 = false;
                    break;
            }
        }
        if (z11) {
            cVar.x();
        }
        k3.e eVar2 = a(eVar) ? null : eVar;
        k3.m<PointF, PointF> mVar2 = b(mVar) ? null : mVar;
        k3.b bVar6 = c(bVar) ? null : bVar;
        if (d(gVar)) {
            gVar = null;
        }
        return new k3.l(eVar2, mVar2, gVar, bVar6, dVar2, bVar4, bVar5, f(bVar2) ? null : bVar2, e(bVar3) ? null : bVar3);
    }
}

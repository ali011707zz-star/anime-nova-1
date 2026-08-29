package o3;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import p3.c;

/* compiled from: GradientStrokeParser.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11720a = c.a.a("nm", "g", "o", "t", "s", o7.e.f11821u, "w", "lc", "lj", "ml", "hd", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11721b = c.a.a("p", "k");

    /* renamed from: c, reason: collision with root package name */
    public static final c.a f11722c = c.a.a(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION, "v");

    public static l3.f a(p3.c cVar, e3.d dVar) throws IOException {
        k3.c cVar2;
        ArrayList arrayList = new ArrayList();
        String str = null;
        l3.g gVar = null;
        k3.c cVar3 = null;
        k3.f fVar = null;
        k3.f fVar2 = null;
        k3.b bVar = null;
        l3.q.b bVar2 = null;
        l3.q.c cVar4 = null;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        k3.b bVar3 = null;
        boolean z10 = false;
        k3.d dVar2 = null;
        while (cVar.z()) {
            switch (cVar.c0(f11720a)) {
                case 0:
                    str = cVar.R();
                    break;
                case 1:
                    int i10 = -1;
                    cVar.h();
                    while (cVar.z()) {
                        int c02 = cVar.c0(f11721b);
                        if (c02 != 0) {
                            cVar2 = cVar3;
                            if (c02 != 1) {
                                cVar.h0();
                                cVar.k0();
                            } else {
                                cVar3 = d.g(cVar, dVar, i10);
                            }
                        } else {
                            cVar2 = cVar3;
                            i10 = cVar.L();
                        }
                        cVar3 = cVar2;
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
                    bVar = d.e(cVar, dVar);
                    break;
                case 7:
                    bVar2 = l3.q.b.values()[cVar.L() - 1];
                    break;
                case 8:
                    cVar4 = l3.q.c.values()[cVar.L() - 1];
                    break;
                case 9:
                    f10 = (float) cVar.G();
                    break;
                case 10:
                    z10 = cVar.F();
                    break;
                case 11:
                    cVar.d();
                    while (cVar.z()) {
                        cVar.h();
                        String str2 = null;
                        k3.b bVar4 = null;
                        while (cVar.z()) {
                            int c03 = cVar.c0(f11722c);
                            if (c03 != 0) {
                                k3.b bVar5 = bVar3;
                                if (c03 != 1) {
                                    cVar.h0();
                                    cVar.k0();
                                } else {
                                    bVar4 = d.e(cVar, dVar);
                                }
                                bVar3 = bVar5;
                            } else {
                                str2 = cVar.R();
                            }
                        }
                        k3.b bVar6 = bVar3;
                        cVar.x();
                        if (str2.equals("o")) {
                            bVar3 = bVar4;
                        } else {
                            if (str2.equals(GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG) || str2.equals("g")) {
                                dVar.u(true);
                                arrayList.add(bVar4);
                            }
                            bVar3 = bVar6;
                        }
                    }
                    k3.b bVar7 = bVar3;
                    cVar.k();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    bVar3 = bVar7;
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar2 = new k3.d(Collections.singletonList(new r3.a(100)));
        }
        return new l3.f(str, gVar, cVar3, dVar2, fVar, fVar2, bVar, bVar2, cVar4, f10, arrayList, bVar3, z10);
    }
}

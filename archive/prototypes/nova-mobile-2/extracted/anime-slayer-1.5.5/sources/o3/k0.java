package o3;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import l3.q;
import p3.c;

/* compiled from: ShapeStrokeParser.java */
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11710a = c.a.a("nm", "c", "w", "o", "lc", "lj", "ml", "hd", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11711b = c.a.a(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION, "v");

    public static l3.q a(p3.c cVar, e3.d dVar) throws IOException {
        char c10;
        ArrayList arrayList = new ArrayList();
        String str = null;
        k3.b bVar = null;
        k3.a aVar = null;
        k3.b bVar2 = null;
        q.b bVar3 = null;
        q.c cVar2 = null;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        boolean z10 = false;
        k3.d dVar2 = null;
        while (cVar.z()) {
            switch (cVar.c0(f11710a)) {
                case 0:
                    str = cVar.R();
                    break;
                case 1:
                    aVar = d.c(cVar, dVar);
                    break;
                case 2:
                    bVar2 = d.e(cVar, dVar);
                    break;
                case 3:
                    dVar2 = d.h(cVar, dVar);
                    break;
                case 4:
                    bVar3 = q.b.values()[cVar.L() - 1];
                    break;
                case 5:
                    cVar2 = q.c.values()[cVar.L() - 1];
                    break;
                case 6:
                    f10 = (float) cVar.G();
                    break;
                case 7:
                    z10 = cVar.F();
                    break;
                case 8:
                    cVar.d();
                    while (cVar.z()) {
                        cVar.h();
                        String str2 = null;
                        k3.b bVar4 = null;
                        while (cVar.z()) {
                            int c02 = cVar.c0(f11711b);
                            if (c02 == 0) {
                                str2 = cVar.R();
                            } else if (c02 != 1) {
                                cVar.h0();
                                cVar.k0();
                            } else {
                                bVar4 = d.e(cVar, dVar);
                            }
                        }
                        cVar.x();
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case 100:
                                if (str2.equals(GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG)) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                            case 103:
                                if (str2.equals("g")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 111:
                                if (str2.equals("o")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                        }
                        c10 = 65535;
                        switch (c10) {
                            case 0:
                            case 1:
                                dVar.u(true);
                                arrayList.add(bVar4);
                                break;
                            case 2:
                                bVar = bVar4;
                                break;
                        }
                    }
                    cVar.k();
                    if (arrayList.size() != 1) {
                        break;
                    } else {
                        arrayList.add(arrayList.get(0));
                        break;
                    }
                    break;
                default:
                    cVar.k0();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar2 = new k3.d(Collections.singletonList(new r3.a(100)));
        }
        return new l3.q(str, bVar, arrayList, aVar, dVar2, bVar2, bVar3, cVar2, f10, z10);
    }
}

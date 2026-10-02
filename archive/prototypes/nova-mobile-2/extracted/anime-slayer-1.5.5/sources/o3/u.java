package o3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p3.c;

/* compiled from: KeyframesParser.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11730a = c.a.a("k");

    public static <T> List<r3.a<T>> a(p3.c cVar, e3.d dVar, float f10, m0<T> m0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (cVar.V() == c.b.STRING) {
            dVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        cVar.h();
        while (cVar.z()) {
            if (cVar.c0(f11730a) != 0) {
                cVar.k0();
            } else if (cVar.V() == c.b.BEGIN_ARRAY) {
                cVar.d();
                if (cVar.V() == c.b.NUMBER) {
                    arrayList.add(t.c(cVar, dVar, f10, m0Var, false, z10));
                } else {
                    while (cVar.z()) {
                        arrayList.add(t.c(cVar, dVar, f10, m0Var, true, z10));
                    }
                }
                cVar.k();
            } else {
                arrayList.add(t.c(cVar, dVar, f10, m0Var, false, z10));
            }
        }
        cVar.x();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends r3.a<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            r3.a<T> aVar = list.get(i11);
            i11++;
            r3.a<T> aVar2 = list.get(i11);
            aVar.f12836h = Float.valueOf(aVar2.f12835g);
            if (aVar.f12831c == null && (t10 = aVar2.f12830b) != null) {
                aVar.f12831c = t10;
                if (aVar instanceof h3.i) {
                    ((h3.i) aVar).i();
                }
            }
        }
        r3.a<T> aVar3 = list.get(i10);
        if ((aVar3.f12830b == null || aVar3.f12831c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}

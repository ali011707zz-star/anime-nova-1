package o3;

import android.graphics.PointF;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p3.c;

/* compiled from: ShapeDataParser.java */
/* loaded from: classes.dex */
public class g0 implements m0<l3.m> {

    /* renamed from: a, reason: collision with root package name */
    public static final g0 f11690a = new g0();

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11691b = c.a.a("c", "v", "i", "o");

    @Override // o3.m0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public l3.m a(p3.c cVar, float f10) throws IOException {
        if (cVar.V() == c.b.BEGIN_ARRAY) {
            cVar.d();
        }
        cVar.h();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11691b);
            if (c02 == 0) {
                z10 = cVar.F();
            } else if (c02 == 1) {
                list = s.f(cVar, f10);
            } else if (c02 == 2) {
                list2 = s.f(cVar, f10);
            } else if (c02 != 3) {
                cVar.h0();
                cVar.k0();
            } else {
                list3 = s.f(cVar, f10);
            }
        }
        cVar.x();
        if (cVar.V() == c.b.END_ARRAY) {
            cVar.k();
        }
        if (list != null && list2 != null && list3 != null) {
            if (list.isEmpty()) {
                return new l3.m(new PointF(), false, Collections.emptyList());
            }
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 1; i10 < size; i10++) {
                PointF pointF2 = list.get(i10);
                int i11 = i10 - 1;
                arrayList.add(new j3.a(q3.g.a(list.get(i11), list3.get(i11)), q3.g.a(pointF2, list2.get(i10)), pointF2));
            }
            if (z10) {
                PointF pointF3 = list.get(0);
                int i12 = size - 1;
                arrayList.add(new j3.a(q3.g.a(list.get(i12), list3.get(i12)), q3.g.a(pointF3, list2.get(0)), pointF3));
            }
            return new l3.m(pointF, z10, arrayList);
        }
        throw new IllegalArgumentException("Shape data was missing information.");
    }
}

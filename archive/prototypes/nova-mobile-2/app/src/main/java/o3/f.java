package o3;

import android.graphics.PointF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.io.IOException;
import p3.c;

/* compiled from: CircleShapeParser.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static c.a f11687a = c.a.a("nm", "p", "s", "hd", GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG);

    public static l3.b a(p3.c cVar, e3.d dVar, int i10) throws IOException {
        boolean z10 = i10 == 3;
        String str = null;
        k3.m<PointF, PointF> mVar = null;
        k3.f fVar = null;
        boolean z11 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11687a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                mVar = a.b(cVar, dVar);
            } else if (c02 == 2) {
                fVar = d.i(cVar, dVar);
            } else if (c02 == 3) {
                z11 = cVar.F();
            } else if (c02 != 4) {
                cVar.h0();
                cVar.k0();
            } else {
                z10 = cVar.L() == 3;
            }
        }
        return new l3.b(str, mVar, fVar, z10, z11);
    }
}

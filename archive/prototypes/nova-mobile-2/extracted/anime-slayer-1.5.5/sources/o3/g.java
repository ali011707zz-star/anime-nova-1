package o3;

import android.graphics.Color;
import java.io.IOException;
import p3.c;

/* compiled from: ColorParser.java */
/* loaded from: classes.dex */
public class g implements m0<Integer> {

    /* renamed from: a, reason: collision with root package name */
    public static final g f11689a = new g();

    @Override // o3.m0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(p3.c cVar, float f10) throws IOException {
        boolean z10 = cVar.V() == c.b.BEGIN_ARRAY;
        if (z10) {
            cVar.d();
        }
        double G = cVar.G();
        double G2 = cVar.G();
        double G3 = cVar.G();
        double G4 = cVar.V() == c.b.NUMBER ? cVar.G() : 1.0d;
        if (z10) {
            cVar.k();
        }
        if (G <= 1.0d && G2 <= 1.0d && G3 <= 1.0d) {
            G *= 255.0d;
            G2 *= 255.0d;
            G3 *= 255.0d;
            if (G4 <= 1.0d) {
                G4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) G4, (int) G, (int) G2, (int) G3));
    }
}

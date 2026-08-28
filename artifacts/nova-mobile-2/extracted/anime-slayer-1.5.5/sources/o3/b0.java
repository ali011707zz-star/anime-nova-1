package o3;

import android.graphics.PointF;
import java.io.IOException;
import p3.c;

/* compiled from: PointFParser.java */
/* loaded from: classes.dex */
public class b0 implements m0<PointF> {

    /* renamed from: a, reason: collision with root package name */
    public static final b0 f11679a = new b0();

    @Override // o3.m0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public PointF a(p3.c cVar, float f10) throws IOException {
        c.b V = cVar.V();
        if (V == c.b.BEGIN_ARRAY) {
            return s.e(cVar, f10);
        }
        if (V == c.b.BEGIN_OBJECT) {
            return s.e(cVar, f10);
        }
        if (V == c.b.NUMBER) {
            PointF pointF = new PointF(((float) cVar.G()) * f10, ((float) cVar.G()) * f10);
            while (cVar.z()) {
                cVar.k0();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + V);
    }
}

package o3;

import java.io.IOException;
import p3.c;

/* compiled from: ScaleXYParser.java */
/* loaded from: classes.dex */
public class f0 implements m0<r3.d> {

    /* renamed from: a, reason: collision with root package name */
    public static final f0 f11688a = new f0();

    @Override // o3.m0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public r3.d a(p3.c cVar, float f10) throws IOException {
        boolean z10 = cVar.V() == c.b.BEGIN_ARRAY;
        if (z10) {
            cVar.d();
        }
        float G = (float) cVar.G();
        float G2 = (float) cVar.G();
        while (cVar.z()) {
            cVar.k0();
        }
        if (z10) {
            cVar.k();
        }
        return new r3.d((G / 100.0f) * f10, (G2 / 100.0f) * f10);
    }
}

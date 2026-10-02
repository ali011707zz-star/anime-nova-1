package o3;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import j3.b;
import java.io.IOException;
import p3.c;

/* compiled from: DocumentDataParser.java */
/* loaded from: classes.dex */
public class i implements m0<j3.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final i f11694a = new i();

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11695b = c.a.a("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    @Override // o3.m0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public j3.b a(p3.c cVar, float f10) throws IOException {
        b.a aVar = b.a.CENTER;
        cVar.h();
        b.a aVar2 = aVar;
        String str = null;
        String str2 = null;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = 0;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i11 = 0;
        int i12 = 0;
        float f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        boolean z10 = true;
        while (cVar.z()) {
            switch (cVar.c0(f11695b)) {
                case 0:
                    str = cVar.R();
                    break;
                case 1:
                    str2 = cVar.R();
                    break;
                case 2:
                    f11 = (float) cVar.G();
                    break;
                case 3:
                    int L = cVar.L();
                    aVar2 = b.a.CENTER;
                    if (L <= aVar2.ordinal() && L >= 0) {
                        aVar2 = b.a.values()[L];
                        break;
                    }
                    break;
                case 4:
                    i10 = cVar.L();
                    break;
                case 5:
                    f12 = (float) cVar.G();
                    break;
                case 6:
                    f13 = (float) cVar.G();
                    break;
                case 7:
                    i11 = s.d(cVar);
                    break;
                case 8:
                    i12 = s.d(cVar);
                    break;
                case 9:
                    f14 = (float) cVar.G();
                    break;
                case 10:
                    z10 = cVar.F();
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    break;
            }
        }
        cVar.x();
        return new j3.b(str, str2, f11, aVar2, i10, f12, f13, i11, i12, f14, z10);
    }
}

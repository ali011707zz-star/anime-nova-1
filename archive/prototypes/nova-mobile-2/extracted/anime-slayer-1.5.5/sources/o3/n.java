package o3;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import p3.c;

/* compiled from: FontParser.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11716a = c.a.a("fFamily", "fName", "fStyle", "ascent");

    public static j3.c a(p3.c cVar) throws IOException {
        cVar.h();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        while (cVar.z()) {
            int c02 = cVar.c0(f11716a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                str2 = cVar.R();
            } else if (c02 == 2) {
                str3 = cVar.R();
            } else if (c02 != 3) {
                cVar.h0();
                cVar.k0();
            } else {
                f10 = (float) cVar.G();
            }
        }
        cVar.x();
        return new j3.c(str, str2, str3, f10);
    }
}

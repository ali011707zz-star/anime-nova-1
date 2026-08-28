package o3;

import java.io.IOException;
import java.util.ArrayList;
import p3.c;

/* compiled from: FontCharacterParser.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11714a = c.a.a("ch", "size", "w", "style", "fFamily", "data");

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11715b = c.a.a("shapes");

    public static j3.d a(p3.c cVar, e3.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        cVar.h();
        String str = null;
        String str2 = null;
        double d10 = 0.0d;
        double d11 = 0.0d;
        char c10 = 0;
        while (cVar.z()) {
            int c02 = cVar.c0(f11714a);
            if (c02 == 0) {
                c10 = cVar.R().charAt(0);
            } else if (c02 == 1) {
                d10 = cVar.G();
            } else if (c02 == 2) {
                d11 = cVar.G();
            } else if (c02 == 3) {
                str = cVar.R();
            } else if (c02 == 4) {
                str2 = cVar.R();
            } else if (c02 != 5) {
                cVar.h0();
                cVar.k0();
            } else {
                cVar.h();
                while (cVar.z()) {
                    if (cVar.c0(f11715b) != 0) {
                        cVar.h0();
                        cVar.k0();
                    } else {
                        cVar.d();
                        while (cVar.z()) {
                            arrayList.add((l3.o) h.a(cVar, dVar));
                        }
                        cVar.k();
                    }
                }
                cVar.x();
            }
        }
        cVar.x();
        return new j3.d(arrayList, c10, d10, d11, str, str2);
    }
}

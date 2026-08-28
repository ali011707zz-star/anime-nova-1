package o3;

import java.io.IOException;
import p3.c;

/* compiled from: BlurEffectParser.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11684a = c.a.a("ef");

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11685b = c.a.a("ty", "v");

    public static l3.a a(p3.c cVar, e3.d dVar) throws IOException {
        cVar.h();
        l3.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (cVar.z()) {
                int c02 = cVar.c0(f11685b);
                if (c02 != 0) {
                    if (c02 != 1) {
                        cVar.h0();
                        cVar.k0();
                    } else if (z10) {
                        aVar = new l3.a(d.e(cVar, dVar));
                    } else {
                        cVar.k0();
                    }
                } else if (cVar.L() == 0) {
                    z10 = true;
                }
            }
            cVar.x();
            return aVar;
        }
    }

    public static l3.a b(p3.c cVar, e3.d dVar) throws IOException {
        l3.a aVar = null;
        while (cVar.z()) {
            if (cVar.c0(f11684a) != 0) {
                cVar.h0();
                cVar.k0();
            } else {
                cVar.d();
                while (cVar.z()) {
                    l3.a a10 = a(cVar, dVar);
                    if (a10 != null) {
                        aVar = a10;
                    }
                }
                cVar.k();
            }
        }
        return aVar;
    }
}

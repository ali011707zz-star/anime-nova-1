package o3;

import java.io.IOException;
import l3.i;
import p3.c;

/* compiled from: MergePathsParser.java */
/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11739a = c.a.a("nm", "mm", "hd");

    public static l3.i a(p3.c cVar) throws IOException {
        String str = null;
        i.a aVar = null;
        boolean z10 = false;
        while (cVar.z()) {
            int c02 = cVar.c0(f11739a);
            if (c02 == 0) {
                str = cVar.R();
            } else if (c02 == 1) {
                aVar = i.a.a(cVar.L());
            } else if (c02 != 2) {
                cVar.h0();
                cVar.k0();
            } else {
                z10 = cVar.F();
            }
        }
        return new l3.i(str, aVar, z10);
    }
}

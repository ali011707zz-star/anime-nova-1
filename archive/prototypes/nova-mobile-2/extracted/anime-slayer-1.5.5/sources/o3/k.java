package o3;

import java.io.IOException;
import p3.c;

/* compiled from: DropShadowEffectParser.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: f, reason: collision with root package name */
    public static final c.a f11703f = c.a.a("ef");

    /* renamed from: g, reason: collision with root package name */
    public static final c.a f11704g = c.a.a("nm", "v");

    /* renamed from: a, reason: collision with root package name */
    public k3.a f11705a;

    /* renamed from: b, reason: collision with root package name */
    public k3.b f11706b;

    /* renamed from: c, reason: collision with root package name */
    public k3.b f11707c;

    /* renamed from: d, reason: collision with root package name */
    public k3.b f11708d;

    /* renamed from: e, reason: collision with root package name */
    public k3.b f11709e;

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0052, code lost:
    
        if (r0.equals("Opacity") == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(p3.c cVar, e3.d dVar) throws IOException {
        cVar.h();
        String str = "";
        while (cVar.z()) {
            int c02 = cVar.c0(f11704g);
            if (c02 != 0) {
                char c10 = 1;
                if (c02 != 1) {
                    cVar.h0();
                    cVar.k0();
                } else {
                    str.hashCode();
                    switch (str.hashCode()) {
                        case 353103893:
                            if (str.equals("Distance")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 397447147:
                            break;
                        case 1041377119:
                            if (str.equals("Direction")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 1379387491:
                            if (str.equals("Shadow Color")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 1383710113:
                            if (str.equals("Softness")) {
                                c10 = 4;
                                break;
                            }
                            break;
                    }
                    c10 = 65535;
                    switch (c10) {
                        case 0:
                            this.f11708d = d.e(cVar, dVar);
                            break;
                        case 1:
                            this.f11706b = d.f(cVar, dVar, false);
                            break;
                        case 2:
                            this.f11707c = d.f(cVar, dVar, false);
                            break;
                        case 3:
                            this.f11705a = d.c(cVar, dVar);
                            break;
                        case 4:
                            this.f11709e = d.e(cVar, dVar);
                            break;
                        default:
                            cVar.k0();
                            break;
                    }
                }
            } else {
                str = cVar.R();
            }
        }
        cVar.x();
    }

    public j b(p3.c cVar, e3.d dVar) throws IOException {
        k3.b bVar;
        k3.b bVar2;
        k3.b bVar3;
        k3.b bVar4;
        while (cVar.z()) {
            if (cVar.c0(f11703f) != 0) {
                cVar.h0();
                cVar.k0();
            } else {
                cVar.d();
                while (cVar.z()) {
                    a(cVar, dVar);
                }
                cVar.k();
            }
        }
        k3.a aVar = this.f11705a;
        if (aVar == null || (bVar = this.f11706b) == null || (bVar2 = this.f11707c) == null || (bVar3 = this.f11708d) == null || (bVar4 = this.f11709e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}

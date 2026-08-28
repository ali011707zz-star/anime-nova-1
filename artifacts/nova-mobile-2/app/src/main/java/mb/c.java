package mb;

import mb.a;
import vb.p;

/* compiled from: InsetterDsl.kt */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public a.C0260a f11085a = a.f11064i.a();

    public final a.C0260a a() {
        return this.f11085a;
    }

    public final void b(int i10, ic.l<? super b, p> lVar) {
        jc.l.f(lVar, "f");
        if (i10 != 0) {
            b bVar = new b(i10, this.f11085a);
            lVar.invoke(bVar);
            this.f11085a = bVar.a();
            return;
        }
        throw new IllegalArgumentException("A type is required".toString());
    }

    public final void c(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, ic.l<? super b, p> lVar) {
        jc.l.f(lVar, "f");
        b(k.a(z10, z11, z12, z13, z14, z15, z16, z17), lVar);
    }
}

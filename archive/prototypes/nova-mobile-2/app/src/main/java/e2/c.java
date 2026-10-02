package e2;

import androidx.lifecycle.y;
import d2.o;

/* compiled from: OperationImpl.java */
/* loaded from: classes.dex */
public class c implements o {

    /* renamed from: c, reason: collision with root package name */
    public final y<o.b> f5928c = new y<>();

    /* renamed from: d, reason: collision with root package name */
    public final o2.c<o.b.c> f5929d = o2.c.t();

    public c() {
        a(o.f5586b);
    }

    public void a(o.b bVar) {
        this.f5928c.m(bVar);
        if (bVar instanceof o.b.c) {
            this.f5929d.p((o.b.c) bVar);
        } else if (bVar instanceof o.b.a) {
            this.f5929d.q(((o.b.a) bVar).a());
        }
    }
}

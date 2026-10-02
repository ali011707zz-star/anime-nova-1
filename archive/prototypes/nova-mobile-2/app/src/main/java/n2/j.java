package n2;

import androidx.work.impl.WorkDatabase;
import d2.u;
import m2.q;

/* compiled from: StopWorkRunnable.java */
/* loaded from: classes.dex */
public class j implements Runnable {

    /* renamed from: i, reason: collision with root package name */
    public static final String f11216i = d2.l.f("StopWorkRunnable");

    /* renamed from: f, reason: collision with root package name */
    public final e2.i f11217f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11218g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f11219h;

    public j(e2.i iVar, String str, boolean z10) {
        this.f11217f = iVar;
        this.f11218g = str;
        this.f11219h = z10;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean n10;
        WorkDatabase w10 = this.f11217f.w();
        e2.d t10 = this.f11217f.t();
        q O = w10.O();
        w10.e();
        try {
            boolean g10 = t10.g(this.f11218g);
            if (this.f11219h) {
                n10 = this.f11217f.t().m(this.f11218g);
            } else {
                if (!g10 && O.j(this.f11218g) == u.a.RUNNING) {
                    O.b(u.a.ENQUEUED, this.f11218g);
                }
                n10 = this.f11217f.t().n(this.f11218g);
            }
            d2.l.c().a(f11216i, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f11218g, Boolean.valueOf(n10)), new Throwable[0]);
            w10.D();
        } finally {
            w10.i();
        }
    }
}

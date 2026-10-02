package g6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.SeriesEndpoint;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;

/* compiled from: BrowseViewModel.kt */
/* loaded from: classes.dex */
public final class q extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final SeriesEndpoint f7001a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7002b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f7003c = vb.f.a(b.f7008f);

    /* renamed from: d, reason: collision with root package name */
    public ja.n f7004d;

    /* renamed from: e, reason: collision with root package name */
    public uc.f<q0<p4.p>> f7005e;

    /* compiled from: BrowseViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<t0<Integer, p4.p>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ja.n f7007g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ja.n nVar) {
            super(0);
            this.f7007g = nVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p4.p> invoke() {
            return new p(q.this.a(), this.f7007g);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f7008f = new b();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public b() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public q(SeriesEndpoint seriesEndpoint) {
        this.f7001a = seriesEndpoint;
    }

    public final SeriesEndpoint a() {
        return this.f7001a;
    }

    public final uc.f<q0<p4.p>> b(ja.n nVar, boolean z10) {
        jc.l.f(nVar, "requestParam");
        uc.f<q0<p4.p>> fVar = this.f7005e;
        if (jc.l.a(nVar, this.f7004d) && fVar != null && !z10) {
            return fVar;
        }
        this.f7004d = nVar;
        uc.f<q0<p4.p>> a10 = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new a(nVar), 2, null).a(), j0.a(this));
        this.f7005e = a10;
        return a10;
    }

    public final f4.d c() {
        return (f4.d) this.f7003c.getValue();
    }

    public final boolean d() {
        return this.f7002b;
    }

    public final void e(boolean z10) {
        this.f7002b = z10;
    }

    public final void f() {
        q4.a aVar;
        f4.d c10 = c();
        if (c().H()) {
            aVar = q4.a.GRID;
        } else {
            aVar = q4.a.LIST;
        }
        c10.c0(aVar);
    }
}

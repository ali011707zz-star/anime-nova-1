package x6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.SeriesEndpoint;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;
import p4.p;

/* compiled from: SeasonViewModel.kt */
/* loaded from: classes.dex */
public final class m extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final SeriesEndpoint f16106a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16107b;

    /* renamed from: c, reason: collision with root package name */
    public ja.n f16108c;

    /* renamed from: d, reason: collision with root package name */
    public uc.f<q0<p>> f16109d;

    /* compiled from: SeasonViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<t0<Integer, p>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ja.n f16111g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ja.n nVar) {
            super(0);
            this.f16111g = nVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p> invoke() {
            return new l(m.this.a(), this.f16111g);
        }
    }

    public m(SeriesEndpoint seriesEndpoint) {
        this.f16106a = seriesEndpoint;
    }

    public final SeriesEndpoint a() {
        return this.f16106a;
    }

    public final uc.f<q0<p>> b(ja.n nVar) {
        jc.l.f(nVar, "requestParam");
        uc.f<q0<p>> fVar = this.f16109d;
        if (jc.l.a(nVar, this.f16108c) && fVar != null) {
            return fVar;
        }
        this.f16108c = nVar;
        uc.f<q0<p>> a10 = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new a(nVar), 2, null).a(), j0.a(this));
        this.f16109d = a10;
        return a10;
    }

    public final boolean c() {
        return this.f16107b;
    }

    public final void d(boolean z10) {
        this.f16107b = z10;
    }
}

package u6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.RecommendationEndpoint;
import ja.n;
import jc.l;
import jc.m;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;

/* compiled from: RecommendationViewModelNew.kt */
/* loaded from: classes.dex */
public final class i extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final RecommendationEndpoint f14468a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14469b;

    /* renamed from: c, reason: collision with root package name */
    public n f14470c;

    /* renamed from: d, reason: collision with root package name */
    public uc.f<q0<u4.a>> f14471d;

    /* compiled from: RecommendationViewModelNew.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<t0<Integer, u4.a>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ n f14473g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(n nVar) {
            super(0);
            this.f14473g = nVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, u4.a> invoke() {
            return new h(i.this.b(), this.f14473g);
        }
    }

    public i(RecommendationEndpoint recommendationEndpoint) {
        this.f14468a = recommendationEndpoint;
    }

    public final boolean a() {
        return this.f14469b;
    }

    public final RecommendationEndpoint b() {
        return this.f14468a;
    }

    public final uc.f<q0<u4.a>> c(n nVar) {
        l.f(nVar, "requestParam");
        uc.f<q0<u4.a>> fVar = this.f14471d;
        if (l.a(nVar, this.f14470c) && fVar != null) {
            return fVar;
        }
        this.f14470c = nVar;
        uc.f<q0<u4.a>> a10 = k1.d.a(new o0(new p0(20, 5, false, 20, 0, 0, 48, null), null, new a(nVar), 2, null).a(), j0.a(this));
        this.f14471d = a10;
        return a10;
    }

    public final void d(boolean z10) {
        this.f14469b = z10;
    }
}

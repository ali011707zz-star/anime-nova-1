package k6;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ja.n;
import jc.l;
import jc.m;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;

/* compiled from: BrowseCharacterViewModel.kt */
/* loaded from: classes.dex */
public final class f extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final SeriesEndpoint f10046a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10047b;

    /* renamed from: c, reason: collision with root package name */
    public n f10048c;

    /* renamed from: d, reason: collision with root package name */
    public uc.f<q0<p4.e>> f10049d;

    /* compiled from: BrowseCharacterViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<t0<Integer, p4.e>> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ n f10051g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(n nVar) {
            super(0);
            this.f10051g = nVar;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p4.e> invoke() {
            return new e(f.this.f10046a, this.f10051g);
        }
    }

    public f(SeriesEndpoint seriesEndpoint) {
        this.f10046a = seriesEndpoint;
    }

    public final uc.f<q0<p4.e>> b(n nVar) {
        l.f(nVar, "requestParam");
        uc.f<q0<p4.e>> fVar = this.f10049d;
        if (l.a(nVar, this.f10048c) && fVar != null) {
            return fVar;
        }
        this.f10048c = nVar;
        uc.f<q0<p4.e>> a10 = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new a(nVar), 2, null).a(), j0.a(this));
        this.f10049d = a10;
        return a10;
    }

    public final boolean c() {
        return this.f10047b;
    }

    public final void d(boolean z10) {
        this.f10047b = z10;
    }
}

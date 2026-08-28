package h5;

import android.content.Context;
import h5.h;
import ic.p;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import rc.g1;
import rc.q0;
import wb.t;

/* compiled from: EpisodePresenter.kt */
/* loaded from: classes.dex */
public final class h extends r5.a {

    /* renamed from: j, reason: collision with root package name */
    public static final a f7317j = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public final f4.d f7318g;

    /* renamed from: h, reason: collision with root package name */
    public int f7319h;

    /* renamed from: i, reason: collision with root package name */
    public int f7320i;

    /* compiled from: EpisodePresenter.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: EpisodePresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodePresenter$applyEpisodeFilters$2", f = "EpisodePresenter.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super List<? extends p4.k>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7321f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ List<p4.k> f7322g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ h f7323h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(List<p4.k> list, h hVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f7322g = list;
            this.f7323h = hVar;
        }

        public static final int h(p4.k kVar, p4.k kVar2) {
            return jc.l.h(kVar2.g(), kVar.g());
        }

        public static final int k(p4.k kVar, p4.k kVar2) {
            return jc.l.h(kVar.g(), kVar2.g());
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f7322g, this.f7323h, dVar);
        }

        @Override // ic.p
        public /* bridge */ /* synthetic */ Object invoke(q0 q0Var, ac.d<? super List<? extends p4.k>> dVar) {
            return invoke2(q0Var, (ac.d<? super List<p4.k>>) dVar);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(q0 q0Var, ac.d<? super List<p4.k>> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Comparator comparator;
            bc.c.d();
            if (this.f7321f == 0) {
                vb.k.b(obj);
                List<p4.k> list = this.f7322g;
                if (this.f7323h.p()) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        if (!h7.b.c((p4.k) obj2)) {
                            arrayList.add(obj2);
                        }
                    }
                    list = t.R(arrayList);
                } else if (this.f7323h.q()) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj3 : list) {
                        if (h7.b.c((p4.k) obj3)) {
                            arrayList2.add(obj3);
                        }
                    }
                    list = t.R(arrayList2);
                }
                if (this.f7323h.o()) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj4 : list) {
                        if (!h7.b.b((p4.k) obj4)) {
                            arrayList3.add(obj4);
                        }
                    }
                    list = t.R(arrayList3);
                } else if (this.f7323h.n()) {
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj5 : list) {
                        if (h7.b.b((p4.k) obj5)) {
                            arrayList4.add(obj5);
                        }
                    }
                    list = t.R(arrayList4);
                }
                boolean D = this.f7323h.D();
                if (D) {
                    comparator = new Comparator() { // from class: h5.i
                        @Override // java.util.Comparator
                        public final int compare(Object obj6, Object obj7) {
                            int h10;
                            h10 = h.b.h((p4.k) obj6, (p4.k) obj7);
                            return h10;
                        }
                    };
                } else if (!D) {
                    comparator = new Comparator() { // from class: h5.j
                        @Override // java.util.Comparator
                        public final int compare(Object obj6, Object obj7) {
                            int k10;
                            k10 = h.b.k((p4.k) obj6, (p4.k) obj7);
                            return k10;
                        }
                    };
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return t.L(list, comparator);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class c extends zd.a<f4.d> {
    }

    public h(Context context) {
        super(context);
        f4.d dVar = (f4.d) yd.a.a().a(new c().getType());
        this.f7318g = dVar;
        this.f7319h = dVar.L() ? dVar.v() : 0;
        this.f7320i = dVar.v();
    }

    public final void A(boolean z10) {
        B(z10 ? 2 : 0);
        t();
    }

    public final void B(int i10) {
        x(i10, 6);
    }

    public final void C(boolean z10) {
        B(z10 ? 4 : 0);
        t();
    }

    public final boolean D() {
        return (this.f7320i & 1) == 0;
    }

    public final Object k(List<p4.k> list, ac.d<? super List<p4.k>> dVar) {
        return rc.i.g(g1.a(), new b(list, this, null), dVar);
    }

    public final int l() {
        return this.f7319h & 96;
    }

    public final int m() {
        return this.f7319h & 6;
    }

    public final boolean n() {
        return l() == 32;
    }

    public final boolean o() {
        return l() == 64;
    }

    public final boolean p() {
        return m() == 2;
    }

    public final boolean q() {
        return m() == 4;
    }

    public final void r() {
        B(0);
        v(0);
        t();
    }

    public final void s() {
        u(D() ? 1 : 0);
        this.f7318g.Y(this.f7320i);
    }

    public final void t() {
        if (this.f7318g.L()) {
            this.f7318g.Y(this.f7319h);
        }
    }

    public final void u(int i10) {
        y(i10, 1);
    }

    public final void v(int i10) {
        x(i10, 96);
    }

    public final void w(boolean z10) {
        v(z10 ? 32 : 0);
        t();
    }

    public final void x(int i10, int i11) {
        this.f7319h = (i10 & i11) | (this.f7319h & (i11 ^ (-1)));
    }

    public final void y(int i10, int i11) {
        this.f7320i = (i10 & i11) | (this.f7320i & (i11 ^ (-1)));
    }

    public final void z(boolean z10) {
        v(z10 ? 64 : 0);
        t();
    }
}

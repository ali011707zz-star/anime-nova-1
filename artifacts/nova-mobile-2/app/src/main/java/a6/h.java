package a6;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.f0;
import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import cc.k;
import com.anslayer.api.endpoint.CustomListEndPoint;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import g7.c;
import jc.l;
import jc.m;
import k1.o0;
import k1.p0;
import k1.q0;
import k1.t0;
import p4.p;

/* compiled from: AddAnimeViewModel.kt */
/* loaded from: classes.dex */
public final class h extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final f0 f456a;

    /* renamed from: b, reason: collision with root package name */
    public final long f457b;

    /* renamed from: c, reason: collision with root package name */
    public final vb.e f458c;

    /* renamed from: d, reason: collision with root package name */
    public final vb.e f459d;

    /* renamed from: e, reason: collision with root package name */
    public y<g7.a<g7.c<Integer>>> f460e;

    /* renamed from: f, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<Integer>>> f461f;

    /* renamed from: g, reason: collision with root package name */
    public y<g7.a<g7.c<Integer>>> f462g;

    /* renamed from: h, reason: collision with root package name */
    public final LiveData<g7.a<g7.c<Integer>>> f463h;

    /* renamed from: i, reason: collision with root package name */
    public uc.f<q0<p>> f464i;

    /* compiled from: AddAnimeViewModel.kt */
    /* loaded from: classes.dex */
    public static final class a extends androidx.lifecycle.a {

        /* renamed from: d, reason: collision with root package name */
        public final a6.c f465d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(a6.c cVar) {
            super(cVar, null);
            l.f(cVar, "fragment");
            this.f465d = cVar;
        }

        @Override // androidx.lifecycle.a
        public <T extends i0> T d(String str, Class<T> cls, f0 f0Var) {
            l.f(str, "key");
            l.f(cls, "modelClass");
            l.f(f0Var, "handle");
            long j10 = this.f465d.requireArguments().getLong("id", -1L);
            if (j10 != -1) {
                Context requireContext = this.f465d.requireContext();
                l.e(requireContext, "fragment.requireContext()");
                return new h(requireContext, f0Var, j10);
            }
            throw new IllegalStateException("customlist id are required");
        }
    }

    /* compiled from: AddAnimeViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeViewModel$add$1", f = "AddAnimeViewModel.kt", l = {60}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f466f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ long f468h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f469i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j10, int i10, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f468h = j10;
            this.f469i = i10;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f468h, this.f469i, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f466f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint j10 = h.this.j();
                    long i11 = h.this.i();
                    long j11 = this.f468h;
                    this.f466f = 1;
                    if (j10.addAnimeToCustomList(i11, j11, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                h.this.f460e.o(new g7.a(new c.C0133c(cc.b.b(this.f469i))));
            } catch (Exception e10) {
                h.this.f460e.o(new g7.a(new c.a(e10)));
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: AddAnimeViewModel.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<SeriesEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f470f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
            super(0);
            this.f470f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesEndpoint invoke() {
            return (SeriesEndpoint) z3.b.f17284d.getInstance(this.f470f).b(SeriesEndpoint.class);
        }
    }

    /* compiled from: AddAnimeViewModel.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<CustomListEndPoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f471f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(0);
            this.f471f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CustomListEndPoint invoke() {
            return (CustomListEndPoint) z3.b.f17284d.getInstance(this.f471f).b(CustomListEndPoint.class);
        }
    }

    /* compiled from: AddAnimeViewModel.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<t0<Integer, p>> {
        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t0<Integer, p> invoke() {
            return new g(h.this.g(), h.this.j(), h.this.l(), h.this.i());
        }
    }

    /* compiled from: AddAnimeViewModel.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimeViewModel$remove$1", f = "AddAnimeViewModel.kt", l = {71}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends k implements ic.p<rc.q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f473f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ long f475h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ int f476i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(long j10, int i10, ac.d<? super f> dVar) {
            super(2, dVar);
            this.f475h = j10;
            this.f476i = i10;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new f(this.f475h, this.f476i, dVar);
        }

        @Override // ic.p
        public final Object invoke(rc.q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((f) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f473f;
            try {
                if (i10 == 0) {
                    vb.k.b(obj);
                    CustomListEndPoint j10 = h.this.j();
                    long i11 = h.this.i();
                    String valueOf = String.valueOf(this.f475h);
                    this.f473f = 1;
                    if (j10.deleteAnimeFromCustomList(i11, valueOf, this) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                h.this.f462g.o(new g7.a(new c.C0133c(cc.b.b(this.f476i))));
            } catch (Exception e10) {
                h.this.f462g.o(new g7.a(new c.a(e10)));
            }
            return vb.p.f15031a;
        }
    }

    public h(Context context, f0 f0Var, long j10) {
        l.f(context, "context");
        l.f(f0Var, "state");
        this.f456a = f0Var;
        this.f457b = j10;
        this.f458c = vb.f.a(new c(context));
        this.f459d = vb.f.a(new d(context));
        y<g7.a<g7.c<Integer>>> yVar = new y<>();
        this.f460e = yVar;
        this.f461f = yVar;
        y<g7.a<g7.c<Integer>>> yVar2 = new y<>();
        this.f462g = yVar2;
        this.f463h = yVar2;
    }

    public final void e(long j10, int i10) {
        rc.k.d(j0.a(this), null, null, new b(j10, i10, null), 3, null);
    }

    public final LiveData<g7.a<g7.c<Integer>>> f() {
        return this.f461f;
    }

    public final SeriesEndpoint g() {
        return (SeriesEndpoint) this.f458c.getValue();
    }

    public final uc.f<q0<p>> h() {
        uc.f<q0<p>> fVar = this.f464i;
        if (fVar != null) {
            return fVar;
        }
        uc.f<q0<p>> a10 = k1.d.a(new o0(new p0(30, 5, false, 30, 0, 0, 48, null), null, new e(), 2, null).a(), j0.a(this));
        this.f464i = a10;
        return a10;
    }

    public final long i() {
        return this.f457b;
    }

    public final CustomListEndPoint j() {
        return (CustomListEndPoint) this.f459d.getValue();
    }

    public final LiveData<g7.a<g7.c<Integer>>> k() {
        return this.f463h;
    }

    public final String l() {
        String str = (String) this.f456a.b("last_search_query");
        return str == null ? "" : str;
    }

    public final void m(long j10, int i10) {
        rc.k.d(j0.a(this), null, null, new f(j10, i10, null), 3, null);
    }

    public final void n(String str) {
        l.f(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f456a.d("last_search_query", str);
    }
}

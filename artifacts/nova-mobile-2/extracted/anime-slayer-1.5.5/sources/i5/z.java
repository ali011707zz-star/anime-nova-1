package i5;

import android.content.Context;
import android.view.View;
import com.anslayer.api.endpoint.SeriesEndpoint;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.custom.widget.SingleLineTextView;
import io.wax911.support.util.InstanceUtil;

/* compiled from: SeriesPresenter.kt */
/* loaded from: classes.dex */
public final class z extends r5.a {

    /* renamed from: h, reason: collision with root package name */
    public static final a f7797h = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f7798g;

    /* compiled from: SeriesPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<z, Context> {

        /* compiled from: SeriesPresenter.kt */
        /* renamed from: i5.z$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0153a extends jc.m implements ic.l<Context, z> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0153a f7799f = new C0153a();

            public C0153a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final z invoke(Context context) {
                return new z(context, null);
            }
        }

        public a() {
            super(C0153a.f7799f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SeriesPresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesPresenter", f = "SeriesPresenter.kt", l = {85, 88}, m = "markDroppedStatus")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7800f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7801g;

        /* renamed from: i, reason: collision with root package name */
        public int f7803i;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7801g = obj;
            this.f7803i |= Integer.MIN_VALUE;
            return z.this.l(null, false, this);
        }
    }

    /* compiled from: SeriesPresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesPresenter", f = "SeriesPresenter.kt", l = {100, 103}, m = "markOnHoldStatus")
    /* loaded from: classes.dex */
    public static final class c extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7804f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7805g;

        /* renamed from: i, reason: collision with root package name */
        public int f7807i;

        public c(ac.d<? super c> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7805g = obj;
            this.f7807i |= Integer.MIN_VALUE;
            return z.this.m(null, false, this);
        }
    }

    /* compiled from: SeriesPresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesPresenter", f = "SeriesPresenter.kt", l = {40, 43}, m = "markPlanToWatchStatus")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7808f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7809g;

        /* renamed from: i, reason: collision with root package name */
        public int f7811i;

        public d(ac.d<? super d> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7809g = obj;
            this.f7811i |= Integer.MIN_VALUE;
            return z.this.n(null, false, this);
        }
    }

    /* compiled from: SeriesPresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesPresenter", f = "SeriesPresenter.kt", l = {55, 58}, m = "markWatchedStatus")
    /* loaded from: classes.dex */
    public static final class e extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7812f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7813g;

        /* renamed from: i, reason: collision with root package name */
        public int f7815i;

        public e(ac.d<? super e> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7813g = obj;
            this.f7815i |= Integer.MIN_VALUE;
            return z.this.o(null, false, this);
        }
    }

    /* compiled from: SeriesPresenter.kt */
    @cc.f(c = "com.anslayer.ui.anime.info.SeriesPresenter", f = "SeriesPresenter.kt", l = {70, 73}, m = "markWatchingStatus")
    /* loaded from: classes.dex */
    public static final class f extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f7816f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f7817g;

        /* renamed from: i, reason: collision with root package name */
        public int f7819i;

        public f(ac.d<? super f> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7817g = obj;
            this.f7819i |= Integer.MIN_VALUE;
            return z.this.p(null, false, this);
        }
    }

    /* compiled from: SeriesPresenter.kt */
    /* loaded from: classes.dex */
    public static final class g extends jc.m implements ic.a<SeriesEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f7820f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Context context) {
            super(0);
            this.f7820f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SeriesEndpoint invoke() {
            Context context = this.f7820f;
            if (context == null) {
                return null;
            }
            return (SeriesEndpoint) z3.b.f17284d.getInstance(context).b(SeriesEndpoint.class);
        }
    }

    public z(Context context) {
        super(context);
        this.f7798g = vb.f.a(new g(context));
    }

    public /* synthetic */ z(Context context, jc.g gVar) {
        this(context);
    }

    public static final void r(ic.a aVar, View view) {
        jc.l.f(aVar, "$action");
        aVar.invoke();
    }

    public final SeriesEndpoint k() {
        return (SeriesEndpoint) this.f7798g.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object l(p4.p pVar, boolean z10, ac.d<? super vb.p> dVar) {
        b bVar;
        int i10;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i11 = bVar.f7803i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f7803i = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f7801g;
                Object d10 = bc.c.d();
                i10 = bVar.f7803i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (z10) {
                        SeriesEndpoint k10 = k();
                        if (k10 != null) {
                            String valueOf = String.valueOf(pVar.m());
                            bVar.f7800f = pVar;
                            bVar.f7803i = 1;
                            obj = k10.addToDropped(valueOf, bVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.l0("Yes");
                    } else {
                        SeriesEndpoint k11 = k();
                        if (k11 != null) {
                            String valueOf2 = String.valueOf(pVar.m());
                            bVar.f7800f = pVar;
                            bVar.f7803i = 2;
                            obj = k11.removeFromDroppedV2(valueOf2, bVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.l0("No");
                    }
                } else if (i10 == 1) {
                    pVar = (p4.p) bVar.f7800f;
                    vb.k.b(obj);
                    pVar.l0("Yes");
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (p4.p) bVar.f7800f;
                    vb.k.b(obj);
                    pVar.l0("No");
                }
                return vb.p.f15031a;
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f7801g;
        Object d102 = bc.c.d();
        i10 = bVar.f7803i;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m(p4.p pVar, boolean z10, ac.d<? super vb.p> dVar) {
        c cVar;
        int i10;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i11 = cVar.f7807i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                cVar.f7807i = i11 - Integer.MIN_VALUE;
                Object obj = cVar.f7805g;
                Object d10 = bc.c.d();
                i10 = cVar.f7807i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (z10) {
                        SeriesEndpoint k10 = k();
                        if (k10 != null) {
                            String valueOf = String.valueOf(pVar.m());
                            cVar.f7804f = pVar;
                            cVar.f7807i = 1;
                            obj = k10.addToOnHold(valueOf, cVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.n0("Yes");
                    } else {
                        SeriesEndpoint k11 = k();
                        if (k11 != null) {
                            String valueOf2 = String.valueOf(pVar.m());
                            cVar.f7804f = pVar;
                            cVar.f7807i = 2;
                            obj = k11.removeFromOnHoldV2(valueOf2, cVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.n0("No");
                    }
                } else if (i10 == 1) {
                    pVar = (p4.p) cVar.f7804f;
                    vb.k.b(obj);
                    pVar.n0("Yes");
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (p4.p) cVar.f7804f;
                    vb.k.b(obj);
                    pVar.n0("No");
                }
                return vb.p.f15031a;
            }
        }
        cVar = new c(dVar);
        Object obj2 = cVar.f7805g;
        Object d102 = bc.c.d();
        i10 = cVar.f7807i;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(p4.p pVar, boolean z10, ac.d<? super vb.p> dVar) {
        d dVar2;
        int i10;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.f7811i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.f7811i = i11 - Integer.MIN_VALUE;
                Object obj = dVar2.f7809g;
                Object d10 = bc.c.d();
                i10 = dVar2.f7811i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (z10) {
                        SeriesEndpoint k10 = k();
                        if (k10 != null) {
                            String valueOf = String.valueOf(pVar.m());
                            dVar2.f7808f = pVar;
                            dVar2.f7811i = 1;
                            obj = k10.addToPlanToWatch(valueOf, dVar2);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.o0("Yes");
                    } else {
                        SeriesEndpoint k11 = k();
                        if (k11 != null) {
                            String valueOf2 = String.valueOf(pVar.m());
                            dVar2.f7808f = pVar;
                            dVar2.f7811i = 2;
                            obj = k11.removeFromPlanToWatchV2(valueOf2, dVar2);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.o0("No");
                    }
                } else if (i10 == 1) {
                    pVar = (p4.p) dVar2.f7808f;
                    vb.k.b(obj);
                    pVar.o0("Yes");
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (p4.p) dVar2.f7808f;
                    vb.k.b(obj);
                    pVar.o0("No");
                }
                return vb.p.f15031a;
            }
        }
        dVar2 = new d(dVar);
        Object obj2 = dVar2.f7809g;
        Object d102 = bc.c.d();
        i10 = dVar2.f7811i;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object o(p4.p pVar, boolean z10, ac.d<? super vb.p> dVar) {
        e eVar;
        int i10;
        if (dVar instanceof e) {
            eVar = (e) dVar;
            int i11 = eVar.f7815i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                eVar.f7815i = i11 - Integer.MIN_VALUE;
                Object obj = eVar.f7813g;
                Object d10 = bc.c.d();
                i10 = eVar.f7815i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (z10) {
                        SeriesEndpoint k10 = k();
                        if (k10 != null) {
                            String valueOf = String.valueOf(pVar.m());
                            eVar.f7812f = pVar;
                            eVar.f7815i = 1;
                            obj = k10.addToWatched(valueOf, eVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.q0("Yes");
                    } else {
                        SeriesEndpoint k11 = k();
                        if (k11 != null) {
                            String valueOf2 = String.valueOf(pVar.m());
                            eVar.f7812f = pVar;
                            eVar.f7815i = 2;
                            obj = k11.removeFromWatchedV2(valueOf2, eVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.q0("No");
                    }
                } else if (i10 == 1) {
                    pVar = (p4.p) eVar.f7812f;
                    vb.k.b(obj);
                    pVar.q0("Yes");
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (p4.p) eVar.f7812f;
                    vb.k.b(obj);
                    pVar.q0("No");
                }
                return vb.p.f15031a;
            }
        }
        eVar = new e(dVar);
        Object obj2 = eVar.f7813g;
        Object d102 = bc.c.d();
        i10 = eVar.f7815i;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object p(p4.p pVar, boolean z10, ac.d<? super vb.p> dVar) {
        f fVar;
        int i10;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i11 = fVar.f7819i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fVar.f7819i = i11 - Integer.MIN_VALUE;
                Object obj = fVar.f7817g;
                Object d10 = bc.c.d();
                i10 = fVar.f7819i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (z10) {
                        SeriesEndpoint k10 = k();
                        if (k10 != null) {
                            String valueOf = String.valueOf(pVar.m());
                            fVar.f7816f = pVar;
                            fVar.f7819i = 1;
                            obj = k10.addToWatching(valueOf, fVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.r0("Yes");
                    } else {
                        SeriesEndpoint k11 = k();
                        if (k11 != null) {
                            String valueOf2 = String.valueOf(pVar.m());
                            fVar.f7816f = pVar;
                            fVar.f7819i = 2;
                            obj = k11.removeFromWatchingV2(valueOf2, fVar);
                            if (obj == d10) {
                                return d10;
                            }
                        }
                        pVar.r0("No");
                    }
                } else if (i10 == 1) {
                    pVar = (p4.p) fVar.f7816f;
                    vb.k.b(obj);
                    pVar.r0("Yes");
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pVar = (p4.p) fVar.f7816f;
                    vb.k.b(obj);
                    pVar.r0("No");
                }
                return vb.p.f15031a;
            }
        }
        fVar = new f(dVar);
        Object obj2 = fVar.f7817g;
        Object d102 = bc.c.d();
        i10 = fVar.f7819i;
        if (i10 != 0) {
        }
        return vb.p.f15031a;
    }

    public final void q(Integer num, SingleLineTextView singleLineTextView, final ic.a<vb.p> aVar) {
        jc.l.f(singleLineTextView, "widget");
        jc.l.f(aVar, "action");
        singleLineTextView.setOnClickListener(new View.OnClickListener() { // from class: i5.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z.r(ic.a.this, view);
            }
        });
        if ((num == null ? 0 : num.intValue()) >= 5) {
            SupportExtentionKt.visible(singleLineTextView);
        } else {
            SupportExtentionKt.gone(singleLineTextView);
        }
    }
}

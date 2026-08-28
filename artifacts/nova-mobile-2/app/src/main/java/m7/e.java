package m7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.anslayer.widget.ContentViewFlipper;
import com.twitter.sdk.android.core.internal.TwitterApiConstants;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.extension.RetroErrorExtKt;
import io.wax911.support.model.ModelWrapper;
import j4.g3;
import okhttp3.ResponseBody;
import p4.p;
import rc.g1;
import rc.n2;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: FavouriteActionProvider.kt */
/* loaded from: classes.dex */
public final class e extends q0.b implements View.OnClickListener {

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f10988i;

    /* renamed from: j, reason: collision with root package name */
    public final vb.e f10989j;

    /* renamed from: k, reason: collision with root package name */
    public p f10990k;

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f10991l;

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f10992m;

    /* compiled from: FavouriteActionProvider.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<ac.h> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f10993f = new a();

        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ac.h invoke() {
            return ac.h.f543f;
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.a<z3.a> {

        /* renamed from: f, reason: collision with root package name */
        public static final b f10994f = new b();

        public b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z3.a invoke() {
            return a.C0435a.b(z3.a.f17279b, false, 1, null);
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    @cc.f(c = "com.anslayer.widget.FavouriteActionProvider$onActionRequest$1$1", f = "FavouriteActionProvider.kt", l = {142, TwitterApiConstants.Errors.ALREADY_UNFAVORITED}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f10995f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ p f10997h;

        /* compiled from: FavouriteActionProvider.kt */
        @cc.f(c = "com.anslayer.widget.FavouriteActionProvider$onActionRequest$1$1$1", f = "FavouriteActionProvider.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f10998f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ e f10999g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f10999g = eVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f10999g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                ContentViewFlipper contentViewFlipper;
                bc.c.d();
                if (this.f10998f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                g3 s10 = this.f10999g.s();
                if (s10 == null || (contentViewFlipper = s10.f8389b) == null) {
                    return null;
                }
                l7.a.a(contentViewFlipper);
                return vb.p.f15031a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(p pVar, ac.d<? super c> dVar) {
            super(2, dVar);
            this.f10997h = pVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f10997h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f10995f;
            if (i10 == 0) {
                vb.k.b(obj);
                e eVar = e.this;
                p pVar = this.f10997h;
                this.f10995f = 1;
                if (eVar.w(pVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            e.this.u();
            n2 c10 = g1.c();
            a aVar = new a(e.this, null);
            this.f10995f = 2;
            if (rc.i.g(c10, aVar, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    /* loaded from: classes.dex */
    public static final class d extends jc.m implements ic.l<Throwable, vb.p> {

        /* compiled from: FavouriteActionProvider.kt */
        @cc.f(c = "com.anslayer.widget.FavouriteActionProvider$onActionRequest$1$2$1$1", f = "FavouriteActionProvider.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends cc.k implements ic.p<q0, ac.d<? super vb.p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public int f11001f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ e f11002g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f11002g = eVar;
            }

            @Override // cc.a
            public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f11002g, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
            }

            @Override // cc.a
            public final Object invokeSuspend(Object obj) {
                ContentViewFlipper contentViewFlipper;
                bc.c.d();
                if (this.f11001f != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                g3 s10 = this.f11002g.s();
                if (s10 != null && (contentViewFlipper = s10.f8389b) != null) {
                    l7.a.a(contentViewFlipper);
                }
                Context a10 = this.f11002g.a();
                if (a10 != null) {
                    Toast.makeText(a10, R.string.text_request_error, 0).show();
                }
                return vb.p.f15031a;
            }
        }

        public d() {
            super(1);
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ vb.p invoke(Throwable th) {
            invoke2(th);
            return vb.p.f15031a;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            if (th == null) {
                return;
            }
            e eVar = e.this;
            th.printStackTrace();
            rc.i.e(g1.c(), new a(eVar, null));
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    /* renamed from: m7.e$e, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0258e extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f11003f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0258e(Context context) {
            super(0);
            this.f11003f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final f4.d invoke() {
            Context context = this.f11003f;
            if (context == null) {
                return null;
            }
            return f4.d.f6409r.newInstance(context);
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    @cc.f(c = "com.anslayer.widget.FavouriteActionProvider", f = "FavouriteActionProvider.kt", l = {61, 63, 69}, m = "toggleFavourite")
    /* loaded from: classes.dex */
    public static final class f extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f11004f;

        /* renamed from: g, reason: collision with root package name */
        public Object f11005g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f11006h;

        /* renamed from: j, reason: collision with root package name */
        public int f11008j;

        public f(ac.d<? super f> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f11006h = obj;
            this.f11008j |= Integer.MIN_VALUE;
            return e.this.w(null, this);
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    @cc.f(c = "com.anslayer.widget.FavouriteActionProvider$toggleFavourite$2", f = "FavouriteActionProvider.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends cc.k implements ic.p<q0, ac.d<? super Context>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11009f;

        public g(ac.d<? super g> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new g(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super Context> dVar) {
            return ((g) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f11009f == 0) {
                vb.k.b(obj);
                Context a10 = e.this.a();
                if (a10 == null) {
                    return null;
                }
                Toast.makeText(a10, R.string.text_request_error, 0).show();
                return a10;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: FavouriteActionProvider.kt */
    /* loaded from: classes.dex */
    public static final class h extends jc.m implements ic.a<g3> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f11011f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Context context) {
            super(0);
            this.f11011f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final g3 invoke() {
            LayoutInflater layoutInflater;
            Context context = this.f11011f;
            if (context == null || (layoutInflater = SupportExtentionKt.getLayoutInflater(context)) == null) {
                return null;
            }
            return g3.c(layoutInflater);
        }
    }

    public e(Context context) {
        super(context);
        this.f10988i = vb.f.a(new h(context));
        this.f10989j = vb.f.a(a.f10993f);
        this.f10991l = vb.f.a(b.f10994f);
        this.f10992m = vb.f.a(new C0258e(context));
    }

    public static /* synthetic */ View o(e eVar, MenuItem menuItem, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            menuItem = null;
        }
        return eVar.n(menuItem);
    }

    @Override // q0.b
    public View d() {
        return o(this, null, 1, null);
    }

    @Override // q0.b
    public View e(MenuItem menuItem) {
        return n(menuItem);
    }

    public final View n(MenuItem menuItem) {
        g3 s10 = s();
        if (s10 != null) {
            s10.f8389b.setOnClickListener(this);
            s10.f8390c.setOnClickListener(this);
            u();
        }
        g3 s11 = s();
        if (s11 == null) {
            return null;
        }
        return s11.b();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f4.d r10 = r();
        if (jc.l.a(r10 == null ? null : Boolean.valueOf(r10.b()), Boolean.TRUE)) {
            t();
        } else {
            Toast.makeText(a(), R.string.text_login_required, 0).show();
        }
    }

    public final ac.g p() {
        return (ac.g) this.f10989j.getValue();
    }

    public final z3.a q() {
        return (z3.a) this.f10991l.getValue();
    }

    public final f4.d r() {
        return (f4.d) this.f10992m.getValue();
    }

    public final g3 s() {
        return (g3) this.f10988i.getValue();
    }

    public final void t() {
        y0 b10;
        ContentViewFlipper contentViewFlipper;
        p pVar = this.f10990k;
        if (pVar == null) {
            return;
        }
        g3 s10 = s();
        if (s10 != null && (contentViewFlipper = s10.f8389b) != null) {
            l7.a.b(contentViewFlipper);
        }
        b10 = rc.k.b(v1.f13343f, p(), null, new c(pVar, null), 2, null);
        b10.h0(new d());
    }

    public final void u() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        p pVar = this.f10990k;
        if (jc.l.a(pVar == null ? null : pVar.j(), "Yes")) {
            g3 s10 = s();
            if (s10 == null || (appCompatImageView2 = s10.f8390c) == null) {
                return;
            }
            Context a10 = a();
            appCompatImageView2.setImageDrawable(a10 != null ? SupportExtentionKt.getCompatDrawable(a10, R.drawable.ic_bx_heart) : null);
            return;
        }
        g3 s11 = s();
        if (s11 == null || (appCompatImageView = s11.f8390c) == null) {
            return;
        }
        Context a11 = a();
        appCompatImageView.setImageDrawable(a11 != null ? SupportExtentionKt.getCompatDrawable(a11, R.drawable.ic_bx_heart_outline) : null);
    }

    public final void v(p pVar) {
        this.f10990k = pVar;
        u();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object w(p pVar, ac.d<? super vb.p> dVar) {
        f fVar;
        int i10;
        e eVar;
        ModelWrapper modelWrapper;
        if (dVar instanceof f) {
            fVar = (f) dVar;
            int i11 = fVar.f11008j;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fVar.f11008j = i11 - Integer.MIN_VALUE;
                Object obj = fVar.f11006h;
                Object d10 = bc.c.d();
                i10 = fVar.f11008j;
                if (i10 != 0) {
                    vb.k.b(obj);
                    if (pVar.j() != null) {
                        Context a10 = a();
                        SeriesEndpoint seriesEndpoint = a10 == null ? null : (SeriesEndpoint) z3.b.f17284d.getInstance(a10).b(SeriesEndpoint.class);
                        if (seriesEndpoint != null) {
                            if (jc.l.a(pVar.j(), "Yes")) {
                                y0 executeUsing = q().executeUsing(seriesEndpoint.removeFromFavourites(String.valueOf(pVar.m())));
                                fVar.f11004f = this;
                                fVar.f11005g = pVar;
                                fVar.f11008j = 1;
                                obj = executeUsing.k0(fVar);
                                if (obj == d10) {
                                    return d10;
                                }
                                eVar = this;
                                modelWrapper = (ModelWrapper) obj;
                            } else {
                                y0 executeUsing2 = q().executeUsing(seriesEndpoint.addToFavourites(cc.b.c(pVar.m())));
                                fVar.f11004f = this;
                                fVar.f11005g = pVar;
                                fVar.f11008j = 2;
                                obj = executeUsing2.k0(fVar);
                                if (obj == d10) {
                                    return d10;
                                }
                                eVar = this;
                                modelWrapper = (ModelWrapper) obj;
                            }
                        }
                    }
                    return vb.p.f15031a;
                }
                if (i10 == 1) {
                    pVar = (p) fVar.f11005g;
                    eVar = (e) fVar.f11004f;
                    vb.k.b(obj);
                    modelWrapper = (ModelWrapper) obj;
                } else {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                        return vb.p.f15031a;
                    }
                    pVar = (p) fVar.f11005g;
                    eVar = (e) fVar.f11004f;
                    vb.k.b(obj);
                    modelWrapper = (ModelWrapper) obj;
                }
                if (!modelWrapper.isSuccessful()) {
                    pVar.m0(e7.e.b(pVar.j()));
                    return vb.p.f15031a;
                }
                ResponseBody error = modelWrapper.getError();
                if (error != null) {
                    RetroErrorExtKt.logError(error);
                }
                n2 c10 = g1.c();
                g gVar = new g(null);
                fVar.f11004f = null;
                fVar.f11005g = null;
                fVar.f11008j = 3;
                if (rc.i.g(c10, gVar, fVar) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            }
        }
        fVar = new f(dVar);
        Object obj2 = fVar.f11006h;
        Object d102 = bc.c.d();
        i10 = fVar.f11008j;
        if (i10 != 0) {
        }
        if (!modelWrapper.isSuccessful()) {
        }
    }
}

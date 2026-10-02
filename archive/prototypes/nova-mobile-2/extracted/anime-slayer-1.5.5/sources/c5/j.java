package c5;

import android.content.Context;
import android.os.Bundle;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import jc.m;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: CharactersReposetory.kt */
/* loaded from: classes.dex */
public final class j extends SupportRepository<Bundle, p4.d> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f3697b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f3698a;

    /* compiled from: CharactersReposetory.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<j> {

        /* compiled from: CharactersReposetory.kt */
        /* renamed from: c5.j$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0076a extends m implements ic.a<j> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0076a f3699f = new C0076a();

            public C0076a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final j invoke() {
                return new j(null);
            }
        }

        public a() {
            super(C0076a.f3699f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CharactersReposetory.kt */
    @cc.f(c = "com.anslayer.ui.anime.characters.CharactersReposetory$createNetworkClientRequest$1", f = "CharactersReposetory.kt", l = {23, 25}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f3700f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f3701g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f3702h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ j f3703i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, j jVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f3701g = context;
            this.f3702h = bundle;
            this.f3703i = jVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f3701g, this.f3702h, this.f3703i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f3700f;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f3701g).b(SeriesEndpoint.class);
                String string = this.f3702h.getString("arg_json");
                this.f3700f = 1;
                obj = seriesEndpoint.animeCharacters(string, this);
                if (obj == d10) {
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
            j jVar = this.f3703i;
            this.f3700f = 2;
            if (jVar.publishResult((p4.d) obj, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CharactersReposetory.kt */
    @cc.f(c = "com.anslayer.ui.anime.characters.CharactersReposetory$requestFromCache$1", f = "CharactersReposetory.kt", l = {29}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f3704f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f3704f;
            if (i10 == 0) {
                vb.k.b(obj);
                j jVar = j.this;
                this.f3704f = 1;
                if (jVar.publishResult(null, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public j() {
        this.f3698a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ j(jc.g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new b(context, bundle, this, null), 3, null);
        return b10;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return this.f3698a;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}

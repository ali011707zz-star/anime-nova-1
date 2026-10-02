package z4;

import android.content.Context;
import android.os.Bundle;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import jc.l;
import jc.m;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: ActorDetailsRepository.kt */
/* loaded from: classes.dex */
public final class e extends SupportRepository<Bundle, p4.b> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f17311a = new a(null);

    /* compiled from: ActorDetailsRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<e> {

        /* compiled from: ActorDetailsRepository.kt */
        /* renamed from: z4.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0440a extends m implements ic.a<e> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0440a f17312f = new C0440a();

            public C0440a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final e invoke() {
                return new e(null);
            }
        }

        public a() {
            super(C0440a.f17312f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: ActorDetailsRepository.kt */
    @cc.f(c = "com.anslayer.ui.actor.ActorDetailsRepository$createNetworkClientRequest$1", f = "ActorDetailsRepository.kt", l = {33, 35}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17313f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f17314g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f17315h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ e f17316i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, e eVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f17314g = context;
            this.f17315h = bundle;
            this.f17316i = eVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f17314g, this.f17315h, this.f17316i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f17313f;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f17314g).b(SeriesEndpoint.class);
                int i11 = this.f17315h.getInt("actor_id");
                this.f17313f = 1;
                obj = seriesEndpoint.getActorDetails(i11, this);
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
            e eVar = this.f17316i;
            this.f17313f = 2;
            if (eVar.publishResult((p4.b) obj, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: ActorDetailsRepository.kt */
    @cc.f(c = "com.anslayer.ui.actor.ActorDetailsRepository$requestFromCache$1", f = "ActorDetailsRepository.kt", l = {45}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f17317f;

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
            int i10 = this.f17317f;
            if (i10 == 0) {
                vb.k.b(obj);
                e eVar = e.this;
                this.f17317f = 1;
                if (eVar.publishResult(null, this) == d10) {
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

    public e() {
    }

    public /* synthetic */ e(jc.g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new b(context, bundle, this, null), 3, null);
        return b10;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}

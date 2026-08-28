package d5;

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

/* compiled from: CharacterDetailsRepository.kt */
/* loaded from: classes.dex */
public final class e extends SupportRepository<Bundle, p4.f> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f5644a = new a(null);

    /* compiled from: CharacterDetailsRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<e> {

        /* compiled from: CharacterDetailsRepository.kt */
        /* renamed from: d5.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0101a extends m implements ic.a<e> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0101a f5645f = new C0101a();

            public C0101a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final e invoke() {
                return new e(null);
            }
        }

        public a() {
            super(C0101a.f5645f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CharacterDetailsRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.characters.details.CharacterDetailsRepository$createNetworkClientRequest$1", f = "CharacterDetailsRepository.kt", l = {33, 35}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f5646f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f5647g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f5648h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ e f5649i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, e eVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f5647g = context;
            this.f5648h = bundle;
            this.f5649i = eVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f5647g, this.f5648h, this.f5649i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f5646f;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f5647g).b(SeriesEndpoint.class);
                int i11 = this.f5648h.getInt("character_id");
                this.f5646f = 1;
                obj = seriesEndpoint.getCharacterDetails(i11, this);
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
            e eVar = this.f5649i;
            this.f5646f = 2;
            if (eVar.publishResult((p4.f) obj, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: CharacterDetailsRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.characters.details.CharacterDetailsRepository$requestFromCache$1", f = "CharacterDetailsRepository.kt", l = {45}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f5650f;

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
            int i10 = this.f5650f;
            if (i10 == 0) {
                vb.k.b(obj);
                e eVar = e.this;
                this.f5650f = 1;
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
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
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
        jc.l.f(bundle, "bundle");
        jc.l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}

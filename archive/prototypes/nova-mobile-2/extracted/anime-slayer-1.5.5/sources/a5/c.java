package a5;

import android.content.Context;
import android.os.Bundle;
import cc.f;
import cc.k;
import com.anslayer.api.endpoint.SeriesEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.List;
import jc.g;
import jc.l;
import jc.m;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: ActorAnimeCharacterBrowseRepository.kt */
/* loaded from: classes.dex */
public final class c extends SupportRepository<Bundle, List<? extends p4.c>> {

    /* renamed from: a, reason: collision with root package name */
    public static final a f396a = new a(null);

    /* compiled from: ActorAnimeCharacterBrowseRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<c> {

        /* compiled from: ActorAnimeCharacterBrowseRepository.kt */
        /* renamed from: a5.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0010a extends m implements ic.a<c> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0010a f397f = new C0010a();

            public C0010a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final c invoke() {
                return new c(null);
            }
        }

        public a() {
            super(C0010a.f397f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: ActorAnimeCharacterBrowseRepository.kt */
    @f(c = "com.anslayer.ui.actor.more.ActorAnimeCharacterBrowseRepository$createNetworkClientRequest$1", f = "ActorAnimeCharacterBrowseRepository.kt", l = {25, 27}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f398f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f399g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f400h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ c f401i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, c cVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f399g = context;
            this.f400h = bundle;
            this.f401i = cVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f399g, this.f400h, this.f401i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f398f;
            if (i10 == 0) {
                vb.k.b(obj);
                SeriesEndpoint seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f399g).b(SeriesEndpoint.class);
                int i11 = this.f400h.getInt("actor_id");
                String string = this.f400h.getString("arg_json");
                this.f398f = 1;
                obj = seriesEndpoint.animeCharacterRelationMore(i11, string, this);
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
            c cVar = this.f401i;
            List<p4.c> a10 = ((n4.a) obj).a();
            this.f398f = 2;
            if (cVar.publishResult(a10, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: ActorAnimeCharacterBrowseRepository.kt */
    @f(c = "com.anslayer.ui.actor.more.ActorAnimeCharacterBrowseRepository$requestFromCache$1", f = "ActorAnimeCharacterBrowseRepository.kt", l = {31}, m = "invokeSuspend")
    /* renamed from: a5.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0011c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f402f;

        public C0011c(ac.d<? super C0011c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new C0011c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((C0011c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f402f;
            if (i10 == 0) {
                vb.k.b(obj);
                c cVar = c.this;
                this.f402f = 1;
                if (cVar.publishResult(null, this) == d10) {
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

    public c() {
    }

    public /* synthetic */ c(g gVar) {
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
        b10 = rc.k.b(v1.f13343f, null, null, new C0011c(null), 3, null);
        return b10;
    }
}

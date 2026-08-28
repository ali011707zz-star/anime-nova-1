package h5;

import android.content.Context;
import android.os.Bundle;
import com.anslayer.api.endpoint.SeriesEndpoint;
import i7.b;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.List;
import jc.m;
import rc.g1;
import rc.q0;
import rc.v1;
import rc.y0;
import retrofit2.HttpException;
import z3.a;

/* compiled from: EpisodeRepository.kt */
/* loaded from: classes.dex */
public final class k extends SupportRepository<Bundle, List<? extends p4.k>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f7326b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f7327a;

    /* compiled from: EpisodeRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<k> {

        /* compiled from: EpisodeRepository.kt */
        /* renamed from: h5.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0142a extends m implements ic.a<k> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0142a f7328f = new C0142a();

            public C0142a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final k invoke() {
                return new k(null);
            }
        }

        public a() {
            super(C0142a.f7328f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: EpisodeRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeRepository$createNetworkClientRequest$1", f = "EpisodeRepository.kt", l = {40, 49, 50}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f7329f;

        /* renamed from: g, reason: collision with root package name */
        public int f7330g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Context f7331h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bundle f7332i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ k f7333j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, k kVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f7331h = context;
            this.f7332i = bundle;
            this.f7333j = kVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f7331h, this.f7332i, this.f7333j, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00c0 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            SeriesEndpoint seriesEndpoint;
            String string;
            String g10;
            k kVar;
            List list;
            Object d10 = bc.c.d();
            int i10 = this.f7330g;
            if (i10 == 0) {
                vb.k.b(obj);
                seriesEndpoint = (SeriesEndpoint) z3.b.f17284d.getInstance(this.f7331h).b(SeriesEndpoint.class);
                b.a aVar = i7.b.f7890a;
                if (aVar.g() == null || aVar.h() > 0) {
                    Context context = this.f7331h;
                    this.f7329f = seriesEndpoint;
                    this.f7330g = 1;
                    obj = aVar.f(context, this);
                    if (obj == d10) {
                        return d10;
                    }
                }
                string = this.f7332i.getString("arg_request_type");
                if (string != null && string.hashCode() == 817972119 && string.equals("GET_SERIES_EPISODES")) {
                    g10 = i7.b.f7890a.g();
                    if (g10 == null) {
                        g10 = "";
                    }
                    String string2 = this.f7332i.getString("arg_json");
                    this.f7329f = null;
                    this.f7330g = 2;
                    obj = seriesEndpoint.seriesEpisodesPost(g10, string2, this);
                    if (obj == d10) {
                        return d10;
                    }
                    kVar = this.f7333j;
                    n4.d dVar = (n4.d) ((n4.c) obj).a();
                    if (dVar != null) {
                    }
                    this.f7330g = 3;
                    if (kVar.publishResult(list, this) == d10) {
                    }
                }
                return vb.p.f15031a;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
                kVar = this.f7333j;
                n4.d dVar2 = (n4.d) ((n4.c) obj).a();
                list = dVar2 != null ? (List) dVar2.b() : null;
                this.f7330g = 3;
                if (kVar.publishResult(list, this) == d10) {
                    return d10;
                }
                return vb.p.f15031a;
            }
            seriesEndpoint = (SeriesEndpoint) this.f7329f;
            vb.k.b(obj);
            String str = (String) obj;
            if (str != null) {
                b.a aVar2 = i7.b.f7890a;
                aVar2.j(0);
                aVar2.i(str);
            }
            string = this.f7332i.getString("arg_request_type");
            if (string != null) {
                g10 = i7.b.f7890a.g();
                if (g10 == null) {
                }
                String string22 = this.f7332i.getString("arg_json");
                this.f7329f = null;
                this.f7330g = 2;
                obj = seriesEndpoint.seriesEpisodesPost(g10, string22, this);
                if (obj == d10) {
                }
                kVar = this.f7333j;
                n4.d dVar22 = (n4.d) ((n4.c) obj).a();
                if (dVar22 != null) {
                }
                this.f7330g = 3;
                if (kVar.publishResult(list, this) == d10) {
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: EpisodeRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeRepository$requestFromCache$1", f = "EpisodeRepository.kt", l = {62}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7334f;

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
            int i10 = this.f7334f;
            if (i10 == 0) {
                vb.k.b(obj);
                k kVar = k.this;
                this.f7334f = 1;
                if (kVar.publishResult(null, this) == d10) {
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

    /* compiled from: EpisodeRepository.kt */
    @cc.f(c = "com.anslayer.ui.anime.episodes.EpisodeRepository$requestFromNetwork$1", f = "EpisodeRepository.kt", l = {70, 71, 80}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7336f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f7337g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ k f7338h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Bundle f7339i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context, k kVar, Bundle bundle, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7337g = context;
            this.f7338h = kVar;
            this.f7339i = bundle;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7337g, this.f7338h, this.f7339i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x005b -> B:14:0x007d). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x007a -> B:14:0x007d). Please report as a decompilation issue!!! */
        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7336f;
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
                if (e10 instanceof HttpException) {
                    if (((HttpException) e10).a() == 404) {
                        b.a aVar = i7.b.f7890a;
                        aVar.j(aVar.h() + 1);
                    }
                    k kVar = this.f7338h;
                    this.f7336f = 3;
                    if (kVar.publishResult(null, this) == d10) {
                        return d10;
                    }
                }
            }
            if (i10 == 0) {
                vb.k.b(obj);
                boolean isConnectedToNetwork = SupportExtentionKt.isConnectedToNetwork(this.f7337g);
                if (isConnectedToNetwork) {
                    y0<vb.p> createNetworkClientRequest = this.f7338h.createNetworkClientRequest(this.f7339i, this.f7337g);
                    this.f7336f = 1;
                    if (createNetworkClientRequest.k0(this) == d10) {
                        return d10;
                    }
                } else if (!isConnectedToNetwork) {
                    y0<vb.p> requestFromCache = this.f7338h.requestFromCache(this.f7339i, this.f7337g);
                    this.f7336f = 2;
                    if (requestFromCache.k0(this) == d10) {
                        return d10;
                    }
                }
            } else {
                if (i10 != 1 && i10 != 2) {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public k() {
        this.f7327a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ k(jc.g gVar) {
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
        return this.f7327a;
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

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void requestFromNetwork(Bundle bundle, Context context) {
        y0 b10;
        jc.l.f(bundle, "bundle");
        if (context == null) {
            return;
        }
        b10 = rc.k.b(v1.f13343f, g1.b(), null, new d(context, this, bundle, null), 2, null);
        setRepositoryJob(b10);
    }
}

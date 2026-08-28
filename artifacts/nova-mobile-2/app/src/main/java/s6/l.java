package s6;

import android.content.Context;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.api.endpoint.RecommendationEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http2.Http2;
import rc.q0;
import rc.v1;
import rc.y0;
import wb.t;
import z3.a;

/* compiled from: RecommendationRepository.kt */
/* loaded from: classes.dex */
public final class l extends SupportRepository<Bundle, List<? extends u4.a>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f13769b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f13770a;

    /* compiled from: RecommendationRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<l> {

        /* compiled from: RecommendationRepository.kt */
        /* renamed from: s6.l$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0340a extends jc.m implements ic.a<l> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0340a f13771f = new C0340a();

            public C0340a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final l invoke() {
                return new l(null);
            }
        }

        public a() {
            super(C0340a.f13771f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: RecommendationRepository.kt */
    @cc.f(c = "com.anslayer.ui.recommend.RecommendationRepository$createNetworkClientRequest$1", f = "RecommendationRepository.kt", l = {43, 64, 67}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f13772f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f13773g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f13774h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l f13775i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, l lVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f13773g = context;
            this.f13774h = bundle;
            this.f13775i = lVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f13773g, this.f13774h, this.f13775i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0143 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object k02;
            ModelWrapper modelWrapper;
            String string;
            List list;
            l lVar;
            n4.c cVar;
            n4.d dVar;
            n4.d dVar2;
            List<u4.a> list2;
            u4.a a10;
            Object d10 = bc.c.d();
            int i10 = this.f13772f;
            if (i10 == 0) {
                vb.k.b(obj);
                RecommendationEndpoint recommendationEndpoint = (RecommendationEndpoint) z3.b.f17284d.getInstance(this.f13773g).b(RecommendationEndpoint.class);
                String string2 = this.f13774h.getString("arg_request_type");
                if (string2 != null && string2.hashCode() == 140546225 && string2.equals("GET_RECOMMENDATIONS")) {
                    y0 executeUsing = this.f13775i.getNetworkClient().executeUsing(recommendationEndpoint.getRecommendations(this.f13774h.getString("arg_json")));
                    this.f13772f = 1;
                    k02 = executeUsing.k0(this);
                    if (k02 == d10) {
                        return d10;
                    }
                    modelWrapper = (ModelWrapper) k02;
                    string = this.f13774h.getString("list_type");
                    boolean z10 = this.f13774h.getBoolean("from_anime_details");
                    list = null;
                    r9 = null;
                    r9 = null;
                    ArrayList arrayList = null;
                    list = null;
                    if (!jc.l.a(string, "anime_recommendations")) {
                    }
                    lVar = this.f13775i;
                    cVar = (n4.c) modelWrapper.getModel();
                    if (cVar != null) {
                        list = (List) dVar.b();
                    }
                    this.f13772f = 3;
                    if (lVar.publishResult(list, this) == d10) {
                    }
                }
            } else if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            } else {
                vb.k.b(obj);
                k02 = obj;
                modelWrapper = (ModelWrapper) k02;
                string = this.f13774h.getString("list_type");
                boolean z102 = this.f13774h.getBoolean("from_anime_details");
                list = null;
                arrayList = null;
                arrayList = null;
                ArrayList arrayList2 = null;
                list = null;
                if ((!jc.l.a(string, "anime_recommendations") && !z102) || jc.l.a(string, "recommendation_details")) {
                    n4.c cVar2 = (n4.c) modelWrapper.getModel();
                    if (cVar2 != null && (dVar2 = (n4.d) cVar2.a()) != null && (list2 = (List) dVar2.b()) != null) {
                        arrayList2 = new ArrayList(list2.size() + 1);
                        for (u4.a aVar : list2) {
                            aVar.E(2);
                            arrayList2.add(aVar);
                        }
                        a10 = r10.a((r40 & 1) != 0 ? r10.anime_id : 0L, (r40 & 2) != 0 ? r10.anime_name : null, (r40 & 4) != 0 ? r10.anime_cover_image_url : null, (r40 & 8) != 0 ? r10.anime_status : null, (r40 & 16) != 0 ? r10.recommended_anime_id : 0L, (r40 & 32) != 0 ? r10.recommended_anime_name : null, (r40 & 64) != 0 ? r10.recommended_anime_cover_image_url : null, (r40 & 128) != 0 ? r10.recommended_anime_status : null, (r40 & 256) != 0 ? r10.user_id : 0L, (r40 & 512) != 0 ? r10.user_full_name : null, (r40 & RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE) != 0 ? r10.user_image_url : null, (r40 & RecyclerView.e0.FLAG_MOVED) != 0 ? r10.likes_count : 0, (r40 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? r10.user_has_liked : null, (r40 & RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? r10.anime_recommendation_id : 0L, (r40 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? r10.recommendation_comments : null, (32768 & r40) != 0 ? r10.recommendation_created_at : null, (r40 & 65536) != 0 ? r10.recommendation_status : null, (r40 & 131072) != 0 ? ((u4.a) t.A(list2)).just_info : null);
                        a10.E(1);
                        vb.p pVar = vb.p.f15031a;
                        arrayList2.add(0, a10);
                    }
                    l lVar2 = this.f13775i;
                    this.f13772f = 2;
                    if (lVar2.publishResult(arrayList2, this) == d10) {
                        return d10;
                    }
                } else {
                    lVar = this.f13775i;
                    cVar = (n4.c) modelWrapper.getModel();
                    if (cVar != null && (dVar = (n4.d) cVar.a()) != null) {
                        list = (List) dVar.b();
                    }
                    this.f13772f = 3;
                    if (lVar.publishResult(list, this) == d10) {
                        return d10;
                    }
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: RecommendationRepository.kt */
    @cc.f(c = "com.anslayer.ui.recommend.RecommendationRepository$requestFromCache$1", f = "RecommendationRepository.kt", l = {80}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f13776f;

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
            int i10 = this.f13776f;
            if (i10 == 0) {
                vb.k.b(obj);
                l lVar = l.this;
                this.f13776f = 1;
                if (lVar.publishResult(null, this) == d10) {
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

    public l() {
        this.f13770a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ l(jc.g gVar) {
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
        return this.f13770a;
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

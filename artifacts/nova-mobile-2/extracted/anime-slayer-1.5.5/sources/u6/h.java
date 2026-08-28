package u6;

import com.anslayer.api.endpoint.RecommendationEndpoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ja.n;
import java.util.List;
import jc.l;
import k1.t0;
import k1.v0;
import vb.k;

/* compiled from: RecommendationPagingSource.kt */
/* loaded from: classes.dex */
public final class h extends t0<Integer, u4.a> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f14460e = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final RecommendationEndpoint f14461c;

    /* renamed from: d, reason: collision with root package name */
    public final n f14462d;

    /* compiled from: RecommendationPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: RecommendationPagingSource.kt */
    @cc.f(c = "com.anslayer.ui.recommend.user.RecommendationPagingSource", f = "RecommendationPagingSource.kt", l = {33}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f14463f;

        /* renamed from: g, reason: collision with root package name */
        public int f14464g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f14465h;

        /* renamed from: j, reason: collision with root package name */
        public int f14467j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f14465h = obj;
            this.f14467j |= Integer.MIN_VALUE;
            return h.this.f(null, this);
        }
    }

    public h(RecommendationEndpoint recommendationEndpoint, n nVar) {
        l.f(nVar, "requestParam");
        this.f14461c = recommendationEndpoint;
        this.f14462d = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00dc A[Catch: Exception -> 0x0102, TryCatch #0 {Exception -> 0x0102, blocks: (B:11:0x002f, B:12:0x00c7, B:16:0x00dc, B:17:0x00e0, B:20:0x00ec, B:22:0x00f2, B:25:0x00f9, B:26:0x00fe, B:30:0x00e6, B:31:0x00d4, B:35:0x003f, B:38:0x004e, B:40:0x008c, B:41:0x0097, B:43:0x00a1, B:44:0x00ac, B:48:0x004a), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6 A[Catch: Exception -> 0x0102, TryCatch #0 {Exception -> 0x0102, blocks: (B:11:0x002f, B:12:0x00c7, B:16:0x00dc, B:17:0x00e0, B:20:0x00ec, B:22:0x00f2, B:25:0x00f9, B:26:0x00fe, B:30:0x00e6, B:31:0x00d4, B:35:0x003f, B:38:0x004e, B:40:0x008c, B:41:0x0097, B:43:0x00a1, B:44:0x00ac, B:48:0x004a), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d4 A[Catch: Exception -> 0x0102, TryCatch #0 {Exception -> 0x0102, blocks: (B:11:0x002f, B:12:0x00c7, B:16:0x00dc, B:17:0x00e0, B:20:0x00ec, B:22:0x00f2, B:25:0x00f9, B:26:0x00fe, B:30:0x00e6, B:31:0x00d4, B:35:0x003f, B:38:0x004e, B:40:0x008c, B:41:0x0097, B:43:0x00a1, B:44:0x00ac, B:48:0x004a), top: B:7:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0029  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, u4.a>> dVar) {
        b bVar;
        int i10;
        int b10;
        int i11;
        Integer num;
        List list;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i12 = bVar.f14467j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    bVar.f14467j = i12 - Integer.MIN_VALUE;
                    Object obj = bVar.f14465h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f14467j;
                    if (i10 != 0) {
                        k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        b10 = aVar.b();
                        n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("list_type", j().l("list_type")));
                        if (com.github.salomonbrys.kotson.b.a(j(), AuthHandler.EXTRA_USER_ID)) {
                            com.github.salomonbrys.kotson.d.a(b11, AuthHandler.EXTRA_USER_ID, j().l(AuthHandler.EXTRA_USER_ID));
                        }
                        if (com.github.salomonbrys.kotson.b.a(j(), "All")) {
                            com.github.salomonbrys.kotson.d.a(b11, "All", j().l("All"));
                        }
                        RecommendationEndpoint k10 = k();
                        l.c(k10);
                        String lVar = b11.toString();
                        bVar.f14463f = intValue;
                        bVar.f14464g = b10;
                        bVar.f14467j = 1;
                        Object recommendationsV2 = k10.getRecommendationsV2(lVar, bVar);
                        if (recommendationsV2 == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = recommendationsV2;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = bVar.f14464g;
                        i11 = bVar.f14463f;
                        k.b(obj);
                    }
                    n4.d dVar2 = (n4.d) ((n4.c) obj).a();
                    num = null;
                    list = dVar2 != null ? null : (List) dVar2.b();
                    if (list == null) {
                        list = wb.l.i();
                    }
                    Integer b12 = i11 != 0 ? null : cc.b.b(i11 - 1);
                    if (!list.isEmpty() && list.size() >= b10) {
                        num = cc.b.b(i11 + 1);
                    }
                    return new t0.b.C0202b(list, b12, num);
                }
            }
            if (i10 != 0) {
            }
            n4.d dVar22 = (n4.d) ((n4.c) obj).a();
            num = null;
            if (dVar22 != null) {
            }
            if (list == null) {
            }
            if (i11 != 0) {
            }
            if (!list.isEmpty()) {
                num = cc.b.b(i11 + 1);
            }
            return new t0.b.C0202b(list, b12, num);
        } catch (Exception e10) {
            return new t0.b.a(e10);
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f14465h;
        Object d102 = bc.c.d();
        i10 = bVar.f14467j;
    }

    @Override // k1.t0
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, u4.a> v0Var) {
        l.f(v0Var, "state");
        return null;
    }

    public final n j() {
        return this.f14462d;
    }

    public final RecommendationEndpoint k() {
        return this.f14461c;
    }
}

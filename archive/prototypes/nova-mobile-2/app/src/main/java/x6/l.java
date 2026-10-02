package x6;

import com.anslayer.api.endpoint.SeriesEndpoint;
import java.util.List;
import k1.t0;
import k1.v0;
import p4.p;

/* compiled from: SeasonPagingSource.kt */
/* loaded from: classes.dex */
public final class l extends t0<Integer, p> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f16098e = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final SeriesEndpoint f16099c;

    /* renamed from: d, reason: collision with root package name */
    public final ja.n f16100d;

    /* compiled from: SeasonPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SeasonPagingSource.kt */
    @cc.f(c = "com.anslayer.ui.season.SeasonPagingSource", f = "SeasonPagingSource.kt", l = {31}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f16101f;

        /* renamed from: g, reason: collision with root package name */
        public int f16102g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f16103h;

        /* renamed from: j, reason: collision with root package name */
        public int f16105j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f16103h = obj;
            this.f16105j |= Integer.MIN_VALUE;
            return l.this.f(null, this);
        }
    }

    public l(SeriesEndpoint seriesEndpoint, ja.n nVar) {
        jc.l.f(nVar, "requestParam");
        this.f16099c = seriesEndpoint;
        this.f16100d = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00e0 A[Catch: Exception -> 0x0106, TryCatch #0 {Exception -> 0x0106, blocks: (B:11:0x002d, B:12:0x00cb, B:16:0x00e0, B:17:0x00e4, B:20:0x00f0, B:22:0x00f6, B:25:0x00fd, B:26:0x0102, B:30:0x00ea, B:31:0x00d8, B:35:0x003d, B:38:0x004c, B:42:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ea A[Catch: Exception -> 0x0106, TryCatch #0 {Exception -> 0x0106, blocks: (B:11:0x002d, B:12:0x00cb, B:16:0x00e0, B:17:0x00e4, B:20:0x00f0, B:22:0x00f6, B:25:0x00fd, B:26:0x0102, B:30:0x00ea, B:31:0x00d8, B:35:0x003d, B:38:0x004c, B:42:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d8 A[Catch: Exception -> 0x0106, TryCatch #0 {Exception -> 0x0106, blocks: (B:11:0x002d, B:12:0x00cb, B:16:0x00e0, B:17:0x00e4, B:20:0x00f0, B:22:0x00f6, B:25:0x00fd, B:26:0x0102, B:30:0x00ea, B:31:0x00d8, B:35:0x003d, B:38:0x004c, B:42:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, p>> dVar) {
        b bVar;
        int i10;
        int b10;
        int i11;
        Integer num;
        List list;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i12 = bVar.f16105j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    bVar.f16105j = i12 - Integer.MIN_VALUE;
                    Object obj = bVar.f16103h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f16105j;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        b10 = aVar.b();
                        ja.n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", "anime_rating_desc"), vb.n.a("list_type", "filter"), vb.n.a("anime_release_years", k().l("anime_release_years")), vb.n.a("anime_season", k().l("anime_season")), vb.n.a("just_info", "Yes"));
                        SeriesEndpoint i13 = i();
                        jc.l.c(i13);
                        String lVar = b11.toString();
                        bVar.f16101f = intValue;
                        bVar.f16102g = b10;
                        bVar.f16105j = 1;
                        Object seriesPublishedV2 = i13.seriesPublishedV2(lVar, bVar);
                        if (seriesPublishedV2 == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = seriesPublishedV2;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = bVar.f16102g;
                        i11 = bVar.f16101f;
                        vb.k.b(obj);
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
        Object obj2 = bVar.f16103h;
        Object d102 = bc.c.d();
        i10 = bVar.f16105j;
    }

    public final SeriesEndpoint i() {
        return this.f16099c;
    }

    @Override // k1.t0
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p> v0Var) {
        jc.l.f(v0Var, "state");
        return null;
    }

    public final ja.n k() {
        return this.f16100d;
    }
}

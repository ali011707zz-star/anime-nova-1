package g6;

import com.anslayer.api.endpoint.SeriesEndpoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import k1.t0;
import k1.v0;

/* compiled from: BrowsePagingSource.kt */
/* loaded from: classes.dex */
public final class p extends t0<Integer, p4.p> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f6991f = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final SeriesEndpoint f6992c;

    /* renamed from: d, reason: collision with root package name */
    public final ja.n f6993d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.e f6994e;

    /* compiled from: BrowsePagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: BrowsePagingSource.kt */
    @cc.f(c = "com.anslayer.ui.paging.BrowsePagingSource", f = "BrowsePagingSource.kt", l = {61}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f6995f;

        /* renamed from: g, reason: collision with root package name */
        public int f6996g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f6997h;

        /* renamed from: j, reason: collision with root package name */
        public int f6999j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f6997h = obj;
            this.f6999j |= Integer.MIN_VALUE;
            return p.this.f(null, this);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f7000f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    public p(SeriesEndpoint seriesEndpoint, ja.n nVar) {
        jc.l.f(nVar, "requestParam");
        this.f6992c = seriesEndpoint;
        this.f6993d = nVar;
        this.f6994e = vb.f.a(c.f7000f);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x018b A[Catch: Exception -> 0x01b1, TryCatch #0 {Exception -> 0x01b1, blocks: (B:11:0x0039, B:12:0x0176, B:16:0x018b, B:17:0x018f, B:20:0x019b, B:22:0x01a1, B:25:0x01a8, B:26:0x01ad, B:30:0x0195, B:31:0x0183, B:35:0x0049, B:38:0x0058, B:40:0x00b1, B:41:0x00bc, B:44:0x00c8, B:46:0x00da, B:47:0x00dd, B:49:0x00e7, B:51:0x00f9, B:52:0x00fc, B:55:0x010c, B:57:0x0130, B:61:0x0150, B:62:0x015b, B:66:0x0137, B:67:0x013b, B:69:0x0141, B:75:0x0054), top: B:7:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0195 A[Catch: Exception -> 0x01b1, TryCatch #0 {Exception -> 0x01b1, blocks: (B:11:0x0039, B:12:0x0176, B:16:0x018b, B:17:0x018f, B:20:0x019b, B:22:0x01a1, B:25:0x01a8, B:26:0x01ad, B:30:0x0195, B:31:0x0183, B:35:0x0049, B:38:0x0058, B:40:0x00b1, B:41:0x00bc, B:44:0x00c8, B:46:0x00da, B:47:0x00dd, B:49:0x00e7, B:51:0x00f9, B:52:0x00fc, B:55:0x010c, B:57:0x0130, B:61:0x0150, B:62:0x015b, B:66:0x0137, B:67:0x013b, B:69:0x0141, B:75:0x0054), top: B:7:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0183 A[Catch: Exception -> 0x01b1, TryCatch #0 {Exception -> 0x01b1, blocks: (B:11:0x0039, B:12:0x0176, B:16:0x018b, B:17:0x018f, B:20:0x019b, B:22:0x01a1, B:25:0x01a8, B:26:0x01ad, B:30:0x0195, B:31:0x0183, B:35:0x0049, B:38:0x0058, B:40:0x00b1, B:41:0x00bc, B:44:0x00c8, B:46:0x00da, B:47:0x00dd, B:49:0x00e7, B:51:0x00f9, B:52:0x00fc, B:55:0x010c, B:57:0x0130, B:61:0x0150, B:62:0x015b, B:66:0x0137, B:67:0x013b, B:69:0x0141, B:75:0x0054), top: B:7:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, p4.p>> dVar) {
        b bVar;
        int i10;
        int i11;
        int i12;
        Integer num;
        List list;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i13 = bVar.f6999j;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    bVar.f6999j = i13 - Integer.MIN_VALUE;
                    Object obj = bVar.f6997h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f6999j;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Integer a10 = aVar.a();
                        boolean z10 = false;
                        int intValue = a10 == null ? 0 : a10.intValue();
                        int b10 = aVar.b();
                        ja.n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", l().l("_order_by")), vb.n.a("list_type", l().l("list_type")), vb.n.a("just_info", "Yes"));
                        if (com.github.salomonbrys.kotson.b.a(l(), AuthHandler.EXTRA_USER_ID)) {
                            com.github.salomonbrys.kotson.d.a(b11, AuthHandler.EXTRA_USER_ID, l().l(AuthHandler.EXTRA_USER_ID));
                        }
                        if (com.github.salomonbrys.kotson.b.a(l(), "anime_type")) {
                            String d11 = l().l("anime_type").d();
                            if (!jc.l.a(d11, "all")) {
                                com.github.salomonbrys.kotson.d.a(b11, "anime_type", d11);
                            }
                        }
                        if (com.github.salomonbrys.kotson.b.a(l(), "anime_status")) {
                            String d12 = l().l("anime_status").d();
                            if (!jc.l.a(d12, "all")) {
                                com.github.salomonbrys.kotson.d.a(b11, "anime_status", d12);
                            }
                        }
                        String d13 = l().l("list_type").d();
                        if (d13 == null) {
                            d13 = "";
                        }
                        List l10 = wb.l.l("watching", "plan_to_watch", "watched", "dropped", "on_hold", "favorites");
                        if (!(l10 instanceof Collection) || !l10.isEmpty()) {
                            Iterator it2 = l10.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                if (jc.l.a((String) it2.next(), d13)) {
                                    z10 = true;
                                    break;
                                }
                            }
                        }
                        if (z10) {
                            com.github.salomonbrys.kotson.d.a(b11, "_order_by", j().D());
                        }
                        SeriesEndpoint i14 = i();
                        jc.l.c(i14);
                        String lVar = b11.toString();
                        bVar.f6995f = intValue;
                        bVar.f6996g = b10;
                        bVar.f6999j = 1;
                        Object seriesPublishedV2 = i14.seriesPublishedV2(lVar, bVar);
                        if (seriesPublishedV2 == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = seriesPublishedV2;
                        i12 = b10;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i12 = bVar.f6996g;
                        i11 = bVar.f6995f;
                        vb.k.b(obj);
                    }
                    n4.d dVar2 = (n4.d) ((n4.c) obj).a();
                    num = null;
                    list = dVar2 != null ? null : (List) dVar2.b();
                    if (list == null) {
                        list = wb.l.i();
                    }
                    Integer b12 = i11 != 0 ? null : cc.b.b(i11 - 1);
                    if (!list.isEmpty() && list.size() >= i12) {
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
        Object obj2 = bVar.f6997h;
        Object d102 = bc.c.d();
        i10 = bVar.f6999j;
    }

    public final SeriesEndpoint i() {
        return this.f6992c;
    }

    public final f4.d j() {
        return (f4.d) this.f6994e.getValue();
    }

    @Override // k1.t0
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p4.p> v0Var) {
        jc.l.f(v0Var, "state");
        return null;
    }

    public final ja.n l() {
        return this.f6993d;
    }
}

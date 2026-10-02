package a6;

import com.anslayer.api.endpoint.CustomListEndPoint;
import com.anslayer.api.endpoint.SeriesEndpoint;
import com.google.android.gms.actions.SearchIntents;
import ja.n;
import java.util.Iterator;
import java.util.List;
import jc.l;
import jc.m;
import k1.t0;
import k1.v0;
import p4.p;
import vb.k;

/* compiled from: AddAnimePagingSource.kt */
/* loaded from: classes.dex */
public final class g extends t0<Integer, p> {

    /* renamed from: h, reason: collision with root package name */
    public static final a f444h = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final SeriesEndpoint f445c;

    /* renamed from: d, reason: collision with root package name */
    public final CustomListEndPoint f446d;

    /* renamed from: e, reason: collision with root package name */
    public final String f447e;

    /* renamed from: f, reason: collision with root package name */
    public final long f448f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f449g;

    /* compiled from: AddAnimePagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: AddAnimePagingSource.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.add.AddAnimePagingSource", f = "AddAnimePagingSource.kt", l = {45, 49}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f450f;

        /* renamed from: g, reason: collision with root package name */
        public int f451g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f452h;

        /* renamed from: j, reason: collision with root package name */
        public int f454j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f452h = obj;
            this.f454j |= Integer.MIN_VALUE;
            return g.this.f(null, this);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f455f = new c();

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

    public g(SeriesEndpoint seriesEndpoint, CustomListEndPoint customListEndPoint, String str, long j10) {
        l.f(seriesEndpoint, "animeService");
        l.f(customListEndPoint, "customListService");
        l.f(str, SearchIntents.EXTRA_QUERY);
        this.f445c = seriesEndpoint;
        this.f446d = customListEndPoint;
        this.f447e = str;
        this.f448f = j10;
        this.f449g = vb.f.a(c.f455f);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(7:5|6|7|(1:(1:(12:11|12|13|(10:36|(2:39|37)|40|(1:18)|19|(1:21)(1:32)|22|(1:27)|28|29)|16|(0)|19|(0)(0)|22|(2:24|27)|28|29)(2:41|42))(12:43|44|45|(8:47|(0)|19|(0)(0)|22|(0)|28|29)|16|(0)|19|(0)(0)|22|(0)|28|29))(7:48|49|(1:51)(1:65)|52|(1:54)|55|(2:57|(1:59)(11:60|45|(0)|16|(0)|19|(0)(0)|22|(0)|28|29))(2:61|(1:63)(11:64|13|(1:15)(11:33|36|(1:37)|40|(0)|19|(0)(0)|22|(0)|28|29)|16|(0)|19|(0)(0)|22|(0)|28|29)))|66|67|68))|69|6|7|(0)(0)|66|67|68|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0136 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:12:0x002d, B:13:0x010c, B:18:0x0136, B:19:0x013a, B:22:0x0146, B:24:0x014c, B:27:0x0153, B:28:0x0158, B:32:0x0140, B:33:0x0117, B:36:0x0120, B:37:0x0124, B:39:0x012a, B:44:0x003e, B:45:0x00ca, B:47:0x00d6, B:49:0x0046, B:52:0x0055, B:57:0x00a4, B:61:0x00dd, B:65:0x0051), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x014c A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:12:0x002d, B:13:0x010c, B:18:0x0136, B:19:0x013a, B:22:0x0146, B:24:0x014c, B:27:0x0153, B:28:0x0158, B:32:0x0140, B:33:0x0117, B:36:0x0120, B:37:0x0124, B:39:0x012a, B:44:0x003e, B:45:0x00ca, B:47:0x00d6, B:49:0x0046, B:52:0x0055, B:57:0x00a4, B:61:0x00dd, B:65:0x0051), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0140 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:12:0x002d, B:13:0x010c, B:18:0x0136, B:19:0x013a, B:22:0x0146, B:24:0x014c, B:27:0x0153, B:28:0x0158, B:32:0x0140, B:33:0x0117, B:36:0x0120, B:37:0x0124, B:39:0x012a, B:44:0x003e, B:45:0x00ca, B:47:0x00d6, B:49:0x0046, B:52:0x0055, B:57:0x00a4, B:61:0x00dd, B:65:0x0051), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012a A[Catch: Exception -> 0x015c, LOOP:0: B:37:0x0124->B:39:0x012a, LOOP_END, TryCatch #0 {Exception -> 0x015c, blocks: (B:12:0x002d, B:13:0x010c, B:18:0x0136, B:19:0x013a, B:22:0x0146, B:24:0x014c, B:27:0x0153, B:28:0x0158, B:32:0x0140, B:33:0x0117, B:36:0x0120, B:37:0x0124, B:39:0x012a, B:44:0x003e, B:45:0x00ca, B:47:0x00d6, B:49:0x0046, B:52:0x0055, B:57:0x00a4, B:61:0x00dd, B:65:0x0051), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d6 A[Catch: Exception -> 0x015c, TryCatch #0 {Exception -> 0x015c, blocks: (B:12:0x002d, B:13:0x010c, B:18:0x0136, B:19:0x013a, B:22:0x0146, B:24:0x014c, B:27:0x0153, B:28:0x0158, B:32:0x0140, B:33:0x0117, B:36:0x0120, B:37:0x0124, B:39:0x012a, B:44:0x003e, B:45:0x00ca, B:47:0x00d6, B:49:0x0046, B:52:0x0055, B:57:0x00a4, B:61:0x00dd, B:65:0x0051), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, p>> dVar) {
        b bVar;
        int i10;
        int b10;
        int i11;
        n4.d dVar2;
        List list;
        n4.d dVar3;
        Iterator it2;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i12 = bVar.f454j;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                bVar.f454j = i12 - Integer.MIN_VALUE;
                Object obj = bVar.f452h;
                Object d10 = bc.c.d();
                i10 = bVar.f454j;
                Integer num = null;
                if (i10 == 0) {
                    if (i10 == 1) {
                        b10 = bVar.f451g;
                        i11 = bVar.f450f;
                        k.b(obj);
                        dVar2 = (n4.d) ((n4.c) obj).a();
                        if (dVar2 != null) {
                            list = (List) dVar2.b();
                            if (list == null) {
                            }
                            if (i11 == 0) {
                            }
                            if (!list.isEmpty()) {
                            }
                            return new t0.b.C0202b(list, r2, num);
                        }
                        list = null;
                        if (list == null) {
                        }
                        if (i11 == 0) {
                        }
                        if (!list.isEmpty()) {
                        }
                        return new t0.b.C0202b(list, r2, num);
                    }
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    b10 = bVar.f451g;
                    i11 = bVar.f450f;
                    k.b(obj);
                    dVar3 = (n4.d) ((n4.c) obj).a();
                    if (dVar3 != null && (list = (List) dVar3.b()) != null) {
                        it2 = list.iterator();
                        while (it2.hasNext()) {
                            ((p) it2.next()).u0(true);
                        }
                        if (list == null) {
                            list = wb.l.i();
                        }
                        Integer b11 = i11 == 0 ? null : cc.b.b(i11 - 1);
                        if (!list.isEmpty() && list.size() >= b10) {
                            num = cc.b.b(i11 + 1);
                        }
                        return new t0.b.C0202b(list, b11, num);
                    }
                    list = null;
                    if (list == null) {
                    }
                    if (i11 == 0) {
                    }
                    if (!list.isEmpty()) {
                        num = cc.b.b(i11 + 1);
                    }
                    return new t0.b.C0202b(list, b11, num);
                }
                k.b(obj);
                Integer a10 = aVar.a();
                int intValue = a10 == null ? 0 : a10.intValue();
                b10 = aVar.b();
                n b12 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", l().D()), vb.n.a("just_info", "Yes"));
                if (m().length() > 0) {
                    com.github.salomonbrys.kotson.d.a(b12, "list_type", "filter");
                    com.github.salomonbrys.kotson.d.a(b12, "anime_name", m());
                    SeriesEndpoint i13 = i();
                    String lVar = b12.toString();
                    bVar.f450f = intValue;
                    bVar.f451g = b10;
                    bVar.f454j = 1;
                    Object seriesPublishedV2 = i13.seriesPublishedV2(lVar, bVar);
                    if (seriesPublishedV2 == d10) {
                        return d10;
                    }
                    i11 = intValue;
                    obj = seriesPublishedV2;
                    dVar2 = (n4.d) ((n4.c) obj).a();
                    if (dVar2 != null) {
                    }
                    list = null;
                    if (list == null) {
                    }
                    if (i11 == 0) {
                    }
                    if (!list.isEmpty()) {
                    }
                    return new t0.b.C0202b(list, b11, num);
                }
                com.github.salomonbrys.kotson.d.a(b12, "list_type", "custom_list");
                com.github.salomonbrys.kotson.d.a(b12, "custom_list_id", cc.b.c(j()));
                CustomListEndPoint k10 = k();
                String lVar2 = b12.toString();
                l.e(lVar2, "json.toString()");
                bVar.f450f = intValue;
                bVar.f451g = b10;
                bVar.f454j = 2;
                Object customListAnimes = k10.getCustomListAnimes(lVar2, bVar);
                if (customListAnimes == d10) {
                    return d10;
                }
                i11 = intValue;
                obj = customListAnimes;
                dVar3 = (n4.d) ((n4.c) obj).a();
                if (dVar3 != null) {
                    it2 = list.iterator();
                    while (it2.hasNext()) {
                    }
                    if (list == null) {
                    }
                    if (i11 == 0) {
                    }
                    if (!list.isEmpty()) {
                    }
                    return new t0.b.C0202b(list, b11, num);
                }
                list = null;
                if (list == null) {
                }
                if (i11 == 0) {
                }
                if (!list.isEmpty()) {
                }
                return new t0.b.C0202b(list, b11, num);
                return new t0.b.a(e);
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f452h;
        Object d102 = bc.c.d();
        i10 = bVar.f454j;
        Integer num2 = null;
        if (i10 == 0) {
        }
        return new t0.b.a(e);
    }

    public final SeriesEndpoint i() {
        return this.f445c;
    }

    public final long j() {
        return this.f448f;
    }

    public final CustomListEndPoint k() {
        return this.f446d;
    }

    public final f4.d l() {
        return (f4.d) this.f449g.getValue();
    }

    public final String m() {
        return this.f447e;
    }

    @Override // k1.t0
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p> v0Var) {
        l.f(v0Var, "state");
        return null;
    }
}

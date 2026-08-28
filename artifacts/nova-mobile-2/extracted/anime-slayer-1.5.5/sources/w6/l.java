package w6;

import com.anslayer.api.endpoint.SeriesEndpoint;
import com.google.android.gms.actions.SearchIntents;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k1.t0;
import k1.v0;

/* compiled from: SearchPagingSource.kt */
/* loaded from: classes.dex */
public final class l extends t0<Integer, p4.p> {

    /* renamed from: g, reason: collision with root package name */
    public static final a f15313g = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final SeriesEndpoint f15314c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15315d;

    /* renamed from: e, reason: collision with root package name */
    public final o4.b f15316e;

    /* renamed from: f, reason: collision with root package name */
    public final vb.e f15317f;

    /* compiled from: SearchPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SearchPagingSource.kt */
    @cc.f(c = "com.anslayer.ui.search.SearchPagingSource", f = "SearchPagingSource.kt", l = {83}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f15318f;

        /* renamed from: g, reason: collision with root package name */
        public int f15319g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f15320h;

        /* renamed from: j, reason: collision with root package name */
        public int f15322j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f15320h = obj;
            this.f15322j |= Integer.MIN_VALUE;
            return l.this.f(null, this);
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f15323f = new c();

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

    public l(SeriesEndpoint seriesEndpoint, String str, o4.b bVar) {
        jc.l.f(str, SearchIntents.EXTRA_QUERY);
        jc.l.f(bVar, "filters");
        this.f15314c = seriesEndpoint;
        this.f15315d = str;
        this.f15316e = bVar;
        this.f15317f = vb.f.a(c.f15323f);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0328 A[Catch: Exception -> 0x034e, TryCatch #0 {Exception -> 0x034e, blocks: (B:11:0x002d, B:12:0x0313, B:16:0x0328, B:17:0x032c, B:20:0x0338, B:22:0x033e, B:25:0x0345, B:26:0x034a, B:30:0x0332, B:31:0x0320, B:35:0x003d, B:38:0x004c, B:39:0x00ad, B:41:0x00b3, B:170:0x00be, B:173:0x00cd, B:44:0x00db, B:163:0x00df, B:166:0x00ee, B:47:0x00fc, B:156:0x0100, B:159:0x010f, B:50:0x011d, B:133:0x0123, B:134:0x0135, B:136:0x013b, B:139:0x014e, B:144:0x0152, B:147:0x0159, B:148:0x016a, B:150:0x0170, B:152:0x017e, B:53:0x0195, B:110:0x0199, B:111:0x01ab, B:113:0x01b1, B:116:0x01c4, B:121:0x01c8, B:124:0x01cf, B:125:0x01e0, B:127:0x01e6, B:129:0x01f4, B:56:0x020b, B:87:0x020f, B:88:0x0221, B:90:0x0227, B:93:0x023a, B:98:0x023e, B:101:0x0245, B:102:0x0256, B:104:0x025c, B:106:0x026a, B:59:0x0281, B:62:0x0285, B:63:0x0297, B:65:0x029d, B:68:0x02b0, B:73:0x02b4, B:76:0x02bb, B:77:0x02cc, B:79:0x02d2, B:81:0x02e0, B:177:0x02f7, B:181:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0332 A[Catch: Exception -> 0x034e, TryCatch #0 {Exception -> 0x034e, blocks: (B:11:0x002d, B:12:0x0313, B:16:0x0328, B:17:0x032c, B:20:0x0338, B:22:0x033e, B:25:0x0345, B:26:0x034a, B:30:0x0332, B:31:0x0320, B:35:0x003d, B:38:0x004c, B:39:0x00ad, B:41:0x00b3, B:170:0x00be, B:173:0x00cd, B:44:0x00db, B:163:0x00df, B:166:0x00ee, B:47:0x00fc, B:156:0x0100, B:159:0x010f, B:50:0x011d, B:133:0x0123, B:134:0x0135, B:136:0x013b, B:139:0x014e, B:144:0x0152, B:147:0x0159, B:148:0x016a, B:150:0x0170, B:152:0x017e, B:53:0x0195, B:110:0x0199, B:111:0x01ab, B:113:0x01b1, B:116:0x01c4, B:121:0x01c8, B:124:0x01cf, B:125:0x01e0, B:127:0x01e6, B:129:0x01f4, B:56:0x020b, B:87:0x020f, B:88:0x0221, B:90:0x0227, B:93:0x023a, B:98:0x023e, B:101:0x0245, B:102:0x0256, B:104:0x025c, B:106:0x026a, B:59:0x0281, B:62:0x0285, B:63:0x0297, B:65:0x029d, B:68:0x02b0, B:73:0x02b4, B:76:0x02bb, B:77:0x02cc, B:79:0x02d2, B:81:0x02e0, B:177:0x02f7, B:181:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0320 A[Catch: Exception -> 0x034e, TryCatch #0 {Exception -> 0x034e, blocks: (B:11:0x002d, B:12:0x0313, B:16:0x0328, B:17:0x032c, B:20:0x0338, B:22:0x033e, B:25:0x0345, B:26:0x034a, B:30:0x0332, B:31:0x0320, B:35:0x003d, B:38:0x004c, B:39:0x00ad, B:41:0x00b3, B:170:0x00be, B:173:0x00cd, B:44:0x00db, B:163:0x00df, B:166:0x00ee, B:47:0x00fc, B:156:0x0100, B:159:0x010f, B:50:0x011d, B:133:0x0123, B:134:0x0135, B:136:0x013b, B:139:0x014e, B:144:0x0152, B:147:0x0159, B:148:0x016a, B:150:0x0170, B:152:0x017e, B:53:0x0195, B:110:0x0199, B:111:0x01ab, B:113:0x01b1, B:116:0x01c4, B:121:0x01c8, B:124:0x01cf, B:125:0x01e0, B:127:0x01e6, B:129:0x01f4, B:56:0x020b, B:87:0x020f, B:88:0x0221, B:90:0x0227, B:93:0x023a, B:98:0x023e, B:101:0x0245, B:102:0x0256, B:104:0x025c, B:106:0x026a, B:59:0x0281, B:62:0x0285, B:63:0x0297, B:65:0x029d, B:68:0x02b0, B:73:0x02b4, B:76:0x02bb, B:77:0x02cc, B:79:0x02d2, B:81:0x02e0, B:177:0x02f7, B:181:0x0048), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
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
                int i13 = bVar.f15322j;
                if ((i13 & Integer.MIN_VALUE) != 0) {
                    bVar.f15322j = i13 - Integer.MIN_VALUE;
                    Object obj = bVar.f15320h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f15322j;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        int b10 = aVar.b();
                        ja.n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", j().C()), vb.n.a("list_type", "filter"), vb.n.a("anime_name", k()), vb.n.a("just_info", "Yes"));
                        for (o4.a<?> aVar2 : i()) {
                            if (aVar2 instanceof o) {
                                if (((o) aVar2).b().intValue() != -1) {
                                    com.github.salomonbrys.kotson.d.a(b11, aVar2.a(), ((o) aVar2).e());
                                }
                            } else if (aVar2 instanceof r) {
                                if (((r) aVar2).b().intValue() != -1) {
                                    com.github.salomonbrys.kotson.d.a(b11, aVar2.a(), ((r) aVar2).e());
                                }
                            } else if (aVar2 instanceof n) {
                                if (((n) aVar2).b().intValue() != -1) {
                                    com.github.salomonbrys.kotson.d.a(b11, aVar2.a(), ((n) aVar2).e());
                                }
                            } else if (aVar2 instanceof w6.a) {
                                Iterable b12 = ((w6.a) aVar2).b();
                                ArrayList arrayList = new ArrayList();
                                for (Object obj2 : b12) {
                                    if (((q) obj2).b().booleanValue()) {
                                        arrayList.add(obj2);
                                    }
                                }
                                if (!arrayList.isEmpty()) {
                                    String a11 = aVar2.a();
                                    ArrayList arrayList2 = new ArrayList(wb.m.q(arrayList, 10));
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        arrayList2.add(((q) it2.next()).d());
                                    }
                                    com.github.salomonbrys.kotson.d.a(b11, a11, wb.t.G(arrayList2, ",", null, null, 0, null, null, 62, null));
                                }
                            } else if (aVar2 instanceof t) {
                                Iterable b13 = ((t) aVar2).b();
                                ArrayList arrayList3 = new ArrayList();
                                for (Object obj3 : b13) {
                                    if (((q) obj3).b().booleanValue()) {
                                        arrayList3.add(obj3);
                                    }
                                }
                                if (!arrayList3.isEmpty()) {
                                    String a12 = aVar2.a();
                                    ArrayList arrayList4 = new ArrayList(wb.m.q(arrayList3, 10));
                                    Iterator it3 = arrayList3.iterator();
                                    while (it3.hasNext()) {
                                        arrayList4.add(((q) it3.next()).d());
                                    }
                                    com.github.salomonbrys.kotson.d.a(b11, a12, wb.t.G(arrayList4, ",", null, null, 0, null, null, 62, null));
                                }
                            } else if (aVar2 instanceof p) {
                                Iterable b14 = ((p) aVar2).b();
                                ArrayList arrayList5 = new ArrayList();
                                for (Object obj4 : b14) {
                                    if (((q) obj4).b().booleanValue()) {
                                        arrayList5.add(obj4);
                                    }
                                }
                                if (!arrayList5.isEmpty()) {
                                    String a13 = aVar2.a();
                                    ArrayList arrayList6 = new ArrayList(wb.m.q(arrayList5, 10));
                                    Iterator it4 = arrayList5.iterator();
                                    while (it4.hasNext()) {
                                        arrayList6.add(((q) it4.next()).d());
                                    }
                                    com.github.salomonbrys.kotson.d.a(b11, a13, wb.t.G(arrayList6, ",", null, null, 0, null, null, 62, null));
                                }
                            } else if (aVar2 instanceof w6.b) {
                                Iterable b15 = ((w6.b) aVar2).b();
                                ArrayList arrayList7 = new ArrayList();
                                for (Object obj5 : b15) {
                                    if (((q) obj5).b().booleanValue()) {
                                        arrayList7.add(obj5);
                                    }
                                }
                                if (!arrayList7.isEmpty()) {
                                    String a14 = aVar2.a();
                                    ArrayList arrayList8 = new ArrayList(wb.m.q(arrayList7, 10));
                                    Iterator it5 = arrayList7.iterator();
                                    while (it5.hasNext()) {
                                        arrayList8.add(((q) it5.next()).d());
                                    }
                                    com.github.salomonbrys.kotson.d.a(b11, a14, wb.t.G(arrayList8, ",", null, null, 0, null, null, 62, null));
                                }
                            }
                        }
                        SeriesEndpoint seriesEndpoint = this.f15314c;
                        jc.l.c(seriesEndpoint);
                        String lVar = b11.toString();
                        bVar.f15318f = intValue;
                        bVar.f15319g = b10;
                        bVar.f15322j = 1;
                        Object seriesPublishedV2 = seriesEndpoint.seriesPublishedV2(lVar, bVar);
                        if (seriesPublishedV2 == d10) {
                            return d10;
                        }
                        i11 = b10;
                        i12 = intValue;
                        obj = seriesPublishedV2;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        i11 = bVar.f15319g;
                        i12 = bVar.f15318f;
                        vb.k.b(obj);
                    }
                    n4.d dVar2 = (n4.d) ((n4.c) obj).a();
                    num = null;
                    list = dVar2 != null ? null : (List) dVar2.b();
                    if (list == null) {
                        list = wb.l.i();
                    }
                    Integer b16 = i12 != 0 ? null : cc.b.b(i12 - 1);
                    if (!list.isEmpty() && list.size() >= i11) {
                        num = cc.b.b(i12 + 1);
                    }
                    return new t0.b.C0202b(list, b16, num);
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
            if (i12 != 0) {
            }
            if (!list.isEmpty()) {
                num = cc.b.b(i12 + 1);
            }
            return new t0.b.C0202b(list, b16, num);
        } catch (Exception e10) {
            return new t0.b.a(e10);
        }
        bVar = new b(dVar);
        Object obj6 = bVar.f15320h;
        Object d102 = bc.c.d();
        i10 = bVar.f15322j;
    }

    public final o4.b i() {
        return this.f15316e;
    }

    public final f4.d j() {
        return (f4.d) this.f15317f.getValue();
    }

    public final String k() {
        return this.f15315d;
    }

    @Override // k1.t0
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p4.p> v0Var) {
        jc.l.f(v0Var, "state");
        return null;
    }
}

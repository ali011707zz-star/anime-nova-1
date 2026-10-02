package z5;

import com.anslayer.api.endpoint.CustomListEndPoint;
import java.util.List;
import k1.t0;
import k1.v0;
import p4.p;

/* compiled from: CustomListDetailsPagingSource.kt */
/* loaded from: classes.dex */
public final class m extends t0<Integer, p> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f17385f = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final CustomListEndPoint f17386c;

    /* renamed from: d, reason: collision with root package name */
    public final long f17387d;

    /* renamed from: e, reason: collision with root package name */
    public final f4.d f17388e;

    /* compiled from: CustomListDetailsPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CustomListDetailsPagingSource.kt */
    @cc.f(c = "com.anslayer.ui.customlist.details.CustomListDetailsPagingSource", f = "CustomListDetailsPagingSource.kt", l = {28}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f17389f;

        /* renamed from: g, reason: collision with root package name */
        public int f17390g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f17391h;

        /* renamed from: j, reason: collision with root package name */
        public int f17393j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f17391h = obj;
            this.f17393j |= Integer.MIN_VALUE;
            return m.this.f(null, this);
        }
    }

    public m(CustomListEndPoint customListEndPoint, long j10, f4.d dVar) {
        jc.l.f(customListEndPoint, "service");
        jc.l.f(dVar, "pref");
        this.f17386c = customListEndPoint;
        this.f17387d = j10;
        this.f17388e = dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d7 A[Catch: Exception -> 0x00fd, TryCatch #0 {Exception -> 0x00fd, blocks: (B:11:0x0029, B:12:0x00c2, B:16:0x00d7, B:17:0x00db, B:20:0x00e7, B:22:0x00ed, B:25:0x00f4, B:26:0x00f9, B:30:0x00e1, B:31:0x00cf, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e1 A[Catch: Exception -> 0x00fd, TryCatch #0 {Exception -> 0x00fd, blocks: (B:11:0x0029, B:12:0x00c2, B:16:0x00d7, B:17:0x00db, B:20:0x00e7, B:22:0x00ed, B:25:0x00f4, B:26:0x00f9, B:30:0x00e1, B:31:0x00cf, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cf A[Catch: Exception -> 0x00fd, TryCatch #0 {Exception -> 0x00fd, blocks: (B:11:0x0029, B:12:0x00c2, B:16:0x00d7, B:17:0x00db, B:20:0x00e7, B:22:0x00ed, B:25:0x00f4, B:26:0x00f9, B:30:0x00e1, B:31:0x00cf, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
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
                int i12 = bVar.f17393j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    bVar.f17393j = i12 - Integer.MIN_VALUE;
                    Object obj = bVar.f17391h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f17393j;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        b10 = aVar.b();
                        ja.n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", j().D()), vb.n.a("list_type", "custom_list"), vb.n.a("custom_list_id", cc.b.c(i())), vb.n.a("just_info", "Yes"));
                        CustomListEndPoint l10 = l();
                        String lVar = b11.toString();
                        jc.l.e(lVar, "json.toString()");
                        bVar.f17389f = intValue;
                        bVar.f17390g = b10;
                        bVar.f17393j = 1;
                        Object customListAnimes = l10.getCustomListAnimes(lVar, bVar);
                        if (customListAnimes == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = customListAnimes;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = bVar.f17390g;
                        i11 = bVar.f17389f;
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
        Object obj2 = bVar.f17391h;
        Object d102 = bc.c.d();
        i10 = bVar.f17393j;
    }

    public final long i() {
        return this.f17387d;
    }

    public final f4.d j() {
        return this.f17388e;
    }

    @Override // k1.t0
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p> v0Var) {
        jc.l.f(v0Var, "state");
        return null;
    }

    public final CustomListEndPoint l() {
        return this.f17386c;
    }
}

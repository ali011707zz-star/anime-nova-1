package x5;

import com.anslayer.api.endpoint.CustomListEndPoint;
import ja.n;
import java.util.List;
import jc.l;
import k1.t0;
import k1.v0;

/* compiled from: CustomListPagingSource.kt */
/* loaded from: classes.dex */
public final class j extends t0<Integer, p4.j> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f16023e = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final CustomListEndPoint f16024c;

    /* renamed from: d, reason: collision with root package name */
    public final long f16025d;

    /* compiled from: CustomListPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: CustomListPagingSource.kt */
    @cc.f(c = "com.anslayer.ui.customlist.CustomListPagingSource", f = "CustomListPagingSource.kt", l = {31}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f16026f;

        /* renamed from: g, reason: collision with root package name */
        public int f16027g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f16028h;

        /* renamed from: j, reason: collision with root package name */
        public int f16030j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f16028h = obj;
            this.f16030j |= Integer.MIN_VALUE;
            return j.this.f(null, this);
        }
    }

    public j(CustomListEndPoint customListEndPoint, long j10) {
        l.f(customListEndPoint, "service");
        this.f16024c = customListEndPoint;
        this.f16025d = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c1 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:11:0x0029, B:12:0x00ac, B:16:0x00c1, B:17:0x00c5, B:20:0x00d1, B:22:0x00d7, B:25:0x00de, B:26:0x00e3, B:30:0x00cb, B:31:0x00b9, B:35:0x0039, B:38:0x0048, B:40:0x0082, B:41:0x008f, B:45:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00cb A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:11:0x0029, B:12:0x00ac, B:16:0x00c1, B:17:0x00c5, B:20:0x00d1, B:22:0x00d7, B:25:0x00de, B:26:0x00e3, B:30:0x00cb, B:31:0x00b9, B:35:0x0039, B:38:0x0048, B:40:0x0082, B:41:0x008f, B:45:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9 A[Catch: Exception -> 0x00e7, TryCatch #0 {Exception -> 0x00e7, blocks: (B:11:0x0029, B:12:0x00ac, B:16:0x00c1, B:17:0x00c5, B:20:0x00d1, B:22:0x00d7, B:25:0x00de, B:26:0x00e3, B:30:0x00cb, B:31:0x00b9, B:35:0x0039, B:38:0x0048, B:40:0x0082, B:41:0x008f, B:45:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, p4.j>> dVar) {
        b bVar;
        int i10;
        int b10;
        int i11;
        Integer num;
        List list;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i12 = bVar.f16030j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    bVar.f16030j = i12 - Integer.MIN_VALUE;
                    Object obj = bVar.f16028h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f16030j;
                    if (i10 != 0) {
                        vb.k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        b10 = aVar.b();
                        n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", "latest_first"));
                        if (i() != -1) {
                            com.github.salomonbrys.kotson.d.a(b11, "anime_id", cc.b.c(i()));
                        }
                        CustomListEndPoint k10 = k();
                        String lVar = b11.toString();
                        l.e(lVar, "json.toString()");
                        bVar.f16026f = intValue;
                        bVar.f16027g = b10;
                        bVar.f16030j = 1;
                        Object customList = k10.getCustomList(lVar, bVar);
                        if (customList == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = customList;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = bVar.f16027g;
                        i11 = bVar.f16026f;
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
        Object obj2 = bVar.f16028h;
        Object d102 = bc.c.d();
        i10 = bVar.f16030j;
    }

    public final long i() {
        return this.f16025d;
    }

    @Override // k1.t0
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p4.j> v0Var) {
        l.f(v0Var, "state");
        return null;
    }

    public final CustomListEndPoint k() {
        return this.f16024c;
    }
}

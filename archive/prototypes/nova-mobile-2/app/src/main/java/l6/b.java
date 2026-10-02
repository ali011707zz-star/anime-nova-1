package l6;

import cc.d;
import cc.f;
import com.anslayer.api.endpoint.CustomListEndPoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ja.n;
import java.util.List;
import jc.g;
import jc.l;
import k1.t0;
import k1.v0;
import p4.j;
import vb.k;

/* compiled from: UserCustomListPagingSource.kt */
/* loaded from: classes.dex */
public final class b extends t0<Integer, j> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f10472e = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final CustomListEndPoint f10473c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10474d;

    /* compiled from: UserCustomListPagingSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: UserCustomListPagingSource.kt */
    @f(c = "com.anslayer.ui.profile.people.customlist.UserCustomListPagingSource", f = "UserCustomListPagingSource.kt", l = {28}, m = "load")
    /* renamed from: l6.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0244b extends d {

        /* renamed from: f, reason: collision with root package name */
        public int f10475f;

        /* renamed from: g, reason: collision with root package name */
        public int f10476g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f10477h;

        /* renamed from: j, reason: collision with root package name */
        public int f10479j;

        public C0244b(ac.d<? super C0244b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f10477h = obj;
            this.f10479j |= Integer.MIN_VALUE;
            return b.this.f(null, this);
        }
    }

    public b(CustomListEndPoint customListEndPoint, long j10) {
        l.f(customListEndPoint, "service");
        this.f10473c = customListEndPoint;
        this.f10474d = j10;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bb A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:11:0x0029, B:12:0x00a6, B:16:0x00bb, B:17:0x00bf, B:20:0x00cb, B:22:0x00d1, B:25:0x00d8, B:26:0x00dd, B:30:0x00c5, B:31:0x00b3, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5 A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:11:0x0029, B:12:0x00a6, B:16:0x00bb, B:17:0x00bf, B:20:0x00cb, B:22:0x00d1, B:25:0x00d8, B:26:0x00dd, B:30:0x00c5, B:31:0x00b3, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b3 A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:11:0x0029, B:12:0x00a6, B:16:0x00bb, B:17:0x00bf, B:20:0x00cb, B:22:0x00d1, B:25:0x00d8, B:26:0x00dd, B:30:0x00c5, B:31:0x00b3, B:35:0x0039, B:38:0x0048, B:42:0x0044), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, j>> dVar) {
        C0244b c0244b;
        int i10;
        int b10;
        int i11;
        Integer num;
        List list;
        try {
            if (dVar instanceof C0244b) {
                c0244b = (C0244b) dVar;
                int i12 = c0244b.f10479j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    c0244b.f10479j = i12 - Integer.MIN_VALUE;
                    Object obj = c0244b.f10477h;
                    Object d10 = bc.c.d();
                    i10 = c0244b.f10479j;
                    if (i10 != 0) {
                        k.b(obj);
                        Integer a10 = aVar.a();
                        int intValue = a10 == null ? 0 : a10.intValue();
                        b10 = aVar.b();
                        n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", "latest_first"), vb.n.a(AuthHandler.EXTRA_USER_ID, cc.b.c(k())));
                        CustomListEndPoint j10 = j();
                        String lVar = b11.toString();
                        l.e(lVar, "json.toString()");
                        c0244b.f10475f = intValue;
                        c0244b.f10476g = b10;
                        c0244b.f10479j = 1;
                        Object customList = j10.getCustomList(lVar, c0244b);
                        if (customList == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = customList;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = c0244b.f10476g;
                        i11 = c0244b.f10475f;
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
        c0244b = new C0244b(dVar);
        Object obj2 = c0244b.f10477h;
        Object d102 = bc.c.d();
        i10 = c0244b.f10479j;
    }

    @Override // k1.t0
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, j> v0Var) {
        l.f(v0Var, "state");
        return null;
    }

    public final CustomListEndPoint j() {
        return this.f10473c;
    }

    public final long k() {
        return this.f10474d;
    }
}

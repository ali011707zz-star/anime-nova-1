package k6;

import com.anslayer.api.endpoint.SeriesEndpoint;
import com.twitter.sdk.android.core.identity.AuthHandler;
import ja.n;
import java.util.List;
import jc.g;
import jc.l;
import k1.t0;
import k1.v0;
import vb.k;

/* compiled from: BrowseCharacterPagerSource.kt */
/* loaded from: classes.dex */
public final class e extends t0<Integer, p4.e> {

    /* renamed from: e, reason: collision with root package name */
    public static final a f10038e = new a(null);

    /* renamed from: c, reason: collision with root package name */
    public final SeriesEndpoint f10039c;

    /* renamed from: d, reason: collision with root package name */
    public final n f10040d;

    /* compiled from: BrowseCharacterPagerSource.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: BrowseCharacterPagerSource.kt */
    @cc.f(c = "com.anslayer.ui.profile.people.character.BrowseCharacterPagerSource", f = "BrowseCharacterPagerSource.kt", l = {28}, m = "load")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public int f10041f;

        /* renamed from: g, reason: collision with root package name */
        public int f10042g;

        /* renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f10043h;

        /* renamed from: j, reason: collision with root package name */
        public int f10045j;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f10043h = obj;
            this.f10045j |= Integer.MIN_VALUE;
            return e.this.f(null, this);
        }
    }

    public e(SeriesEndpoint seriesEndpoint, n nVar) {
        l.f(nVar, "requestParam");
        this.f10039c = seriesEndpoint;
        this.f10040d = nVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae A[Catch: Exception -> 0x00ca, TryCatch #0 {Exception -> 0x00ca, blocks: (B:11:0x002b, B:12:0x00a1, B:15:0x00b4, B:17:0x00ba, B:20:0x00c1, B:21:0x00c6, B:25:0x00ae, B:29:0x003a, B:32:0x0049, B:36:0x0045), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // k1.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object f(t0.a<Integer> aVar, ac.d<? super t0.b<Integer, p4.e>> dVar) {
        b bVar;
        int i10;
        int b10;
        int i11;
        List<p4.e> a10;
        Integer num;
        try {
            if (dVar instanceof b) {
                bVar = (b) dVar;
                int i12 = bVar.f10045j;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    bVar.f10045j = i12 - Integer.MIN_VALUE;
                    Object obj = bVar.f10043h;
                    Object d10 = bc.c.d();
                    i10 = bVar.f10045j;
                    if (i10 != 0) {
                        k.b(obj);
                        Integer a11 = aVar.a();
                        int intValue = a11 == null ? 0 : a11.intValue();
                        b10 = aVar.b();
                        n b11 = com.github.salomonbrys.kotson.a.b(vb.n.a("_offset", cc.b.b(intValue * b10)), vb.n.a("_limit", cc.b.b(b10)), vb.n.a("_order_by", "latest_first"), vb.n.a(AuthHandler.EXTRA_USER_ID, j().l(AuthHandler.EXTRA_USER_ID)));
                        SeriesEndpoint seriesEndpoint = this.f10039c;
                        l.c(seriesEndpoint);
                        String lVar = b11.toString();
                        bVar.f10041f = intValue;
                        bVar.f10042g = b10;
                        bVar.f10045j = 1;
                        Object userCharactersFav = seriesEndpoint.userCharactersFav(lVar, bVar);
                        if (userCharactersFav == d10) {
                            return d10;
                        }
                        i11 = intValue;
                        obj = userCharactersFav;
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        b10 = bVar.f10042g;
                        i11 = bVar.f10041f;
                        k.b(obj);
                    }
                    a10 = ((n4.b) obj).a();
                    num = null;
                    Integer b12 = i11 != 0 ? null : cc.b.b(i11 - 1);
                    if (!a10.isEmpty() && a10.size() >= b10) {
                        num = cc.b.b(i11 + 1);
                    }
                    return new t0.b.C0202b(a10, b12, num);
                }
            }
            if (i10 != 0) {
            }
            a10 = ((n4.b) obj).a();
            num = null;
            if (i11 != 0) {
            }
            if (!a10.isEmpty()) {
                num = cc.b.b(i11 + 1);
            }
            return new t0.b.C0202b(a10, b12, num);
        } catch (Exception e10) {
            return new t0.b.a(e10);
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f10043h;
        Object d102 = bc.c.d();
        i10 = bVar.f10045j;
    }

    @Override // k1.t0
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Integer d(v0<Integer, p4.e> v0Var) {
        l.f(v0Var, "state");
        return null;
    }

    public final n j() {
        return this.f10040d;
    }
}

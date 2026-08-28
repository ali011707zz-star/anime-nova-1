package t6;

import android.content.Context;
import cc.f;
import cc.k;
import com.anslayer.R;
import com.anslayer.api.endpoint.RecommendationEndpoint;
import ic.l;
import ic.p;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import java.util.Map;
import jc.a0;
import jc.g;
import jc.m;
import qc.t;
import rc.g1;
import rc.i;
import rc.q0;
import rd.q;
import retrofit2.HttpException;

/* compiled from: ComposerPresenter.kt */
/* loaded from: classes.dex */
public final class e extends r5.a {

    /* renamed from: h, reason: collision with root package name */
    public static final a f14040h = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public final vb.e f14041g;

    /* compiled from: ComposerPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<e, Context> {

        /* compiled from: ComposerPresenter.kt */
        /* renamed from: t6.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0349a extends m implements l<Context, e> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0349a f14042f = new C0349a();

            public C0349a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final e invoke(Context context) {
                return new e(context, null);
            }
        }

        public a() {
            super(C0349a.f14042f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: ComposerPresenter.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<RecommendationEndpoint> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f14043f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.f14043f = context;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RecommendationEndpoint invoke() {
            Context context = this.f14043f;
            if (context == null) {
                return null;
            }
            return (RecommendationEndpoint) z3.b.f17284d.getInstance(context).b(RecommendationEndpoint.class);
        }
    }

    /* compiled from: ComposerPresenter.kt */
    @f(c = "com.anslayer.ui.recommend.create.ComposerPresenter$submitRecommendation$2", f = "ComposerPresenter.kt", l = {54}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public Object f14044f;

        /* renamed from: g, reason: collision with root package name */
        public int f14045g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ e7.d f14047i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(e7.d dVar, ac.d<? super c> dVar2) {
            super(2, dVar2);
            this.f14047i = dVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(this.f14047i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0135  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x012a  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0119 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Context context;
            String str;
            RecommendationEndpoint k10;
            String str2;
            Object d10 = bc.c.d();
            int i10 = this.f14045g;
            if (i10 == 0) {
                vb.k.b(obj);
                Context d11 = e.this.d();
                if (d11 == null) {
                    return vb.p.f15031a;
                }
                try {
                    e7.d dVar = this.f14047i;
                    Long c10 = cc.b.c(0L);
                    try {
                        if (dVar.d().containsKey("anime_id")) {
                            Object obj2 = dVar.d().get("anime_id");
                            if (obj2 instanceof Double) {
                                c10 = cc.b.c((long) ((Number) obj2).doubleValue());
                            } else {
                                if (obj2 == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                }
                                c10 = (Long) obj2;
                            }
                        }
                    } catch (Exception e10) {
                        dVar.toString();
                        e10.getMessage();
                    }
                    long longValue = c10.longValue();
                    e7.d dVar2 = this.f14047i;
                    Long c11 = cc.b.c(0L);
                    try {
                        if (dVar2.d().containsKey("recommended_anime_id")) {
                            Object obj3 = dVar2.d().get("recommended_anime_id");
                            if (obj3 instanceof Double) {
                                c11 = cc.b.c((long) ((Number) obj3).doubleValue());
                            } else {
                                if (obj3 == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                                }
                                c11 = (Long) obj3;
                            }
                        }
                    } catch (Exception e11) {
                        dVar2.toString();
                        e11.getMessage();
                    }
                    long longValue2 = c11.longValue();
                    e7.d dVar3 = this.f14047i;
                    String empty = SupportExtentionKt.empty(a0.f9170a);
                    try {
                    } catch (Exception e12) {
                        dVar3.toString();
                        e12.getMessage();
                    }
                    if (dVar3.d().containsKey("recommendation_comments")) {
                        Object obj4 = dVar3.d().get("recommendation_comments");
                        if ((empty instanceof Long) && (obj4 instanceof Double)) {
                            str = (String) cc.b.c((long) ((Number) obj4).doubleValue());
                        } else {
                            if (obj4 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                            str = (String) obj4;
                        }
                        k10 = e.this.k();
                        jc.l.c(k10);
                        this.f14044f = d11;
                        this.f14045g = 1;
                        if (k10.createRecommendation(longValue, longValue2, str, this) == d10) {
                            return d10;
                        }
                    }
                    str = empty;
                    k10 = e.this.k();
                    jc.l.c(k10);
                    this.f14044f = d11;
                    this.f14045g = 1;
                    if (k10.createRecommendation(longValue, longValue2, str, this) == d10) {
                    }
                } catch (HttpException e13) {
                    e = e13;
                    context = d11;
                    q<?> c12 = e.c();
                    Map<String, String> b10 = x4.b.b(c12 != null ? null : c12.d());
                    str2 = b10 != null ? b10.get("detail") : null;
                    if (str2 == null) {
                        str2 = context.getString(R.string.text_request_error);
                        jc.l.e(str2, "context.getString(R.string.text_request_error)");
                    }
                    k7.b.p(context, str2, 1);
                    return vb.p.f15031a;
                } catch (Exception unused) {
                    context = d11;
                    k7.b.o(context, R.string.text_request_error, 1);
                    return vb.p.f15031a;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                context = (Context) this.f14044f;
                try {
                    vb.k.b(obj);
                } catch (HttpException e14) {
                    e = e14;
                    q<?> c122 = e.c();
                    Map<String, String> b102 = x4.b.b(c122 != null ? null : c122.d());
                    if (b102 != null) {
                    }
                    if (str2 == null) {
                    }
                    k7.b.p(context, str2, 1);
                    return vb.p.f15031a;
                } catch (Exception unused2) {
                    k7.b.o(context, R.string.text_request_error, 1);
                    return vb.p.f15031a;
                }
            }
            return vb.p.f15031a;
        }
    }

    public e(Context context) {
        super(context);
        this.f14041g = vb.f.a(new b(context));
    }

    public /* synthetic */ e(Context context, g gVar) {
        this(context);
    }

    public final RecommendationEndpoint k() {
        return (RecommendationEndpoint) this.f14041g.getValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|2|3|(12:5|(1:7)(1:(1:55)(2:56|57))|8|9|10|(2:12|(1:14)(1:(1:16)(2:17|18)))|20|21|22|(3:24|(1:(1:31)(2:32|33))(1:28)|29)|34|(1:47)(1:48))|58|8|9|10|(0)|20|21|22|(0)|34|(1:36)(5:37|40|43|45|47)) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c2, code lost:
    
        r9.toString();
        r2.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0078, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0079, code lost:
    
        r9.toString();
        r0.getMessage();
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0054 A[Catch: Exception -> 0x0078, TryCatch #1 {Exception -> 0x0078, blocks: (B:10:0x004a, B:12:0x0054, B:14:0x0060, B:16:0x006e, B:17:0x0072, B:18:0x0077), top: B:9:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[Catch: Exception -> 0x00c1, TryCatch #2 {Exception -> 0x00c1, blocks: (B:22:0x008b, B:24:0x0095, B:26:0x00a1, B:28:0x00a5, B:31:0x00b5, B:32:0x00b9, B:33:0x00c0), top: B:21:0x008b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(e7.d dVar) {
        Long l10;
        String str;
        jc.l.f(dVar, "requestParams");
        Long l11 = 0L;
        try {
        } catch (Exception e10) {
            dVar.toString();
            e10.getMessage();
        }
        if (dVar.d().containsKey("anime_id")) {
            Object obj = dVar.d().get("anime_id");
            if (obj instanceof Double) {
                l10 = Long.valueOf((long) ((Number) obj).doubleValue());
            } else {
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                }
                l10 = (Long) obj;
            }
            long longValue = l10.longValue();
            if (dVar.d().containsKey("recommended_anime_id")) {
                Object obj2 = dVar.d().get("recommended_anime_id");
                if (obj2 instanceof Double) {
                    l11 = Long.valueOf((long) ((Number) obj2).doubleValue());
                } else {
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
                    }
                    l11 = (Long) obj2;
                }
            }
            long longValue2 = l11.longValue();
            String empty = SupportExtentionKt.empty(a0.f9170a);
            if (dVar.d().containsKey("recommendation_comments")) {
                Object obj3 = dVar.d().get("recommendation_comments");
                if ((empty instanceof Long) && (obj3 instanceof Double)) {
                    str = (String) Long.valueOf((long) ((Number) obj3).doubleValue());
                } else {
                    if (obj3 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    str = (String) obj3;
                }
                empty = str;
            }
            return longValue < 1 && longValue2 >= 1 && !t.s(empty) && empty.length() >= 70 && empty.length() <= 300;
        }
        l10 = l11;
        long longValue3 = l10.longValue();
        if (dVar.d().containsKey("recommended_anime_id")) {
        }
        long longValue22 = l11.longValue();
        String empty2 = SupportExtentionKt.empty(a0.f9170a);
        if (dVar.d().containsKey("recommendation_comments")) {
        }
        if (longValue3 < 1) {
            return false;
        }
    }

    public final Object m(e7.d dVar, ac.d<? super vb.p> dVar2) {
        Object g10 = i.g(g1.c(), new c(dVar, null), dVar2);
        return g10 == bc.c.d() ? g10 : vb.p.f15031a;
    }

    @Override // r5.b, io.wax911.support.base.event.LifecycleListener
    public void onDestroy() {
        g().cancel();
        super.onDestroy();
    }
}

package k1;

import com.google.android.gms.common.api.Api;
import tc.x;

/* compiled from: CachedPageEventFlow.kt */
/* loaded from: classes.dex */
public final class e1<T> {

    /* renamed from: a, reason: collision with root package name */
    public final tc.f<wb.y<f0<T>>> f9388a = tc.i.b(Api.BaseClientBuilder.API_PRIORITY_OTHER, null, null, 6, null);

    /* compiled from: CachedPageEventFlow.kt */
    @cc.f(c = "androidx.paging.TemporaryDownstream", f = "CachedPageEventFlow.kt", l = {149}, m = "send")
    /* loaded from: classes.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f9389f;

        /* renamed from: g, reason: collision with root package name */
        public int f9390g;

        public a(ac.d dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f9389f = obj;
            this.f9390g |= Integer.MIN_VALUE;
            return e1.this.c(null, this);
        }
    }

    public final void a() {
        x.a.a(this.f9388a, null, 1, null);
    }

    public final uc.f<wb.y<f0<T>>> b() {
        return uc.h.i(this.f9388a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(wb.y<? extends f0<T>> yVar, ac.d<? super Boolean> dVar) {
        a aVar;
        int i10;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i11 = aVar.f9390g;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f9390g = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f9389f;
                Object d10 = bc.c.d();
                i10 = aVar.f9390g;
                boolean z10 = true;
                if (i10 != 0) {
                    vb.k.b(obj);
                    tc.f<wb.y<f0<T>>> fVar = this.f9388a;
                    aVar.f9390g = 1;
                    if (fVar.p(yVar, aVar) == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                return cc.b.a(z10);
            }
        }
        aVar = new a(dVar);
        Object obj2 = aVar.f9389f;
        Object d102 = bc.c.d();
        i10 = aVar.f9390g;
        boolean z102 = true;
        if (i10 != 0) {
        }
        return cc.b.a(z102);
    }
}

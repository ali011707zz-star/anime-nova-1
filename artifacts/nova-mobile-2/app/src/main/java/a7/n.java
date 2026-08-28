package a7;

import androidx.lifecycle.i0;
import androidx.lifecycle.j0;
import com.anslayer.data.database.AppDatabase;
import ic.p;
import java.util.ArrayList;
import java.util.List;
import qc.t;
import rc.q0;

/* compiled from: WordsBlockingActivity.kt */
/* loaded from: classes.dex */
public final class n extends i0 {

    /* renamed from: a, reason: collision with root package name */
    public final b4.b f502a;

    /* renamed from: b, reason: collision with root package name */
    public final List<k4.a> f503b;

    /* compiled from: WordsBlockingActivity.kt */
    @cc.f(c = "com.anslayer.ui.setting.WordsBlockingViewModel$clearAll$1", f = "WordsBlockingActivity.kt", l = {57}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f504f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f505g;

        public a(ac.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            a aVar = new a(dVar);
            aVar.f505g = obj;
            return aVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            q0 q0Var;
            Exception e10;
            bd.c cVar;
            bd.e a10;
            Object d10 = bc.c.d();
            int i10 = this.f504f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var2 = (q0) this.f505g;
                try {
                    b4.b b10 = n.this.b();
                    this.f505g = q0Var2;
                    this.f504f = 1;
                    if (b10.e(this) == d10) {
                        return d10;
                    }
                } catch (Exception e11) {
                    q0Var = q0Var2;
                    e10 = e11;
                    cVar = bd.c.ERROR;
                    a10 = bd.e.f3616a.a();
                    if (a10.b(cVar)) {
                        a10.a(cVar, bd.d.a(q0Var), jc.l.m(true ^ t.s("") ? jc.l.m("", "\n") : "", bd.f.a(e10)));
                    }
                    return vb.p.f15031a;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                q0Var = (q0) this.f505g;
                try {
                    vb.k.b(obj);
                } catch (Exception e12) {
                    e10 = e12;
                    cVar = bd.c.ERROR;
                    a10 = bd.e.f3616a.a();
                    if (a10.b(cVar)) {
                    }
                    return vb.p.f15031a;
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: WordsBlockingActivity.kt */
    @cc.f(c = "com.anslayer.ui.setting.WordsBlockingViewModel$removeItem$1", f = "WordsBlockingActivity.kt", l = {47}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f507f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f508g;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ k4.a f510i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(k4.a aVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f510i = aVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            b bVar = new b(this.f510i, dVar);
            bVar.f508g = obj;
            return bVar;
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            q0 q0Var;
            Exception e10;
            bd.c cVar;
            bd.e a10;
            Object d10 = bc.c.d();
            int i10 = this.f507f;
            if (i10 == 0) {
                vb.k.b(obj);
                q0 q0Var2 = (q0) this.f508g;
                try {
                    b4.b b10 = n.this.b();
                    k4.a aVar = this.f510i;
                    this.f508g = q0Var2;
                    this.f507f = 1;
                    if (b10.b(aVar, this) == d10) {
                        return d10;
                    }
                } catch (Exception e11) {
                    q0Var = q0Var2;
                    e10 = e11;
                    cVar = bd.c.ERROR;
                    a10 = bd.e.f3616a.a();
                    if (a10.b(cVar)) {
                        a10.a(cVar, bd.d.a(q0Var), jc.l.m(true ^ t.s("") ? jc.l.m("", "\n") : "", bd.f.a(e10)));
                    }
                    return vb.p.f15031a;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                q0Var = (q0) this.f508g;
                try {
                    vb.k.b(obj);
                } catch (Exception e12) {
                    e10 = e12;
                    cVar = bd.c.ERROR;
                    a10 = bd.e.f3616a.a();
                    if (a10.b(cVar)) {
                    }
                    return vb.p.f15031a;
                }
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: TypeInfo.kt */
    /* loaded from: classes.dex */
    public static final class c extends zd.a<AppDatabase> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public n(AppDatabase appDatabase) {
        jc.l.f(appDatabase, "db");
        this.f502a = appDatabase.F();
        this.f503b = new ArrayList();
    }

    public final void a() {
        rc.k.d(j0.a(this), null, null, new a(null), 3, null);
    }

    public final b4.b b() {
        return this.f502a;
    }

    public final List<k4.a> c() {
        return this.f503b;
    }

    public final void d(k4.a aVar) {
        jc.l.f(aVar, "entity");
        rc.k.d(j0.a(this), null, null, new b(aVar, null), 3, null);
    }

    public /* synthetic */ n(AppDatabase appDatabase, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? (AppDatabase) yd.a.a().a(new c().getType()) : appDatabase);
    }
}

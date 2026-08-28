package i4;

import android.content.Context;
import cc.k;
import com.anslayer.api.endpoint.ConfigurationEndpoint;
import ic.p;
import jc.l;
import rc.g1;
import rc.l0;
import rc.q0;
import rd.q;

/* compiled from: GithubUpdateChecker.kt */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7557a;

    /* renamed from: b, reason: collision with root package name */
    public final ConfigurationEndpoint f7558b;

    /* compiled from: GithubUpdateChecker.kt */
    @cc.f(c = "com.anslayer.data.updater.GithubUpdateChecker", f = "GithubUpdateChecker.kt", l = {15}, m = "checkForUpdate")
    /* loaded from: classes.dex */
    public static final class a extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f7559f;

        /* renamed from: h, reason: collision with root package name */
        public int f7561h;

        public a(ac.d<? super a> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7559f = obj;
            this.f7561h |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    /* compiled from: GithubUpdateChecker.kt */
    @cc.f(c = "com.anslayer.data.updater.GithubUpdateChecker$checkForUpdate$release$1", f = "GithubUpdateChecker.kt", l = {}, m = "invokeSuspend")
    /* renamed from: i4.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0149b extends k implements p<q0, ac.d<? super q<n4.c<r4.b>>>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7562f;

        public C0149b(ac.d<? super C0149b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new C0149b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super q<n4.c<r4.b>>> dVar) {
            return ((C0149b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7562f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            return b.this.b().getApplicationConfiguration().execute();
        }
    }

    public b(Context context) {
        l.f(context, "context");
        this.f7557a = context;
        this.f7558b = (ConfigurationEndpoint) z3.b.f17284d.getInstance(context).b(ConfigurationEndpoint.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ac.d<? super h> dVar) {
        a aVar;
        int i10;
        q qVar;
        r4.b bVar;
        r4.b bVar2;
        String s10;
        r4.b bVar3;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i11 = aVar.f7561h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                aVar.f7561h = i11 - Integer.MIN_VALUE;
                Object obj = aVar.f7559f;
                Object d10 = bc.c.d();
                i10 = aVar.f7561h;
                String str = null;
                if (i10 != 0) {
                    vb.k.b(obj);
                    l0 b10 = g1.b();
                    C0149b c0149b = new C0149b(null);
                    aVar.f7561h = 1;
                    obj = rc.i.g(b10, c0149b, aVar);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                qVar = (q) obj;
                if (qVar.f()) {
                    return new d();
                }
                n4.c cVar = (n4.c) qVar.a();
                String g10 = (cVar == null || (bVar = (r4.b) cVar.a()) == null) ? null : bVar.g();
                if (g10 == null) {
                    return new d();
                }
                n4.c cVar2 = (n4.c) qVar.a();
                Integer b11 = (cVar2 == null || (bVar2 = (r4.b) cVar2.a()) == null || (s10 = bVar2.s()) == null) ? null : cc.b.b(Integer.parseInt(s10));
                if (b11 == null) {
                    return new d();
                }
                if (b11.intValue() > 41) {
                    n4.c cVar3 = (n4.c) qVar.a();
                    if (cVar3 != null && (bVar3 = (r4.b) cVar3.a()) != null) {
                        str = bVar3.l();
                    }
                    l.c(str);
                    return new c(new i4.a(str, g10));
                }
                return new d();
            }
        }
        aVar = new a(dVar);
        Object obj2 = aVar.f7559f;
        Object d102 = bc.c.d();
        i10 = aVar.f7561h;
        String str2 = null;
        if (i10 != 0) {
        }
        qVar = (q) obj2;
        if (qVar.f()) {
        }
    }

    public final ConfigurationEndpoint b() {
        return this.f7558b;
    }
}

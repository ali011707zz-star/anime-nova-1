package o6;

import android.content.Context;
import android.os.Bundle;
import cc.k;
import com.anslayer.api.endpoint.UserEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.List;
import jc.l;
import jc.m;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: BlockedUsersRepository.kt */
/* loaded from: classes.dex */
public final class f extends SupportRepository<Bundle, List<? extends w4.a>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f11782b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f11783a;

    /* compiled from: BlockedUsersRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<f> {

        /* compiled from: BlockedUsersRepository.kt */
        /* renamed from: o6.f$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0294a extends m implements ic.a<f> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0294a f11784f = new C0294a();

            public C0294a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final f invoke() {
                return new f(null);
            }
        }

        public a() {
            super(C0294a.f11784f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: BlockedUsersRepository.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.blocked.BlockedUsersRepository$createNetworkClientRequest$1", f = "BlockedUsersRepository.kt", l = {35, 37, 40}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11785f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f11786g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f11787h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ f f11788i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, f fVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f11786g = context;
            this.f11787h = bundle;
            this.f11788i = fVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f11786g, this.f11787h, this.f11788i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11785f;
            try {
            } catch (Exception e10) {
                e10.printStackTrace();
                f fVar = this.f11788i;
                this.f11785f = 3;
                if (fVar.publishResult(null, this) == d10) {
                    return d10;
                }
            }
            if (i10 == 0) {
                vb.k.b(obj);
                UserEndpoint userEndpoint = (UserEndpoint) z3.b.f17284d.getInstance(this.f11786g).b(UserEndpoint.class);
                String string = this.f11787h.getString("arg_json");
                this.f11785f = 1;
                obj = userEndpoint.getBlockedUsers(string, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    if (i10 == 2) {
                        vb.k.b(obj);
                    } else {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        vb.k.b(obj);
                    }
                    return vb.p.f15031a;
                }
                vb.k.b(obj);
            }
            Object a10 = ((n4.c) obj).a();
            l.c(a10);
            Object b10 = ((n4.d) a10).b();
            l.c(b10);
            f fVar2 = this.f11788i;
            this.f11785f = 2;
            if (fVar2.publishResult((List) b10, this) == d10) {
                return d10;
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: BlockedUsersRepository.kt */
    @cc.f(c = "com.anslayer.ui.profile.self.blocked.BlockedUsersRepository$requestFromCache$1", f = "BlockedUsersRepository.kt", l = {51}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f11789f;

        public c(ac.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new c(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((c) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f11789f;
            if (i10 == 0) {
                vb.k.b(obj);
                f fVar = f.this;
                this.f11789f = 1;
                if (fVar.publishResult(null, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    public f() {
        this.f11783a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ f(jc.g gVar) {
        this();
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> createNetworkClientRequest(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new b(context, bundle, this, null), 3, null);
        return b10;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public z3.a getNetworkClient() {
        return this.f11783a;
    }

    @Override // io.wax911.support.base.dao.SupportRepository
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public y0<vb.p> requestFromCache(Bundle bundle, Context context) {
        y0<vb.p> b10;
        l.f(bundle, "bundle");
        l.f(context, "context");
        b10 = rc.k.b(v1.f13343f, null, null, new c(null), 3, null);
        return b10;
    }
}

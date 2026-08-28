package v5;

import android.content.Context;
import android.os.Bundle;
import com.anslayer.api.endpoint.UserEndpoint;
import ic.p;
import io.wax911.support.base.dao.SupportRepository;
import io.wax911.support.model.ModelWrapper;
import io.wax911.support.util.InstanceUtilNoArg;
import java.util.List;
import jc.l;
import jc.m;
import rc.q0;
import rc.v1;
import rc.y0;
import z3.a;

/* compiled from: NotificationRepository.kt */
/* loaded from: classes.dex */
public final class j extends SupportRepository<Bundle, List<? extends w4.b>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f14831b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public final z3.a f14832a;

    /* compiled from: NotificationRepository.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtilNoArg<j> {

        /* compiled from: NotificationRepository.kt */
        /* renamed from: v5.j$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0387a extends m implements ic.a<j> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0387a f14833f = new C0387a();

            public C0387a() {
                super(0);
            }

            @Override // ic.a
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final j invoke() {
                return new j(null);
            }
        }

        public a() {
            super(C0387a.f14833f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: NotificationRepository.kt */
    @cc.f(c = "com.anslayer.ui.comment_notification.NotificationRepository$createNetworkClientRequest$1", f = "NotificationRepository.kt", l = {40, 49}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14834f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Context f14835g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f14836h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ j f14837i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, Bundle bundle, j jVar, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f14835g = context;
            this.f14836h = bundle;
            this.f14837i = jVar;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f14835g, this.f14836h, this.f14837i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00d0 A[RETURN] */
        @Override // cc.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            List list;
            n4.d dVar;
            Long a10;
            f4.d newInstance;
            j jVar;
            n4.c cVar;
            n4.d dVar2;
            Object d10 = bc.c.d();
            int i10 = this.f14834f;
            if (i10 == 0) {
                vb.k.b(obj);
                UserEndpoint userEndpoint = (UserEndpoint) z3.b.f17284d.getInstance(this.f14835g).b(UserEndpoint.class);
                String string = this.f14836h.getString("arg_request_type");
                if (string != null && string.hashCode() == 120493078 && string.equals("GET_USER_NOTIFICATION")) {
                    y0 executeUsing = this.f14837i.getNetworkClient().executeUsing(userEndpoint.getUserNotifications(this.f14836h.getString("arg_json")));
                    this.f14834f = 1;
                    obj = executeUsing.k0(this);
                    if (obj == d10) {
                        return d10;
                    }
                    ModelWrapper modelWrapper = (ModelWrapper) obj;
                    n4.c cVar2 = (n4.c) modelWrapper.getModel();
                    list = null;
                    if (cVar2 == null) {
                        newInstance = f4.d.f6409r.newInstance(this.f14835g);
                        long A = newInstance.A();
                        if (a10 != null) {
                            newInstance.b0((int) a10.longValue());
                        }
                        jVar = this.f14837i;
                        cVar = (n4.c) modelWrapper.getModel();
                        if (cVar != null) {
                            list = (List) dVar2.b();
                        }
                        this.f14834f = 2;
                        if (jVar.publishResult(list, this) == d10) {
                        }
                    }
                    newInstance = f4.d.f6409r.newInstance(this.f14835g);
                    long A2 = newInstance.A();
                    if (a10 != null) {
                    }
                    jVar = this.f14837i;
                    cVar = (n4.c) modelWrapper.getModel();
                    if (cVar != null) {
                    }
                    this.f14834f = 2;
                    if (jVar.publishResult(list, this) == d10) {
                    }
                }
            } else if (i10 == 1) {
                vb.k.b(obj);
                ModelWrapper modelWrapper2 = (ModelWrapper) obj;
                n4.c cVar22 = (n4.c) modelWrapper2.getModel();
                list = null;
                a10 = (cVar22 == null || (dVar = (n4.d) cVar22.a()) == null) ? null : dVar.a();
                newInstance = f4.d.f6409r.newInstance(this.f14835g);
                long A22 = newInstance.A();
                if (a10 != null && a10.longValue() != A22) {
                    newInstance.b0((int) a10.longValue());
                }
                jVar = this.f14837i;
                cVar = (n4.c) modelWrapper2.getModel();
                if (cVar != null && (dVar2 = (n4.d) cVar.a()) != null) {
                    list = (List) dVar2.b();
                }
                this.f14834f = 2;
                if (jVar.publishResult(list, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: NotificationRepository.kt */
    @cc.f(c = "com.anslayer.ui.comment_notification.NotificationRepository$requestFromCache$1", f = "NotificationRepository.kt", l = {61}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class c extends cc.k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f14838f;

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
            int i10 = this.f14838f;
            if (i10 == 0) {
                vb.k.b(obj);
                j jVar = j.this;
                this.f14838f = 1;
                if (jVar.publishResult(null, this) == d10) {
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

    public j() {
        this.f14832a = a.C0435a.b(z3.a.f17279b, false, 1, null);
    }

    public /* synthetic */ j(jc.g gVar) {
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
        return this.f14832a;
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

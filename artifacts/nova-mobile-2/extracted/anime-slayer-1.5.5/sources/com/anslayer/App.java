package com.anslayer;

import ac.d;
import android.content.Context;
import cc.f;
import cc.k;
import com.anslayer.App;
import com.anslayer.data.database.AppDatabase;
import d2.b;
import d7.h;
import ic.p;
import io.wax911.support.util.SupportAnalyticUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jc.g;
import jc.l;
import rc.q0;
import wb.m;

/* compiled from: App.kt */
/* loaded from: classes.dex */
public final class App extends j1.b implements b.InterfaceC0097b {

    /* renamed from: h, reason: collision with root package name */
    public static final a f4053h = new a(null);

    /* renamed from: i, reason: collision with root package name */
    public static volatile List<String> f4054i = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public volatile String f4055f;

    /* renamed from: g, reason: collision with root package name */
    public volatile SupportAnalyticUtil f4056g;

    /* compiled from: App.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final List<String> a() {
            return App.f4054i;
        }
    }

    /* compiled from: App.kt */
    @f(c = "com.anslayer.App$onCreate$2", f = "App.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4057f;

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<AppDatabase> {
        }

        public b(d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new b(dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f4057f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            try {
                List<k4.a> d10 = ((AppDatabase) yd.a.a().a(new a().getType())).F().d();
                a aVar = App.f4053h;
                aVar.a().clear();
                List<String> a10 = aVar.a();
                ArrayList arrayList = new ArrayList(m.q(d10, 10));
                Iterator<T> it2 = d10.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((k4.a) it2.next()).b());
                }
                a10.addAll(arrayList);
            } catch (Exception unused) {
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: App.kt */
    /* loaded from: classes.dex */
    public static final class c extends jc.m implements ic.a<vb.p> {
        public c() {
            super(0);
        }

        public final void a() {
            App app = App.this;
            app.g(d7.c.f5701b.newInstance(app));
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ vb.p invoke() {
            a();
            return vb.p.f15031a;
        }
    }

    public App() {
        ed.c.b().f(false).g(false).h(false).i(false).e();
    }

    public static final void f(App app) {
        l.f(app, "this$0");
        app.f4055f = h.f5716a.a(app);
    }

    @Override // d2.b.InterfaceC0097b
    public d2.b a() {
        d2.b a10 = new b.a().a();
        l.e(a10, "Builder()\n            .build()");
        return a10;
    }

    @Override // j1.b, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        j1.a.k(this);
    }

    public final SupportAnalyticUtil d() {
        return this.f4056g;
    }

    public final String e() {
        return this.f4055f;
    }

    public final void g(SupportAnalyticUtil supportAnalyticUtil) {
        this.f4056g = supportAnalyticUtil;
    }

    public final void h() {
        e4.c.f6187a.a(this);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        androidx.appcompat.app.f.z(true);
        yd.a.b(new zd.f(new ae.a()));
        yd.a.a().b(new x3.c(this));
        f0.a.i(this).execute(new Runnable() { // from class: x3.a
            @Override // java.lang.Runnable
            public final void run() {
                App.f(App.this);
            }
        });
        bd.a.f3606c.a(this, bd.c.VERBOSE);
        e7.b.a(new b(null));
        e7.a.a(this, new c());
        h();
    }
}

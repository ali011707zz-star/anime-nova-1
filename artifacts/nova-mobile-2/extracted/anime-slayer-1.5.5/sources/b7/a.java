package b7;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.anslayer.R;
import com.anslayer.data.splash.AppConfigWorker;
import com.anslayer.data.splash.ExtraConfigWorker;
import com.anslayer.data.splash.FilterOptionsWorker;
import com.anslayer.data.updater.UpdaterService;
import com.anslayer.ui.main.MainActivity;
import com.anslayer.util.system.FragmentExtensionsKt;
import d2.n;
import d2.u;
import d2.v;
import ic.l;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.util.InstanceUtil;
import io.wax911.support.util.SupportAnalyticUtil;
import j4.f1;
import java.util.concurrent.TimeUnit;
import jc.m;
import jc.o;
import jc.y;
import vb.p;

/* compiled from: SplashFragment.kt */
/* loaded from: classes.dex */
public final class a extends p5.a<u, b7.b, u> {

    /* renamed from: j, reason: collision with root package name */
    public final kc.a f3534j = FragmentExtensionsKt.a(this);

    /* renamed from: k, reason: collision with root package name */
    public final vb.e f3535k = vb.f.a(new h());

    /* renamed from: l, reason: collision with root package name */
    public final vb.e f3536l = vb.f.a(e.f3545f);

    /* renamed from: m, reason: collision with root package name */
    public final vb.e f3537m = vb.f.a(c.f3543f);

    /* renamed from: n, reason: collision with root package name */
    public final vb.e f3538n = vb.f.a(d.f3544f);

    /* renamed from: o, reason: collision with root package name */
    public final vb.e f3539o = vb.f.a(new f());

    /* renamed from: p, reason: collision with root package name */
    public final vb.e f3540p = vb.f.a(new g());

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ oc.g<Object>[] f3533r = {y.e(new o(a.class, "binding", "getBinding()Lcom/anslayer/databinding/FragmentSplashBinding;", 0))};

    /* renamed from: q, reason: collision with root package name */
    public static final C0064a f3532q = new C0064a(null);

    /* compiled from: SplashFragment.kt */
    /* renamed from: b7.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0064a extends InstanceUtil<a, Bundle> {

        /* compiled from: SplashFragment.kt */
        /* renamed from: b7.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0065a extends m implements l<Bundle, a> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0065a f3541f = new C0065a();

            public C0065a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final a invoke(Bundle bundle) {
                a aVar = new a();
                aVar.setArguments(bundle);
                return aVar;
            }
        }

        public C0064a() {
            super(C0065a.f3541f);
        }

        public /* synthetic */ C0064a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3542a;

        static {
            int[] iArr = new int[u.a.values().length];
            iArr[u.a.SUCCEEDED.ordinal()] = 1;
            iArr[u.a.CANCELLED.ordinal()] = 2;
            iArr[u.a.FAILED.ordinal()] = 3;
            iArr[u.a.ENQUEUED.ordinal()] = 4;
            iArr[u.a.RUNNING.ordinal()] = 5;
            iArr[u.a.BLOCKED.ordinal()] = 6;
            f3542a = iArr;
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<n> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f3543f = new c();

        public c() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return new n.a(AppConfigWorker.class).a("AppConfigWorker#0003").e(d2.a.EXPONENTIAL, 15L, TimeUnit.SECONDS).b();
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<n> {

        /* renamed from: f, reason: collision with root package name */
        public static final d f3544f = new d();

        public d() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return new n.a(ExtraConfigWorker.class).a("ExtraConfigWorker#0004").e(d2.a.EXPONENTIAL, 15L, TimeUnit.SECONDS).b();
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class e extends m implements ic.a<n> {

        /* renamed from: f, reason: collision with root package name */
        public static final e f3545f = new e();

        public e() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n invoke() {
            return new n.a(FilterOptionsWorker.class).a("FilterOptionsWorker#0002").e(d2.a.EXPONENTIAL, 15L, TimeUnit.SECONDS).b();
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class f extends m implements ic.a<s2.c> {

        /* compiled from: SplashFragment.kt */
        /* renamed from: b7.a$f$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0066a implements l<s2.c, p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a f3547f;

            public C0066a(a aVar) {
                this.f3547f = aVar;
            }

            public void a(s2.c cVar) {
                jc.l.f(cVar, "materialDialog");
                Toast.makeText(this.f3547f.getActivity(), R.string.update_donwloading, 0).show();
                UpdaterService.a aVar = UpdaterService.f4143h;
                androidx.fragment.app.e requireActivity = this.f3547f.requireActivity();
                jc.l.e(requireActivity, "requireActivity()");
                UpdaterService.a.c(aVar, requireActivity, this.f3547f.p().k().g(), null, 4, null);
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
                a(cVar);
                return p.f15031a;
            }
        }

        /* compiled from: SplashFragment.kt */
        /* loaded from: classes.dex */
        public static final class b implements l<s2.c, p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a f3548f;

            public b(a aVar) {
                this.f3548f = aVar;
            }

            public void a(s2.c cVar) {
                jc.l.f(cVar, "materialDialog");
                this.f3548f.p().j();
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
                a(cVar);
                return p.f15031a;
            }
        }

        /* compiled from: SplashFragment.kt */
        /* loaded from: classes.dex */
        public static final class c implements l<s2.c, p> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ a f3549f;

            public c(a aVar) {
                this.f3549f = aVar;
            }

            public void a(s2.c cVar) {
                jc.l.f(cVar, "materialDialog");
                androidx.fragment.app.e activity = this.f3549f.getActivity();
                if (activity == null) {
                    return;
                }
                activity.finish();
            }

            @Override // ic.l
            public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
                a(cVar);
                return p.f15031a;
            }
        }

        public f() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final s2.c invoke() {
            s2.c a10;
            s2.c b10;
            s2.c s10;
            s2.c y10;
            s2.c n10;
            s2.c v10;
            s2.c p10;
            androidx.fragment.app.e activity = a.this.getActivity();
            if (activity == null || (a10 = k7.c.a(activity)) == null || (b10 = a10.b(false)) == null || (s10 = b10.s()) == null || (y10 = s2.c.y(s10, Integer.valueOf(R.string.title_update_available), null, 2, null)) == null || (n10 = s2.c.n(y10, Integer.valueOf(R.string.text_update_available), null, null, 6, null)) == null || (v10 = s2.c.v(n10, Integer.valueOf(R.string.download_from_app), null, new C0066a(a.this), 2, null)) == null || (p10 = s2.c.p(v10, Integer.valueOf(R.string.download_from_website), null, new b(a.this), 2, null)) == null) {
                return null;
            }
            return s2.c.r(p10, Integer.valueOf(R.string.text_cancel), null, new c(a.this), 2, null);
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class g extends m implements ic.a<b7.b> {
        public g() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b7.b invoke() {
            return b7.b.f3552h.newInstance(a.this.getContext());
        }
    }

    /* compiled from: SplashFragment.kt */
    /* loaded from: classes.dex */
    public static final class h extends m implements ic.a<i4.b> {
        public h() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i4.b invoke() {
            androidx.fragment.app.e requireActivity = a.this.requireActivity();
            jc.l.e(requireActivity, "requireActivity()");
            return new i4.b(requireActivity);
        }
    }

    public final n M() {
        return (n) this.f3537m.getValue();
    }

    public final f1 N() {
        return (f1) this.f3534j.f(this, f3533r[0]);
    }

    public final n O() {
        return (n) this.f3538n.getValue();
    }

    public final n P() {
        return (n) this.f3536l.getValue();
    }

    public final s2.c Q() {
        return (s2.c) this.f3539o.getValue();
    }

    @Override // n5.a
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public b7.b p() {
        return (b7.b) this.f3540p.getValue();
    }

    @Override // androidx.lifecycle.z
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public void B(u uVar) {
        SupportAnalyticUtil d10;
        u.a a10;
        SupportAnalyticUtil d11;
        if (uVar == null) {
            a10 = null;
        } else {
            try {
                a10 = uVar.a();
            } catch (Exception e10) {
                e10.printStackTrace();
                Context context = getContext();
                if (context != null && (d10 = k7.b.d(context)) != null) {
                    d10.logException(e10);
                }
                m();
                return;
            }
        }
        switch (a10 == null ? -1 : b.f3542a[a10.ordinal()]) {
            case 1:
                if (p().l()) {
                    s2.c Q = Q();
                    if (Q == null) {
                        return;
                    }
                    Q.show();
                    return;
                }
                m();
                return;
            case 2:
            case 3:
                Context context2 = getContext();
                if (context2 != null && (d11 = k7.b.d(context2)) != null) {
                    String fragment = toString();
                    jc.l.e(fragment, "toString()");
                    d11.log(fragment, "Unable to check for updates");
                }
                m();
                return;
            case 4:
            case 5:
                toString();
                jc.l.m("Worker Manager state -> ", uVar.a());
                return;
            case 6:
                if (SupportExtentionKt.isConnectedToNetwork(getContext())) {
                    return;
                }
                toString();
                m();
                return;
            default:
                m();
                return;
        }
    }

    public final void T(f1 f1Var) {
        this.f3534j.a(this, f3533r[0], f1Var);
    }

    @Override // n5.a
    public void e() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        v.i(context).a(P()).b(M()).b(O()).a();
        v.i(context).j(M().a()).i(this, this);
    }

    @Override // n5.a
    public void m() {
        Context context = getContext();
        if (context != null) {
            Bundle arguments = getArguments();
            Intent intent = new Intent(context, (Class<?>) MainActivity.class);
            intent.setFlags(268435456);
            if (arguments != null) {
                intent.putExtras(arguments);
            }
            context.startActivity(intent);
        }
        androidx.fragment.app.e activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.finish();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        f1 c10 = f1.c(layoutInflater);
        jc.l.e(c10, "inflate(inflater)");
        T(c10);
        return N().b();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onPause() {
        s2.c Q = Q();
        if (Q != null) {
            Q.dismiss();
        }
        super.onPause();
    }

    @Override // p5.a, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        e();
    }
}

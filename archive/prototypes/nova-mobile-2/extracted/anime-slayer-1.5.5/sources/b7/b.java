package b7;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import f4.d;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import io.wax911.support.util.SupportAnalyticUtil;
import ja.f;
import jc.g;
import jc.m;
import vb.e;
import vb.p;

/* compiled from: SplashPresenter.kt */
/* loaded from: classes.dex */
public final class b extends r5.a {

    /* renamed from: h, reason: collision with root package name */
    public static final a f3552h = new a(null);

    /* renamed from: g, reason: collision with root package name */
    public final e f3553g;

    /* compiled from: SplashPresenter.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<b, Context> {

        /* compiled from: SplashPresenter.kt */
        /* renamed from: b7.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0067a extends m implements l<Context, b> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0067a f3554f = new C0067a();

            public C0067a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final b invoke(Context context) {
                return new b(context, null);
            }
        }

        public a() {
            super(C0067a.f3554f);
        }

        public /* synthetic */ a(g gVar) {
            this();
        }
    }

    /* compiled from: SplashPresenter.kt */
    /* renamed from: b7.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0068b extends m implements ic.a<r4.b> {
        public C0068b() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r4.b invoke() {
            f fVar = new f();
            d e10 = b.this.e();
            return (r4.b) fVar.k(e10 == null ? null : e10.n(), r4.b.class);
        }
    }

    public b(Context context) {
        super(context);
        this.f3553g = vb.f.a(new C0068b());
    }

    public /* synthetic */ b(Context context, g gVar) {
        this(context);
    }

    public final void j() {
        SupportAnalyticUtil d10;
        SupportAnalyticUtil d11;
        try {
            m();
        } catch (Exception e10) {
            e10.printStackTrace();
            Context d12 = d();
            if (d12 != null && (d11 = k7.b.d(d12)) != null) {
                String obj = toString();
                Bundle bundle = new Bundle();
                bundle.putParcelable("arg_model", k());
                p pVar = p.f15031a;
                d11.logCurrentState(obj, bundle);
            }
            Context d13 = d();
            if (d13 == null || (d10 = k7.b.d(d13)) == null) {
                return;
            }
            d10.log("SplashPresenter#downloadUpdateAsync()", e10.getLocalizedMessage());
        }
    }

    public final r4.b k() {
        return (r4.b) this.f3553g.getValue();
    }

    public final boolean l() {
        r4.b k10 = k();
        return k10 != null && Integer.parseInt(k10.r()) > 41;
    }

    public final void m() {
        r4.b k10 = k();
        if (k10 == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(k10.j()));
        Context d10 = d();
        if (d10 == null) {
            return;
        }
        d10.startActivity(intent);
    }
}

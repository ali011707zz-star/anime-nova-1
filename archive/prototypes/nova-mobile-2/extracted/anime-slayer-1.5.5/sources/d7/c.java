package d7;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import ic.l;
import io.wax911.support.util.InstanceUtil;
import io.wax911.support.util.SupportAnalyticUtil;
import jc.m;
import vb.p;

/* compiled from: AnalyticsUtil.kt */
/* loaded from: classes.dex */
public final class c implements SupportAnalyticUtil {

    /* renamed from: b, reason: collision with root package name */
    public static final a f5701b = new a(null);

    /* renamed from: a, reason: collision with root package name */
    public FirebaseAnalytics f5702a;

    /* compiled from: AnalyticsUtil.kt */
    /* loaded from: classes.dex */
    public static final class a extends InstanceUtil<SupportAnalyticUtil, Context> {

        /* compiled from: AnalyticsUtil.kt */
        /* renamed from: d7.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0106a extends m implements l<Context, SupportAnalyticUtil> {

            /* renamed from: f, reason: collision with root package name */
            public static final C0106a f5703f = new C0106a();

            /* compiled from: AnalyticsUtil.kt */
            /* renamed from: d7.c$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0107a extends m implements ic.a<p> {

                /* renamed from: f, reason: collision with root package name */
                public final /* synthetic */ c f5704f;

                /* renamed from: g, reason: collision with root package name */
                public final /* synthetic */ Context f5705g;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0107a(c cVar, Context context) {
                    super(0);
                    this.f5704f = cVar;
                    this.f5705g = context;
                }

                public final void a() {
                    this.f5704f.c(this.f5705g);
                }

                @Override // ic.a
                public /* bridge */ /* synthetic */ p invoke() {
                    a();
                    return p.f15031a;
                }
            }

            public C0106a() {
                super(1);
            }

            @Override // ic.l
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final SupportAnalyticUtil invoke(Context context) {
                c cVar = new c(null);
                e7.a.a(cVar, new C0107a(cVar, context));
                return cVar;
            }
        }

        public a() {
            super(C0106a.f5703f);
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }
    }

    /* compiled from: AnalyticsUtil.kt */
    /* loaded from: classes.dex */
    public static final class b extends m implements ic.a<p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f5706f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f5707g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, String str2) {
            super(0);
            this.f5706f = str;
            this.f5707g = str2;
        }

        public final void a() {
            FirebaseCrashlytics.getInstance().log("E/" + this.f5706f + ": " + ((Object) this.f5707g));
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: AnalyticsUtil.kt */
    /* renamed from: d7.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0108c extends m implements ic.a<p> {

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f5709g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Bundle f5710h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0108c(String str, Bundle bundle) {
            super(0);
            this.f5709g = str;
            this.f5710h = bundle;
        }

        public final void a() {
            FirebaseAnalytics firebaseAnalytics = c.this.f5702a;
            if (firebaseAnalytics == null) {
                return;
            }
            firebaseAnalytics.logEvent(this.f5709g, this.f5710h);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    /* compiled from: AnalyticsUtil.kt */
    /* loaded from: classes.dex */
    public static final class d extends m implements ic.a<p> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Throwable f5711f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Throwable th) {
            super(0);
            this.f5711f = th;
        }

        public final void a() {
            FirebaseCrashlytics.getInstance().recordException(this.f5711f);
        }

        @Override // ic.a
        public /* bridge */ /* synthetic */ p invoke() {
            a();
            return p.f15031a;
        }
    }

    public c() {
    }

    public /* synthetic */ c(jc.g gVar) {
        this();
    }

    public final void c(Context context) {
        if (context == null) {
            return;
        }
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        this.f5702a = firebaseAnalytics;
        if (firebaseAnalytics == null) {
            return;
        }
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);
    }

    @Override // io.wax911.support.util.SupportAnalyticUtil
    public void log(String str, String str2) {
        jc.l.f(str, "tag");
        e7.a.a(this, new b(str, str2));
    }

    @Override // io.wax911.support.util.SupportAnalyticUtil
    public void logCurrentState(String str, Bundle bundle) {
        jc.l.f(str, "tag");
        e7.a.a(this, new C0108c(str, bundle));
    }

    @Override // io.wax911.support.util.SupportAnalyticUtil
    public void logException(Throwable th) {
        jc.l.f(th, "throwable");
        e7.a.a(this, new d(th));
    }
}

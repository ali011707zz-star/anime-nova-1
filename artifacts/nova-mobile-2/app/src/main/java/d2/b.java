package d2;

import android.os.Build;
import com.google.android.gms.common.api.Api;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: Configuration.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f5521a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f5522b;

    /* renamed from: c, reason: collision with root package name */
    public final x f5523c;

    /* renamed from: d, reason: collision with root package name */
    public final k f5524d;

    /* renamed from: e, reason: collision with root package name */
    public final s f5525e;

    /* renamed from: f, reason: collision with root package name */
    public final i f5526f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5527g;

    /* renamed from: h, reason: collision with root package name */
    public final int f5528h;

    /* renamed from: i, reason: collision with root package name */
    public final int f5529i;

    /* renamed from: j, reason: collision with root package name */
    public final int f5530j;

    /* renamed from: k, reason: collision with root package name */
    public final int f5531k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f5532l;

    /* compiled from: Configuration.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public Executor f5533a;

        /* renamed from: b, reason: collision with root package name */
        public x f5534b;

        /* renamed from: c, reason: collision with root package name */
        public k f5535c;

        /* renamed from: d, reason: collision with root package name */
        public Executor f5536d;

        /* renamed from: e, reason: collision with root package name */
        public s f5537e;

        /* renamed from: f, reason: collision with root package name */
        public i f5538f;

        /* renamed from: g, reason: collision with root package name */
        public String f5539g;

        /* renamed from: h, reason: collision with root package name */
        public int f5540h = 4;

        /* renamed from: i, reason: collision with root package name */
        public int f5541i = 0;

        /* renamed from: j, reason: collision with root package name */
        public int f5542j = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        /* renamed from: k, reason: collision with root package name */
        public int f5543k = 20;

        public b a() {
            return new b(this);
        }
    }

    /* compiled from: Configuration.java */
    /* renamed from: d2.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0097b {
        b a();
    }

    public b(a aVar) {
        Executor executor = aVar.f5533a;
        if (executor == null) {
            this.f5521a = a();
        } else {
            this.f5521a = executor;
        }
        Executor executor2 = aVar.f5536d;
        if (executor2 == null) {
            this.f5532l = true;
            this.f5522b = a();
        } else {
            this.f5532l = false;
            this.f5522b = executor2;
        }
        x xVar = aVar.f5534b;
        if (xVar == null) {
            this.f5523c = x.c();
        } else {
            this.f5523c = xVar;
        }
        k kVar = aVar.f5535c;
        if (kVar == null) {
            this.f5524d = k.c();
        } else {
            this.f5524d = kVar;
        }
        s sVar = aVar.f5537e;
        if (sVar == null) {
            this.f5525e = new e2.a();
        } else {
            this.f5525e = sVar;
        }
        this.f5528h = aVar.f5540h;
        this.f5529i = aVar.f5541i;
        this.f5530j = aVar.f5542j;
        this.f5531k = aVar.f5543k;
        this.f5526f = aVar.f5538f;
        this.f5527g = aVar.f5539g;
    }

    public final Executor a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    public String b() {
        return this.f5527g;
    }

    public i c() {
        return this.f5526f;
    }

    public Executor d() {
        return this.f5521a;
    }

    public k e() {
        return this.f5524d;
    }

    public int f() {
        return this.f5530j;
    }

    public int g() {
        if (Build.VERSION.SDK_INT == 23) {
            return this.f5531k / 2;
        }
        return this.f5531k;
    }

    public int h() {
        return this.f5529i;
    }

    public int i() {
        return this.f5528h;
    }

    public s j() {
        return this.f5525e;
    }

    public Executor k() {
        return this.f5522b;
    }

    public x l() {
        return this.f5523c;
    }
}

package k2;

import android.content.Context;

/* compiled from: Trackers.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: e, reason: collision with root package name */
    public static g f9881e;

    /* renamed from: a, reason: collision with root package name */
    public a f9882a;

    /* renamed from: b, reason: collision with root package name */
    public b f9883b;

    /* renamed from: c, reason: collision with root package name */
    public e f9884c;

    /* renamed from: d, reason: collision with root package name */
    public f f9885d;

    public g(Context context, p2.a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f9882a = new a(applicationContext, aVar);
        this.f9883b = new b(applicationContext, aVar);
        this.f9884c = new e(applicationContext, aVar);
        this.f9885d = new f(applicationContext, aVar);
    }

    public static synchronized g c(Context context, p2.a aVar) {
        g gVar;
        synchronized (g.class) {
            if (f9881e == null) {
                f9881e = new g(context, aVar);
            }
            gVar = f9881e;
        }
        return gVar;
    }

    public a a() {
        return this.f9882a;
    }

    public b b() {
        return this.f9883b;
    }

    public e d() {
        return this.f9884c;
    }

    public f e() {
        return this.f9885d;
    }
}

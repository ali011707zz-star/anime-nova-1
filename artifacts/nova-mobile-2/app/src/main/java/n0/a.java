package n0;

import android.graphics.Typeface;
import android.os.Handler;
import n0.e;
import n0.f;

/* compiled from: CallbackWithHandler.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final f.c f11116a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f11117b;

    /* compiled from: CallbackWithHandler.java */
    /* renamed from: n0.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0265a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f.c f11118f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Typeface f11119g;

        public RunnableC0265a(f.c cVar, Typeface typeface) {
            this.f11118f = cVar;
            this.f11119g = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11118f.b(this.f11119g);
        }
    }

    /* compiled from: CallbackWithHandler.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ f.c f11121f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ int f11122g;

        public b(f.c cVar, int i10) {
            this.f11121f = cVar;
            this.f11122g = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11121f.a(this.f11122g);
        }
    }

    public a(f.c cVar, Handler handler) {
        this.f11116a = cVar;
        this.f11117b = handler;
    }

    public final void a(int i10) {
        this.f11117b.post(new b(this.f11116a, i10));
    }

    public void b(e.C0266e c0266e) {
        if (c0266e.a()) {
            c(c0266e.f11145a);
        } else {
            a(c0266e.f11146b);
        }
    }

    public final void c(Typeface typeface) {
        this.f11117b.post(new RunnableC0265a(this.f11116a, typeface));
    }
}

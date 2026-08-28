package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import e8.c;
import e8.m;
import e8.n;
import e8.p;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: RequestManager.java */
/* loaded from: classes.dex */
public class j implements ComponentCallbacks2, e8.i {

    /* renamed from: r, reason: collision with root package name */
    public static final h8.h f4572r = h8.h.l0(Bitmap.class).M();

    /* renamed from: s, reason: collision with root package name */
    public static final h8.h f4573s = h8.h.l0(c8.c.class).M();

    /* renamed from: t, reason: collision with root package name */
    public static final h8.h f4574t = h8.h.m0(r7.j.f12974c).U(g.LOW).b0(true);

    /* renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.c f4575f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f4576g;

    /* renamed from: h, reason: collision with root package name */
    public final e8.h f4577h;

    /* renamed from: i, reason: collision with root package name */
    public final n f4578i;

    /* renamed from: j, reason: collision with root package name */
    public final m f4579j;

    /* renamed from: k, reason: collision with root package name */
    public final p f4580k;

    /* renamed from: l, reason: collision with root package name */
    public final Runnable f4581l;

    /* renamed from: m, reason: collision with root package name */
    public final Handler f4582m;

    /* renamed from: n, reason: collision with root package name */
    public final e8.c f4583n;

    /* renamed from: o, reason: collision with root package name */
    public final CopyOnWriteArrayList<h8.g<Object>> f4584o;

    /* renamed from: p, reason: collision with root package name */
    public h8.h f4585p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4586q;

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = j.this;
            jVar.f4577h.b(jVar);
        }
    }

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public static class b extends i8.d<View, Object> {
        public b(View view) {
            super(view);
        }

        @Override // i8.i
        public void c(Drawable drawable) {
        }

        @Override // i8.i
        public void i(Object obj, j8.d<? super Object> dVar) {
        }

        @Override // i8.d
        public void l(Drawable drawable) {
        }
    }

    /* compiled from: RequestManager.java */
    /* loaded from: classes.dex */
    public class c implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public final n f4588a;

        public c(n nVar) {
            this.f4588a = nVar;
        }

        @Override // e8.c.a
        public void a(boolean z10) {
            if (z10) {
                synchronized (j.this) {
                    this.f4588a.e();
                }
            }
        }
    }

    public j(com.bumptech.glide.c cVar, e8.h hVar, m mVar, Context context) {
        this(cVar, hVar, mVar, new n(), cVar.g(), context);
    }

    public final void A(i8.i<?> iVar) {
        boolean z10 = z(iVar);
        h8.d j10 = iVar.j();
        if (z10 || this.f4575f.p(iVar) || j10 == null) {
            return;
        }
        iVar.b(null);
        j10.clear();
    }

    public <ResourceType> i<ResourceType> a(Class<ResourceType> cls) {
        return new i<>(this.f4575f, this, cls, this.f4576g);
    }

    public i<Bitmap> d() {
        return a(Bitmap.class).a(f4572r);
    }

    public i<Drawable> g() {
        return a(Drawable.class);
    }

    public i<File> l() {
        return a(File.class).a(h8.h.p0(true));
    }

    public void m(View view) {
        n(new b(view));
    }

    public void n(i8.i<?> iVar) {
        if (iVar == null) {
            return;
        }
        A(iVar);
    }

    public List<h8.g<Object>> o() {
        return this.f4584o;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // e8.i
    public synchronized void onDestroy() {
        this.f4580k.onDestroy();
        Iterator<i8.i<?>> it2 = this.f4580k.d().iterator();
        while (it2.hasNext()) {
            n(it2.next());
        }
        this.f4580k.a();
        this.f4578i.b();
        this.f4577h.a(this);
        this.f4577h.a(this.f4583n);
        this.f4582m.removeCallbacks(this.f4581l);
        this.f4575f.s(this);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // e8.i
    public synchronized void onStart() {
        w();
        this.f4580k.onStart();
    }

    @Override // e8.i
    public synchronized void onStop() {
        v();
        this.f4580k.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        if (i10 == 60 && this.f4586q) {
            u();
        }
    }

    public synchronized h8.h p() {
        return this.f4585p;
    }

    public <T> k<?, T> q(Class<T> cls) {
        return this.f4575f.i().e(cls);
    }

    public i<Drawable> r(Integer num) {
        return g().w0(num);
    }

    public i<Drawable> s(String str) {
        return g().y0(str);
    }

    public synchronized void t() {
        this.f4578i.c();
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f4578i + ", treeNode=" + this.f4579j + "}";
    }

    public synchronized void u() {
        t();
        Iterator<j> it2 = this.f4579j.a().iterator();
        while (it2.hasNext()) {
            it2.next().t();
        }
    }

    public synchronized void v() {
        this.f4578i.d();
    }

    public synchronized void w() {
        this.f4578i.f();
    }

    public synchronized void x(h8.h hVar) {
        this.f4585p = hVar.e().b();
    }

    public synchronized void y(i8.i<?> iVar, h8.d dVar) {
        this.f4580k.g(iVar);
        this.f4578i.g(dVar);
    }

    public synchronized boolean z(i8.i<?> iVar) {
        h8.d j10 = iVar.j();
        if (j10 == null) {
            return true;
        }
        if (!this.f4578i.a(j10)) {
            return false;
        }
        this.f4580k.l(iVar);
        iVar.b(null);
        return true;
    }

    public j(com.bumptech.glide.c cVar, e8.h hVar, m mVar, n nVar, e8.d dVar, Context context) {
        this.f4580k = new p();
        a aVar = new a();
        this.f4581l = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f4582m = handler;
        this.f4575f = cVar;
        this.f4577h = hVar;
        this.f4579j = mVar;
        this.f4578i = nVar;
        this.f4576g = context;
        e8.c a10 = dVar.a(context.getApplicationContext(), new c(nVar));
        this.f4583n = a10;
        if (l8.k.p()) {
            handler.post(aVar);
        } else {
            hVar.b(this);
        }
        hVar.b(a10);
        this.f4584o = new CopyOnWriteArrayList<>(cVar.i().c());
        x(cVar.i().d());
        cVar.o(this);
    }
}

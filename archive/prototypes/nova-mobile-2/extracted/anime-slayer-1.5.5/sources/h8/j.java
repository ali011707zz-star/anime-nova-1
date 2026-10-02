package h8;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.load.engine.GlideException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import r7.k;
import r7.u;

/* compiled from: SingleRequest.java */
/* loaded from: classes.dex */
public final class j<R> implements d, i8.h, i {
    public static final boolean D = Log.isLoggable("Request", 2);
    public int A;
    public boolean B;
    public RuntimeException C;

    /* renamed from: a, reason: collision with root package name */
    public final String f7425a;

    /* renamed from: b, reason: collision with root package name */
    public final m8.c f7426b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7427c;

    /* renamed from: d, reason: collision with root package name */
    public final g<R> f7428d;

    /* renamed from: e, reason: collision with root package name */
    public final e f7429e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f7430f;

    /* renamed from: g, reason: collision with root package name */
    public final com.bumptech.glide.e f7431g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f7432h;

    /* renamed from: i, reason: collision with root package name */
    public final Class<R> f7433i;

    /* renamed from: j, reason: collision with root package name */
    public final h8.a<?> f7434j;

    /* renamed from: k, reason: collision with root package name */
    public final int f7435k;

    /* renamed from: l, reason: collision with root package name */
    public final int f7436l;

    /* renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.g f7437m;

    /* renamed from: n, reason: collision with root package name */
    public final i8.i<R> f7438n;

    /* renamed from: o, reason: collision with root package name */
    public final List<g<R>> f7439o;

    /* renamed from: p, reason: collision with root package name */
    public final j8.e<? super R> f7440p;

    /* renamed from: q, reason: collision with root package name */
    public final Executor f7441q;

    /* renamed from: r, reason: collision with root package name */
    public u<R> f7442r;

    /* renamed from: s, reason: collision with root package name */
    public k.d f7443s;

    /* renamed from: t, reason: collision with root package name */
    public long f7444t;

    /* renamed from: u, reason: collision with root package name */
    public volatile r7.k f7445u;

    /* renamed from: v, reason: collision with root package name */
    public a f7446v;

    /* renamed from: w, reason: collision with root package name */
    public Drawable f7447w;

    /* renamed from: x, reason: collision with root package name */
    public Drawable f7448x;

    /* renamed from: y, reason: collision with root package name */
    public Drawable f7449y;

    /* renamed from: z, reason: collision with root package name */
    public int f7450z;

    /* compiled from: SingleRequest.java */
    /* loaded from: classes.dex */
    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public j(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class<R> cls, h8.a<?> aVar, int i10, int i11, com.bumptech.glide.g gVar, i8.i<R> iVar, g<R> gVar2, List<g<R>> list, e eVar2, r7.k kVar, j8.e<? super R> eVar3, Executor executor) {
        this.f7425a = D ? String.valueOf(super.hashCode()) : null;
        this.f7426b = m8.c.a();
        this.f7427c = obj;
        this.f7430f = context;
        this.f7431g = eVar;
        this.f7432h = obj2;
        this.f7433i = cls;
        this.f7434j = aVar;
        this.f7435k = i10;
        this.f7436l = i11;
        this.f7437m = gVar;
        this.f7438n = iVar;
        this.f7428d = gVar2;
        this.f7439o = list;
        this.f7429e = eVar2;
        this.f7445u = kVar;
        this.f7440p = eVar3;
        this.f7441q = executor;
        this.f7446v = a.PENDING;
        if (this.C == null && eVar.i()) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    public static int u(int i10, float f10) {
        return i10 == Integer.MIN_VALUE ? i10 : Math.round(f10 * i10);
    }

    public static <R> j<R> x(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class<R> cls, h8.a<?> aVar, int i10, int i11, com.bumptech.glide.g gVar, i8.i<R> iVar, g<R> gVar2, List<g<R>> list, e eVar2, r7.k kVar, j8.e<? super R> eVar3, Executor executor) {
        return new j<>(context, eVar, obj, obj2, cls, aVar, i10, i11, gVar, iVar, gVar2, list, eVar2, kVar, eVar3, executor);
    }

    public final void A() {
        if (l()) {
            Drawable p10 = this.f7432h == null ? p() : null;
            if (p10 == null) {
                p10 = o();
            }
            if (p10 == null) {
                p10 = q();
            }
            this.f7438n.c(p10);
        }
    }

    @Override // h8.i
    public void a(GlideException glideException) {
        y(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h8.i
    public void b(u<?> uVar, p7.a aVar) {
        this.f7426b.c();
        u<?> uVar2 = null;
        try {
            synchronized (this.f7427c) {
                try {
                    this.f7443s = null;
                    if (uVar == null) {
                        a(new GlideException("Expected to receive a Resource<R> with an object of " + this.f7433i + " inside, but instead got null."));
                        return;
                    }
                    Object obj = uVar.get();
                    try {
                        if (obj != null && this.f7433i.isAssignableFrom(obj.getClass())) {
                            if (!m()) {
                                this.f7442r = null;
                                this.f7446v = a.COMPLETE;
                                this.f7445u.k(uVar);
                                return;
                            }
                            z(uVar, obj, aVar);
                            return;
                        }
                        this.f7442r = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append(this.f7433i);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(uVar);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        a(new GlideException(sb2.toString()));
                        this.f7445u.k(uVar);
                    } catch (Throwable th) {
                        uVar2 = uVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (uVar2 != null) {
                this.f7445u.k(uVar2);
            }
            throw th3;
        }
    }

    @Override // h8.d
    public boolean c() {
        boolean z10;
        synchronized (this.f7427c) {
            z10 = this.f7446v == a.COMPLETE;
        }
        return z10;
    }

    @Override // h8.d
    public void clear() {
        synchronized (this.f7427c) {
            h();
            this.f7426b.c();
            a aVar = this.f7446v;
            a aVar2 = a.CLEARED;
            if (aVar == aVar2) {
                return;
            }
            n();
            u<R> uVar = this.f7442r;
            if (uVar != null) {
                this.f7442r = null;
            } else {
                uVar = null;
            }
            if (i()) {
                this.f7438n.k(q());
            }
            this.f7446v = aVar2;
            if (uVar != null) {
                this.f7445u.k(uVar);
            }
        }
    }

    @Override // h8.d
    public void d() {
        synchronized (this.f7427c) {
            if (isRunning()) {
                clear();
            }
        }
    }

    @Override // h8.i
    public Object e() {
        this.f7426b.c();
        return this.f7427c;
    }

    @Override // i8.h
    public void f(int i10, int i11) {
        Object obj;
        this.f7426b.c();
        Object obj2 = this.f7427c;
        synchronized (obj2) {
            try {
                try {
                    boolean z10 = D;
                    if (z10) {
                        t("Got onSizeReady in " + l8.f.a(this.f7444t));
                    }
                    if (this.f7446v == a.WAITING_FOR_SIZE) {
                        a aVar = a.RUNNING;
                        this.f7446v = aVar;
                        float y10 = this.f7434j.y();
                        this.f7450z = u(i10, y10);
                        this.A = u(i11, y10);
                        if (z10) {
                            t("finished setup for calling load in " + l8.f.a(this.f7444t));
                        }
                        obj = obj2;
                        try {
                            this.f7443s = this.f7445u.f(this.f7431g, this.f7432h, this.f7434j.x(), this.f7450z, this.A, this.f7434j.w(), this.f7433i, this.f7437m, this.f7434j.k(), this.f7434j.A(), this.f7434j.J(), this.f7434j.F(), this.f7434j.q(), this.f7434j.D(), this.f7434j.C(), this.f7434j.B(), this.f7434j.p(), this, this.f7441q);
                            if (this.f7446v != aVar) {
                                this.f7443s = null;
                            }
                            if (z10) {
                                t("finished onSizeReady in " + l8.f.a(this.f7444t));
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
    }

    @Override // h8.d
    public boolean g() {
        boolean z10;
        synchronized (this.f7427c) {
            z10 = this.f7446v == a.CLEARED;
        }
        return z10;
    }

    public final void h() {
        if (this.B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    public final boolean i() {
        e eVar = this.f7429e;
        return eVar == null || eVar.f(this);
    }

    @Override // h8.d
    public boolean isComplete() {
        boolean z10;
        synchronized (this.f7427c) {
            z10 = this.f7446v == a.COMPLETE;
        }
        return z10;
    }

    @Override // h8.d
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f7427c) {
            a aVar = this.f7446v;
            z10 = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
        }
        return z10;
    }

    @Override // h8.d
    public void j() {
        synchronized (this.f7427c) {
            h();
            this.f7426b.c();
            this.f7444t = l8.f.b();
            if (this.f7432h == null) {
                if (l8.k.s(this.f7435k, this.f7436l)) {
                    this.f7450z = this.f7435k;
                    this.A = this.f7436l;
                }
                y(new GlideException("Received null model"), p() == null ? 5 : 3);
                return;
            }
            a aVar = this.f7446v;
            a aVar2 = a.RUNNING;
            if (aVar != aVar2) {
                if (aVar == a.COMPLETE) {
                    b(this.f7442r, p7.a.MEMORY_CACHE);
                    return;
                }
                a aVar3 = a.WAITING_FOR_SIZE;
                this.f7446v = aVar3;
                if (l8.k.s(this.f7435k, this.f7436l)) {
                    f(this.f7435k, this.f7436l);
                } else {
                    this.f7438n.e(this);
                }
                a aVar4 = this.f7446v;
                if ((aVar4 == aVar2 || aVar4 == aVar3) && l()) {
                    this.f7438n.f(q());
                }
                if (D) {
                    t("finished run method in " + l8.f.a(this.f7444t));
                }
                return;
            }
            throw new IllegalArgumentException("Cannot restart a running request");
        }
    }

    @Override // h8.d
    public boolean k(d dVar) {
        int i10;
        int i11;
        Object obj;
        Class<R> cls;
        h8.a<?> aVar;
        com.bumptech.glide.g gVar;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class<R> cls2;
        h8.a<?> aVar2;
        com.bumptech.glide.g gVar2;
        int size2;
        if (!(dVar instanceof j)) {
            return false;
        }
        synchronized (this.f7427c) {
            i10 = this.f7435k;
            i11 = this.f7436l;
            obj = this.f7432h;
            cls = this.f7433i;
            aVar = this.f7434j;
            gVar = this.f7437m;
            List<g<R>> list = this.f7439o;
            size = list != null ? list.size() : 0;
        }
        j jVar = (j) dVar;
        synchronized (jVar.f7427c) {
            i12 = jVar.f7435k;
            i13 = jVar.f7436l;
            obj2 = jVar.f7432h;
            cls2 = jVar.f7433i;
            aVar2 = jVar.f7434j;
            gVar2 = jVar.f7437m;
            List<g<R>> list2 = jVar.f7439o;
            size2 = list2 != null ? list2.size() : 0;
        }
        return i10 == i12 && i11 == i13 && l8.k.c(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && gVar == gVar2 && size == size2;
    }

    public final boolean l() {
        e eVar = this.f7429e;
        return eVar == null || eVar.e(this);
    }

    public final boolean m() {
        e eVar = this.f7429e;
        return eVar == null || eVar.a(this);
    }

    public final void n() {
        h();
        this.f7426b.c();
        this.f7438n.h(this);
        k.d dVar = this.f7443s;
        if (dVar != null) {
            dVar.a();
            this.f7443s = null;
        }
    }

    public final Drawable o() {
        if (this.f7447w == null) {
            Drawable m10 = this.f7434j.m();
            this.f7447w = m10;
            if (m10 == null && this.f7434j.l() > 0) {
                this.f7447w = s(this.f7434j.l());
            }
        }
        return this.f7447w;
    }

    public final Drawable p() {
        if (this.f7449y == null) {
            Drawable n10 = this.f7434j.n();
            this.f7449y = n10;
            if (n10 == null && this.f7434j.o() > 0) {
                this.f7449y = s(this.f7434j.o());
            }
        }
        return this.f7449y;
    }

    public final Drawable q() {
        if (this.f7448x == null) {
            Drawable t10 = this.f7434j.t();
            this.f7448x = t10;
            if (t10 == null && this.f7434j.u() > 0) {
                this.f7448x = s(this.f7434j.u());
            }
        }
        return this.f7448x;
    }

    public final boolean r() {
        e eVar = this.f7429e;
        return eVar == null || !eVar.i().c();
    }

    public final Drawable s(int i10) {
        return a8.a.a(this.f7431g, i10, this.f7434j.z() != null ? this.f7434j.z() : this.f7430f.getTheme());
    }

    public final void t(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" this: ");
        sb2.append(this.f7425a);
    }

    public final void v() {
        e eVar = this.f7429e;
        if (eVar != null) {
            eVar.h(this);
        }
    }

    public final void w() {
        e eVar = this.f7429e;
        if (eVar != null) {
            eVar.b(this);
        }
    }

    public final void y(GlideException glideException, int i10) {
        boolean z10;
        this.f7426b.c();
        synchronized (this.f7427c) {
            glideException.k(this.C);
            int g10 = this.f7431g.g();
            if (g10 <= i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Load failed for ");
                sb2.append(this.f7432h);
                sb2.append(" with size [");
                sb2.append(this.f7450z);
                sb2.append("x");
                sb2.append(this.A);
                sb2.append("]");
                if (g10 <= 4) {
                    glideException.g("Glide");
                }
            }
            this.f7443s = null;
            this.f7446v = a.FAILED;
            boolean z11 = true;
            this.B = true;
            try {
                List<g<R>> list = this.f7439o;
                if (list != null) {
                    Iterator<g<R>> it2 = list.iterator();
                    z10 = false;
                    while (it2.hasNext()) {
                        z10 |= it2.next().a(glideException, this.f7432h, this.f7438n, r());
                    }
                } else {
                    z10 = false;
                }
                g<R> gVar = this.f7428d;
                if (gVar == null || !gVar.a(glideException, this.f7432h, this.f7438n, r())) {
                    z11 = false;
                }
                if (!(z10 | z11)) {
                    A();
                }
                this.B = false;
                v();
            } catch (Throwable th) {
                this.B = false;
                throw th;
            }
        }
    }

    public final void z(u<R> uVar, R r10, p7.a aVar) {
        boolean z10;
        boolean r11 = r();
        this.f7446v = a.COMPLETE;
        this.f7442r = uVar;
        if (this.f7431g.g() <= 3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Finished loading ");
            sb2.append(r10.getClass().getSimpleName());
            sb2.append(" from ");
            sb2.append(aVar);
            sb2.append(" for ");
            sb2.append(this.f7432h);
            sb2.append(" with size [");
            sb2.append(this.f7450z);
            sb2.append("x");
            sb2.append(this.A);
            sb2.append("] in ");
            sb2.append(l8.f.a(this.f7444t));
            sb2.append(" ms");
        }
        boolean z11 = true;
        this.B = true;
        try {
            List<g<R>> list = this.f7439o;
            if (list != null) {
                Iterator<g<R>> it2 = list.iterator();
                z10 = false;
                while (it2.hasNext()) {
                    z10 |= it2.next().d(r10, this.f7432h, this.f7438n, aVar, r11);
                }
            } else {
                z10 = false;
            }
            g<R> gVar = this.f7428d;
            if (gVar == null || !gVar.d(r10, this.f7432h, this.f7438n, aVar, r11)) {
                z11 = false;
            }
            if (!(z11 | z10)) {
                this.f7438n.i(r10, this.f7440p.a(aVar, r11));
            }
            this.B = false;
            w();
        } catch (Throwable th) {
            this.B = false;
            throw th;
        }
    }
}

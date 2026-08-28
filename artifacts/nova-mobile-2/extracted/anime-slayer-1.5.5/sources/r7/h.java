package r7;

import android.os.Build;
import android.util.Log;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import m8.a;
import r7.f;
import r7.i;

/* compiled from: DecodeJob.java */
/* loaded from: classes.dex */
public class h<R> implements f.a, Runnable, Comparable<h<?>>, a.f {
    public Object A;
    public Thread B;
    public p7.e C;
    public p7.e D;
    public Object E;
    public p7.a F;
    public com.bumptech.glide.load.data.d<?> G;
    public volatile r7.f H;
    public volatile boolean I;
    public volatile boolean J;

    /* renamed from: i, reason: collision with root package name */
    public final e f12927i;

    /* renamed from: j, reason: collision with root package name */
    public final p0.f<h<?>> f12928j;

    /* renamed from: m, reason: collision with root package name */
    public com.bumptech.glide.e f12931m;

    /* renamed from: n, reason: collision with root package name */
    public p7.e f12932n;

    /* renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.g f12933o;

    /* renamed from: p, reason: collision with root package name */
    public n f12934p;

    /* renamed from: q, reason: collision with root package name */
    public int f12935q;

    /* renamed from: r, reason: collision with root package name */
    public int f12936r;

    /* renamed from: s, reason: collision with root package name */
    public j f12937s;

    /* renamed from: t, reason: collision with root package name */
    public p7.g f12938t;

    /* renamed from: u, reason: collision with root package name */
    public b<R> f12939u;

    /* renamed from: v, reason: collision with root package name */
    public int f12940v;

    /* renamed from: w, reason: collision with root package name */
    public EnumC0322h f12941w;

    /* renamed from: x, reason: collision with root package name */
    public g f12942x;

    /* renamed from: y, reason: collision with root package name */
    public long f12943y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f12944z;

    /* renamed from: f, reason: collision with root package name */
    public final r7.g<R> f12924f = new r7.g<>();

    /* renamed from: g, reason: collision with root package name */
    public final List<Throwable> f12925g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final m8.c f12926h = m8.c.a();

    /* renamed from: k, reason: collision with root package name */
    public final d<?> f12929k = new d<>();

    /* renamed from: l, reason: collision with root package name */
    public final f f12930l = new f();

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12945a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f12946b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f12947c;

        static {
            int[] iArr = new int[p7.c.values().length];
            f12947c = iArr;
            try {
                iArr[p7.c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12947c[p7.c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC0322h.values().length];
            f12946b = iArr2;
            try {
                iArr2[EnumC0322h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12946b[EnumC0322h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12946b[EnumC0322h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12946b[EnumC0322h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12946b[EnumC0322h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[g.values().length];
            f12945a = iArr3;
            try {
                iArr3[g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12945a[g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12945a[g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface b<R> {
        void a(GlideException glideException);

        void b(u<R> uVar, p7.a aVar);

        void c(h<?> hVar);
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public final class c<Z> implements i.a<Z> {

        /* renamed from: a, reason: collision with root package name */
        public final p7.a f12948a;

        public c(p7.a aVar) {
            this.f12948a = aVar;
        }

        @Override // r7.i.a
        public u<Z> a(u<Z> uVar) {
            return h.this.v(this.f12948a, uVar);
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class d<Z> {

        /* renamed from: a, reason: collision with root package name */
        public p7.e f12950a;

        /* renamed from: b, reason: collision with root package name */
        public p7.j<Z> f12951b;

        /* renamed from: c, reason: collision with root package name */
        public t<Z> f12952c;

        public void a() {
            this.f12950a = null;
            this.f12951b = null;
            this.f12952c = null;
        }

        public void b(e eVar, p7.g gVar) {
            m8.b.a("DecodeJob.encode");
            try {
                eVar.a().a(this.f12950a, new r7.e(this.f12951b, this.f12952c, gVar));
            } finally {
                this.f12952c.h();
                m8.b.d();
            }
        }

        public boolean c() {
            return this.f12952c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <X> void d(p7.e eVar, p7.j<X> jVar, t<X> tVar) {
            this.f12950a = eVar;
            this.f12951b = jVar;
            this.f12952c = tVar;
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public interface e {
        t7.a a();
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public boolean f12953a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f12954b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f12955c;

        public final boolean a(boolean z10) {
            return (this.f12955c || z10 || this.f12954b) && this.f12953a;
        }

        public synchronized boolean b() {
            this.f12954b = true;
            return a(false);
        }

        public synchronized boolean c() {
            this.f12955c = true;
            return a(false);
        }

        public synchronized boolean d(boolean z10) {
            this.f12953a = true;
            return a(z10);
        }

        public synchronized void e() {
            this.f12954b = false;
            this.f12953a = false;
            this.f12955c = false;
        }
    }

    /* compiled from: DecodeJob.java */
    /* loaded from: classes.dex */
    public enum g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* compiled from: DecodeJob.java */
    /* renamed from: r7.h$h, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0322h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public h(e eVar, p0.f<h<?>> fVar) {
        this.f12927i = eVar;
        this.f12928j = fVar;
    }

    public final void A() {
        int i10 = a.f12945a[this.f12942x.ordinal()];
        if (i10 == 1) {
            this.f12941w = k(EnumC0322h.INITIALIZE);
            this.H = j();
            y();
        } else if (i10 == 2) {
            y();
        } else {
            if (i10 == 3) {
                i();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.f12942x);
        }
    }

    public final void B() {
        Throwable th;
        this.f12926h.c();
        if (this.I) {
            if (this.f12925g.isEmpty()) {
                th = null;
            } else {
                List<Throwable> list = this.f12925g;
                th = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.I = true;
    }

    public boolean C() {
        EnumC0322h k10 = k(EnumC0322h.INITIALIZE);
        return k10 == EnumC0322h.RESOURCE_CACHE || k10 == EnumC0322h.DATA_CACHE;
    }

    @Override // r7.f.a
    public void a() {
        this.f12942x = g.SWITCH_TO_SOURCE_SERVICE;
        this.f12939u.c(this);
    }

    @Override // r7.f.a
    public void b(p7.e eVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, p7.a aVar) {
        dVar.b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.j(eVar, aVar, dVar.a());
        this.f12925g.add(glideException);
        if (Thread.currentThread() != this.B) {
            this.f12942x = g.SWITCH_TO_SOURCE_SERVICE;
            this.f12939u.c(this);
        } else {
            y();
        }
    }

    @Override // r7.f.a
    public void c(p7.e eVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, p7.a aVar, p7.e eVar2) {
        this.C = eVar;
        this.E = obj;
        this.G = dVar;
        this.F = aVar;
        this.D = eVar2;
        if (Thread.currentThread() != this.B) {
            this.f12942x = g.DECODE_DATA;
            this.f12939u.c(this);
        } else {
            m8.b.a("DecodeJob.decodeFromRetrievedData");
            try {
                i();
            } finally {
                m8.b.d();
            }
        }
    }

    @Override // m8.a.f
    public m8.c d() {
        return this.f12926h;
    }

    public void e() {
        this.J = true;
        r7.f fVar = this.H;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public int compareTo(h<?> hVar) {
        int m10 = m() - hVar.m();
        return m10 == 0 ? this.f12940v - hVar.f12940v : m10;
    }

    public final <Data> u<R> g(com.bumptech.glide.load.data.d<?> dVar, Data data, p7.a aVar) throws GlideException {
        if (data == null) {
            return null;
        }
        try {
            long b10 = l8.f.b();
            u<R> h10 = h(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                o("Decoded result " + h10, b10);
            }
            return h10;
        } finally {
            dVar.b();
        }
    }

    public final <Data> u<R> h(Data data, p7.a aVar) throws GlideException {
        return z(data, aVar, this.f12924f.h(data.getClass()));
    }

    public final void i() {
        if (Log.isLoggable("DecodeJob", 2)) {
            p("Retrieved data", this.f12943y, "data: " + this.E + ", cache key: " + this.C + ", fetcher: " + this.G);
        }
        u<R> uVar = null;
        try {
            uVar = g(this.G, this.E, this.F);
        } catch (GlideException e10) {
            e10.i(this.D, this.F);
            this.f12925g.add(e10);
        }
        if (uVar != null) {
            r(uVar, this.F);
        } else {
            y();
        }
    }

    public final r7.f j() {
        int i10 = a.f12946b[this.f12941w.ordinal()];
        if (i10 == 1) {
            return new v(this.f12924f, this);
        }
        if (i10 == 2) {
            return new r7.c(this.f12924f, this);
        }
        if (i10 == 3) {
            return new y(this.f12924f, this);
        }
        if (i10 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.f12941w);
    }

    public final EnumC0322h k(EnumC0322h enumC0322h) {
        int i10 = a.f12946b[enumC0322h.ordinal()];
        if (i10 == 1) {
            if (this.f12937s.a()) {
                return EnumC0322h.DATA_CACHE;
            }
            return k(EnumC0322h.DATA_CACHE);
        }
        if (i10 == 2) {
            return this.f12944z ? EnumC0322h.FINISHED : EnumC0322h.SOURCE;
        }
        if (i10 == 3 || i10 == 4) {
            return EnumC0322h.FINISHED;
        }
        if (i10 == 5) {
            if (this.f12937s.b()) {
                return EnumC0322h.RESOURCE_CACHE;
            }
            return k(EnumC0322h.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + enumC0322h);
    }

    public final p7.g l(p7.a aVar) {
        p7.g gVar = this.f12938t;
        if (Build.VERSION.SDK_INT < 26) {
            return gVar;
        }
        boolean z10 = aVar == p7.a.RESOURCE_DISK_CACHE || this.f12924f.w();
        p7.f<Boolean> fVar = y7.m.f16680j;
        Boolean bool = (Boolean) gVar.c(fVar);
        if (bool != null && (!bool.booleanValue() || z10)) {
            return gVar;
        }
        p7.g gVar2 = new p7.g();
        gVar2.d(this.f12938t);
        gVar2.e(fVar, Boolean.valueOf(z10));
        return gVar2;
    }

    public final int m() {
        return this.f12933o.ordinal();
    }

    public h<R> n(com.bumptech.glide.e eVar, Object obj, n nVar, p7.e eVar2, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.g gVar, j jVar, Map<Class<?>, p7.k<?>> map, boolean z10, boolean z11, boolean z12, p7.g gVar2, b<R> bVar, int i12) {
        this.f12924f.u(eVar, obj, eVar2, i10, i11, jVar, cls, cls2, gVar, gVar2, map, z10, z11, this.f12927i);
        this.f12931m = eVar;
        this.f12932n = eVar2;
        this.f12933o = gVar;
        this.f12934p = nVar;
        this.f12935q = i10;
        this.f12936r = i11;
        this.f12937s = jVar;
        this.f12944z = z12;
        this.f12938t = gVar2;
        this.f12939u = bVar;
        this.f12940v = i12;
        this.f12942x = g.INITIALIZE;
        this.A = obj;
        return this;
    }

    public final void o(String str, long j10) {
        p(str, j10, null);
    }

    public final void p(String str, long j10, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" in ");
        sb2.append(l8.f.a(j10));
        sb2.append(", load key: ");
        sb2.append(this.f12934p);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", thread: ");
        sb2.append(Thread.currentThread().getName());
    }

    public final void q(u<R> uVar, p7.a aVar) {
        B();
        this.f12939u.b(uVar, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r(u<R> uVar, p7.a aVar) {
        if (uVar instanceof q) {
            ((q) uVar).initialize();
        }
        t tVar = 0;
        if (this.f12929k.c()) {
            uVar = t.f(uVar);
            tVar = uVar;
        }
        q(uVar, aVar);
        this.f12941w = EnumC0322h.ENCODE;
        try {
            if (this.f12929k.c()) {
                this.f12929k.b(this.f12927i, this.f12938t);
            }
            t();
        } finally {
            if (tVar != 0) {
                tVar.h();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        m8.b.b("DecodeJob#run(model=%s)", this.A);
        com.bumptech.glide.load.data.d<?> dVar = this.G;
        try {
            try {
                if (this.J) {
                    s();
                    return;
                }
                A();
                if (dVar != null) {
                    dVar.b();
                }
                m8.b.d();
            } finally {
                if (dVar != null) {
                    dVar.b();
                }
                m8.b.d();
            }
        } catch (r7.b e10) {
            throw e10;
        } catch (Throwable th) {
            if (Log.isLoggable("DecodeJob", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("DecodeJob threw unexpectedly, isCancelled: ");
                sb2.append(this.J);
                sb2.append(", stage: ");
                sb2.append(this.f12941w);
            }
            if (this.f12941w != EnumC0322h.ENCODE) {
                this.f12925g.add(th);
                s();
            }
            if (!this.J) {
                throw th;
            }
            throw th;
        }
    }

    public final void s() {
        B();
        this.f12939u.a(new GlideException("Failed to load resource", new ArrayList(this.f12925g)));
        u();
    }

    public final void t() {
        if (this.f12930l.b()) {
            x();
        }
    }

    public final void u() {
        if (this.f12930l.c()) {
            x();
        }
    }

    public <Z> u<Z> v(p7.a aVar, u<Z> uVar) {
        u<Z> uVar2;
        p7.k<Z> kVar;
        p7.c cVar;
        p7.e dVar;
        Class<?> cls = uVar.get().getClass();
        p7.j<Z> jVar = null;
        if (aVar != p7.a.RESOURCE_DISK_CACHE) {
            p7.k<Z> r10 = this.f12924f.r(cls);
            kVar = r10;
            uVar2 = r10.a(this.f12931m, uVar, this.f12935q, this.f12936r);
        } else {
            uVar2 = uVar;
            kVar = null;
        }
        if (!uVar.equals(uVar2)) {
            uVar.b();
        }
        if (this.f12924f.v(uVar2)) {
            jVar = this.f12924f.n(uVar2);
            cVar = jVar.a(this.f12938t);
        } else {
            cVar = p7.c.NONE;
        }
        p7.j jVar2 = jVar;
        if (!this.f12937s.d(!this.f12924f.x(this.C), aVar, cVar)) {
            return uVar2;
        }
        if (jVar2 != null) {
            int i10 = a.f12947c[cVar.ordinal()];
            if (i10 == 1) {
                dVar = new r7.d(this.C, this.f12932n);
            } else if (i10 == 2) {
                dVar = new w(this.f12924f.b(), this.C, this.f12932n, this.f12935q, this.f12936r, kVar, cls, this.f12938t);
            } else {
                throw new IllegalArgumentException("Unknown strategy: " + cVar);
            }
            t f10 = t.f(uVar2);
            this.f12929k.d(dVar, jVar2, f10);
            return f10;
        }
        throw new Registry.NoResultEncoderAvailableException(uVar2.get().getClass());
    }

    public void w(boolean z10) {
        if (this.f12930l.d(z10)) {
            x();
        }
    }

    public final void x() {
        this.f12930l.e();
        this.f12929k.a();
        this.f12924f.a();
        this.I = false;
        this.f12931m = null;
        this.f12932n = null;
        this.f12938t = null;
        this.f12933o = null;
        this.f12934p = null;
        this.f12939u = null;
        this.f12941w = null;
        this.H = null;
        this.B = null;
        this.C = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.f12943y = 0L;
        this.J = false;
        this.A = null;
        this.f12925g.clear();
        this.f12928j.a(this);
    }

    public final void y() {
        this.B = Thread.currentThread();
        this.f12943y = l8.f.b();
        boolean z10 = false;
        while (!this.J && this.H != null && !(z10 = this.H.e())) {
            this.f12941w = k(this.f12941w);
            this.H = j();
            if (this.f12941w == EnumC0322h.SOURCE) {
                a();
                return;
            }
        }
        if ((this.f12941w == EnumC0322h.FINISHED || this.J) && !z10) {
            s();
        }
    }

    public final <Data, ResourceType> u<R> z(Data data, p7.a aVar, s<Data, ResourceType, R> sVar) throws GlideException {
        p7.g l10 = l(aVar);
        com.bumptech.glide.load.data.e<Data> l11 = this.f12931m.h().l(data);
        try {
            return sVar.a(l11, l10, this.f12935q, this.f12936r, new c(aVar));
        } finally {
            l11.b();
        }
    }
}

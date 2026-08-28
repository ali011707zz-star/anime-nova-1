package c8;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import p7.k;

/* compiled from: GifFrameLoader.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public final o7.a f3742a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f3743b;

    /* renamed from: c, reason: collision with root package name */
    public final List<b> f3744c;

    /* renamed from: d, reason: collision with root package name */
    public final com.bumptech.glide.j f3745d;

    /* renamed from: e, reason: collision with root package name */
    public final s7.e f3746e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3747f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3748g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3749h;

    /* renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.i<Bitmap> f3750i;

    /* renamed from: j, reason: collision with root package name */
    public a f3751j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3752k;

    /* renamed from: l, reason: collision with root package name */
    public a f3753l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f3754m;

    /* renamed from: n, reason: collision with root package name */
    public k<Bitmap> f3755n;

    /* renamed from: o, reason: collision with root package name */
    public a f3756o;

    /* renamed from: p, reason: collision with root package name */
    public d f3757p;

    /* renamed from: q, reason: collision with root package name */
    public int f3758q;

    /* renamed from: r, reason: collision with root package name */
    public int f3759r;

    /* renamed from: s, reason: collision with root package name */
    public int f3760s;

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public static class a extends i8.c<Bitmap> {

        /* renamed from: i, reason: collision with root package name */
        public final Handler f3761i;

        /* renamed from: j, reason: collision with root package name */
        public final int f3762j;

        /* renamed from: k, reason: collision with root package name */
        public final long f3763k;

        /* renamed from: l, reason: collision with root package name */
        public Bitmap f3764l;

        public a(Handler handler, int i10, long j10) {
            this.f3761i = handler;
            this.f3762j = i10;
            this.f3763k = j10;
        }

        public Bitmap a() {
            return this.f3764l;
        }

        @Override // i8.i
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void i(Bitmap bitmap, j8.d<? super Bitmap> dVar) {
            this.f3764l = bitmap;
            this.f3761i.sendMessageAtTime(this.f3761i.obtainMessage(1, this), this.f3763k);
        }

        @Override // i8.i
        public void k(Drawable drawable) {
            this.f3764l = null;
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public class c implements Handler.Callback {
        public c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                g.this.m((a) message.obj);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            g.this.f3745d.n((a) message.obj);
            return false;
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* loaded from: classes.dex */
    public interface d {
        void a();
    }

    public g(com.bumptech.glide.c cVar, o7.a aVar, int i10, int i11, k<Bitmap> kVar, Bitmap bitmap) {
        this(cVar.f(), com.bumptech.glide.c.t(cVar.h()), aVar, null, i(com.bumptech.glide.c.t(cVar.h()), i10, i11), kVar, bitmap);
    }

    public static p7.e g() {
        return new k8.d(Double.valueOf(Math.random()));
    }

    public static com.bumptech.glide.i<Bitmap> i(com.bumptech.glide.j jVar, int i10, int i11) {
        return jVar.d().a(h8.h.m0(r7.j.f12973b).i0(true).b0(true).S(i10, i11));
    }

    public void a() {
        this.f3744c.clear();
        n();
        q();
        a aVar = this.f3751j;
        if (aVar != null) {
            this.f3745d.n(aVar);
            this.f3751j = null;
        }
        a aVar2 = this.f3753l;
        if (aVar2 != null) {
            this.f3745d.n(aVar2);
            this.f3753l = null;
        }
        a aVar3 = this.f3756o;
        if (aVar3 != null) {
            this.f3745d.n(aVar3);
            this.f3756o = null;
        }
        this.f3742a.clear();
        this.f3752k = true;
    }

    public ByteBuffer b() {
        return this.f3742a.getData().asReadOnlyBuffer();
    }

    public Bitmap c() {
        a aVar = this.f3751j;
        return aVar != null ? aVar.a() : this.f3754m;
    }

    public int d() {
        a aVar = this.f3751j;
        if (aVar != null) {
            return aVar.f3762j;
        }
        return -1;
    }

    public Bitmap e() {
        return this.f3754m;
    }

    public int f() {
        return this.f3742a.d();
    }

    public int h() {
        return this.f3760s;
    }

    public int j() {
        return this.f3742a.f() + this.f3758q;
    }

    public int k() {
        return this.f3759r;
    }

    public final void l() {
        if (!this.f3747f || this.f3748g) {
            return;
        }
        if (this.f3749h) {
            l8.j.a(this.f3756o == null, "Pending target must be null when starting from the first frame");
            this.f3742a.h();
            this.f3749h = false;
        }
        a aVar = this.f3756o;
        if (aVar != null) {
            this.f3756o = null;
            m(aVar);
            return;
        }
        this.f3748g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f3742a.e();
        this.f3742a.c();
        this.f3753l = new a(this.f3743b, this.f3742a.a(), uptimeMillis);
        this.f3750i.a(h8.h.o0(g())).x0(this.f3742a).r0(this.f3753l);
    }

    public void m(a aVar) {
        d dVar = this.f3757p;
        if (dVar != null) {
            dVar.a();
        }
        this.f3748g = false;
        if (this.f3752k) {
            this.f3743b.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f3747f) {
            this.f3756o = aVar;
            return;
        }
        if (aVar.a() != null) {
            n();
            a aVar2 = this.f3751j;
            this.f3751j = aVar;
            for (int size = this.f3744c.size() - 1; size >= 0; size--) {
                this.f3744c.get(size).a();
            }
            if (aVar2 != null) {
                this.f3743b.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        l();
    }

    public final void n() {
        Bitmap bitmap = this.f3754m;
        if (bitmap != null) {
            this.f3746e.d(bitmap);
            this.f3754m = null;
        }
    }

    public void o(k<Bitmap> kVar, Bitmap bitmap) {
        this.f3755n = (k) l8.j.d(kVar);
        this.f3754m = (Bitmap) l8.j.d(bitmap);
        this.f3750i = this.f3750i.a(new h8.h().f0(kVar));
        this.f3758q = l8.k.h(bitmap);
        this.f3759r = bitmap.getWidth();
        this.f3760s = bitmap.getHeight();
    }

    public final void p() {
        if (this.f3747f) {
            return;
        }
        this.f3747f = true;
        this.f3752k = false;
        l();
    }

    public final void q() {
        this.f3747f = false;
    }

    public void r(b bVar) {
        if (!this.f3752k) {
            if (!this.f3744c.contains(bVar)) {
                boolean isEmpty = this.f3744c.isEmpty();
                this.f3744c.add(bVar);
                if (isEmpty) {
                    p();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    public void s(b bVar) {
        this.f3744c.remove(bVar);
        if (this.f3744c.isEmpty()) {
            q();
        }
    }

    public g(s7.e eVar, com.bumptech.glide.j jVar, o7.a aVar, Handler handler, com.bumptech.glide.i<Bitmap> iVar, k<Bitmap> kVar, Bitmap bitmap) {
        this.f3744c = new ArrayList();
        this.f3745d = jVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f3746e = eVar;
        this.f3743b = handler;
        this.f3750i = iVar;
        this.f3742a = aVar;
        o(kVar, bitmap);
    }
}

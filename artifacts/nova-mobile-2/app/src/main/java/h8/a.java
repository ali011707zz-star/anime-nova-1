package h8;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import h8.a;
import java.util.Map;
import okhttp3.internal.http2.Http2;
import org.apache.http.impl.auth.NTLMEngineImpl;
import y7.l;
import y7.m;
import y7.o;
import y7.q;

/* compiled from: BaseRequestOptions.java */
/* loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean E;

    /* renamed from: f, reason: collision with root package name */
    public int f7380f;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f7384j;

    /* renamed from: k, reason: collision with root package name */
    public int f7385k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f7386l;

    /* renamed from: m, reason: collision with root package name */
    public int f7387m;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7392r;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f7394t;

    /* renamed from: u, reason: collision with root package name */
    public int f7395u;

    /* renamed from: y, reason: collision with root package name */
    public boolean f7399y;

    /* renamed from: z, reason: collision with root package name */
    public Resources.Theme f7400z;

    /* renamed from: g, reason: collision with root package name */
    public float f7381g = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public r7.j f7382h = r7.j.f12976e;

    /* renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.g f7383i = com.bumptech.glide.g.NORMAL;

    /* renamed from: n, reason: collision with root package name */
    public boolean f7388n = true;

    /* renamed from: o, reason: collision with root package name */
    public int f7389o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f7390p = -1;

    /* renamed from: q, reason: collision with root package name */
    public p7.e f7391q = k8.c.c();

    /* renamed from: s, reason: collision with root package name */
    public boolean f7393s = true;

    /* renamed from: v, reason: collision with root package name */
    public p7.g f7396v = new p7.g();

    /* renamed from: w, reason: collision with root package name */
    public Map<Class<?>, p7.k<?>> f7397w = new l8.b();

    /* renamed from: x, reason: collision with root package name */
    public Class<?> f7398x = Object.class;
    public boolean D = true;

    public static boolean H(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public final Map<Class<?>, p7.k<?>> A() {
        return this.f7397w;
    }

    public final boolean B() {
        return this.E;
    }

    public final boolean C() {
        return this.B;
    }

    public final boolean D() {
        return this.f7388n;
    }

    public final boolean E() {
        return G(8);
    }

    public boolean F() {
        return this.D;
    }

    public final boolean G(int i10) {
        return H(this.f7380f, i10);
    }

    public final boolean I() {
        return this.f7393s;
    }

    public final boolean J() {
        return this.f7392r;
    }

    public final boolean K() {
        return G(RecyclerView.e0.FLAG_MOVED);
    }

    public final boolean L() {
        return l8.k.s(this.f7390p, this.f7389o);
    }

    public T M() {
        this.f7399y = true;
        return W();
    }

    public T N() {
        return R(l.f16668e, new y7.i());
    }

    public T O() {
        return Q(l.f16667d, new y7.j());
    }

    public T P() {
        return Q(l.f16666c, new q());
    }

    public final T Q(l lVar, p7.k<Bitmap> kVar) {
        return V(lVar, kVar, false);
    }

    public final T R(l lVar, p7.k<Bitmap> kVar) {
        if (this.A) {
            return (T) e().R(lVar, kVar);
        }
        h(lVar);
        return g0(kVar, false);
    }

    public T S(int i10, int i11) {
        if (this.A) {
            return (T) e().S(i10, i11);
        }
        this.f7390p = i10;
        this.f7389o = i11;
        this.f7380f |= 512;
        return X();
    }

    public T T(int i10) {
        if (this.A) {
            return (T) e().T(i10);
        }
        this.f7387m = i10;
        int i11 = this.f7380f | 128;
        this.f7380f = i11;
        this.f7386l = null;
        this.f7380f = i11 & (-65);
        return X();
    }

    public T U(com.bumptech.glide.g gVar) {
        if (this.A) {
            return (T) e().U(gVar);
        }
        this.f7383i = (com.bumptech.glide.g) l8.j.d(gVar);
        this.f7380f |= 8;
        return X();
    }

    public final T V(l lVar, p7.k<Bitmap> kVar, boolean z10) {
        T R;
        if (z10) {
            R = h0(lVar, kVar);
        } else {
            R = R(lVar, kVar);
        }
        R.D = true;
        return R;
    }

    public final T W() {
        return this;
    }

    public final T X() {
        if (!this.f7399y) {
            return W();
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    public <Y> T Y(p7.f<Y> fVar, Y y10) {
        if (this.A) {
            return (T) e().Y(fVar, y10);
        }
        l8.j.d(fVar);
        l8.j.d(y10);
        this.f7396v.e(fVar, y10);
        return X();
    }

    public T Z(p7.e eVar) {
        if (this.A) {
            return (T) e().Z(eVar);
        }
        this.f7391q = (p7.e) l8.j.d(eVar);
        this.f7380f |= RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE;
        return X();
    }

    public T a(a<?> aVar) {
        if (this.A) {
            return (T) e().a(aVar);
        }
        if (H(aVar.f7380f, 2)) {
            this.f7381g = aVar.f7381g;
        }
        if (H(aVar.f7380f, 262144)) {
            this.B = aVar.B;
        }
        if (H(aVar.f7380f, 1048576)) {
            this.E = aVar.E;
        }
        if (H(aVar.f7380f, 4)) {
            this.f7382h = aVar.f7382h;
        }
        if (H(aVar.f7380f, 8)) {
            this.f7383i = aVar.f7383i;
        }
        if (H(aVar.f7380f, 16)) {
            this.f7384j = aVar.f7384j;
            this.f7385k = 0;
            this.f7380f &= -33;
        }
        if (H(aVar.f7380f, 32)) {
            this.f7385k = aVar.f7385k;
            this.f7384j = null;
            this.f7380f &= -17;
        }
        if (H(aVar.f7380f, 64)) {
            this.f7386l = aVar.f7386l;
            this.f7387m = 0;
            this.f7380f &= -129;
        }
        if (H(aVar.f7380f, 128)) {
            this.f7387m = aVar.f7387m;
            this.f7386l = null;
            this.f7380f &= -65;
        }
        if (H(aVar.f7380f, 256)) {
            this.f7388n = aVar.f7388n;
        }
        if (H(aVar.f7380f, 512)) {
            this.f7390p = aVar.f7390p;
            this.f7389o = aVar.f7389o;
        }
        if (H(aVar.f7380f, RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE)) {
            this.f7391q = aVar.f7391q;
        }
        if (H(aVar.f7380f, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT)) {
            this.f7398x = aVar.f7398x;
        }
        if (H(aVar.f7380f, RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST)) {
            this.f7394t = aVar.f7394t;
            this.f7395u = 0;
            this.f7380f &= -16385;
        }
        if (H(aVar.f7380f, Http2.INITIAL_MAX_FRAME_SIZE)) {
            this.f7395u = aVar.f7395u;
            this.f7394t = null;
            this.f7380f &= -8193;
        }
        if (H(aVar.f7380f, NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN)) {
            this.f7400z = aVar.f7400z;
        }
        if (H(aVar.f7380f, 65536)) {
            this.f7393s = aVar.f7393s;
        }
        if (H(aVar.f7380f, 131072)) {
            this.f7392r = aVar.f7392r;
        }
        if (H(aVar.f7380f, RecyclerView.e0.FLAG_MOVED)) {
            this.f7397w.putAll(aVar.f7397w);
            this.D = aVar.D;
        }
        if (H(aVar.f7380f, NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2)) {
            this.C = aVar.C;
        }
        if (!this.f7393s) {
            this.f7397w.clear();
            int i10 = this.f7380f & (-2049);
            this.f7380f = i10;
            this.f7392r = false;
            this.f7380f = i10 & (-131073);
            this.D = true;
        }
        this.f7380f |= aVar.f7380f;
        this.f7396v.d(aVar.f7396v);
        return X();
    }

    public T a0(float f10) {
        if (this.A) {
            return (T) e().a0(f10);
        }
        if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f10 <= 1.0f) {
            this.f7381g = f10;
            this.f7380f |= 2;
            return X();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    public T b() {
        if (this.f7399y && !this.A) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.A = true;
        return M();
    }

    public T b0(boolean z10) {
        if (this.A) {
            return (T) e().b0(true);
        }
        this.f7388n = !z10;
        this.f7380f |= 256;
        return X();
    }

    public T c() {
        return h0(l.f16668e, new y7.i());
    }

    public T d() {
        return h0(l.f16667d, new y7.k());
    }

    public T d0(int i10) {
        return Y(w7.a.f15334b, Integer.valueOf(i10));
    }

    @Override // 
    public T e() {
        try {
            T t10 = (T) super.clone();
            p7.g gVar = new p7.g();
            t10.f7396v = gVar;
            gVar.d(this.f7396v);
            l8.b bVar = new l8.b();
            t10.f7397w = bVar;
            bVar.putAll(this.f7397w);
            t10.f7399y = false;
            t10.A = false;
            return t10;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public <Y> T e0(Class<Y> cls, p7.k<Y> kVar, boolean z10) {
        if (this.A) {
            return (T) e().e0(cls, kVar, z10);
        }
        l8.j.d(cls);
        l8.j.d(kVar);
        this.f7397w.put(cls, kVar);
        int i10 = this.f7380f | RecyclerView.e0.FLAG_MOVED;
        this.f7380f = i10;
        this.f7393s = true;
        int i11 = i10 | 65536;
        this.f7380f = i11;
        this.D = false;
        if (z10) {
            this.f7380f = i11 | 131072;
            this.f7392r = true;
        }
        return X();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Float.compare(aVar.f7381g, this.f7381g) == 0 && this.f7385k == aVar.f7385k && l8.k.d(this.f7384j, aVar.f7384j) && this.f7387m == aVar.f7387m && l8.k.d(this.f7386l, aVar.f7386l) && this.f7395u == aVar.f7395u && l8.k.d(this.f7394t, aVar.f7394t) && this.f7388n == aVar.f7388n && this.f7389o == aVar.f7389o && this.f7390p == aVar.f7390p && this.f7392r == aVar.f7392r && this.f7393s == aVar.f7393s && this.B == aVar.B && this.C == aVar.C && this.f7382h.equals(aVar.f7382h) && this.f7383i == aVar.f7383i && this.f7396v.equals(aVar.f7396v) && this.f7397w.equals(aVar.f7397w) && this.f7398x.equals(aVar.f7398x) && l8.k.d(this.f7391q, aVar.f7391q) && l8.k.d(this.f7400z, aVar.f7400z);
    }

    public T f(Class<?> cls) {
        if (this.A) {
            return (T) e().f(cls);
        }
        this.f7398x = (Class) l8.j.d(cls);
        this.f7380f |= RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;
        return X();
    }

    public T f0(p7.k<Bitmap> kVar) {
        return g0(kVar, true);
    }

    public T g(r7.j jVar) {
        if (this.A) {
            return (T) e().g(jVar);
        }
        this.f7382h = (r7.j) l8.j.d(jVar);
        this.f7380f |= 4;
        return X();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T g0(p7.k<Bitmap> kVar, boolean z10) {
        if (this.A) {
            return (T) e().g0(kVar, z10);
        }
        o oVar = new o(kVar, z10);
        e0(Bitmap.class, kVar, z10);
        e0(Drawable.class, oVar, z10);
        e0(BitmapDrawable.class, oVar.c(), z10);
        e0(c8.c.class, new c8.f(kVar), z10);
        return X();
    }

    public T h(l lVar) {
        return Y(l.f16671h, l8.j.d(lVar));
    }

    public final T h0(l lVar, p7.k<Bitmap> kVar) {
        if (this.A) {
            return (T) e().h0(lVar, kVar);
        }
        h(lVar);
        return f0(kVar);
    }

    public int hashCode() {
        return l8.k.n(this.f7400z, l8.k.n(this.f7391q, l8.k.n(this.f7398x, l8.k.n(this.f7397w, l8.k.n(this.f7396v, l8.k.n(this.f7383i, l8.k.n(this.f7382h, l8.k.o(this.C, l8.k.o(this.B, l8.k.o(this.f7393s, l8.k.o(this.f7392r, l8.k.m(this.f7390p, l8.k.m(this.f7389o, l8.k.o(this.f7388n, l8.k.n(this.f7394t, l8.k.m(this.f7395u, l8.k.n(this.f7386l, l8.k.m(this.f7387m, l8.k.n(this.f7384j, l8.k.m(this.f7385k, l8.k.k(this.f7381g)))))))))))))))))))));
    }

    public T i(Drawable drawable) {
        if (this.A) {
            return (T) e().i(drawable);
        }
        this.f7384j = drawable;
        int i10 = this.f7380f | 16;
        this.f7380f = i10;
        this.f7385k = 0;
        this.f7380f = i10 & (-33);
        return X();
    }

    public T i0(boolean z10) {
        if (this.A) {
            return (T) e().i0(z10);
        }
        this.E = z10;
        this.f7380f |= 1048576;
        return X();
    }

    public T j(p7.b bVar) {
        l8.j.d(bVar);
        return (T) Y(m.f16676f, bVar).Y(c8.i.f3767a, bVar);
    }

    public final r7.j k() {
        return this.f7382h;
    }

    public final int l() {
        return this.f7385k;
    }

    public final Drawable m() {
        return this.f7384j;
    }

    public final Drawable n() {
        return this.f7394t;
    }

    public final int o() {
        return this.f7395u;
    }

    public final boolean p() {
        return this.C;
    }

    public final p7.g q() {
        return this.f7396v;
    }

    public final int r() {
        return this.f7389o;
    }

    public final int s() {
        return this.f7390p;
    }

    public final Drawable t() {
        return this.f7386l;
    }

    public final int u() {
        return this.f7387m;
    }

    public final com.bumptech.glide.g v() {
        return this.f7383i;
    }

    public final Class<?> w() {
        return this.f7398x;
    }

    public final p7.e x() {
        return this.f7391q;
    }

    public final float y() {
        return this.f7381g;
    }

    public final Resources.Theme z() {
        return this.f7400z;
    }
}

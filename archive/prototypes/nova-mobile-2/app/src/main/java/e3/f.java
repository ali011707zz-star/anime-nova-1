package e3;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import o3.v;

/* compiled from: LottieDrawable.java */
/* loaded from: classes.dex */
public class f extends Drawable implements Drawable.Callback, Animatable {
    public boolean A;
    public boolean B;

    /* renamed from: f, reason: collision with root package name */
    public final Matrix f6050f = new Matrix();

    /* renamed from: g, reason: collision with root package name */
    public e3.d f6051g;

    /* renamed from: h, reason: collision with root package name */
    public final q3.e f6052h;

    /* renamed from: i, reason: collision with root package name */
    public float f6053i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6054j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6055k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6056l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList<o> f6057m;

    /* renamed from: n, reason: collision with root package name */
    public final ValueAnimator.AnimatorUpdateListener f6058n;

    /* renamed from: o, reason: collision with root package name */
    public i3.b f6059o;

    /* renamed from: p, reason: collision with root package name */
    public String f6060p;

    /* renamed from: q, reason: collision with root package name */
    public e3.b f6061q;

    /* renamed from: r, reason: collision with root package name */
    public i3.a f6062r;

    /* renamed from: s, reason: collision with root package name */
    public e3.a f6063s;

    /* renamed from: t, reason: collision with root package name */
    public s f6064t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f6065u;

    /* renamed from: v, reason: collision with root package name */
    public m3.b f6066v;

    /* renamed from: w, reason: collision with root package name */
    public int f6067w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f6068x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f6069y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f6070z;

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class a implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f6071a;

        public a(String str) {
            this.f6071a = str;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.Y(this.f6071a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class b implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f6073a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f6074b;

        public b(int i10, int i11) {
            this.f6073a = i10;
            this.f6074b = i11;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.X(this.f6073a, this.f6074b);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class c implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f6076a;

        public c(int i10) {
            this.f6076a = i10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.Q(this.f6076a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class d implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f6078a;

        public d(float f10) {
            this.f6078a = f10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.e0(this.f6078a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class e implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ j3.e f6080a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f6081b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ r3.c f6082c;

        public e(j3.e eVar, Object obj, r3.c cVar) {
            this.f6080a = eVar;
            this.f6081b = obj;
            this.f6082c = cVar;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.c(this.f6080a, this.f6081b, this.f6082c);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* renamed from: e3.f$f, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0114f implements ValueAnimator.AnimatorUpdateListener {
        public C0114f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (f.this.f6066v != null) {
                f.this.f6066v.K(f.this.f6052h.h());
            }
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class g implements o {
        public g() {
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.K();
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class h implements o {
        public h() {
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.M();
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class i implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f6087a;

        public i(int i10) {
            this.f6087a = i10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.Z(this.f6087a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class j implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f6089a;

        public j(float f10) {
            this.f6089a = f10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.b0(this.f6089a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class k implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f6091a;

        public k(int i10) {
            this.f6091a = i10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.U(this.f6091a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class l implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f6093a;

        public l(float f10) {
            this.f6093a = f10;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.W(this.f6093a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class m implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f6095a;

        public m(String str) {
            this.f6095a = str;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.a0(this.f6095a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public class n implements o {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f6097a;

        public n(String str) {
            this.f6097a = str;
        }

        @Override // e3.f.o
        public void a(e3.d dVar) {
            f.this.V(this.f6097a);
        }
    }

    /* compiled from: LottieDrawable.java */
    /* loaded from: classes.dex */
    public interface o {
        void a(e3.d dVar);
    }

    public f() {
        q3.e eVar = new q3.e();
        this.f6052h = eVar;
        this.f6053i = 1.0f;
        this.f6054j = true;
        this.f6055k = false;
        this.f6056l = false;
        this.f6057m = new ArrayList<>();
        C0114f c0114f = new C0114f();
        this.f6058n = c0114f;
        this.f6067w = BaseProgressIndicator.MAX_ALPHA;
        this.A = true;
        this.B = false;
        eVar.addUpdateListener(c0114f);
    }

    public float A() {
        return this.f6052h.h();
    }

    public int B() {
        return this.f6052h.getRepeatCount();
    }

    @SuppressLint({"WrongConstant"})
    public int C() {
        return this.f6052h.getRepeatMode();
    }

    public float D() {
        return this.f6053i;
    }

    public float E() {
        return this.f6052h.m();
    }

    public s F() {
        return this.f6064t;
    }

    public Typeface G(String str, String str2) {
        i3.a r10 = r();
        if (r10 != null) {
            return r10.b(str, str2);
        }
        return null;
    }

    public boolean H() {
        q3.e eVar = this.f6052h;
        if (eVar == null) {
            return false;
        }
        return eVar.isRunning();
    }

    public boolean I() {
        return this.f6070z;
    }

    public void J() {
        this.f6057m.clear();
        this.f6052h.o();
    }

    public void K() {
        if (this.f6066v == null) {
            this.f6057m.add(new g());
            return;
        }
        if (d() || B() == 0) {
            this.f6052h.p();
        }
        if (d()) {
            return;
        }
        Q((int) (E() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? y() : w()));
        this.f6052h.g();
    }

    public List<j3.e> L(j3.e eVar) {
        if (this.f6066v == null) {
            q3.d.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f6066v.f(eVar, 0, arrayList, new j3.e(new String[0]));
        return arrayList;
    }

    public void M() {
        if (this.f6066v == null) {
            this.f6057m.add(new h());
            return;
        }
        if (d() || B() == 0) {
            this.f6052h.t();
        }
        if (d()) {
            return;
        }
        Q((int) (E() < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? y() : w()));
        this.f6052h.g();
    }

    public void N(boolean z10) {
        this.f6070z = z10;
    }

    public boolean O(e3.d dVar) {
        if (this.f6051g == dVar) {
            return false;
        }
        this.B = false;
        i();
        this.f6051g = dVar;
        g();
        this.f6052h.v(dVar);
        e0(this.f6052h.getAnimatedFraction());
        i0(this.f6053i);
        Iterator it2 = new ArrayList(this.f6057m).iterator();
        while (it2.hasNext()) {
            o oVar = (o) it2.next();
            if (oVar != null) {
                oVar.a(dVar);
            }
            it2.remove();
        }
        this.f6057m.clear();
        dVar.v(this.f6068x);
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    public void P(e3.a aVar) {
        i3.a aVar2 = this.f6062r;
        if (aVar2 != null) {
            aVar2.c(aVar);
        }
    }

    public void Q(int i10) {
        if (this.f6051g == null) {
            this.f6057m.add(new c(i10));
        } else {
            this.f6052h.w(i10);
        }
    }

    public void R(boolean z10) {
        this.f6055k = z10;
    }

    public void S(e3.b bVar) {
        this.f6061q = bVar;
        i3.b bVar2 = this.f6059o;
        if (bVar2 != null) {
            bVar2.d(bVar);
        }
    }

    public void T(String str) {
        this.f6060p = str;
    }

    public void U(int i10) {
        if (this.f6051g == null) {
            this.f6057m.add(new k(i10));
        } else {
            this.f6052h.x(i10 + 0.99f);
        }
    }

    public void V(String str) {
        e3.d dVar = this.f6051g;
        if (dVar == null) {
            this.f6057m.add(new n(str));
            return;
        }
        j3.h l10 = dVar.l(str);
        if (l10 != null) {
            U((int) (l10.f8111b + l10.f8112c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void W(float f10) {
        e3.d dVar = this.f6051g;
        if (dVar == null) {
            this.f6057m.add(new l(f10));
        } else {
            U((int) q3.g.k(dVar.p(), this.f6051g.f(), f10));
        }
    }

    public void X(int i10, int i11) {
        if (this.f6051g == null) {
            this.f6057m.add(new b(i10, i11));
        } else {
            this.f6052h.y(i10, i11 + 0.99f);
        }
    }

    public void Y(String str) {
        e3.d dVar = this.f6051g;
        if (dVar == null) {
            this.f6057m.add(new a(str));
            return;
        }
        j3.h l10 = dVar.l(str);
        if (l10 != null) {
            int i10 = (int) l10.f8111b;
            X(i10, ((int) l10.f8112c) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public void Z(int i10) {
        if (this.f6051g == null) {
            this.f6057m.add(new i(i10));
        } else {
            this.f6052h.z(i10);
        }
    }

    public void a0(String str) {
        e3.d dVar = this.f6051g;
        if (dVar == null) {
            this.f6057m.add(new m(str));
            return;
        }
        j3.h l10 = dVar.l(str);
        if (l10 != null) {
            Z((int) l10.f8111b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void b0(float f10) {
        e3.d dVar = this.f6051g;
        if (dVar == null) {
            this.f6057m.add(new j(f10));
        } else {
            Z((int) q3.g.k(dVar.p(), this.f6051g.f(), f10));
        }
    }

    public <T> void c(j3.e eVar, T t10, r3.c<T> cVar) {
        m3.b bVar = this.f6066v;
        if (bVar == null) {
            this.f6057m.add(new e(eVar, t10, cVar));
            return;
        }
        boolean z10 = true;
        if (eVar == j3.e.f8104c) {
            bVar.e(t10, cVar);
        } else if (eVar.d() != null) {
            eVar.d().e(t10, cVar);
        } else {
            List<j3.e> L = L(eVar);
            for (int i10 = 0; i10 < L.size(); i10++) {
                L.get(i10).d().e(t10, cVar);
            }
            z10 = true ^ L.isEmpty();
        }
        if (z10) {
            invalidateSelf();
            if (t10 == e3.k.E) {
                e0(A());
            }
        }
    }

    public void c0(boolean z10) {
        if (this.f6069y == z10) {
            return;
        }
        this.f6069y = z10;
        m3.b bVar = this.f6066v;
        if (bVar != null) {
            bVar.I(z10);
        }
    }

    public final boolean d() {
        return this.f6054j || this.f6055k;
    }

    public void d0(boolean z10) {
        this.f6068x = z10;
        e3.d dVar = this.f6051g;
        if (dVar != null) {
            dVar.v(z10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.B = false;
        e3.c.a("Drawable#draw");
        if (this.f6056l) {
            try {
                j(canvas);
            } catch (Throwable th) {
                q3.d.b("Lottie crashed in draw!", th);
            }
        } else {
            j(canvas);
        }
        e3.c.b("Drawable#draw");
    }

    public final float e(Rect rect) {
        return rect.width() / rect.height();
    }

    public void e0(float f10) {
        if (this.f6051g == null) {
            this.f6057m.add(new d(f10));
            return;
        }
        e3.c.a("Drawable#setProgress");
        this.f6052h.w(this.f6051g.h(f10));
        e3.c.b("Drawable#setProgress");
    }

    public final boolean f() {
        e3.d dVar = this.f6051g;
        return dVar == null || getBounds().isEmpty() || e(getBounds()) == e(dVar.b());
    }

    public void f0(int i10) {
        this.f6052h.setRepeatCount(i10);
    }

    public final void g() {
        m3.b bVar = new m3.b(this, v.a(this.f6051g), this.f6051g.k(), this.f6051g);
        this.f6066v = bVar;
        if (this.f6069y) {
            bVar.I(true);
        }
    }

    public void g0(int i10) {
        this.f6052h.setRepeatMode(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f6067w;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f6051g == null) {
            return -1;
        }
        return (int) (r0.b().height() * D());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f6051g == null) {
            return -1;
        }
        return (int) (r0.b().width() * D());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h() {
        this.f6057m.clear();
        this.f6052h.cancel();
    }

    public void h0(boolean z10) {
        this.f6056l = z10;
    }

    public void i() {
        if (this.f6052h.isRunning()) {
            this.f6052h.cancel();
        }
        this.f6051g = null;
        this.f6066v = null;
        this.f6059o = null;
        this.f6052h.f();
        invalidateSelf();
    }

    public void i0(float f10) {
        this.f6053i = f10;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.B) {
            return;
        }
        this.B = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return H();
    }

    public final void j(Canvas canvas) {
        if (!f()) {
            k(canvas);
        } else {
            l(canvas);
        }
    }

    public void j0(float f10) {
        this.f6052h.A(f10);
    }

    public final void k(Canvas canvas) {
        float f10;
        if (this.f6066v == null) {
            return;
        }
        int i10 = -1;
        Rect bounds = getBounds();
        float width = bounds.width() / this.f6051g.b().width();
        float height = bounds.height() / this.f6051g.b().height();
        if (this.A) {
            float min = Math.min(width, height);
            if (min < 1.0f) {
                f10 = 1.0f / min;
                width /= f10;
                height /= f10;
            } else {
                f10 = 1.0f;
            }
            if (f10 > 1.0f) {
                i10 = canvas.save();
                float width2 = bounds.width() / 2.0f;
                float height2 = bounds.height() / 2.0f;
                float f11 = width2 * min;
                float f12 = min * height2;
                canvas.translate(width2 - f11, height2 - f12);
                canvas.scale(f10, f10, f11, f12);
            }
        }
        this.f6050f.reset();
        this.f6050f.preScale(width, height);
        this.f6066v.g(canvas, this.f6050f, this.f6067w);
        if (i10 > 0) {
            canvas.restoreToCount(i10);
        }
    }

    public void k0(Boolean bool) {
        this.f6054j = bool.booleanValue();
    }

    public final void l(Canvas canvas) {
        float f10;
        if (this.f6066v == null) {
            return;
        }
        float f11 = this.f6053i;
        float x10 = x(canvas);
        if (f11 > x10) {
            f10 = this.f6053i / x10;
        } else {
            x10 = f11;
            f10 = 1.0f;
        }
        int i10 = -1;
        if (f10 > 1.0f) {
            i10 = canvas.save();
            float width = this.f6051g.b().width() / 2.0f;
            float height = this.f6051g.b().height() / 2.0f;
            float f12 = width * x10;
            float f13 = height * x10;
            canvas.translate((D() * width) - f12, (D() * height) - f13);
            canvas.scale(f10, f10, f12, f13);
        }
        this.f6050f.reset();
        this.f6050f.preScale(x10, x10);
        this.f6066v.g(canvas, this.f6050f, this.f6067w);
        if (i10 > 0) {
            canvas.restoreToCount(i10);
        }
    }

    public void l0(s sVar) {
    }

    public void m(boolean z10) {
        if (this.f6065u == z10) {
            return;
        }
        if (Build.VERSION.SDK_INT < 19) {
            q3.d.c("Merge paths are not supported pre-Kit Kat.");
            return;
        }
        this.f6065u = z10;
        if (this.f6051g != null) {
            g();
        }
    }

    public boolean m0() {
        return this.f6051g.c().j() > 0;
    }

    public boolean n() {
        return this.f6065u;
    }

    public void o() {
        this.f6057m.clear();
        this.f6052h.g();
    }

    public e3.d p() {
        return this.f6051g;
    }

    public final Context q() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    public final i3.a r() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f6062r == null) {
            this.f6062r = new i3.a(getCallback(), this.f6063s);
        }
        return this.f6062r;
    }

    public int s() {
        return (int) this.f6052h.i();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f6067w = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        q3.d.c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View) || ((View) callback).isInEditMode()) {
            return;
        }
        K();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        o();
    }

    public Bitmap t(String str) {
        i3.b u10 = u();
        if (u10 != null) {
            return u10.a(str);
        }
        e3.d dVar = this.f6051g;
        e3.g gVar = dVar == null ? null : dVar.j().get(str);
        if (gVar != null) {
            return gVar.a();
        }
        return null;
    }

    public final i3.b u() {
        if (getCallback() == null) {
            return null;
        }
        i3.b bVar = this.f6059o;
        if (bVar != null && !bVar.b(q())) {
            this.f6059o = null;
        }
        if (this.f6059o == null) {
            this.f6059o = new i3.b(getCallback(), this.f6060p, this.f6061q, this.f6051g.j());
        }
        return this.f6059o;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public String v() {
        return this.f6060p;
    }

    public float w() {
        return this.f6052h.k();
    }

    public final float x(Canvas canvas) {
        return Math.min(canvas.getWidth() / this.f6051g.b().width(), canvas.getHeight() / this.f6051g.b().height());
    }

    public float y() {
        return this.f6052h.l();
    }

    public e3.n z() {
        e3.d dVar = this.f6051g;
        if (dVar != null) {
            return dVar.n();
        }
        return null;
    }
}

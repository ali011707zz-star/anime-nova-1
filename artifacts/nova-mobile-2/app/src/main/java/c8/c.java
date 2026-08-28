package c8;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import c8.g;
import java.nio.ByteBuffer;
import java.util.List;
import p7.k;

/* compiled from: GifDrawable.java */
/* loaded from: classes.dex */
public class c extends Drawable implements g.b, Animatable {

    /* renamed from: f, reason: collision with root package name */
    public final a f3729f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3730g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3731h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3732i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3733j;

    /* renamed from: k, reason: collision with root package name */
    public int f3734k;

    /* renamed from: l, reason: collision with root package name */
    public int f3735l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3736m;

    /* renamed from: n, reason: collision with root package name */
    public Paint f3737n;

    /* renamed from: o, reason: collision with root package name */
    public Rect f3738o;

    /* renamed from: p, reason: collision with root package name */
    public List<y1.b> f3739p;

    /* compiled from: GifDrawable.java */
    /* loaded from: classes.dex */
    public static final class a extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final g f3740a;

        public a(g gVar) {
            this.f3740a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new c(this);
        }
    }

    public c(Context context, o7.a aVar, k<Bitmap> kVar, int i10, int i11, Bitmap bitmap) {
        this(new a(new g(com.bumptech.glide.c.c(context), aVar, i10, i11, kVar, bitmap)));
    }

    @Override // c8.g.b
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f3734k++;
        }
        int i10 = this.f3735l;
        if (i10 == -1 || this.f3734k < i10) {
            return;
        }
        j();
        stop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    public ByteBuffer c() {
        return this.f3729f.f3740a.b();
    }

    public final Rect d() {
        if (this.f3738o == null) {
            this.f3738o = new Rect();
        }
        return this.f3738o;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3732i) {
            return;
        }
        if (this.f3736m) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.f3736m = false;
        }
        canvas.drawBitmap(this.f3729f.f3740a.c(), (Rect) null, d(), h());
    }

    public Bitmap e() {
        return this.f3729f.f3740a.e();
    }

    public int f() {
        return this.f3729f.f3740a.f();
    }

    public int g() {
        return this.f3729f.f3740a.d();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3729f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3729f.f3740a.h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3729f.f3740a.k();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public final Paint h() {
        if (this.f3737n == null) {
            this.f3737n = new Paint(2);
        }
        return this.f3737n;
    }

    public int i() {
        return this.f3729f.f3740a.j();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3730g;
    }

    public final void j() {
        List<y1.b> list = this.f3739p;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f3739p.get(i10).onAnimationEnd(this);
            }
        }
    }

    public void k() {
        this.f3732i = true;
        this.f3729f.f3740a.a();
    }

    public final void l() {
        this.f3734k = 0;
    }

    public void m(k<Bitmap> kVar, Bitmap bitmap) {
        this.f3729f.f3740a.o(kVar, bitmap);
    }

    public final void n() {
        l8.j.a(!this.f3732i, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f3729f.f3740a.f() == 1) {
            invalidateSelf();
        } else {
            if (this.f3730g) {
                return;
            }
            this.f3730g = true;
            this.f3729f.f3740a.r(this);
            invalidateSelf();
        }
    }

    public final void o() {
        this.f3730g = false;
        this.f3729f.f3740a.s(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3736m = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        h().setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        h().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        l8.j.a(!this.f3732i, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f3733j = z10;
        if (!z10) {
            o();
        } else if (this.f3731h) {
            n();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f3731h = true;
        l();
        if (this.f3733j) {
            n();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f3731h = false;
        o();
    }

    public c(a aVar) {
        this.f3733j = true;
        this.f3735l = -1;
        this.f3729f = (a) l8.j.d(aVar);
    }
}

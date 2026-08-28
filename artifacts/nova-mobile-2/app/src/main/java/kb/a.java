package kb;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import fb.h;
import gb.c;
import hb.d;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import jb.g;
import kb.b;

/* compiled from: CropImageView.java */
/* loaded from: classes.dex */
public class a extends kb.b {
    public Runnable A;
    public float B;
    public float C;
    public int D;
    public int E;
    public long F;

    /* renamed from: u, reason: collision with root package name */
    public final RectF f10126u;

    /* renamed from: v, reason: collision with root package name */
    public final Matrix f10127v;

    /* renamed from: w, reason: collision with root package name */
    public float f10128w;

    /* renamed from: x, reason: collision with root package name */
    public float f10129x;

    /* renamed from: y, reason: collision with root package name */
    public c f10130y;

    /* renamed from: z, reason: collision with root package name */
    public Runnable f10131z;

    /* compiled from: CropImageView.java */
    /* renamed from: kb.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class RunnableC0216a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final WeakReference<a> f10132f;

        /* renamed from: g, reason: collision with root package name */
        public final long f10133g;

        /* renamed from: h, reason: collision with root package name */
        public final long f10134h = System.currentTimeMillis();

        /* renamed from: i, reason: collision with root package name */
        public final float f10135i;

        /* renamed from: j, reason: collision with root package name */
        public final float f10136j;

        /* renamed from: k, reason: collision with root package name */
        public final float f10137k;

        /* renamed from: l, reason: collision with root package name */
        public final float f10138l;

        /* renamed from: m, reason: collision with root package name */
        public final float f10139m;

        /* renamed from: n, reason: collision with root package name */
        public final float f10140n;

        /* renamed from: o, reason: collision with root package name */
        public final boolean f10141o;

        public RunnableC0216a(a aVar, long j10, float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
            this.f10132f = new WeakReference<>(aVar);
            this.f10133g = j10;
            this.f10135i = f10;
            this.f10136j = f11;
            this.f10137k = f12;
            this.f10138l = f13;
            this.f10139m = f14;
            this.f10140n = f15;
            this.f10141o = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = this.f10132f.get();
            if (aVar == null) {
                return;
            }
            float min = (float) Math.min(this.f10133g, System.currentTimeMillis() - this.f10134h);
            float b10 = jb.b.b(min, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f10137k, (float) this.f10133g);
            float b11 = jb.b.b(min, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f10138l, (float) this.f10133g);
            float a10 = jb.b.a(min, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f10140n, (float) this.f10133g);
            if (min < ((float) this.f10133g)) {
                float[] fArr = aVar.f10150g;
                aVar.m(b10 - (fArr[0] - this.f10135i), b11 - (fArr[1] - this.f10136j));
                if (!this.f10141o) {
                    aVar.D(this.f10139m + a10, aVar.f10126u.centerX(), aVar.f10126u.centerY());
                }
                if (aVar.v()) {
                    return;
                }
                aVar.post(this);
            }
        }
    }

    /* compiled from: CropImageView.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final WeakReference<a> f10142f;

        /* renamed from: g, reason: collision with root package name */
        public final long f10143g;

        /* renamed from: h, reason: collision with root package name */
        public final long f10144h = System.currentTimeMillis();

        /* renamed from: i, reason: collision with root package name */
        public final float f10145i;

        /* renamed from: j, reason: collision with root package name */
        public final float f10146j;

        /* renamed from: k, reason: collision with root package name */
        public final float f10147k;

        /* renamed from: l, reason: collision with root package name */
        public final float f10148l;

        public b(a aVar, long j10, float f10, float f11, float f12, float f13) {
            this.f10142f = new WeakReference<>(aVar);
            this.f10143g = j10;
            this.f10145i = f10;
            this.f10146j = f11;
            this.f10147k = f12;
            this.f10148l = f13;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = this.f10142f.get();
            if (aVar == null) {
                return;
            }
            float min = (float) Math.min(this.f10143g, System.currentTimeMillis() - this.f10144h);
            float a10 = jb.b.a(min, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f10146j, (float) this.f10143g);
            if (min < ((float) this.f10143g)) {
                aVar.D(this.f10145i + a10, this.f10147k, this.f10148l);
                aVar.post(this);
            } else {
                aVar.z();
            }
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void A(float f10, float f11) {
        float width = this.f10126u.width();
        float height = this.f10126u.height();
        float max = Math.max(this.f10126u.width() / f10, this.f10126u.height() / f11);
        RectF rectF = this.f10126u;
        float f12 = ((width - (f10 * max)) / 2.0f) + rectF.left;
        float f13 = ((height - (f11 * max)) / 2.0f) + rectF.top;
        this.f10152i.reset();
        this.f10152i.postScale(max, max);
        this.f10152i.postTranslate(f12, f13);
        setImageMatrix(this.f10152i);
    }

    public void B(float f10, float f11, float f12, long j10) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        float currentScale = getCurrentScale();
        b bVar = new b(this, j10, currentScale, f10 - currentScale, f11, f12);
        this.A = bVar;
        post(bVar);
    }

    public void C(float f10) {
        D(f10, this.f10126u.centerX(), this.f10126u.centerY());
    }

    public void D(float f10, float f11, float f12) {
        if (f10 <= getMaxScale()) {
            l(f10 / getCurrentScale(), f11, f12);
        }
    }

    public void E(float f10) {
        F(f10, this.f10126u.centerX(), this.f10126u.centerY());
    }

    public void F(float f10, float f11, float f12) {
        if (f10 >= getMinScale()) {
            l(f10 / getCurrentScale(), f11, f12);
        }
    }

    public c getCropBoundsChangeListener() {
        return this.f10130y;
    }

    public float getMaxScale() {
        return this.B;
    }

    public float getMinScale() {
        return this.C;
    }

    public float getTargetAspectRatio() {
        return this.f10128w;
    }

    @Override // kb.b
    public void j() {
        super.j();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.f10128w == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f10128w = intrinsicWidth / intrinsicHeight;
        }
        int i10 = this.f10153j;
        float f10 = this.f10128w;
        int i11 = (int) (i10 / f10);
        int i12 = this.f10154k;
        if (i11 > i12) {
            this.f10126u.set((i10 - ((int) (i12 * f10))) / 2, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, r4 + r2, i12);
        } else {
            this.f10126u.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (i12 - i11) / 2, i10, i11 + r6);
        }
        s(intrinsicWidth, intrinsicHeight);
        A(intrinsicWidth, intrinsicHeight);
        c cVar = this.f10130y;
        if (cVar != null) {
            cVar.a(this.f10128w);
        }
        b.InterfaceC0217b interfaceC0217b = this.f10155l;
        if (interfaceC0217b != null) {
            interfaceC0217b.b(getCurrentScale());
            this.f10155l.c(getCurrentAngle());
        }
    }

    @Override // kb.b
    public void l(float f10, float f11, float f12) {
        if (f10 > 1.0f && getCurrentScale() * f10 <= getMaxScale()) {
            super.l(f10, f11, f12);
        } else {
            if (f10 >= 1.0f || getCurrentScale() * f10 < getMinScale()) {
                return;
            }
            super.l(f10, f11, f12);
        }
    }

    public final float[] q() {
        this.f10127v.reset();
        this.f10127v.setRotate(-getCurrentAngle());
        float[] fArr = this.f10149f;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        float[] b10 = g.b(this.f10126u);
        this.f10127v.mapPoints(copyOf);
        this.f10127v.mapPoints(b10);
        RectF d10 = g.d(copyOf);
        RectF d11 = g.d(b10);
        float f10 = d10.left - d11.left;
        float f11 = d10.top - d11.top;
        float f12 = d10.right - d11.right;
        float f13 = d10.bottom - d11.bottom;
        float[] fArr2 = new float[4];
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        fArr2[0] = f10;
        if (f11 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        fArr2[1] = f11;
        if (f12 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        fArr2[2] = f12;
        if (f13 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        fArr2[3] = f13;
        this.f10127v.reset();
        this.f10127v.setRotate(getCurrentAngle());
        this.f10127v.mapPoints(fArr2);
        return fArr2;
    }

    public final void r() {
        if (getDrawable() == null) {
            return;
        }
        s(r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
    }

    public final void s(float f10, float f11) {
        float min = Math.min(Math.min(this.f10126u.width() / f10, this.f10126u.width() / f11), Math.min(this.f10126u.height() / f11, this.f10126u.height() / f10));
        this.C = min;
        this.B = min * this.f10129x;
    }

    public void setCropBoundsChangeListener(c cVar) {
        this.f10130y = cVar;
    }

    public void setCropRect(RectF rectF) {
        this.f10128w = rectF.width() / rectF.height();
        this.f10126u.set(rectF.left - getPaddingLeft(), rectF.top - getPaddingTop(), rectF.right - getPaddingRight(), rectF.bottom - getPaddingBottom());
        r();
        z();
    }

    public void setImageToWrapCropBounds(boolean z10) {
        float f10;
        float max;
        float f11;
        if (!this.f10159p || v()) {
            return;
        }
        float[] fArr = this.f10150g;
        float f12 = fArr[0];
        float f13 = fArr[1];
        float currentScale = getCurrentScale();
        float centerX = this.f10126u.centerX() - f12;
        float centerY = this.f10126u.centerY() - f13;
        this.f10127v.reset();
        this.f10127v.setTranslate(centerX, centerY);
        float[] fArr2 = this.f10149f;
        float[] copyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.f10127v.mapPoints(copyOf);
        boolean w10 = w(copyOf);
        if (w10) {
            float[] q10 = q();
            float f14 = -(q10[0] + q10[2]);
            f11 = -(q10[1] + q10[3]);
            f10 = f14;
            max = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            RectF rectF = new RectF(this.f10126u);
            this.f10127v.reset();
            this.f10127v.setRotate(getCurrentAngle());
            this.f10127v.mapRect(rectF);
            float[] c10 = g.c(this.f10149f);
            f10 = centerX;
            max = (Math.max(rectF.width() / c10[0], rectF.height() / c10[1]) * currentScale) - currentScale;
            f11 = centerY;
        }
        if (z10) {
            RunnableC0216a runnableC0216a = new RunnableC0216a(this, this.F, f12, f13, f10, f11, currentScale, max, w10);
            this.f10131z = runnableC0216a;
            post(runnableC0216a);
        } else {
            m(f10, f11);
            if (w10) {
                return;
            }
            D(currentScale + max, this.f10126u.centerX(), this.f10126u.centerY());
        }
    }

    public void setImageToWrapCropBoundsAnimDuration(long j10) {
        if (j10 > 0) {
            this.F = j10;
            return;
        }
        throw new IllegalArgumentException("Animation duration cannot be negative value.");
    }

    public void setMaxResultImageSizeX(int i10) {
        this.D = i10;
    }

    public void setMaxResultImageSizeY(int i10) {
        this.E = i10;
    }

    public void setMaxScaleMultiplier(float f10) {
        this.f10129x = f10;
    }

    public void setTargetAspectRatio(float f10) {
        if (getDrawable() == null) {
            this.f10128w = f10;
            return;
        }
        if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f10128w = r0.getIntrinsicWidth() / r0.getIntrinsicHeight();
        } else {
            this.f10128w = f10;
        }
        c cVar = this.f10130y;
        if (cVar != null) {
            cVar.a(this.f10128w);
        }
    }

    public void t() {
        removeCallbacks(this.f10131z);
        removeCallbacks(this.A);
    }

    public void u(Bitmap.CompressFormat compressFormat, int i10, gb.a aVar) {
        t();
        setImageToWrapCropBounds(false);
        new ib.a(getContext(), getViewBitmap(), new d(this.f10126u, g.d(this.f10149f), getCurrentScale(), getCurrentAngle()), new hb.b(this.D, this.E, compressFormat, i10, getImageInputPath(), getImageOutputPath(), getExifInfo()), aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public boolean v() {
        return w(this.f10149f);
    }

    public boolean w(float[] fArr) {
        this.f10127v.reset();
        this.f10127v.setRotate(-getCurrentAngle());
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        this.f10127v.mapPoints(copyOf);
        float[] b10 = g.b(this.f10126u);
        this.f10127v.mapPoints(b10);
        return g.d(copyOf).contains(g.d(b10));
    }

    public void x(float f10) {
        k(f10, this.f10126u.centerX(), this.f10126u.centerY());
    }

    public void y(TypedArray typedArray) {
        float abs = Math.abs(typedArray.getFloat(h.V, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        float abs2 = Math.abs(typedArray.getFloat(h.W, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        if (abs != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && abs2 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f10128w = abs / abs2;
        } else {
            this.f10128w = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
    }

    public void z() {
        setImageToWrapCropBounds(true);
    }

    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10126u = new RectF();
        this.f10127v = new Matrix();
        this.f10129x = 10.0f;
        this.A = null;
        this.D = 0;
        this.E = 0;
        this.F = 500L;
    }
}

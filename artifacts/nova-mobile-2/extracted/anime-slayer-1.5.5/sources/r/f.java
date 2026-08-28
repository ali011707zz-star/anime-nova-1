package r;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* compiled from: RoundRectDrawable.java */
/* loaded from: classes.dex */
public class f extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public float f12723a;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f12725c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f12726d;

    /* renamed from: e, reason: collision with root package name */
    public float f12727e;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f12730h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f12731i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f12732j;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12728f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12729g = true;

    /* renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f12733k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f12724b = new Paint(5);

    public f(ColorStateList colorStateList, float f10) {
        this.f12723a = f10;
        e(colorStateList);
        this.f12725c = new RectF();
        this.f12726d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public ColorStateList b() {
        return this.f12730h;
    }

    public float c() {
        return this.f12727e;
    }

    public float d() {
        return this.f12723a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z10;
        Paint paint = this.f12724b;
        if (this.f12731i == null || paint.getColorFilter() != null) {
            z10 = false;
        } else {
            paint.setColorFilter(this.f12731i);
            z10 = true;
        }
        RectF rectF = this.f12725c;
        float f10 = this.f12723a;
        canvas.drawRoundRect(rectF, f10, f10, paint);
        if (z10) {
            paint.setColorFilter(null);
        }
    }

    public final void e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f12730h = colorStateList;
        this.f12724b.setColor(colorStateList.getColorForState(getState(), this.f12730h.getDefaultColor()));
    }

    public void f(ColorStateList colorStateList) {
        e(colorStateList);
        invalidateSelf();
    }

    public void g(float f10, boolean z10, boolean z11) {
        if (f10 == this.f12727e && this.f12728f == z10 && this.f12729g == z11) {
            return;
        }
        this.f12727e = f10;
        this.f12728f = z10;
        this.f12729g = z11;
        i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f12726d, this.f12723a);
    }

    public void h(float f10) {
        if (f10 == this.f12723a) {
            return;
        }
        this.f12723a = f10;
        i(null);
        invalidateSelf();
    }

    public final void i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f12725c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f12726d.set(rect);
        if (this.f12728f) {
            this.f12726d.inset((int) Math.ceil(g.c(this.f12727e, this.f12723a, this.f12729g)), (int) Math.ceil(g.d(this.f12727e, this.f12723a, this.f12729g)));
            this.f12725c.set(this.f12726d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f12732j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f12730h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f12730h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z10 = colorForState != this.f12724b.getColor();
        if (z10) {
            this.f12724b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f12732j;
        if (colorStateList2 == null || (mode = this.f12733k) == null) {
            return z10;
        }
        this.f12731i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f12724b.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12724b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f12732j = colorStateList;
        this.f12731i = a(colorStateList, this.f12733k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f12733k = mode;
        this.f12731i = a(this.f12732j, mode);
        invalidateSelf();
    }
}

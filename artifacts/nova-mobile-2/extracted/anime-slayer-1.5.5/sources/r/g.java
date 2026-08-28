package r;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: RoundRectDrawableWithShadow.java */
/* loaded from: classes.dex */
public class g extends Drawable {

    /* renamed from: q, reason: collision with root package name */
    public static final double f12734q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r, reason: collision with root package name */
    public static a f12735r;

    /* renamed from: a, reason: collision with root package name */
    public final int f12736a;

    /* renamed from: c, reason: collision with root package name */
    public Paint f12738c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f12739d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f12740e;

    /* renamed from: f, reason: collision with root package name */
    public float f12741f;

    /* renamed from: g, reason: collision with root package name */
    public Path f12742g;

    /* renamed from: h, reason: collision with root package name */
    public float f12743h;

    /* renamed from: i, reason: collision with root package name */
    public float f12744i;

    /* renamed from: j, reason: collision with root package name */
    public float f12745j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f12746k;

    /* renamed from: m, reason: collision with root package name */
    public final int f12748m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12749n;

    /* renamed from: l, reason: collision with root package name */
    public boolean f12747l = true;

    /* renamed from: o, reason: collision with root package name */
    public boolean f12750o = true;

    /* renamed from: p, reason: collision with root package name */
    public boolean f12751p = false;

    /* renamed from: b, reason: collision with root package name */
    public Paint f12737b = new Paint(5);

    /* compiled from: RoundRectDrawableWithShadow.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Canvas canvas, RectF rectF, float f10, Paint paint);
    }

    public g(Resources resources, ColorStateList colorStateList, float f10, float f11, float f12) {
        this.f12748m = resources.getColor(q.b.f12245d);
        this.f12749n = resources.getColor(q.b.f12244c);
        this.f12736a = resources.getDimensionPixelSize(q.c.f12246a);
        n(colorStateList);
        Paint paint = new Paint(5);
        this.f12738c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f12741f = (int) (f10 + 0.5f);
        this.f12740e = new RectF();
        Paint paint2 = new Paint(this.f12738c);
        this.f12739d = paint2;
        paint2.setAntiAlias(false);
        s(f11, f12);
    }

    public static float c(float f10, float f11, boolean z10) {
        if (!z10) {
            return f10;
        }
        double d10 = f10;
        double d11 = 1.0d - f12734q;
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        return (float) (d10 + (d11 * d12));
    }

    public static float d(float f10, float f11, boolean z10) {
        if (!z10) {
            return f10 * 1.5f;
        }
        double d10 = f10 * 1.5f;
        double d11 = 1.0d - f12734q;
        double d12 = f11;
        Double.isNaN(d12);
        Double.isNaN(d10);
        return (float) (d10 + (d11 * d12));
    }

    public final void a(Rect rect) {
        float f10 = this.f12743h;
        float f11 = 1.5f * f10;
        this.f12740e.set(rect.left + f10, rect.top + f11, rect.right - f10, rect.bottom - f11);
        b();
    }

    public final void b() {
        float f10 = this.f12741f;
        RectF rectF = new RectF(-f10, -f10, f10, f10);
        RectF rectF2 = new RectF(rectF);
        float f11 = this.f12744i;
        rectF2.inset(-f11, -f11);
        Path path = this.f12742g;
        if (path == null) {
            this.f12742g = new Path();
        } else {
            path.reset();
        }
        this.f12742g.setFillType(Path.FillType.EVEN_ODD);
        this.f12742g.moveTo(-this.f12741f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f12742g.rLineTo(-this.f12744i, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f12742g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f12742g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f12742g.close();
        float f12 = this.f12741f;
        float f13 = f12 / (this.f12744i + f12);
        Paint paint = this.f12738c;
        float f14 = this.f12741f + this.f12744i;
        int i10 = this.f12748m;
        paint.setShader(new RadialGradient(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f14, new int[]{i10, i10, this.f12749n}, new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f12739d;
        float f15 = this.f12741f;
        float f16 = this.f12744i;
        int i11 = this.f12748m;
        paint2.setShader(new LinearGradient(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (-f15) + f16, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (-f15) - f16, new int[]{i11, i11, this.f12749n}, new float[]{StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f12739d.setAntiAlias(false);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f12747l) {
            a(getBounds());
            this.f12747l = false;
        }
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f12745j / 2.0f);
        e(canvas);
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, (-this.f12745j) / 2.0f);
        f12735r.a(canvas, this.f12740e, this.f12741f, this.f12737b);
    }

    public final void e(Canvas canvas) {
        float f10 = this.f12741f;
        float f11 = (-f10) - this.f12744i;
        float f12 = f10 + this.f12736a + (this.f12745j / 2.0f);
        float f13 = f12 * 2.0f;
        boolean z10 = this.f12740e.width() - f13 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        boolean z11 = this.f12740e.height() - f13 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int save = canvas.save();
        RectF rectF = this.f12740e;
        canvas.translate(rectF.left + f12, rectF.top + f12);
        canvas.drawPath(this.f12742g, this.f12738c);
        if (z10) {
            canvas.drawRect(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11, this.f12740e.width() - f13, -this.f12741f, this.f12739d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f12740e;
        canvas.translate(rectF2.right - f12, rectF2.bottom - f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f12742g, this.f12738c);
        if (z10) {
            canvas.drawRect(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11, this.f12740e.width() - f13, (-this.f12741f) + this.f12744i, this.f12739d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f12740e;
        canvas.translate(rectF3.left + f12, rectF3.bottom - f12);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f12742g, this.f12738c);
        if (z11) {
            canvas.drawRect(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11, this.f12740e.height() - f13, -this.f12741f, this.f12739d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f12740e;
        canvas.translate(rectF4.right - f12, rectF4.top + f12);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f12742g, this.f12738c);
        if (z11) {
            canvas.drawRect(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11, this.f12740e.height() - f13, -this.f12741f, this.f12739d);
        }
        canvas.restoreToCount(save4);
    }

    public ColorStateList f() {
        return this.f12746k;
    }

    public float g() {
        return this.f12741f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(d(this.f12743h, this.f12741f, this.f12750o));
        int ceil2 = (int) Math.ceil(c(this.f12743h, this.f12741f, this.f12750o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public void h(Rect rect) {
        getPadding(rect);
    }

    public float i() {
        return this.f12743h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f12746k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    public float j() {
        float f10 = this.f12743h;
        return (Math.max(f10, this.f12741f + this.f12736a + ((f10 * 1.5f) / 2.0f)) * 2.0f) + (((this.f12743h * 1.5f) + this.f12736a) * 2.0f);
    }

    public float k() {
        float f10 = this.f12743h;
        return (Math.max(f10, this.f12741f + this.f12736a + (f10 / 2.0f)) * 2.0f) + ((this.f12743h + this.f12736a) * 2.0f);
    }

    public float l() {
        return this.f12745j;
    }

    public void m(boolean z10) {
        this.f12750o = z10;
        invalidateSelf();
    }

    public final void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f12746k = colorStateList;
        this.f12737b.setColor(colorStateList.getColorForState(getState(), this.f12746k.getDefaultColor()));
    }

    public void o(ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f12747l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f12746k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f12737b.getColor() == colorForState) {
            return false;
        }
        this.f12737b.setColor(colorForState);
        this.f12747l = true;
        invalidateSelf();
        return true;
    }

    public void p(float f10) {
        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            throw new IllegalArgumentException("Invalid radius " + f10 + ". Must be >= 0");
        }
        float f11 = (int) (f10 + 0.5f);
        if (this.f12741f == f11) {
            return;
        }
        this.f12741f = f11;
        this.f12747l = true;
        invalidateSelf();
    }

    public void q(float f10) {
        s(this.f12745j, f10);
    }

    public void r(float f10) {
        s(f10, this.f12743h);
    }

    public final void s(float f10, float f11) {
        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            throw new IllegalArgumentException("Invalid shadow size " + f10 + ". Must be >= 0");
        }
        if (f11 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float t10 = t(f10);
            float t11 = t(f11);
            if (t10 > t11) {
                if (!this.f12751p) {
                    this.f12751p = true;
                }
                t10 = t11;
            }
            if (this.f12745j == t10 && this.f12743h == t11) {
                return;
            }
            this.f12745j = t10;
            this.f12743h = t11;
            this.f12744i = (int) ((t10 * 1.5f) + this.f12736a + 0.5f);
            this.f12747l = true;
            invalidateSelf();
            return;
        }
        throw new IllegalArgumentException("Invalid max shadow size " + f11 + ". Must be >= 0");
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f12737b.setAlpha(i10);
        this.f12738c.setAlpha(i10);
        this.f12739d.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f12737b.setColorFilter(colorFilter);
    }

    public final int t(float f10) {
        int i10 = (int) (f10 + 0.5f);
        return i10 % 2 == 1 ? i10 - 1 : i10;
    }
}

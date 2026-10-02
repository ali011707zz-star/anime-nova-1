package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d.i;
import d.j;

/* compiled from: DrawerArrowDrawable.java */
/* loaded from: classes.dex */
public class d extends Drawable {

    /* renamed from: m, reason: collision with root package name */
    public static final float f6690m = (float) Math.toRadians(45.0d);

    /* renamed from: a, reason: collision with root package name */
    public final Paint f6691a;

    /* renamed from: b, reason: collision with root package name */
    public float f6692b;

    /* renamed from: c, reason: collision with root package name */
    public float f6693c;

    /* renamed from: d, reason: collision with root package name */
    public float f6694d;

    /* renamed from: e, reason: collision with root package name */
    public float f6695e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6696f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f6697g;

    /* renamed from: h, reason: collision with root package name */
    public final int f6698h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6699i;

    /* renamed from: j, reason: collision with root package name */
    public float f6700j;

    /* renamed from: k, reason: collision with root package name */
    public float f6701k;

    /* renamed from: l, reason: collision with root package name */
    public int f6702l;

    public d(Context context) {
        Paint paint = new Paint();
        this.f6691a = paint;
        this.f6697g = new Path();
        this.f6699i = false;
        this.f6702l = 2;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.MITER);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, j.Z0, d.a.B, i.f5319b);
        c(obtainStyledAttributes.getColor(j.f5343d1, 0));
        b(obtainStyledAttributes.getDimension(j.f5363h1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        f(obtainStyledAttributes.getBoolean(j.f5358g1, true));
        d(Math.round(obtainStyledAttributes.getDimension(j.f5353f1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)));
        this.f6698h = obtainStyledAttributes.getDimensionPixelSize(j.f5348e1, 0);
        this.f6693c = Math.round(obtainStyledAttributes.getDimension(j.f5338c1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        this.f6692b = Math.round(obtainStyledAttributes.getDimension(j.f5326a1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
        this.f6694d = obtainStyledAttributes.getDimension(j.f5332b1, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        obtainStyledAttributes.recycle();
    }

    public static float a(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    public void b(float f10) {
        if (this.f6691a.getStrokeWidth() != f10) {
            this.f6691a.setStrokeWidth(f10);
            double d10 = f10 / 2.0f;
            double cos = Math.cos(f6690m);
            Double.isNaN(d10);
            this.f6701k = (float) (d10 * cos);
            invalidateSelf();
        }
    }

    public void c(int i10) {
        if (i10 != this.f6691a.getColor()) {
            this.f6691a.setColor(i10);
            invalidateSelf();
        }
    }

    public void d(float f10) {
        if (f10 != this.f6695e) {
            this.f6695e = f10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int i10 = this.f6702l;
        boolean z10 = false;
        if (i10 != 0 && (i10 == 1 || (i10 == 3 ? i0.a.f(this) == 0 : i0.a.f(this) == 1))) {
            z10 = true;
        }
        float f10 = this.f6692b;
        float a10 = a(this.f6693c, (float) Math.sqrt(f10 * f10 * 2.0f), this.f6700j);
        float a11 = a(this.f6693c, this.f6694d, this.f6700j);
        float round = Math.round(a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f6701k, this.f6700j));
        float a12 = a(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f6690m, this.f6700j);
        float a13 = a(z10 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : -180.0f, z10 ? 180.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, this.f6700j);
        double d10 = a10;
        double d11 = a12;
        double cos = Math.cos(d11);
        Double.isNaN(d10);
        boolean z11 = z10;
        float round2 = (float) Math.round(cos * d10);
        double sin = Math.sin(d11);
        Double.isNaN(d10);
        float round3 = (float) Math.round(d10 * sin);
        this.f6697g.rewind();
        float a14 = a(this.f6695e + this.f6691a.getStrokeWidth(), -this.f6701k, this.f6700j);
        float f11 = (-a11) / 2.0f;
        this.f6697g.moveTo(f11 + round, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f6697g.rLineTo(a11 - (round * 2.0f), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f6697g.moveTo(f11, a14);
        this.f6697g.rLineTo(round2, round3);
        this.f6697g.moveTo(f11, -a14);
        this.f6697g.rLineTo(round2, -round3);
        this.f6697g.close();
        canvas.save();
        float strokeWidth = this.f6691a.getStrokeWidth();
        float height = bounds.height() - (3.0f * strokeWidth);
        canvas.translate(bounds.centerX(), ((((int) (height - (2.0f * r5))) / 4) * 2) + (strokeWidth * 1.5f) + this.f6695e);
        if (this.f6696f) {
            canvas.rotate(a13 * (this.f6699i ^ z11 ? -1 : 1));
        } else if (z11) {
            canvas.rotate(180.0f);
        }
        canvas.drawPath(this.f6697g, this.f6691a);
        canvas.restore();
    }

    public void e(float f10) {
        if (this.f6700j != f10) {
            this.f6700j = f10;
            invalidateSelf();
        }
    }

    public void f(boolean z10) {
        if (this.f6696f != z10) {
            this.f6696f = z10;
            invalidateSelf();
        }
    }

    public void g(boolean z10) {
        if (this.f6699i != z10) {
            this.f6699i = z10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f6698h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f6698h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (i10 != this.f6691a.getAlpha()) {
            this.f6691a.setAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f6691a.setColorFilter(colorFilter);
        invalidateSelf();
    }
}

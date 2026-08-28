package g9;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static DisplayMetrics f7077a = null;

    /* renamed from: b, reason: collision with root package name */
    public static int f7078b = 50;

    /* renamed from: c, reason: collision with root package name */
    public static int f7079c = 8000;

    /* renamed from: d, reason: collision with root package name */
    public static final double f7080d = Double.longBitsToDouble(1);

    /* renamed from: e, reason: collision with root package name */
    public static final float f7081e = Float.intBitsToFloat(1);

    /* renamed from: f, reason: collision with root package name */
    public static Rect f7082f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public static Paint.FontMetrics f7083g = new Paint.FontMetrics();

    /* renamed from: h, reason: collision with root package name */
    public static Rect f7084h = new Rect();

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f7085i = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

    /* renamed from: j, reason: collision with root package name */
    public static z8.c f7086j = h();

    /* renamed from: k, reason: collision with root package name */
    public static Rect f7087k = new Rect();

    /* renamed from: l, reason: collision with root package name */
    public static Rect f7088l = new Rect();

    /* renamed from: m, reason: collision with root package name */
    public static Paint.FontMetrics f7089m = new Paint.FontMetrics();

    public static int a(Paint paint, String str) {
        Rect rect = f7082f;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.height();
    }

    public static b b(Paint paint, String str) {
        b b10 = b.b(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        c(paint, str, b10);
        return b10;
    }

    public static void c(Paint paint, String str, b bVar) {
        Rect rect = f7084h;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        bVar.f7048c = rect.width();
        bVar.f7049d = rect.height();
    }

    public static int d(Paint paint, String str) {
        return (int) paint.measureText(str);
    }

    public static float e(float f10) {
        DisplayMetrics displayMetrics = f7077a;
        return displayMetrics == null ? f10 : f10 * displayMetrics.density;
    }

    public static void f(Canvas canvas, Drawable drawable, int i10, int i11, int i12, int i13) {
        e b10 = e.b();
        b10.f7055c = i10 - (i12 / 2);
        b10.f7056d = i11 - (i13 / 2);
        drawable.copyBounds(f7087k);
        Rect rect = f7087k;
        int i14 = rect.left;
        int i15 = rect.top;
        drawable.setBounds(i14, i15, i14 + i12, i12 + i15);
        int save = canvas.save();
        canvas.translate(b10.f7055c, b10.f7056d);
        drawable.draw(canvas);
        canvas.restoreToCount(save);
    }

    public static void g(Canvas canvas, String str, float f10, float f11, Paint paint, e eVar, float f12) {
        float fontMetrics = paint.getFontMetrics(f7089m);
        paint.getTextBounds(str, 0, str.length(), f7088l);
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - f7088l.left;
        float f14 = (-f7089m.ascent) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        Paint.Align textAlign = paint.getTextAlign();
        paint.setTextAlign(Paint.Align.LEFT);
        if (f12 != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float width = f13 - (f7088l.width() * 0.5f);
            float f15 = f14 - (fontMetrics * 0.5f);
            if (eVar.f7055c != 0.5f || eVar.f7056d != 0.5f) {
                b t10 = t(f7088l.width(), fontMetrics, f12);
                f10 -= t10.f7048c * (eVar.f7055c - 0.5f);
                f11 -= t10.f7049d * (eVar.f7056d - 0.5f);
                b.c(t10);
            }
            canvas.save();
            canvas.translate(f10, f11);
            canvas.rotate(f12);
            canvas.drawText(str, width, f15, paint);
            canvas.restore();
        } else {
            if (eVar.f7055c != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || eVar.f7056d != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f13 -= f7088l.width() * eVar.f7055c;
                f14 -= fontMetrics * eVar.f7056d;
            }
            canvas.drawText(str, f13 + f10, f14 + f11, paint);
        }
        paint.setTextAlign(textAlign);
    }

    public static z8.c h() {
        return new z8.b(1);
    }

    public static int i(float f10) {
        float y10 = y(f10);
        if (Float.isInfinite(y10)) {
            return 0;
        }
        return ((int) Math.ceil(-Math.log10(y10))) + 2;
    }

    public static z8.c j() {
        return f7086j;
    }

    public static float k(Paint paint) {
        return l(paint, f7083g);
    }

    public static float l(Paint paint, Paint.FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static float m(Paint paint) {
        return n(paint, f7083g);
    }

    public static float n(Paint paint, Paint.FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return (fontMetrics.ascent - fontMetrics.top) + fontMetrics.bottom;
    }

    public static int o() {
        return f7079c;
    }

    public static int p() {
        return f7078b;
    }

    public static float q(float f10) {
        while (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 += 360.0f;
        }
        return f10 % 360.0f;
    }

    public static void r(e eVar, float f10, float f11, e eVar2) {
        double d10 = eVar.f7055c;
        double d11 = f10;
        double d12 = f11;
        double cos = Math.cos(Math.toRadians(d12));
        Double.isNaN(d11);
        Double.isNaN(d10);
        eVar2.f7055c = (float) (d10 + (cos * d11));
        double d13 = eVar.f7056d;
        double sin = Math.sin(Math.toRadians(d12));
        Double.isNaN(d11);
        Double.isNaN(d13);
        eVar2.f7056d = (float) (d13 + (d11 * sin));
    }

    public static int s() {
        return Build.VERSION.SDK_INT;
    }

    public static b t(float f10, float f11, float f12) {
        return u(f10, f11, f12 * 0.017453292f);
    }

    public static b u(float f10, float f11, float f12) {
        double d10 = f12;
        return b.b(Math.abs(((float) Math.cos(d10)) * f10) + Math.abs(((float) Math.sin(d10)) * f11), Math.abs(f10 * ((float) Math.sin(d10))) + Math.abs(f11 * ((float) Math.cos(d10))));
    }

    public static void v(Context context) {
        if (context == null) {
            f7078b = ViewConfiguration.getMinimumFlingVelocity();
            f7079c = ViewConfiguration.getMaximumFlingVelocity();
        } else {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            f7078b = viewConfiguration.getScaledMinimumFlingVelocity();
            f7079c = viewConfiguration.getScaledMaximumFlingVelocity();
            f7077a = context.getResources().getDisplayMetrics();
        }
    }

    public static double w(double d10) {
        if (d10 == Double.POSITIVE_INFINITY) {
            return d10;
        }
        double d11 = d10 + ShadowDrawableWrapper.COS_45;
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d11) + (d11 >= ShadowDrawableWrapper.COS_45 ? 1L : -1L));
    }

    @SuppressLint({"NewApi"})
    public static void x(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidateDelayed(10L);
        }
    }

    public static float y(double d10) {
        if (Double.isInfinite(d10) || Double.isNaN(d10) || d10 == ShadowDrawableWrapper.COS_45) {
            return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        float pow = (float) Math.pow(10.0d, 1 - ((int) Math.ceil((float) Math.log10(d10 < ShadowDrawableWrapper.COS_45 ? -d10 : d10))));
        double d11 = pow;
        Double.isNaN(d11);
        return ((float) Math.round(d10 * d11)) / pow;
    }

    public static void z(MotionEvent motionEvent, VelocityTracker velocityTracker) {
        velocityTracker.computeCurrentVelocity(1000, f7079c);
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        float xVelocity = velocityTracker.getXVelocity(pointerId);
        float yVelocity = velocityTracker.getYVelocity(pointerId);
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            if (i10 != actionIndex) {
                int pointerId2 = motionEvent.getPointerId(i10);
                if ((velocityTracker.getXVelocity(pointerId2) * xVelocity) + (velocityTracker.getYVelocity(pointerId2) * yVelocity) < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    velocityTracker.clear();
                    return;
                }
            }
        }
    }
}

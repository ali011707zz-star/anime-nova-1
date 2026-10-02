package r2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;

/* compiled from: BadgeShape.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f12805a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final float f12806b;

    /* renamed from: c, reason: collision with root package name */
    public final float f12807c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12808d;

    public b(float f10, float f11, int i10) {
        this.f12806b = f10;
        this.f12807c = f11;
        this.f12808d = i10;
    }

    public final void a(int i10, int i11, Rect rect, int i12) {
        if (Build.VERSION.SDK_INT < 17) {
            Gravity.apply(this.f12808d, i10, i11, rect, this.f12805a);
        } else {
            Gravity.apply(this.f12808d, i10, i11, rect, this.f12805a, i12);
        }
    }

    public Rect b(Canvas canvas, Rect rect, Paint paint, int i10) {
        float width = rect.width() * this.f12806b;
        float height = rect.height() * this.f12806b;
        float f10 = this.f12807c;
        if (width < height * f10) {
            height = width / f10;
        } else {
            width = height * f10;
        }
        a((int) width, (int) height, rect, i10);
        c(canvas, this.f12805a, paint);
        return this.f12805a;
    }

    public abstract void c(Canvas canvas, Rect rect, Paint paint);
}

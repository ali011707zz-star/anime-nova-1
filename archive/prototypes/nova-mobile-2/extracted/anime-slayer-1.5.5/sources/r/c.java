package r;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import r.g;

/* compiled from: CardViewBaseImpl.java */
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final RectF f12721a = new RectF();

    /* compiled from: CardViewBaseImpl.java */
    /* loaded from: classes.dex */
    public class a implements g.a {
        public a() {
        }

        @Override // r.g.a
        public void a(Canvas canvas, RectF rectF, float f10, Paint paint) {
            float f11 = 2.0f * f10;
            float width = (rectF.width() - f11) - 1.0f;
            float height = (rectF.height() - f11) - 1.0f;
            if (f10 >= 1.0f) {
                float f12 = f10 + 0.5f;
                float f13 = -f12;
                c.this.f12721a.set(f13, f13, f12, f12);
                int save = canvas.save();
                canvas.translate(rectF.left + f12, rectF.top + f12);
                canvas.drawArc(c.this.f12721a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f12721a, 180.0f, 90.0f, true, paint);
                canvas.translate(height, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f12721a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f12721a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(save);
                float f14 = (rectF.left + f12) - 1.0f;
                float f15 = rectF.top;
                canvas.drawRect(f14, f15, (rectF.right - f12) + 1.0f, f15 + f12, paint);
                float f16 = (rectF.left + f12) - 1.0f;
                float f17 = rectF.bottom;
                canvas.drawRect(f16, f17 - f12, (rectF.right - f12) + 1.0f, f17, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f10, rectF.right, rectF.bottom - f10, paint);
        }
    }

    @Override // r.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        g p10 = p(context, colorStateList, f10, f11, f12);
        p10.m(dVar.d());
        dVar.c(p10);
        j(dVar);
    }

    @Override // r.e
    public float b(d dVar) {
        return q(dVar).k();
    }

    @Override // r.e
    public float c(d dVar) {
        return q(dVar).j();
    }

    @Override // r.e
    public void d(d dVar) {
    }

    @Override // r.e
    public ColorStateList e(d dVar) {
        return q(dVar).f();
    }

    @Override // r.e
    public void f(d dVar, float f10) {
        q(dVar).p(f10);
        j(dVar);
    }

    @Override // r.e
    public float g(d dVar) {
        return q(dVar).l();
    }

    @Override // r.e
    public float h(d dVar) {
        return q(dVar).g();
    }

    @Override // r.e
    public void i() {
        g.f12735r = new a();
    }

    @Override // r.e
    public void j(d dVar) {
        Rect rect = new Rect();
        q(dVar).h(rect);
        dVar.b((int) Math.ceil(b(dVar)), (int) Math.ceil(c(dVar)));
        dVar.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // r.e
    public void k(d dVar, float f10) {
        q(dVar).r(f10);
    }

    @Override // r.e
    public void l(d dVar) {
        q(dVar).m(dVar.d());
        j(dVar);
    }

    @Override // r.e
    public void m(d dVar, float f10) {
        q(dVar).q(f10);
        j(dVar);
    }

    @Override // r.e
    public float n(d dVar) {
        return q(dVar).i();
    }

    @Override // r.e
    public void o(d dVar, ColorStateList colorStateList) {
        q(dVar).o(colorStateList);
    }

    public final g p(Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        return new g(context.getResources(), colorStateList, f10, f11, f12);
    }

    public final g q(d dVar) {
        return (g) dVar.f();
    }
}

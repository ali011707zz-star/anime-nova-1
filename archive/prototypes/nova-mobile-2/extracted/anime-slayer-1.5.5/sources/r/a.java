package r;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import r.g;

/* compiled from: CardViewApi17Impl.java */
/* loaded from: classes.dex */
public class a extends c {

    /* compiled from: CardViewApi17Impl.java */
    /* renamed from: r.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0310a implements g.a {
        public C0310a() {
        }

        @Override // r.g.a
        public void a(Canvas canvas, RectF rectF, float f10, Paint paint) {
            canvas.drawRoundRect(rectF, f10, f10, paint);
        }
    }

    @Override // r.c, r.e
    public void i() {
        g.f12735r = new C0310a();
    }
}

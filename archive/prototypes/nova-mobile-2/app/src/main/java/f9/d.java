package f9;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: DataRenderer.java */
/* loaded from: classes.dex */
public abstract class d extends k {

    /* renamed from: b, reason: collision with root package name */
    public u8.a f6473b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f6474c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f6475d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f6476e;

    /* renamed from: f, reason: collision with root package name */
    public Paint f6477f;

    public d(u8.a aVar, g9.j jVar) {
        super(jVar);
        this.f6473b = aVar;
        Paint paint = new Paint(1);
        this.f6474c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f6476e = new Paint(4);
        Paint paint2 = new Paint(1);
        this.f6477f = paint2;
        paint2.setColor(Color.rgb(63, 63, 63));
        this.f6477f.setTextAlign(Paint.Align.CENTER);
        this.f6477f.setTextSize(g9.i.e(9.0f));
        Paint paint3 = new Paint(1);
        this.f6475d = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        this.f6475d.setStrokeWidth(2.0f);
        this.f6475d.setColor(Color.rgb(BaseProgressIndicator.MAX_ALPHA, 187, 115));
    }

    public void a(c9.d dVar) {
        this.f6477f.setTypeface(dVar.f());
        this.f6477f.setTextSize(dVar.b0());
    }

    public abstract void b(Canvas canvas);

    public abstract void c(Canvas canvas);

    public abstract void d(Canvas canvas, a9.c[] cVarArr);

    public abstract void e(Canvas canvas);

    public abstract void f();

    public boolean g(b9.c cVar) {
        return ((float) cVar.getData().h()) < ((float) cVar.getMaxVisibleCount()) * this.f6512a.q();
    }
}

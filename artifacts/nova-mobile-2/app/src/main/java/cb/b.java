package cb;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: CircleBubbleView.java */
/* loaded from: classes.dex */
public class b extends View {

    /* renamed from: f, reason: collision with root package name */
    public int f3804f;

    /* renamed from: g, reason: collision with root package name */
    public int f3805g;

    /* renamed from: h, reason: collision with root package name */
    public float f3806h;

    /* renamed from: i, reason: collision with root package name */
    public Context f3807i;

    /* renamed from: j, reason: collision with root package name */
    public Path f3808j;

    /* renamed from: k, reason: collision with root package name */
    public Paint f3809k;

    /* renamed from: l, reason: collision with root package name */
    public float f3810l;

    /* renamed from: m, reason: collision with root package name */
    public float f3811m;

    /* renamed from: n, reason: collision with root package name */
    public float f3812n;

    /* renamed from: o, reason: collision with root package name */
    public String f3813o;

    public b(Context context, float f10, int i10, int i11, String str) {
        super(context, null, 0);
        this.f3807i = context;
        this.f3806h = f10;
        this.f3804f = i10;
        this.f3805g = i11;
        a(str);
    }

    public final void a(String str) {
        Paint paint = new Paint();
        this.f3809k = paint;
        paint.setAntiAlias(true);
        this.f3809k.setStrokeWidth(1.0f);
        this.f3809k.setTextAlign(Paint.Align.CENTER);
        this.f3809k.setTextSize(this.f3806h);
        this.f3809k.getTextBounds(str, 0, str.length(), new Rect());
        this.f3810l = r0.width() + k.a(this.f3807i, 4.0f);
        float a10 = k.a(this.f3807i, 36.0f);
        if (this.f3810l < a10) {
            this.f3810l = a10;
        }
        this.f3812n = r0.height();
        this.f3811m = this.f3810l * 1.2f;
        b();
    }

    public final void b() {
        this.f3808j = new Path();
        float f10 = this.f3810l;
        this.f3808j.arcTo(new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10, f10), 135.0f, 270.0f);
        this.f3808j.lineTo(this.f3810l / 2.0f, this.f3811m);
        this.f3808j.close();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f3809k.setColor(this.f3805g);
        canvas.drawPath(this.f3808j, this.f3809k);
        this.f3809k.setColor(this.f3804f);
        canvas.drawText(this.f3813o, this.f3810l / 2.0f, (this.f3811m / 2.0f) + (this.f3812n / 4.0f), this.f3809k);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension((int) this.f3810l, (int) this.f3811m);
    }

    public void setProgress(String str) {
        this.f3813o = str;
        invalidate();
    }
}

package m7;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.anslayer.R;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.SupportExtentionKt;

/* compiled from: RadialProgressView.java */
/* loaded from: classes.dex */
public class j extends View {

    /* renamed from: f, reason: collision with root package name */
    public long f11032f;

    /* renamed from: g, reason: collision with root package name */
    public float f11033g;

    /* renamed from: h, reason: collision with root package name */
    public float f11034h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f11035i;

    /* renamed from: j, reason: collision with root package name */
    public float f11036j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f11037k;

    /* renamed from: l, reason: collision with root package name */
    public int f11038l;

    /* renamed from: m, reason: collision with root package name */
    public final DecelerateInterpolator f11039m;

    /* renamed from: n, reason: collision with root package name */
    public final AccelerateInterpolator f11040n;

    /* renamed from: o, reason: collision with root package name */
    public final Paint f11041o;

    /* renamed from: p, reason: collision with root package name */
    public int f11042p;

    public j(Context context) {
        super(context);
        this.f11037k = new RectF();
        this.f11042p = k7.b.g(40);
        this.f11038l = SupportExtentionKt.getColorFromAttr(context, R.attr.colorOnSurface);
        this.f11039m = new DecelerateInterpolator();
        this.f11040n = new AccelerateInterpolator();
        Paint paint = new Paint(1);
        this.f11041o = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeWidth(k7.b.g(3));
        paint.setColor(this.f11038l);
    }

    public final void a() {
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = currentTimeMillis - this.f11032f;
        if (j10 > 17) {
            j10 = 17;
        }
        this.f11032f = currentTimeMillis;
        float f10 = this.f11033g + (((float) (360 * j10)) / 2000.0f);
        this.f11033g = f10;
        this.f11033g = f10 - (((int) (f10 / 360.0f)) * 360);
        float f11 = this.f11036j + ((float) j10);
        this.f11036j = f11;
        if (f11 >= 500.0f) {
            this.f11036j = 500.0f;
        }
        if (this.f11035i) {
            this.f11034h = (this.f11040n.getInterpolation(this.f11036j / 500.0f) * 266.0f) + 4.0f;
        } else {
            this.f11034h = 4.0f - ((1.0f - this.f11039m.getInterpolation(this.f11036j / 500.0f)) * 270.0f);
        }
        if (this.f11036j == 500.0f) {
            boolean z10 = this.f11035i;
            if (z10) {
                this.f11033g += 270.0f;
                this.f11034h = -266.0f;
            }
            this.f11035i = !z10;
            this.f11036j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f11037k.set((getMeasuredWidth() - this.f11042p) / 2, (getMeasuredHeight() - this.f11042p) / 2, r0 + r2, r1 + r2);
        canvas.drawArc(this.f11037k, this.f11033g, this.f11034h, false, this.f11041o);
        a();
    }

    public void setProgressColor(int i10) {
        this.f11038l = i10;
        this.f11041o.setColor(i10);
    }

    public void setSize(int i10) {
        this.f11042p = i10;
        invalidate();
    }

    public void setStrokeWidth(float f10) {
        this.f11041o.setStrokeWidth(k7.b.g((int) f10));
    }
}

package m7;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import com.anslayer.R;

/* compiled from: CustomBadgeShape.java */
/* loaded from: classes.dex */
public class d extends r2.b {

    /* renamed from: e, reason: collision with root package name */
    public final RectF f10986e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f10987f;

    public d(Context context, float f10, int i10) {
        super(f10, 1.0f, i10);
        this.f10986e = new RectF();
        Paint paint = new Paint();
        this.f10987f = paint;
        paint.setAntiAlias(true);
        paint.setColor(d(context));
    }

    public static int d(Context context) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(R.color.md_grey_900, typedValue, true)) {
            return typedValue.data;
        }
        return 0;
    }

    @Override // r2.b
    public void c(Canvas canvas, Rect rect, Paint paint) {
        float width = rect.width() * 0.1f;
        float height = rect.height() * 0.1f;
        this.f10986e.set(rect);
        RectF rectF = this.f10986e;
        rectF.left -= width;
        rectF.top -= height;
        rectF.right += width;
        rectF.bottom += height;
        canvas.drawOval(rectF, this.f10987f);
        this.f10986e.set(rect);
        canvas.drawOval(this.f10986e, paint);
    }
}

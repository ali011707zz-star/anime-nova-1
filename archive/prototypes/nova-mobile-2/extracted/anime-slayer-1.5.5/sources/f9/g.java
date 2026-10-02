package f9;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;

/* compiled from: LineRadarRenderer.java */
/* loaded from: classes.dex */
public abstract class g extends h {
    public g(u8.a aVar, g9.j jVar) {
        super(aVar, jVar);
    }

    public final boolean k() {
        return g9.i.s() >= 18;
    }

    public void l(Canvas canvas, Path path, int i10, int i11) {
        int i12 = (i10 & 16777215) | (i11 << 24);
        if (k()) {
            int save = canvas.save();
            canvas.clipPath(path);
            canvas.drawColor(i12);
            canvas.restoreToCount(save);
            return;
        }
        Paint.Style style = this.f6474c.getStyle();
        int color = this.f6474c.getColor();
        this.f6474c.setStyle(Paint.Style.FILL);
        this.f6474c.setColor(i12);
        canvas.drawPath(path, this.f6474c);
        this.f6474c.setColor(color);
        this.f6474c.setStyle(style);
    }

    public void m(Canvas canvas, Path path, Drawable drawable) {
        if (k()) {
            int save = canvas.save();
            canvas.clipPath(path);
            drawable.setBounds((int) this.f6512a.h(), (int) this.f6512a.j(), (int) this.f6512a.i(), (int) this.f6512a.f());
            drawable.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        throw new RuntimeException("Fill-drawables not (yet) supported below API level 18, this code was run on API level " + g9.i.s() + ".");
    }
}

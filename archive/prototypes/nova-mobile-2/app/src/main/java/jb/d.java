package jb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: FastBitmapDrawable.java */
/* loaded from: classes.dex */
public class d extends Drawable {

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f9149b;

    /* renamed from: d, reason: collision with root package name */
    public int f9151d;

    /* renamed from: e, reason: collision with root package name */
    public int f9152e;

    /* renamed from: a, reason: collision with root package name */
    public final Paint f9148a = new Paint(2);

    /* renamed from: c, reason: collision with root package name */
    public int f9150c = BaseProgressIndicator.MAX_ALPHA;

    public d(Bitmap bitmap) {
        b(bitmap);
    }

    public Bitmap a() {
        return this.f9149b;
    }

    public void b(Bitmap bitmap) {
        this.f9149b = bitmap;
        if (bitmap != null) {
            this.f9151d = bitmap.getWidth();
            this.f9152e = this.f9149b.getHeight();
        } else {
            this.f9152e = 0;
            this.f9151d = 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f9149b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f9149b, (Rect) null, getBounds(), this.f9148a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f9150c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9152e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9151d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f9152e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f9151d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f9150c = i10;
        this.f9148a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9148a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f9148a.setFilterBitmap(z10);
    }
}

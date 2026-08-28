package s7;

import android.graphics.Bitmap;

/* compiled from: BitmapPoolAdapter.java */
/* loaded from: classes.dex */
public class f implements e {
    @Override // s7.e
    public void a(int i10) {
    }

    @Override // s7.e
    public void b() {
    }

    @Override // s7.e
    public Bitmap c(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // s7.e
    public void d(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // s7.e
    public Bitmap e(int i10, int i11, Bitmap.Config config) {
        return c(i10, i11, config);
    }
}

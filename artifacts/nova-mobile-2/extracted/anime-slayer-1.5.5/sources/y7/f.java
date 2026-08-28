package y7;

import android.content.Context;
import android.graphics.Bitmap;

/* compiled from: BitmapTransformation.java */
/* loaded from: classes.dex */
public abstract class f implements p7.k<Bitmap> {
    @Override // p7.k
    public final r7.u<Bitmap> a(Context context, r7.u<Bitmap> uVar, int i10, int i11) {
        if (l8.k.s(i10, i11)) {
            s7.e f10 = com.bumptech.glide.c.c(context).f();
            Bitmap bitmap = uVar.get();
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getWidth();
            }
            if (i11 == Integer.MIN_VALUE) {
                i11 = bitmap.getHeight();
            }
            Bitmap c10 = c(f10, bitmap, i10, i11);
            return bitmap.equals(c10) ? uVar : e.e(c10, f10);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    public abstract Bitmap c(s7.e eVar, Bitmap bitmap, int i10, int i11);
}

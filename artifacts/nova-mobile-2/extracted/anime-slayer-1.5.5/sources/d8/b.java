package d8;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import l8.j;
import r7.u;

/* compiled from: BitmapDrawableTranscoder.java */
/* loaded from: classes.dex */
public class b implements e<Bitmap, BitmapDrawable> {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f5719a;

    public b(Resources resources) {
        this.f5719a = (Resources) j.d(resources);
    }

    @Override // d8.e
    public u<BitmapDrawable> a(u<Bitmap> uVar, p7.g gVar) {
        return y7.u.e(this.f5719a, uVar);
    }
}

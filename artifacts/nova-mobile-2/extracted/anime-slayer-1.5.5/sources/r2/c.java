package r2;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.widget.ImageView;
import r2.a;

/* compiled from: Badger.java */
/* loaded from: classes.dex */
public class c<T extends a> {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f12809a;

    /* renamed from: b, reason: collision with root package name */
    public final T f12810b;

    public c(Drawable drawable, T t10) {
        this.f12809a = drawable;
        this.f12810b = t10;
    }

    public static <T extends a> T a(ImageView imageView, a.b<? extends T> bVar) {
        c b10 = b(imageView.getDrawable(), bVar);
        imageView.setImageDrawable(b10.f12809a);
        return b10.f12810b;
    }

    public static <T extends a> c<T> b(Drawable drawable, a.b<? extends T> bVar) {
        if (!(drawable instanceof LayerDrawable)) {
            T a10 = bVar.a();
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, a10});
            layerDrawable.setId(1, g.f12818a);
            return new c<>(layerDrawable, a10);
        }
        LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
        Drawable findDrawableByLayerId = layerDrawable2.findDrawableByLayerId(g.f12818a);
        if (findDrawableByLayerId == null) {
            T a11 = bVar.a();
            int numberOfLayers = layerDrawable2.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers + 1];
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                drawableArr[i10] = layerDrawable2.getDrawable(i10);
            }
            drawableArr[numberOfLayers] = a11;
            LayerDrawable layerDrawable3 = new LayerDrawable(drawableArr);
            layerDrawable3.setId(numberOfLayers, g.f12818a);
            return new c<>(layerDrawable3, a11);
        }
        try {
            return new c<>(layerDrawable2, (a) findDrawableByLayerId);
        } catch (ClassCastException unused) {
            throw new IllegalStateException("layer with id R.id.badger_drawable must be an instance of " + bVar.a().getClass().getSimpleName());
        }
    }
}

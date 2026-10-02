package u0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* compiled from: ImageViewCompat.java */
/* loaded from: classes.dex */
public class f {
    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        if (imageView instanceof o) {
            return ((o) imageView).getSupportImageTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        if (imageView instanceof o) {
            return ((o) imageView).getSupportImageTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            imageView.setImageTintList(colorStateList);
            if (i10 != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(imageView.getDrawableState());
            }
            imageView.setImageDrawable(drawable);
            return;
        }
        if (imageView instanceof o) {
            ((o) imageView).setSupportImageTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            imageView.setImageTintMode(mode);
            if (i10 != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(imageView.getDrawableState());
            }
            imageView.setImageDrawable(drawable);
            return;
        }
        if (imageView instanceof o) {
            ((o) imageView).setSupportImageTintMode(mode);
        }
    }
}

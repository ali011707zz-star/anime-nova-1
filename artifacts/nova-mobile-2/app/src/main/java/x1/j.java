package x1;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: PropertyValuesHolderUtils.java */
/* loaded from: classes.dex */
public class j {
    public static PropertyValuesHolder a(Property<?, PointF> property, Path path) {
        if (Build.VERSION.SDK_INT >= 21) {
            return PropertyValuesHolder.ofObject(property, (TypeConverter) null, path);
        }
        return PropertyValuesHolder.ofFloat(new h(property, path), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f);
    }
}

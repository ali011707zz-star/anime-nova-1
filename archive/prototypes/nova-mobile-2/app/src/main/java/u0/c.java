package u0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CheckedTextView;
import java.lang.reflect.Field;

/* compiled from: CheckedTextViewCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* compiled from: CheckedTextViewCompat.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static Field f14307a;

        /* renamed from: b, reason: collision with root package name */
        public static boolean f14308b;

        public static Drawable a(CheckedTextView checkedTextView) {
            if (!f14308b) {
                try {
                    Field declaredField = CheckedTextView.class.getDeclaredField("mCheckMarkDrawable");
                    f14307a = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f14308b = true;
            }
            Field field = f14307a;
            if (field != null) {
                try {
                    return (Drawable) field.get(checkedTextView);
                } catch (IllegalAccessException unused2) {
                    f14307a = null;
                }
            }
            return null;
        }
    }

    /* compiled from: CheckedTextViewCompat.java */
    /* loaded from: classes.dex */
    public static class b {
        public static Drawable a(CheckedTextView checkedTextView) {
            return checkedTextView.getCheckMarkDrawable();
        }
    }

    /* compiled from: CheckedTextViewCompat.java */
    /* renamed from: u0.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0358c {
        public static void a(CheckedTextView checkedTextView, ColorStateList colorStateList) {
            checkedTextView.setCheckMarkTintList(colorStateList);
        }

        public static void b(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
            checkedTextView.setCheckMarkTintMode(mode);
        }
    }

    public static Drawable a(CheckedTextView checkedTextView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return b.a(checkedTextView);
        }
        return a.a(checkedTextView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(CheckedTextView checkedTextView, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0358c.a(checkedTextView, colorStateList);
        } else if (checkedTextView instanceof l) {
            ((l) checkedTextView).setSupportCheckMarkTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(CheckedTextView checkedTextView, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            C0358c.b(checkedTextView, mode);
        } else if (checkedTextView instanceof l) {
            ((l) checkedTextView).setSupportCheckMarkTintMode(mode);
        }
    }
}

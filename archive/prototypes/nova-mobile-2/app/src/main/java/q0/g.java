package q0;

import android.os.Build;
import android.view.LayoutInflater;
import java.lang.reflect.Field;

/* compiled from: LayoutInflaterCompat.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static Field f12314a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f12315b;

    public static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f12315b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f12314a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("forceSetFactory2 Could not find field 'mFactory2' on class ");
                sb2.append(LayoutInflater.class.getName());
                sb2.append("; inflation may have unexpected results.");
            }
            f12315b = true;
        }
        Field field = f12314a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException unused2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("forceSetFactory2 could not set the Factory2 on LayoutInflater ");
                sb3.append(layoutInflater);
                sb3.append("; inflation may have unexpected results.");
            }
        }
    }

    public static void b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                a(layoutInflater, factory2);
            }
        }
    }
}

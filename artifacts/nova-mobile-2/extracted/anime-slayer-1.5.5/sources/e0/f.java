package e0;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: BundleCompat.java */
/* loaded from: classes.dex */
public final class f {

    /* compiled from: BundleCompat.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static Method f5856a;

        /* renamed from: b, reason: collision with root package name */
        public static boolean f5857b;

        /* renamed from: c, reason: collision with root package name */
        public static Method f5858c;

        /* renamed from: d, reason: collision with root package name */
        public static boolean f5859d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f5857b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f5856a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f5857b = true;
            }
            Method method2 = f5856a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f5856a = null;
                }
            }
            return null;
        }

        public static void b(Bundle bundle, String str, IBinder iBinder) {
            if (!f5859d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f5858c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f5859d = true;
            }
            Method method2 = f5858c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f5858c = null;
                }
            }
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        return a.a(bundle, str);
    }

    public static void b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.b(bundle, str, iBinder);
        }
    }
}

package e;

import android.content.res.Resources;
import android.os.Build;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* compiled from: ResourcesFlusher.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static Field f5809a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f5810b;

    /* renamed from: c, reason: collision with root package name */
    public static Class<?> f5811c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f5812d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f5813e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f5814f;

    /* renamed from: g, reason: collision with root package name */
    public static Field f5815g;

    /* renamed from: h, reason: collision with root package name */
    public static boolean f5816h;

    public static void a(Resources resources) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            return;
        }
        if (i10 >= 24) {
            d(resources);
        } else if (i10 >= 23) {
            c(resources);
        } else if (i10 >= 21) {
            b(resources);
        }
    }

    public static void b(Resources resources) {
        if (!f5810b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f5809a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f5810b = true;
        }
        Field field = f5809a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    public static void c(Resources resources) {
        if (!f5810b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f5809a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f5810b = true;
        }
        Object obj = null;
        Field field = f5809a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
        }
        if (obj == null) {
            return;
        }
        e(obj);
    }

    public static void d(Resources resources) {
        Object obj;
        if (!f5816h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f5815g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f5816h = true;
        }
        Field field = f5815g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException unused2) {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f5810b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f5809a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f5810b = true;
        }
        Field field2 = f5809a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException unused4) {
            }
        }
        if (obj2 != null) {
            e(obj2);
        }
    }

    public static void e(Object obj) {
        if (!f5812d) {
            try {
                f5811c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f5812d = true;
        }
        Class<?> cls = f5811c;
        if (cls == null) {
            return;
        }
        if (!f5814f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f5813e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f5814f = true;
        }
        Field field = f5813e;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}

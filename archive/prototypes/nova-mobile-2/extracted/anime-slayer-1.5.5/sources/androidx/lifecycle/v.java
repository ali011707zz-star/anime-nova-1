package androidx.lifecycle;

import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Lifecycling.java */
/* loaded from: classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public static Map<Class<?>, Integer> f2536a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static Map<Class<?>, List<Constructor<? extends j>>> f2537b = new HashMap();

    public static j a(Constructor<? extends j> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    public static Constructor<? extends j> b(Class<?> cls) {
        try {
            Package r02 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r02 != null ? r02.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String c10 = c(canonicalName);
            if (!name.isEmpty()) {
                c10 = name + "." + c10;
            }
            Constructor declaredConstructor = Class.forName(c10).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String c(String str) {
        return str.replace(".", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR) + "_LifecycleAdapter";
    }

    public static int d(Class<?> cls) {
        Integer num = f2536a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int g10 = g(cls);
        f2536a.put(cls, Integer.valueOf(g10));
        return g10;
    }

    public static boolean e(Class<?> cls) {
        return cls != null && p.class.isAssignableFrom(cls);
    }

    public static n f(Object obj) {
        boolean z10 = obj instanceof n;
        boolean z11 = obj instanceof i;
        if (z10 && z11) {
            return new FullLifecycleObserverAdapter((i) obj, (n) obj);
        }
        if (z11) {
            return new FullLifecycleObserverAdapter((i) obj, null);
        }
        if (z10) {
            return (n) obj;
        }
        Class<?> cls = obj.getClass();
        if (d(cls) == 2) {
            List<Constructor<? extends j>> list = f2537b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            j[] jVarArr = new j[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                jVarArr[i10] = a(list.get(i10), obj);
            }
            return new CompositeGeneratedAdaptersObserver(jVarArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    public static int g(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends j> b10 = b(cls);
        if (b10 != null) {
            f2537b.put(cls, Collections.singletonList(b10));
            return 2;
        }
        if (c.f2452c.d(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (e(superclass)) {
            if (d(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(f2537b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (e(cls2)) {
                if (d(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(f2537b.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f2537b.put(cls, arrayList);
        return 2;
    }
}

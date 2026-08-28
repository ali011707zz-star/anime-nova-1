package androidx.lifecycle;

import androidx.lifecycle.k;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ClassesInfoCache.java */
@Deprecated
/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static c f2452c = new c();

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, a> f2453a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map<Class<?>, Boolean> f2454b = new HashMap();

    /* compiled from: ClassesInfoCache.java */
    @Deprecated
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Map<k.b, List<b>> f2455a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        public final Map<b, k.b> f2456b;

        public a(Map<b, k.b> map) {
            this.f2456b = map;
            for (Map.Entry<b, k.b> entry : map.entrySet()) {
                k.b value = entry.getValue();
                List<b> list = this.f2455a.get(value);
                if (list == null) {
                    list = new ArrayList<>();
                    this.f2455a.put(value, list);
                }
                list.add(entry.getKey());
            }
        }

        public static void b(List<b> list, q qVar, k.b bVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(qVar, bVar, obj);
                }
            }
        }

        public void a(q qVar, k.b bVar, Object obj) {
            b(this.f2455a.get(bVar), qVar, bVar, obj);
            b(this.f2455a.get(k.b.ON_ANY), qVar, bVar, obj);
        }
    }

    /* compiled from: ClassesInfoCache.java */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f2457a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f2458b;

        public b(int i10, Method method) {
            this.f2457a = i10;
            this.f2458b = method;
            method.setAccessible(true);
        }

        public void a(q qVar, k.b bVar, Object obj) {
            try {
                int i10 = this.f2457a;
                if (i10 == 0) {
                    this.f2458b.invoke(obj, new Object[0]);
                } else if (i10 == 1) {
                    this.f2458b.invoke(obj, qVar);
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    this.f2458b.invoke(obj, qVar, bVar);
                }
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException("Failed to call observer method", e11.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2457a == bVar.f2457a && this.f2458b.getName().equals(bVar.f2458b.getName());
        }

        public int hashCode() {
            return (this.f2457a * 31) + this.f2458b.getName().hashCode();
        }
    }

    public final a a(Class<?> cls, Method[] methodArr) {
        int i10;
        a c10;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (c10 = c(superclass)) != null) {
            hashMap.putAll(c10.f2456b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, k.b> entry : c(cls2).f2456b.entrySet()) {
                e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            a0 a0Var = (a0) method.getAnnotation(a0.class);
            if (a0Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i10 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(q.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i10 = 1;
                }
                k.b value = a0Var.value();
                if (parameterTypes.length > 1) {
                    if (parameterTypes[1].isAssignableFrom(k.b.class)) {
                        if (value != k.b.ON_ANY) {
                            throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                        }
                        i10 = 2;
                    } else {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                }
                if (parameterTypes.length <= 2) {
                    e(hashMap, new b(i10, method), value, cls);
                    z10 = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        a aVar = new a(hashMap);
        this.f2453a.put(cls, aVar);
        this.f2454b.put(cls, Boolean.valueOf(z10));
        return aVar;
    }

    public final Method[] b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e10) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
        }
    }

    public a c(Class<?> cls) {
        a aVar = this.f2453a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    public boolean d(Class<?> cls) {
        Boolean bool = this.f2454b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] b10 = b(cls);
        for (Method method : b10) {
            if (((a0) method.getAnnotation(a0.class)) != null) {
                a(cls, b10);
                return true;
            }
        }
        this.f2454b.put(cls, Boolean.FALSE);
        return false;
    }

    public final void e(Map<b, k.b> map, b bVar, k.b bVar2, Class<?> cls) {
        k.b bVar3 = map.get(bVar);
        if (bVar3 == null || bVar2 == bVar3) {
            if (bVar3 == null) {
                map.put(bVar, bVar2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f2458b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + bVar3 + ", new value " + bVar2);
    }
}

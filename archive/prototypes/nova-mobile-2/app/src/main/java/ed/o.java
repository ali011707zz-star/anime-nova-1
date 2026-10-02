package ed;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBusException;

/* compiled from: SubscriberMethodFinder.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: d, reason: collision with root package name */
    public static final Map<Class<?>, List<n>> f6360d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public static final a[] f6361e = new a[4];

    /* renamed from: a, reason: collision with root package name */
    public List<gd.b> f6362a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6363b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6364c;

    /* compiled from: SubscriberMethodFinder.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final List<n> f6365a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final Map<Class, Object> f6366b = new HashMap();

        /* renamed from: c, reason: collision with root package name */
        public final Map<String, Class> f6367c = new HashMap();

        /* renamed from: d, reason: collision with root package name */
        public final StringBuilder f6368d = new StringBuilder(128);

        /* renamed from: e, reason: collision with root package name */
        public Class<?> f6369e;

        /* renamed from: f, reason: collision with root package name */
        public Class<?> f6370f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f6371g;

        /* renamed from: h, reason: collision with root package name */
        public gd.a f6372h;

        public boolean a(Method method, Class<?> cls) {
            Object put = this.f6366b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (b((Method) put, cls)) {
                    this.f6366b.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return b(method, cls);
        }

        public final boolean b(Method method, Class<?> cls) {
            this.f6368d.setLength(0);
            this.f6368d.append(method.getName());
            StringBuilder sb2 = this.f6368d;
            sb2.append('>');
            sb2.append(cls.getName());
            String sb3 = this.f6368d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f6367c.put(sb3, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f6367c.put(sb3, put);
            return false;
        }

        public void c(Class<?> cls) {
            this.f6370f = cls;
            this.f6369e = cls;
            this.f6371g = false;
            this.f6372h = null;
        }

        public void d() {
            if (this.f6371g) {
                this.f6370f = null;
                return;
            }
            Class<? super Object> superclass = this.f6370f.getSuperclass();
            this.f6370f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f6370f = null;
            }
        }

        public void e() {
            this.f6365a.clear();
            this.f6366b.clear();
            this.f6367c.clear();
            this.f6368d.setLength(0);
            this.f6369e = null;
            this.f6370f = null;
            this.f6371g = false;
            this.f6372h = null;
        }
    }

    public o(List<gd.b> list, boolean z10, boolean z11) {
        this.f6362a = list;
        this.f6363b = z10;
        this.f6364c = z11;
    }

    public List<n> a(Class<?> cls) {
        List<n> b10;
        Map<Class<?>, List<n>> map = f6360d;
        List<n> list = map.get(cls);
        if (list != null) {
            return list;
        }
        if (this.f6364c) {
            b10 = c(cls);
        } else {
            b10 = b(cls);
        }
        if (!b10.isEmpty()) {
            map.put(cls, b10);
            return b10;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }

    public final List<n> b(Class<?> cls) {
        a g10 = g();
        g10.c(cls);
        while (g10.f6370f != null) {
            gd.a f10 = f(g10);
            g10.f6372h = f10;
            if (f10 != null) {
                for (n nVar : f10.a()) {
                    if (g10.a(nVar.f6354a, nVar.f6356c)) {
                        g10.f6365a.add(nVar);
                    }
                }
            } else {
                d(g10);
            }
            g10.d();
        }
        return e(g10);
    }

    public final List<n> c(Class<?> cls) {
        a g10 = g();
        g10.c(cls);
        while (g10.f6370f != null) {
            d(g10);
            g10.d();
        }
        return e(g10);
    }

    public final void d(a aVar) {
        Method[] methods;
        try {
            try {
                methods = aVar.f6370f.getDeclaredMethods();
            } catch (LinkageError e10) {
                String str = "Could not inspect methods of " + aVar.f6370f.getName();
                throw new EventBusException(this.f6364c ? str + ". Please consider using EventBus annotation processor to avoid reflection." : str + ". Please make this class visible to EventBus annotation processor to avoid reflection.", e10);
            }
        } catch (Throwable unused) {
            methods = aVar.f6370f.getMethods();
            aVar.f6371g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    l lVar = (l) method.getAnnotation(l.class);
                    if (lVar != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.f6365a.add(new n(method, cls, lVar.threadMode(), lVar.priority(), lVar.sticky()));
                        }
                    }
                } else if (this.f6363b && method.isAnnotationPresent(l.class)) {
                    throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f6363b && method.isAnnotationPresent(l.class)) {
                throw new EventBusException((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    public final List<n> e(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f6365a);
        aVar.e();
        synchronized (f6361e) {
            int i10 = 0;
            while (true) {
                if (i10 >= 4) {
                    break;
                }
                a[] aVarArr = f6361e;
                if (aVarArr[i10] == null) {
                    aVarArr[i10] = aVar;
                    break;
                }
                i10++;
            }
        }
        return arrayList;
    }

    public final gd.a f(a aVar) {
        gd.a aVar2 = aVar.f6372h;
        if (aVar2 != null && aVar2.c() != null) {
            gd.a c10 = aVar.f6372h.c();
            if (aVar.f6370f == c10.b()) {
                return c10;
            }
        }
        List<gd.b> list = this.f6362a;
        if (list == null) {
            return null;
        }
        Iterator<gd.b> it2 = list.iterator();
        while (it2.hasNext()) {
            gd.a a10 = it2.next().a(aVar.f6370f);
            if (a10 != null) {
                return a10;
            }
        }
        return null;
    }

    public final a g() {
        synchronized (f6361e) {
            for (int i10 = 0; i10 < 4; i10++) {
                a[] aVarArr = f6361e;
                a aVar = aVarArr[i10];
                if (aVar != null) {
                    aVarArr[i10] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }
}

package t1;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.startup.InitializationProvider;
import androidx.startup.StartupException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: AppInitializer.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static volatile a f14008d;

    /* renamed from: e, reason: collision with root package name */
    public static final Object f14009e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Context f14012c;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Class<? extends b<?>>> f14011b = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final Map<Class<?>, Object> f14010a = new HashMap();

    public a(Context context) {
        this.f14012c = context.getApplicationContext();
    }

    public static a c(Context context) {
        if (f14008d == null) {
            synchronized (f14009e) {
                if (f14008d == null) {
                    f14008d = new a(context);
                }
            }
        }
        return f14008d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        try {
            try {
                w1.a.a("Startup");
                Bundle bundle = this.f14012c.getPackageManager().getProviderInfo(new ComponentName(this.f14012c.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                String string = this.f14012c.getString(c.f14013a);
                if (bundle != null) {
                    HashSet hashSet = new HashSet();
                    for (String str : bundle.keySet()) {
                        if (string.equals(bundle.getString(str, null))) {
                            Class<?> cls = Class.forName(str);
                            if (b.class.isAssignableFrom(cls)) {
                                this.f14011b.add(cls);
                                b(cls, hashSet);
                            }
                        }
                    }
                }
            } finally {
                w1.a.b();
            }
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e10) {
            throw new StartupException(e10);
        }
    }

    public <T> T b(Class<? extends b<?>> cls, Set<Class<?>> set) {
        T t10;
        synchronized (f14009e) {
            if (w1.a.d()) {
                try {
                    w1.a.a(cls.getSimpleName());
                } finally {
                    w1.a.b();
                }
            }
            if (!set.contains(cls)) {
                if (!this.f14010a.containsKey(cls)) {
                    set.add(cls);
                    try {
                        b<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        List<Class<? extends b<?>>> a10 = newInstance.a();
                        if (!a10.isEmpty()) {
                            for (Class<? extends b<?>> cls2 : a10) {
                                if (!this.f14010a.containsKey(cls2)) {
                                    b(cls2, set);
                                }
                            }
                        }
                        t10 = (T) newInstance.b(this.f14012c);
                        set.remove(cls);
                        this.f14010a.put(cls, t10);
                    } catch (Throwable th) {
                        throw new StartupException(th);
                    }
                } else {
                    t10 = (T) this.f14010a.get(cls);
                }
            } else {
                throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
            }
        }
        return t10;
    }

    public <T> T d(Class<? extends b<T>> cls) {
        return (T) b(cls, new HashSet());
    }
}

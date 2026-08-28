package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* compiled from: ViewModelProvider.java */
/* loaded from: classes.dex */
public class l0 {

    /* renamed from: a, reason: collision with root package name */
    public final b f2518a;

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2519b;

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static class a extends d {

        /* renamed from: c, reason: collision with root package name */
        public static a f2520c;

        /* renamed from: b, reason: collision with root package name */
        public Application f2521b;

        public a(Application application) {
            this.f2521b = application;
        }

        public static a c(Application application) {
            if (f2520c == null) {
                f2520c = new a(application);
            }
            return f2520c;
        }

        @Override // androidx.lifecycle.l0.d, androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            if (androidx.lifecycle.b.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.f2521b);
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e11);
                } catch (NoSuchMethodException e12) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e12);
                } catch (InvocationTargetException e13) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e13);
                }
            }
            return (T) super.a(cls);
        }
    }

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public interface b {
        <T extends i0> T a(Class<T> cls);
    }

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static abstract class c extends e implements b {
        public <T extends i0> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract <T extends i0> T c(String str, Class<T> cls);
    }

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static class d implements b {

        /* renamed from: a, reason: collision with root package name */
        public static d f2522a;

        public static d b() {
            if (f2522a == null) {
                f2522a = new d();
            }
            return f2522a;
        }

        @Override // androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + cls, e11);
            }
        }
    }

    /* compiled from: ViewModelProvider.java */
    /* loaded from: classes.dex */
    public static class e {
        public void b(i0 i0Var) {
        }
    }

    public l0(m0 m0Var, b bVar) {
        this.f2518a = bVar;
        this.f2519b = m0Var;
    }

    public <T extends i0> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public <T extends i0> T b(String str, Class<T> cls) {
        T t10;
        T t11 = (T) this.f2519b.b(str);
        if (cls.isInstance(t11)) {
            Object obj = this.f2518a;
            if (obj instanceof e) {
                ((e) obj).b(t11);
            }
            return t11;
        }
        b bVar = this.f2518a;
        if (bVar instanceof c) {
            t10 = (T) ((c) bVar).c(str, cls);
        } else {
            t10 = (T) bVar.a(cls);
        }
        this.f2519b.d(str, t10);
        return t10;
    }
}

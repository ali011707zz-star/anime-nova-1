package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.l0;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* compiled from: SavedStateViewModelFactory.java */
/* loaded from: classes.dex */
public final class g0 extends l0.c {

    /* renamed from: f, reason: collision with root package name */
    public static final Class<?>[] f2489f = {Application.class, f0.class};

    /* renamed from: g, reason: collision with root package name */
    public static final Class<?>[] f2490g = {f0.class};

    /* renamed from: a, reason: collision with root package name */
    public final Application f2491a;

    /* renamed from: b, reason: collision with root package name */
    public final l0.b f2492b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f2493c;

    /* renamed from: d, reason: collision with root package name */
    public final k f2494d;

    /* renamed from: e, reason: collision with root package name */
    public final SavedStateRegistry f2495e;

    @SuppressLint({"LambdaLast"})
    public g0(Application application, androidx.savedstate.c cVar, Bundle bundle) {
        l0.b b10;
        this.f2495e = cVar.getSavedStateRegistry();
        this.f2494d = cVar.getLifecycle();
        this.f2493c = bundle;
        this.f2491a = application;
        if (application != null) {
            b10 = l0.a.c(application);
        } else {
            b10 = l0.d.b();
        }
        this.f2492b = b10;
    }

    public static <T> Constructor<T> d(Class<T> cls, Class<?>[] clsArr) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.l0.c, androidx.lifecycle.l0.b
    public <T extends i0> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.l0.e
    public void b(i0 i0Var) {
        SavedStateHandleController.a(i0Var, this.f2495e, this.f2494d);
    }

    @Override // androidx.lifecycle.l0.c
    public <T extends i0> T c(String str, Class<T> cls) {
        Constructor d10;
        T t10;
        boolean isAssignableFrom = b.class.isAssignableFrom(cls);
        if (isAssignableFrom && this.f2491a != null) {
            d10 = d(cls, f2489f);
        } else {
            d10 = d(cls, f2490g);
        }
        if (d10 == null) {
            return (T) this.f2492b.a(cls);
        }
        SavedStateHandleController j10 = SavedStateHandleController.j(this.f2495e, this.f2494d, str, this.f2493c);
        if (isAssignableFrom) {
            try {
                Application application = this.f2491a;
                if (application != null) {
                    t10 = (T) d10.newInstance(application, j10.k());
                    t10.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", j10);
                    return t10;
                }
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Failed to access " + cls, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e12.getCause());
            }
        }
        t10 = (T) d10.newInstance(j10.k());
        t10.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", j10);
        return t10;
    }
}

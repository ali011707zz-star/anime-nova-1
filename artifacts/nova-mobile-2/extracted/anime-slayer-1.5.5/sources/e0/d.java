package e0;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* compiled from: ActivityRecreator.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Class<?> f5837a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f5838b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f5839c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f5840d;

    /* renamed from: e, reason: collision with root package name */
    public static final Method f5841e;

    /* renamed from: f, reason: collision with root package name */
    public static final Method f5842f;

    /* renamed from: g, reason: collision with root package name */
    public static final Handler f5843g = new Handler(Looper.getMainLooper());

    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ C0111d f5844f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Object f5845g;

        public a(C0111d c0111d, Object obj) {
            this.f5844f = c0111d;
            this.f5845g = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5844f.f5850f = this.f5845g;
        }
    }

    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Application f5846f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ C0111d f5847g;

        public b(Application application, C0111d c0111d) {
            this.f5846f = application;
            this.f5847g = c0111d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5846f.unregisterActivityLifecycleCallbacks(this.f5847g);
        }
    }

    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Object f5848f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ Object f5849g;

        public c(Object obj, Object obj2) {
            this.f5848f = obj;
            this.f5849g = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = d.f5840d;
                if (method != null) {
                    method.invoke(this.f5848f, this.f5849g, Boolean.FALSE, "AppCompat recreation");
                } else {
                    d.f5841e.invoke(this.f5848f, this.f5849g, Boolean.FALSE);
                }
            } catch (RuntimeException e10) {
                if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                    throw e10;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: ActivityRecreator.java */
    /* renamed from: e0.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0111d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: f, reason: collision with root package name */
        public Object f5850f;

        /* renamed from: g, reason: collision with root package name */
        public Activity f5851g;

        /* renamed from: h, reason: collision with root package name */
        public final int f5852h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f5853i = false;

        /* renamed from: j, reason: collision with root package name */
        public boolean f5854j = false;

        /* renamed from: k, reason: collision with root package name */
        public boolean f5855k = false;

        public C0111d(Activity activity) {
            this.f5851g = activity;
            this.f5852h = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f5851g == activity) {
                this.f5851g = null;
                this.f5854j = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f5854j || this.f5855k || this.f5853i || !d.h(this.f5850f, this.f5852h, activity)) {
                return;
            }
            this.f5855k = true;
            this.f5850f = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f5851g == activity) {
                this.f5853i = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> a10 = a();
        f5837a = a10;
        f5838b = b();
        f5839c = f();
        f5840d = d(a10);
        f5841e = c(a10);
        f5842f = e(a10);
    }

    public static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method e(Class<?> cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean g() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 26 || i10 == 27;
    }

    public static boolean h(Object obj, int i10, Activity activity) {
        try {
            Object obj2 = f5839c.get(activity);
            if (obj2 == obj && activity.hashCode() == i10) {
                f5843g.postAtFrontOfQueue(new c(f5838b.get(activity), obj2));
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f5842f == null) {
            return false;
        }
        if (f5841e == null && f5840d == null) {
            return false;
        }
        try {
            Object obj2 = f5839c.get(activity);
            if (obj2 == null || (obj = f5838b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            C0111d c0111d = new C0111d(activity);
            application.registerActivityLifecycleCallbacks(c0111d);
            Handler handler = f5843g;
            handler.post(new a(c0111d, obj2));
            try {
                if (g()) {
                    Method method = f5842f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new b(application, c0111d));
                return true;
            } catch (Throwable th) {
                f5843g.post(new b(application, c0111d));
                throw th;
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}

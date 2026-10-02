package rd;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import rd.c;
import rd.f;

/* compiled from: Platform.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public static final n f13472a = e();

    /* compiled from: Platform.java */
    /* loaded from: classes.dex */
    public static class a extends n {

        /* compiled from: Platform.java */
        /* renamed from: rd.n$a$a, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class ExecutorC0334a implements Executor {

            /* renamed from: f, reason: collision with root package name */
            public final Handler f13473f = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f13473f.post(runnable);
            }
        }

        @Override // rd.n
        public List<? extends c.a> a(@Nullable Executor executor) {
            if (executor != null) {
                g gVar = new g(executor);
                return Build.VERSION.SDK_INT >= 24 ? Arrays.asList(e.f13366a, gVar) : Collections.singletonList(gVar);
            }
            throw new AssertionError();
        }

        @Override // rd.n
        public Executor b() {
            return new ExecutorC0334a();
        }

        @Override // rd.n
        public List<? extends f.a> c() {
            if (Build.VERSION.SDK_INT >= 24) {
                return Collections.singletonList(l.f13425a);
            }
            return Collections.emptyList();
        }

        @Override // rd.n
        public int d() {
            return Build.VERSION.SDK_INT >= 24 ? 1 : 0;
        }

        @Override // rd.n
        @IgnoreJRERequirement
        public boolean h(Method method) {
            if (Build.VERSION.SDK_INT < 24) {
                return false;
            }
            return method.isDefault();
        }
    }

    /* compiled from: Platform.java */
    @IgnoreJRERequirement
    /* loaded from: classes.dex */
    public static class b extends n {
        @Override // rd.n
        public List<? extends c.a> a(@Nullable Executor executor) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(e.f13366a);
            arrayList.add(new g(executor));
            return Collections.unmodifiableList(arrayList);
        }

        @Override // rd.n
        public List<? extends f.a> c() {
            return Collections.singletonList(l.f13425a);
        }

        @Override // rd.n
        public int d() {
            return 1;
        }

        @Override // rd.n
        public Object g(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        @Override // rd.n
        public boolean h(Method method) {
            return method.isDefault();
        }
    }

    public static n e() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            Class.forName("java.util.Optional");
            return new b();
        } catch (ClassNotFoundException unused2) {
            return new n();
        }
    }

    public static n f() {
        return f13472a;
    }

    public List<? extends c.a> a(@Nullable Executor executor) {
        return Collections.singletonList(new g(executor));
    }

    @Nullable
    public Executor b() {
        return null;
    }

    public List<? extends f.a> c() {
        return Collections.emptyList();
    }

    public int d() {
        return 0;
    }

    @Nullable
    public Object g(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    public boolean h(Method method) {
        return false;
    }
}

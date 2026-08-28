package la;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* compiled from: UnsafeAllocator.java */
/* loaded from: classes.dex */
public abstract class l {

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    public class a extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Method f10623a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f10624b;

        public a(Method method, Object obj) {
            this.f10623a = method;
            this.f10624b = obj;
        }

        @Override // la.l
        public <T> T c(Class<T> cls) throws Exception {
            l.a(cls);
            return (T) this.f10623a.invoke(this.f10624b, cls);
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    public class b extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Method f10625a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f10626b;

        public b(Method method, int i10) {
            this.f10625a = method;
            this.f10626b = i10;
        }

        @Override // la.l
        public <T> T c(Class<T> cls) throws Exception {
            l.a(cls);
            return (T) this.f10625a.invoke(null, cls, Integer.valueOf(this.f10626b));
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    public class c extends l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Method f10627a;

        public c(Method method) {
            this.f10627a = method;
        }

        @Override // la.l
        public <T> T c(Class<T> cls) throws Exception {
            l.a(cls);
            return (T) this.f10627a.invoke(null, cls, Object.class);
        }
    }

    /* compiled from: UnsafeAllocator.java */
    /* loaded from: classes.dex */
    public class d extends l {
        @Override // la.l
        public <T> T c(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    public static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (!Modifier.isInterface(modifiers)) {
            if (Modifier.isAbstract(modifiers)) {
                throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
            }
            return;
        }
        throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
    }

    public static l b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, intValue);
                } catch (Exception unused2) {
                    return new d();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        }
    }

    public abstract <T> T c(Class<T> cls) throws Exception;
}

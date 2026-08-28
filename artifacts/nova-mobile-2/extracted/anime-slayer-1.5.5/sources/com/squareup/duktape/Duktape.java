package com.squareup.duktape;

import java.io.Closeable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedHashMap;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class Duktape implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public long f4966f;

    /* loaded from: classes.dex */
    public class a implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Duktape f4967a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ long f4968b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f4969c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ Class f4970d;

        public a(Duktape duktape, long j10, String str, Class cls) {
            this.f4967a = duktape;
            this.f4968b = j10;
            this.f4969c = str;
            this.f4970d = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object call;
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            synchronized (this.f4967a) {
                call = Duktape.this.call(this.f4967a.f4966f, this.f4968b, method, objArr);
            }
            return call;
        }

        public String toString() {
            return String.format("DuktapeProxy{name=%s, type=%s}", this.f4969c, this.f4970d.getName());
        }
    }

    static {
        System.loadLibrary("duktape");
    }

    public Duktape(long j10) {
        this.f4966f = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native Object call(long j10, long j11, Object obj, Object[] objArr);

    private static native long createContext();

    private native void destroyContext(long j10);

    private native Object evaluate(long j10, String str, String str2);

    private native long get(long j10, String str, Object[] objArr);

    public static Duktape h() {
        long createContext = createContext();
        if (createContext != 0) {
            return new Duktape(createContext);
        }
        throw new OutOfMemoryError("Cannot create Duktape instance");
    }

    private native void set(long j10, String str, Object obj, Object[] objArr);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        long j10 = this.f4966f;
        if (j10 != 0) {
            this.f4966f = 0L;
            destroyContext(j10);
        }
    }

    public synchronized void finalize() {
        if (this.f4966f != 0) {
            Logger.getLogger(Duktape.class.getName()).warning("Duktape instance leaked!");
        }
    }

    public synchronized Object k(String str) {
        return evaluate(this.f4966f, str, "?");
    }

    public synchronized <T> T x(String str, Class<T> cls) {
        LinkedHashMap linkedHashMap;
        if (cls.isInterface()) {
            if (cls.getInterfaces().length <= 0) {
                linkedHashMap = new LinkedHashMap();
                for (Method method : cls.getMethods()) {
                    if (linkedHashMap.put(method.getName(), method) != null) {
                        throw new UnsupportedOperationException(method.getName() + " is overloaded in " + cls);
                    }
                }
            } else {
                throw new UnsupportedOperationException(cls + " must not extend other interfaces");
            }
        } else {
            throw new UnsupportedOperationException("Only interfaces can be proxied. Received: " + cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(this, get(this.f4966f, str, linkedHashMap.values().toArray()), str, cls));
    }

    public synchronized <T> void z(String str, Class<T> cls, T t10) {
        if (cls.isInterface()) {
            if (cls.getInterfaces().length <= 0) {
                if (cls.isInstance(t10)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Method method : cls.getMethods()) {
                        if (linkedHashMap.put(method.getName(), method) != null) {
                            throw new UnsupportedOperationException(method.getName() + " is overloaded in " + cls);
                        }
                    }
                    set(this.f4966f, str, t10, linkedHashMap.values().toArray());
                } else {
                    throw new IllegalArgumentException(t10.getClass() + " is not an instance of " + cls);
                }
            } else {
                throw new UnsupportedOperationException(cls + " must not extend other interfaces");
            }
        } else {
            throw new UnsupportedOperationException("Only interfaces can be bound. Received: " + cls);
        }
    }
}

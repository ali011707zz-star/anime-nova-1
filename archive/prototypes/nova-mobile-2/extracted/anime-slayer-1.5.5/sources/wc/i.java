package wc;

import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import rc.j0;
import vb.j;

/* compiled from: ExceptionsConstuctor.kt */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final int f15499a = d(Throwable.class, -1);

    /* renamed from: b, reason: collision with root package name */
    public static final ReentrantReadWriteLock f15500b = new ReentrantReadWriteLock();

    /* renamed from: c, reason: collision with root package name */
    public static final WeakHashMap<Class<? extends Throwable>, ic.l<Throwable, Throwable>> f15501c = new WeakHashMap<>();

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class a extends jc.m implements ic.l<Throwable, Throwable> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Constructor f15502f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Constructor constructor) {
            super(1);
            this.f15502f = constructor;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object a10;
            Object newInstance;
            try {
                j.a aVar = vb.j.f15020f;
                newInstance = this.f15502f.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th2));
            }
            if (newInstance != null) {
                a10 = vb.j.a((Throwable) newInstance);
                if (vb.j.c(a10)) {
                    a10 = null;
                }
                return (Throwable) a10;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class b extends jc.m implements ic.l<Throwable, Throwable> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Constructor f15503f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Constructor constructor) {
            super(1);
            this.f15503f = constructor;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object a10;
            Object newInstance;
            try {
                j.a aVar = vb.j.f15020f;
                newInstance = this.f15503f.newInstance(th);
            } catch (Throwable th2) {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th2));
            }
            if (newInstance != null) {
                a10 = vb.j.a((Throwable) newInstance);
                if (vb.j.c(a10)) {
                    a10 = null;
                }
                return (Throwable) a10;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class c extends jc.m implements ic.l<Throwable, Throwable> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Constructor f15504f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor constructor) {
            super(1);
            this.f15504f = constructor;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object a10;
            Object newInstance;
            try {
                j.a aVar = vb.j.f15020f;
                newInstance = this.f15504f.newInstance(th.getMessage());
            } catch (Throwable th2) {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                a10 = vb.j.a(th3);
                if (vb.j.c(a10)) {
                    a10 = null;
                }
                return (Throwable) a10;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class d extends jc.m implements ic.l<Throwable, Throwable> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Constructor f15505f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor constructor) {
            super(1);
            this.f15505f = constructor;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(Throwable th) {
            Object a10;
            Object newInstance;
            try {
                j.a aVar = vb.j.f15020f;
                newInstance = this.f15505f.newInstance(new Object[0]);
            } catch (Throwable th2) {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                a10 = vb.j.a(th3);
                if (vb.j.c(a10)) {
                    a10 = null;
                }
                return (Throwable) a10;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    /* compiled from: Comparisons.kt */
    /* loaded from: classes2.dex */
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return yb.a.a(Integer.valueOf(((Constructor) t11).getParameterTypes().length), Integer.valueOf(((Constructor) t10).getParameterTypes().length));
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class f extends jc.m implements ic.l {

        /* renamed from: f, reason: collision with root package name */
        public static final f f15506f = new f();

        public f() {
            super(1);
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(Throwable th) {
            return null;
        }
    }

    /* compiled from: ExceptionsConstuctor.kt */
    /* loaded from: classes2.dex */
    public static final class g extends jc.m implements ic.l {

        /* renamed from: f, reason: collision with root package name */
        public static final g f15507f = new g();

        public g() {
            super(1);
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(Throwable th) {
            return null;
        }
    }

    public static final ic.l<Throwable, Throwable> a(Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            return new d(constructor);
        }
        if (length != 1) {
            if (length == 2 && jc.l.a(parameterTypes[0], String.class) && jc.l.a(parameterTypes[1], Throwable.class)) {
                return new a(constructor);
            }
            return null;
        }
        Class<?> cls = parameterTypes[0];
        if (jc.l.a(cls, Throwable.class)) {
            return new b(constructor);
        }
        if (jc.l.a(cls, String.class)) {
            return new c(constructor);
        }
        return null;
    }

    public static final int b(Class<?> cls, int i10) {
        do {
            int length = cls.getDeclaredFields().length;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (!Modifier.isStatic(r0[i12].getModifiers())) {
                    i11++;
                }
            }
            i10 += i11;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i10;
    }

    public static /* synthetic */ int c(Class cls, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return b(cls, i10);
    }

    public static final int d(Class<?> cls, int i10) {
        Object a10;
        hc.a.c(cls);
        try {
            j.a aVar = vb.j.f15020f;
            a10 = vb.j.a(Integer.valueOf(c(cls, 0, 1, null)));
        } catch (Throwable th) {
            j.a aVar2 = vb.j.f15020f;
            a10 = vb.j.a(vb.k.a(th));
        }
        Integer valueOf = Integer.valueOf(i10);
        if (vb.j.c(a10)) {
            a10 = valueOf;
        }
        return ((Number) a10).intValue();
    }

    public static final <E extends Throwable> E e(E e10) {
        Object a10;
        ReentrantReadWriteLock.ReadLock readLock;
        int readHoldCount;
        ReentrantReadWriteLock.WriteLock writeLock;
        if (e10 instanceof j0) {
            try {
                j.a aVar = vb.j.f15020f;
                a10 = vb.j.a(((j0) e10).a());
            } catch (Throwable th) {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th));
            }
            return (E) (vb.j.c(a10) ? null : a10);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f15500b;
        ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
        readLock2.lock();
        try {
            ic.l<Throwable, Throwable> lVar = f15501c.get(e10.getClass());
            if (lVar == null) {
                int i10 = 0;
                if (f15499a != d(e10.getClass(), 0)) {
                    readLock = reentrantReadWriteLock.readLock();
                    readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                    for (int i11 = 0; i11 < readHoldCount; i11++) {
                        readLock.unlock();
                    }
                    writeLock = reentrantReadWriteLock.writeLock();
                    writeLock.lock();
                    try {
                        f15501c.put(e10.getClass(), f.f15506f);
                        vb.p pVar = vb.p.f15031a;
                        return null;
                    } finally {
                        while (i10 < readHoldCount) {
                            readLock.lock();
                            i10++;
                        }
                        writeLock.unlock();
                    }
                }
                Iterator it2 = wb.i.y(e10.getClass().getConstructors(), new e()).iterator();
                ic.l<Throwable, Throwable> lVar2 = null;
                while (it2.hasNext() && (lVar2 = a((Constructor) it2.next())) == null) {
                }
                ReentrantReadWriteLock reentrantReadWriteLock2 = f15500b;
                readLock = reentrantReadWriteLock2.readLock();
                readHoldCount = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i12 = 0; i12 < readHoldCount; i12++) {
                    readLock.unlock();
                }
                writeLock = reentrantReadWriteLock2.writeLock();
                writeLock.lock();
                try {
                    f15501c.put(e10.getClass(), lVar2 == null ? g.f15507f : lVar2);
                    vb.p pVar2 = vb.p.f15031a;
                    while (i10 < readHoldCount) {
                        readLock.lock();
                        i10++;
                    }
                    writeLock.unlock();
                    if (lVar2 == null) {
                        return null;
                    }
                    return (E) lVar2.invoke(e10);
                } finally {
                    while (i10 < readHoldCount) {
                        readLock.lock();
                        i10++;
                    }
                    writeLock.unlock();
                }
            }
            return (E) lVar.invoke(e10);
        } finally {
            readLock2.unlock();
        }
    }
}

package la;

import com.google.gson.JsonIOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* compiled from: ConstructorConstructor.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Map<Type, ja.h<?>> f10569a;

    /* renamed from: b, reason: collision with root package name */
    public final na.b f10570b = na.b.a();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class a<T> implements la.h<T> {
        public a() {
        }

        @Override // la.h
        public T a() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class b<T> implements la.h<T> {
        public b() {
        }

        @Override // la.h
        public T a() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* renamed from: la.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0248c<T> implements la.h<T> {
        public C0248c() {
        }

        @Override // la.h
        public T a() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class d<T> implements la.h<T> {
        public d() {
        }

        @Override // la.h
        public T a() {
            return (T) new la.g();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class e<T> implements la.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final la.l f10575a = la.l.b();

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Class f10576b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Type f10577c;

        public e(Class cls, Type type) {
            this.f10576b = cls;
            this.f10577c = type;
        }

        @Override // la.h
        public T a() {
            try {
                return (T) this.f10575a.c(this.f10576b);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f10577c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class f<T> implements la.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ja.h f10579a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Type f10580b;

        public f(ja.h hVar, Type type) {
            this.f10579a = hVar;
            this.f10580b = type;
        }

        @Override // la.h
        public T a() {
            return (T) this.f10579a.a(this.f10580b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class g<T> implements la.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ja.h f10582a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Type f10583b;

        public g(ja.h hVar, Type type) {
            this.f10582a = hVar;
            this.f10583b = type;
        }

        @Override // la.h
        public T a() {
            return (T) this.f10582a.a(this.f10583b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class h<T> implements la.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Constructor f10585a;

        public h(Constructor constructor) {
            this.f10585a = constructor;
        }

        @Override // la.h
        public T a() {
            try {
                return (T) this.f10585a.newInstance(null);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Failed to invoke " + this.f10585a + " with no args", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to invoke " + this.f10585a + " with no args", e12.getTargetException());
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class i<T> implements la.h<T> {
        public i() {
        }

        @Override // la.h
        public T a() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class j<T> implements la.h<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Type f10588a;

        public j(Type type) {
            this.f10588a = type;
        }

        @Override // la.h
        public T a() {
            Type type = this.f10588a;
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return (T) EnumSet.noneOf((Class) type2);
                }
                throw new JsonIOException("Invalid EnumSet type: " + this.f10588a.toString());
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.f10588a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class k<T> implements la.h<T> {
        public k() {
        }

        @Override // la.h
        public T a() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class l<T> implements la.h<T> {
        public l() {
        }

        @Override // la.h
        public T a() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class m<T> implements la.h<T> {
        public m() {
        }

        @Override // la.h
        public T a() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: ConstructorConstructor.java */
    /* loaded from: classes.dex */
    public class n<T> implements la.h<T> {
        public n() {
        }

        @Override // la.h
        public T a() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    public c(Map<Type, ja.h<?>> map) {
        this.f10569a = map;
    }

    public <T> la.h<T> a(oa.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        ja.h<?> hVar = this.f10569a.get(type);
        if (hVar != null) {
            return new f(hVar, type);
        }
        ja.h<?> hVar2 = this.f10569a.get(rawType);
        if (hVar2 != null) {
            return new g(hVar2, type);
        }
        la.h<T> b10 = b(rawType);
        if (b10 != null) {
            return b10;
        }
        la.h<T> c10 = c(type, rawType);
        return c10 != null ? c10 : d(type, rawType);
    }

    public final <T> la.h<T> b(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f10570b.b(declaredConstructor);
            }
            return new h(declaredConstructor);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> la.h<T> c(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new i();
            }
            if (EnumSet.class.isAssignableFrom(cls)) {
                return new j(type);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new k();
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new l();
            }
            return new m();
        }
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
            return new n();
        }
        if (ConcurrentMap.class.isAssignableFrom(cls)) {
            return new a();
        }
        if (SortedMap.class.isAssignableFrom(cls)) {
            return new b();
        }
        if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(oa.a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) {
            return new C0248c();
        }
        return new d();
    }

    public final <T> la.h<T> d(Type type, Class<? super T> cls) {
        return new e(cls, type);
    }

    public String toString() {
        return this.f10569a.toString();
    }
}

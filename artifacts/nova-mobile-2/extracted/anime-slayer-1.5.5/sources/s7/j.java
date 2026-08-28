package s7;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: LruArrayPool.java */
/* loaded from: classes.dex */
public final class j implements s7.b {

    /* renamed from: a, reason: collision with root package name */
    public final h<a, Object> f13818a = new h<>();

    /* renamed from: b, reason: collision with root package name */
    public final b f13819b = new b();

    /* renamed from: c, reason: collision with root package name */
    public final Map<Class<?>, NavigableMap<Integer, Integer>> f13820c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Map<Class<?>, s7.a<?>> f13821d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final int f13822e;

    /* renamed from: f, reason: collision with root package name */
    public int f13823f;

    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class a implements m {

        /* renamed from: a, reason: collision with root package name */
        public final b f13824a;

        /* renamed from: b, reason: collision with root package name */
        public int f13825b;

        /* renamed from: c, reason: collision with root package name */
        public Class<?> f13826c;

        public a(b bVar) {
            this.f13824a = bVar;
        }

        @Override // s7.m
        public void a() {
            this.f13824a.c(this);
        }

        public void b(int i10, Class<?> cls) {
            this.f13825b = i10;
            this.f13826c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f13825b == aVar.f13825b && this.f13826c == aVar.f13826c;
        }

        public int hashCode() {
            int i10 = this.f13825b * 31;
            Class<?> cls = this.f13826c;
            return i10 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f13825b + "array=" + this.f13826c + '}';
        }
    }

    /* compiled from: LruArrayPool.java */
    /* loaded from: classes.dex */
    public static final class b extends d<a> {
        @Override // s7.d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a(this);
        }

        public a e(int i10, Class<?> cls) {
            a b10 = b();
            b10.b(i10, cls);
            return b10;
        }
    }

    public j(int i10) {
        this.f13822e = i10;
    }

    @Override // s7.b
    public synchronized void a(int i10) {
        try {
            if (i10 >= 40) {
                b();
            } else if (i10 >= 20 || i10 == 15) {
                h(this.f13822e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // s7.b
    public synchronized void b() {
        h(0);
    }

    @Override // s7.b
    public synchronized <T> T c(int i10, Class<T> cls) {
        return (T) l(this.f13819b.e(i10, cls), cls);
    }

    @Override // s7.b
    public synchronized <T> void d(T t10) {
        Class<?> cls = t10.getClass();
        s7.a<T> j10 = j(cls);
        int b10 = j10.b(t10);
        int c10 = j10.c() * b10;
        if (o(c10)) {
            a e10 = this.f13819b.e(b10, cls);
            this.f13818a.d(e10, t10);
            NavigableMap<Integer, Integer> m10 = m(cls);
            Integer num = (Integer) m10.get(Integer.valueOf(e10.f13825b));
            Integer valueOf = Integer.valueOf(e10.f13825b);
            int i10 = 1;
            if (num != null) {
                i10 = 1 + num.intValue();
            }
            m10.put(valueOf, Integer.valueOf(i10));
            this.f13823f += c10;
            g();
        }
    }

    @Override // s7.b
    public synchronized <T> T e(int i10, Class<T> cls) {
        a e10;
        Integer ceilingKey = m(cls).ceilingKey(Integer.valueOf(i10));
        if (p(i10, ceilingKey)) {
            e10 = this.f13819b.e(ceilingKey.intValue(), cls);
        } else {
            e10 = this.f13819b.e(i10, cls);
        }
        return (T) l(e10, cls);
    }

    public final void f(int i10, Class<?> cls) {
        NavigableMap<Integer, Integer> m10 = m(cls);
        Integer num = (Integer) m10.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                m10.remove(Integer.valueOf(i10));
                return;
            } else {
                m10.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + this);
    }

    public final void g() {
        h(this.f13822e);
    }

    public final void h(int i10) {
        while (this.f13823f > i10) {
            Object f10 = this.f13818a.f();
            l8.j.d(f10);
            s7.a i11 = i(f10);
            this.f13823f -= i11.b(f10) * i11.c();
            f(i11.b(f10), f10.getClass());
            if (Log.isLoggable(i11.a(), 2)) {
                i11.a();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("evicted: ");
                sb2.append(i11.b(f10));
            }
        }
    }

    public final <T> s7.a<T> i(T t10) {
        return j(t10.getClass());
    }

    public final <T> s7.a<T> j(Class<T> cls) {
        s7.a<T> aVar = (s7.a) this.f13821d.get(cls);
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                aVar = new i();
            } else if (cls.equals(byte[].class)) {
                aVar = new g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f13821d.put(cls, aVar);
        }
        return aVar;
    }

    public final <T> T k(a aVar) {
        return (T) this.f13818a.a(aVar);
    }

    public final <T> T l(a aVar, Class<T> cls) {
        s7.a<T> j10 = j(cls);
        T t10 = (T) k(aVar);
        if (t10 != null) {
            this.f13823f -= j10.b(t10) * j10.c();
            f(j10.b(t10), cls);
        }
        if (t10 != null) {
            return t10;
        }
        if (Log.isLoggable(j10.a(), 2)) {
            j10.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Allocated ");
            sb2.append(aVar.f13825b);
            sb2.append(" bytes");
        }
        return j10.newArray(aVar.f13825b);
    }

    public final NavigableMap<Integer, Integer> m(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f13820c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f13820c.put(cls, treeMap);
        return treeMap;
    }

    public final boolean n() {
        int i10 = this.f13823f;
        return i10 == 0 || this.f13822e / i10 >= 2;
    }

    public final boolean o(int i10) {
        return i10 <= this.f13822e / 2;
    }

    public final boolean p(int i10, Integer num) {
        return num != null && (n() || num.intValue() <= i10 * 8);
    }
}

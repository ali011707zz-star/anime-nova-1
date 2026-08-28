package m;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap.java */
/* loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: f, reason: collision with root package name */
    public c<K, V> f10632f;

    /* renamed from: g, reason: collision with root package name */
    public c<K, V> f10633g;

    /* renamed from: h, reason: collision with root package name */
    public WeakHashMap<f<K, V>, Boolean> f10634h = new WeakHashMap<>();

    /* renamed from: i, reason: collision with root package name */
    public int f10635i = 0;

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> extends e<K, V> {
        public a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // m.b.e
        public c<K, V> b(c<K, V> cVar) {
            return cVar.f10639i;
        }

        @Override // m.b.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.f10638h;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: m.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0250b<K, V> extends e<K, V> {
        public C0250b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // m.b.e
        public c<K, V> b(c<K, V> cVar) {
            return cVar.f10638h;
        }

        @Override // m.b.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.f10639i;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: f, reason: collision with root package name */
        public final K f10636f;

        /* renamed from: g, reason: collision with root package name */
        public final V f10637g;

        /* renamed from: h, reason: collision with root package name */
        public c<K, V> f10638h;

        /* renamed from: i, reason: collision with root package name */
        public c<K, V> f10639i;

        public c(K k10, V v10) {
            this.f10636f = k10;
            this.f10637g = v10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f10636f.equals(cVar.f10636f) && this.f10637g.equals(cVar.f10637g);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f10636f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f10637g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f10636f.hashCode() ^ this.f10637g.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f10636f + "=" + this.f10637g;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: f, reason: collision with root package name */
        public c<K, V> f10640f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f10641g = true;

        public d() {
        }

        @Override // m.b.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f10640f;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f10639i;
                this.f10640f = cVar3;
                this.f10641g = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f10641g) {
                this.f10641g = false;
                this.f10640f = b.this.f10632f;
            } else {
                c<K, V> cVar = this.f10640f;
                this.f10640f = cVar != null ? cVar.f10638h : null;
            }
            return this.f10640f;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f10641g) {
                return b.this.f10632f != null;
            }
            c<K, V> cVar = this.f10640f;
            return (cVar == null || cVar.f10638h == null) ? false : true;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: f, reason: collision with root package name */
        public c<K, V> f10643f;

        /* renamed from: g, reason: collision with root package name */
        public c<K, V> f10644g;

        public e(c<K, V> cVar, c<K, V> cVar2) {
            this.f10643f = cVar2;
            this.f10644g = cVar;
        }

        @Override // m.b.f
        public void a(c<K, V> cVar) {
            if (this.f10643f == cVar && cVar == this.f10644g) {
                this.f10644g = null;
                this.f10643f = null;
            }
            c<K, V> cVar2 = this.f10643f;
            if (cVar2 == cVar) {
                this.f10643f = b(cVar2);
            }
            if (this.f10644g == cVar) {
                this.f10644g = e();
            }
        }

        public abstract c<K, V> b(c<K, V> cVar);

        public abstract c<K, V> c(c<K, V> cVar);

        @Override // java.util.Iterator
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f10644g;
            this.f10644g = e();
            return cVar;
        }

        public final c<K, V> e() {
            c<K, V> cVar = this.f10644g;
            c<K, V> cVar2 = this.f10643f;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f10644g != null;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public Iterator<Map.Entry<K, V>> a() {
        C0250b c0250b = new C0250b(this.f10633g, this.f10632f);
        this.f10634h.put(c0250b, Boolean.FALSE);
        return c0250b;
    }

    public Map.Entry<K, V> b() {
        return this.f10632f;
    }

    public c<K, V> c(K k10) {
        c<K, V> cVar = this.f10632f;
        while (cVar != null && !cVar.f10636f.equals(k10)) {
            cVar = cVar.f10638h;
        }
        return cVar;
    }

    public b<K, V>.d d() {
        b<K, V>.d dVar = new d();
        this.f10634h.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Map.Entry<K, V> e() {
        return this.f10633g;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = iterator();
        Iterator<Map.Entry<K, V>> it3 = bVar.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            Map.Entry<K, V> next2 = it3.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it2.hasNext() || it3.hasNext()) ? false : true;
    }

    public c<K, V> f(K k10, V v10) {
        c<K, V> cVar = new c<>(k10, v10);
        this.f10635i++;
        c<K, V> cVar2 = this.f10633g;
        if (cVar2 == null) {
            this.f10632f = cVar;
            this.f10633g = cVar;
            return cVar;
        }
        cVar2.f10638h = cVar;
        cVar.f10639i = cVar2;
        this.f10633g = cVar;
        return cVar;
    }

    public V g(K k10, V v10) {
        c<K, V> c10 = c(k10);
        if (c10 != null) {
            return c10.f10637g;
        }
        f(k10, v10);
        return null;
    }

    public V h(K k10) {
        c<K, V> c10 = c(k10);
        if (c10 == null) {
            return null;
        }
        this.f10635i--;
        if (!this.f10634h.isEmpty()) {
            Iterator<f<K, V>> it2 = this.f10634h.keySet().iterator();
            while (it2.hasNext()) {
                it2.next().a(c10);
            }
        }
        c<K, V> cVar = c10.f10639i;
        if (cVar != null) {
            cVar.f10638h = c10.f10638h;
        } else {
            this.f10632f = c10.f10638h;
        }
        c<K, V> cVar2 = c10.f10638h;
        if (cVar2 != null) {
            cVar2.f10639i = cVar;
        } else {
            this.f10633g = cVar;
        }
        c10.f10638h = null;
        c10.f10639i = null;
        return c10.f10637g;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            i10 += it2.next().hashCode();
        }
        return i10;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f10632f, this.f10633g);
        this.f10634h.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f10635i;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().toString());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}

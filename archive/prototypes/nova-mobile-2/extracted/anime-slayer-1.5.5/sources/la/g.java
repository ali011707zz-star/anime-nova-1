package la;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: LinkedTreeMap.java */
/* loaded from: classes.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: m, reason: collision with root package name */
    public static final Comparator<Comparable> f10596m = new a();

    /* renamed from: f, reason: collision with root package name */
    public Comparator<? super K> f10597f;

    /* renamed from: g, reason: collision with root package name */
    public e<K, V> f10598g;

    /* renamed from: h, reason: collision with root package name */
    public int f10599h;

    /* renamed from: i, reason: collision with root package name */
    public int f10600i;

    /* renamed from: j, reason: collision with root package name */
    public final e<K, V> f10601j;

    /* renamed from: k, reason: collision with root package name */
    public g<K, V>.b f10602k;

    /* renamed from: l, reason: collision with root package name */
    public g<K, V>.c f10603l;

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public class b extends AbstractSet<Map.Entry<K, V>> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        public class a extends g<K, V>.d<Map.Entry<K, V>> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.c((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> c10;
            if (!(obj instanceof Map.Entry) || (c10 = g.this.c((Map.Entry) obj)) == null) {
                return false;
            }
            g.this.f(c10, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.f10599h;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public final class c extends AbstractSet<K> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        public class a extends g<K, V>.d<K> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f10617k;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return g.this.g(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.f10599h;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public abstract class d<T> implements Iterator<T> {

        /* renamed from: f, reason: collision with root package name */
        public e<K, V> f10608f;

        /* renamed from: g, reason: collision with root package name */
        public e<K, V> f10609g = null;

        /* renamed from: h, reason: collision with root package name */
        public int f10610h;

        public d() {
            this.f10608f = g.this.f10601j.f10615i;
            this.f10610h = g.this.f10600i;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.f10608f;
            g gVar = g.this;
            if (eVar != gVar.f10601j) {
                if (gVar.f10600i == this.f10610h) {
                    this.f10608f = eVar.f10615i;
                    this.f10609g = eVar;
                    return eVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10608f != g.this.f10601j;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f10609g;
            if (eVar != null) {
                g.this.f(eVar, true);
                this.f10609g = null;
                this.f10610h = g.this.f10600i;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public g() {
        this(f10596m);
    }

    public final boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public e<K, V> b(K k10, boolean z10) {
        int i10;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.f10597f;
        e<K, V> eVar2 = this.f10598g;
        if (eVar2 != null) {
            Comparable comparable = comparator == f10596m ? (Comparable) k10 : null;
            while (true) {
                if (comparable != null) {
                    i10 = comparable.compareTo(eVar2.f10617k);
                } else {
                    i10 = comparator.compare(k10, eVar2.f10617k);
                }
                if (i10 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i10 < 0 ? eVar2.f10613g : eVar2.f10614h;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i10 = 0;
        }
        if (!z10) {
            return null;
        }
        e<K, V> eVar4 = this.f10601j;
        if (eVar2 == null) {
            if (comparator == f10596m && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f10616j);
            this.f10598g = eVar;
        } else {
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f10616j);
            if (i10 < 0) {
                eVar2.f10613g = eVar;
            } else {
                eVar2.f10614h = eVar;
            }
            e(eVar2, true);
        }
        this.f10599h++;
        this.f10600i++;
        return eVar;
    }

    public e<K, V> c(Map.Entry<?, ?> entry) {
        e<K, V> d10 = d(entry.getKey());
        if (d10 != null && a(d10.f10618l, entry.getValue())) {
            return d10;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f10598g = null;
        this.f10599h = 0;
        this.f10600i++;
        e<K, V> eVar = this.f10601j;
        eVar.f10616j = eVar;
        eVar.f10615i = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return d(obj) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e<K, V> d(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return b(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public final void e(e<K, V> eVar, boolean z10) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f10613g;
            e<K, V> eVar3 = eVar.f10614h;
            int i10 = eVar2 != null ? eVar2.f10619m : 0;
            int i11 = eVar3 != null ? eVar3.f10619m : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                e<K, V> eVar4 = eVar3.f10613g;
                e<K, V> eVar5 = eVar3.f10614h;
                int i13 = (eVar4 != null ? eVar4.f10619m : 0) - (eVar5 != null ? eVar5.f10619m : 0);
                if (i13 != -1 && (i13 != 0 || z10)) {
                    j(eVar3);
                    i(eVar);
                } else {
                    i(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                e<K, V> eVar6 = eVar2.f10613g;
                e<K, V> eVar7 = eVar2.f10614h;
                int i14 = (eVar6 != null ? eVar6.f10619m : 0) - (eVar7 != null ? eVar7.f10619m : 0);
                if (i14 != 1 && (i14 != 0 || z10)) {
                    i(eVar2);
                    j(eVar);
                } else {
                    j(eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                eVar.f10619m = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f10619m = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f10612f;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.b bVar = this.f10602k;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.f10602k = bVar2;
        return bVar2;
    }

    public void f(e<K, V> eVar, boolean z10) {
        int i10;
        if (z10) {
            e<K, V> eVar2 = eVar.f10616j;
            eVar2.f10615i = eVar.f10615i;
            eVar.f10615i.f10616j = eVar2;
        }
        e<K, V> eVar3 = eVar.f10613g;
        e<K, V> eVar4 = eVar.f10614h;
        e<K, V> eVar5 = eVar.f10612f;
        int i11 = 0;
        if (eVar3 != null && eVar4 != null) {
            e<K, V> b10 = eVar3.f10619m > eVar4.f10619m ? eVar3.b() : eVar4.a();
            f(b10, false);
            e<K, V> eVar6 = eVar.f10613g;
            if (eVar6 != null) {
                i10 = eVar6.f10619m;
                b10.f10613g = eVar6;
                eVar6.f10612f = b10;
                eVar.f10613g = null;
            } else {
                i10 = 0;
            }
            e<K, V> eVar7 = eVar.f10614h;
            if (eVar7 != null) {
                i11 = eVar7.f10619m;
                b10.f10614h = eVar7;
                eVar7.f10612f = b10;
                eVar.f10614h = null;
            }
            b10.f10619m = Math.max(i10, i11) + 1;
            h(eVar, b10);
            return;
        }
        if (eVar3 != null) {
            h(eVar, eVar3);
            eVar.f10613g = null;
        } else if (eVar4 != null) {
            h(eVar, eVar4);
            eVar.f10614h = null;
        } else {
            h(eVar, null);
        }
        e(eVar5, false);
        this.f10599h--;
        this.f10600i++;
    }

    public e<K, V> g(Object obj) {
        e<K, V> d10 = d(obj);
        if (d10 != null) {
            f(d10, true);
        }
        return d10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> d10 = d(obj);
        if (d10 != null) {
            return d10.f10618l;
        }
        return null;
    }

    public final void h(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f10612f;
        eVar.f10612f = null;
        if (eVar2 != null) {
            eVar2.f10612f = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.f10613g == eVar) {
                eVar3.f10613g = eVar2;
                return;
            } else {
                eVar3.f10614h = eVar2;
                return;
            }
        }
        this.f10598g = eVar2;
    }

    public final void i(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f10613g;
        e<K, V> eVar3 = eVar.f10614h;
        e<K, V> eVar4 = eVar3.f10613g;
        e<K, V> eVar5 = eVar3.f10614h;
        eVar.f10614h = eVar4;
        if (eVar4 != null) {
            eVar4.f10612f = eVar;
        }
        h(eVar, eVar3);
        eVar3.f10613g = eVar;
        eVar.f10612f = eVar3;
        int max = Math.max(eVar2 != null ? eVar2.f10619m : 0, eVar4 != null ? eVar4.f10619m : 0) + 1;
        eVar.f10619m = max;
        eVar3.f10619m = Math.max(max, eVar5 != null ? eVar5.f10619m : 0) + 1;
    }

    public final void j(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f10613g;
        e<K, V> eVar3 = eVar.f10614h;
        e<K, V> eVar4 = eVar2.f10613g;
        e<K, V> eVar5 = eVar2.f10614h;
        eVar.f10613g = eVar5;
        if (eVar5 != null) {
            eVar5.f10612f = eVar;
        }
        h(eVar, eVar2);
        eVar2.f10614h = eVar;
        eVar.f10612f = eVar2;
        int max = Math.max(eVar3 != null ? eVar3.f10619m : 0, eVar5 != null ? eVar5.f10619m : 0) + 1;
        eVar.f10619m = max;
        eVar2.f10619m = Math.max(max, eVar4 != null ? eVar4.f10619m : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        g<K, V>.c cVar = this.f10603l;
        if (cVar != null) {
            return cVar;
        }
        g<K, V>.c cVar2 = new c();
        this.f10603l = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        if (k10 != null) {
            e<K, V> b10 = b(k10, true);
            V v11 = b10.f10618l;
            b10.f10618l = v10;
            return v11;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> g10 = g(obj);
        if (g10 != null) {
            return g10.f10618l;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f10599h;
    }

    public g(Comparator<? super K> comparator) {
        this.f10599h = 0;
        this.f10600i = 0;
        this.f10601j = new e<>();
        this.f10597f = comparator == null ? f10596m : comparator;
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static final class e<K, V> implements Map.Entry<K, V> {

        /* renamed from: f, reason: collision with root package name */
        public e<K, V> f10612f;

        /* renamed from: g, reason: collision with root package name */
        public e<K, V> f10613g;

        /* renamed from: h, reason: collision with root package name */
        public e<K, V> f10614h;

        /* renamed from: i, reason: collision with root package name */
        public e<K, V> f10615i;

        /* renamed from: j, reason: collision with root package name */
        public e<K, V> f10616j;

        /* renamed from: k, reason: collision with root package name */
        public final K f10617k;

        /* renamed from: l, reason: collision with root package name */
        public V f10618l;

        /* renamed from: m, reason: collision with root package name */
        public int f10619m;

        public e() {
            this.f10617k = null;
            this.f10616j = this;
            this.f10615i = this;
        }

        public e<K, V> a() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f10613g; eVar2 != null; eVar2 = eVar2.f10613g) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e<K, V> b() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f10614h; eVar2 != null; eVar2 = eVar2.f10614h) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f10617k;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f10618l;
            if (v10 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v10.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f10617k;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f10618l;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f10617k;
            int hashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f10618l;
            return hashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f10618l;
            this.f10618l = v10;
            return v11;
        }

        public String toString() {
            return this.f10617k + "=" + this.f10618l;
        }

        public e(e<K, V> eVar, K k10, e<K, V> eVar2, e<K, V> eVar3) {
            this.f10612f = eVar;
            this.f10617k = k10;
            this.f10619m = 1;
            this.f10615i = eVar2;
            this.f10616j = eVar3;
            eVar3.f10615i = this;
            eVar2.f10616j = this;
        }
    }
}

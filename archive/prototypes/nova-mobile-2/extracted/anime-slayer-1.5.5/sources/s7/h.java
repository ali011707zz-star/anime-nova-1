package s7;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import s7.m;

/* compiled from: GroupedLinkedMap.java */
/* loaded from: classes.dex */
public class h<K extends m, V> {

    /* renamed from: a, reason: collision with root package name */
    public final a<K, V> f13812a = new a<>();

    /* renamed from: b, reason: collision with root package name */
    public final Map<K, a<K, V>> f13813b = new HashMap();

    /* compiled from: GroupedLinkedMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final K f13814a;

        /* renamed from: b, reason: collision with root package name */
        public List<V> f13815b;

        /* renamed from: c, reason: collision with root package name */
        public a<K, V> f13816c;

        /* renamed from: d, reason: collision with root package name */
        public a<K, V> f13817d;

        public a() {
            this(null);
        }

        public void a(V v10) {
            if (this.f13815b == null) {
                this.f13815b = new ArrayList();
            }
            this.f13815b.add(v10);
        }

        public V b() {
            int c10 = c();
            if (c10 > 0) {
                return this.f13815b.remove(c10 - 1);
            }
            return null;
        }

        public int c() {
            List<V> list = this.f13815b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public a(K k10) {
            this.f13817d = this;
            this.f13816c = this;
            this.f13814a = k10;
        }
    }

    public static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f13817d;
        aVar2.f13816c = aVar.f13816c;
        aVar.f13816c.f13817d = aVar2;
    }

    public static <K, V> void g(a<K, V> aVar) {
        aVar.f13816c.f13817d = aVar;
        aVar.f13817d.f13816c = aVar;
    }

    public V a(K k10) {
        a<K, V> aVar = this.f13813b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            this.f13813b.put(k10, aVar);
        } else {
            k10.a();
        }
        b(aVar);
        return aVar.b();
    }

    public final void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f13812a;
        aVar.f13817d = aVar2;
        aVar.f13816c = aVar2.f13816c;
        g(aVar);
    }

    public final void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.f13812a;
        aVar.f13817d = aVar2.f13817d;
        aVar.f13816c = aVar2;
        g(aVar);
    }

    public void d(K k10, V v10) {
        a<K, V> aVar = this.f13813b.get(k10);
        if (aVar == null) {
            aVar = new a<>(k10);
            c(aVar);
            this.f13813b.put(k10, aVar);
        } else {
            k10.a();
        }
        aVar.a(v10);
    }

    public V f() {
        for (a aVar = this.f13812a.f13817d; !aVar.equals(this.f13812a); aVar = aVar.f13817d) {
            V v10 = (V) aVar.b();
            if (v10 != null) {
                return v10;
            }
            e(aVar);
            this.f13813b.remove(aVar.f13814a);
            ((m) aVar.f13814a).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("GroupedLinkedMap( ");
        boolean z10 = false;
        for (a aVar = this.f13812a.f13816c; !aVar.equals(this.f13812a); aVar = aVar.f13816c) {
            z10 = true;
            sb2.append('{');
            sb2.append(aVar.f13814a);
            sb2.append(':');
            sb2.append(aVar.c());
            sb2.append("}, ");
        }
        if (z10) {
            sb2.delete(sb2.length() - 2, sb2.length());
        }
        sb2.append(" )");
        return sb2.toString();
    }
}

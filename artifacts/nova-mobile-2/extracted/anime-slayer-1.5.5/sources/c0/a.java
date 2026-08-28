package c0;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p0.f;
import p0.g;

/* compiled from: DirectedAcyclicGraph.java */
/* loaded from: classes.dex */
public final class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final f<ArrayList<T>> f3622a = new g(10);

    /* renamed from: b, reason: collision with root package name */
    public final s.g<T, ArrayList<T>> f3623b = new s.g<>();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList<T> f3624c = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public final HashSet<T> f3625d = new HashSet<>();

    public void a(T t10, T t11) {
        if (this.f3623b.containsKey(t10) && this.f3623b.containsKey(t11)) {
            ArrayList<T> arrayList = this.f3623b.get(t10);
            if (arrayList == null) {
                arrayList = f();
                this.f3623b.put(t10, arrayList);
            }
            arrayList.add(t11);
            return;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    public void b(T t10) {
        if (this.f3623b.containsKey(t10)) {
            return;
        }
        this.f3623b.put(t10, null);
    }

    public void c() {
        int size = this.f3623b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> m10 = this.f3623b.m(i10);
            if (m10 != null) {
                k(m10);
            }
        }
        this.f3623b.clear();
    }

    public boolean d(T t10) {
        return this.f3623b.containsKey(t10);
    }

    public final void e(T t10, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t10)) {
            return;
        }
        if (!hashSet.contains(t10)) {
            hashSet.add(t10);
            ArrayList<T> arrayList2 = this.f3623b.get(t10);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    e(arrayList2.get(i10), arrayList, hashSet);
                }
            }
            hashSet.remove(t10);
            arrayList.add(t10);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    public final ArrayList<T> f() {
        ArrayList<T> b10 = this.f3622a.b();
        return b10 == null ? new ArrayList<>() : b10;
    }

    public List g(T t10) {
        return this.f3623b.get(t10);
    }

    public List<T> h(T t10) {
        int size = this.f3623b.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> m10 = this.f3623b.m(i10);
            if (m10 != null && m10.contains(t10)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f3623b.i(i10));
            }
        }
        return arrayList;
    }

    public ArrayList<T> i() {
        this.f3624c.clear();
        this.f3625d.clear();
        int size = this.f3623b.size();
        for (int i10 = 0; i10 < size; i10++) {
            e(this.f3623b.i(i10), this.f3624c, this.f3625d);
        }
        return this.f3624c;
    }

    public boolean j(T t10) {
        int size = this.f3623b.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> m10 = this.f3623b.m(i10);
            if (m10 != null && m10.contains(t10)) {
                return true;
            }
        }
        return false;
    }

    public final void k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f3622a.a(arrayList);
    }
}

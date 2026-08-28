package s;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ArraySet.java */
/* loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f13559j = new int[0];

    /* renamed from: k, reason: collision with root package name */
    public static final Object[] f13560k = new Object[0];

    /* renamed from: l, reason: collision with root package name */
    public static Object[] f13561l;

    /* renamed from: m, reason: collision with root package name */
    public static int f13562m;

    /* renamed from: n, reason: collision with root package name */
    public static Object[] f13563n;

    /* renamed from: o, reason: collision with root package name */
    public static int f13564o;

    /* renamed from: f, reason: collision with root package name */
    public int[] f13565f;

    /* renamed from: g, reason: collision with root package name */
    public Object[] f13566g;

    /* renamed from: h, reason: collision with root package name */
    public int f13567h;

    /* renamed from: i, reason: collision with root package name */
    public f<E, E> f13568i;

    /* compiled from: ArraySet.java */
    /* loaded from: classes.dex */
    public class a extends f<E, E> {
        public a() {
        }

        @Override // s.f
        public void a() {
            b.this.clear();
        }

        @Override // s.f
        public Object b(int i10, int i11) {
            return b.this.f13566g[i10];
        }

        @Override // s.f
        public Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // s.f
        public int d() {
            return b.this.f13567h;
        }

        @Override // s.f
        public int e(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // s.f
        public int f(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // s.f
        public void g(E e10, E e11) {
            b.this.add(e10);
        }

        @Override // s.f
        public void h(int i10) {
            b.this.g(i10);
        }

        @Override // s.f
        public E i(int i10, E e10) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public b() {
        this(0);
    }

    public static void c(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (f13564o < 10) {
                    objArr[0] = f13563n;
                    objArr[1] = iArr;
                    for (int i11 = i10 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f13563n = objArr;
                    f13564o++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f13562m < 10) {
                    objArr[0] = f13561l;
                    objArr[1] = iArr;
                    for (int i12 = i10 - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f13561l = objArr;
                    f13562m++;
                }
            }
        }
    }

    public final void a(int i10) {
        if (i10 == 8) {
            synchronized (b.class) {
                Object[] objArr = f13563n;
                if (objArr != null) {
                    this.f13566g = objArr;
                    f13563n = (Object[]) objArr[0];
                    this.f13565f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f13564o--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (b.class) {
                Object[] objArr2 = f13561l;
                if (objArr2 != null) {
                    this.f13566g = objArr2;
                    f13561l = (Object[]) objArr2[0];
                    this.f13565f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f13562m--;
                    return;
                }
            }
        }
        this.f13565f = new int[i10];
        this.f13566g = new Object[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int e11;
        if (e10 == null) {
            e11 = f();
            i10 = 0;
        } else {
            int hashCode = e10.hashCode();
            i10 = hashCode;
            e11 = e(e10, hashCode);
        }
        if (e11 >= 0) {
            return false;
        }
        int i11 = e11 ^ (-1);
        int i12 = this.f13567h;
        int[] iArr = this.f13565f;
        if (i12 >= iArr.length) {
            int i13 = 4;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 >= 4) {
                i13 = 8;
            }
            Object[] objArr = this.f13566g;
            a(i13);
            int[] iArr2 = this.f13565f;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f13566g, 0, objArr.length);
            }
            c(iArr, objArr, this.f13567h);
        }
        int i14 = this.f13567h;
        if (i11 < i14) {
            int[] iArr3 = this.f13565f;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.f13566g;
            System.arraycopy(objArr2, i11, objArr2, i15, this.f13567h - i11);
        }
        this.f13565f[i11] = i10;
        this.f13566g[i11] = e10;
        this.f13567h++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        b(this.f13567h + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            z10 |= add(it2.next());
        }
        return z10;
    }

    public void b(int i10) {
        int[] iArr = this.f13565f;
        if (iArr.length < i10) {
            Object[] objArr = this.f13566g;
            a(i10);
            int i11 = this.f13567h;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.f13565f, 0, i11);
                System.arraycopy(objArr, 0, this.f13566g, 0, this.f13567h);
            }
            c(iArr, objArr, this.f13567h);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i10 = this.f13567h;
        if (i10 != 0) {
            c(this.f13565f, this.f13566g, i10);
            this.f13565f = f13559j;
            this.f13566g = f13560k;
            this.f13567h = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public final f<E, E> d() {
        if (this.f13568i == null) {
            this.f13568i = new a();
        }
        return this.f13568i;
    }

    public final int e(Object obj, int i10) {
        int i11 = this.f13567h;
        if (i11 == 0) {
            return -1;
        }
        int a10 = c.a(this.f13565f, i11, i10);
        if (a10 < 0 || obj.equals(this.f13566g[a10])) {
            return a10;
        }
        int i12 = a10 + 1;
        while (i12 < i11 && this.f13565f[i12] == i10) {
            if (obj.equals(this.f13566g[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = a10 - 1; i13 >= 0 && this.f13565f[i13] == i10; i13--) {
            if (obj.equals(this.f13566g[i13])) {
                return i13;
            }
        }
        return i12 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f13567h; i10++) {
                try {
                    if (!set.contains(h(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i10 = this.f13567h;
        if (i10 == 0) {
            return -1;
        }
        int a10 = c.a(this.f13565f, i10, 0);
        if (a10 < 0 || this.f13566g[a10] == null) {
            return a10;
        }
        int i11 = a10 + 1;
        while (i11 < i10 && this.f13565f[i11] == 0) {
            if (this.f13566g[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = a10 - 1; i12 >= 0 && this.f13565f[i12] == 0; i12--) {
            if (this.f13566g[i12] == null) {
                return i12;
            }
        }
        return i11 ^ (-1);
    }

    public E g(int i10) {
        Object[] objArr = this.f13566g;
        E e10 = (E) objArr[i10];
        int i11 = this.f13567h;
        if (i11 <= 1) {
            c(this.f13565f, objArr, i11);
            this.f13565f = f13559j;
            this.f13566g = f13560k;
            this.f13567h = 0;
        } else {
            int[] iArr = this.f13565f;
            if (iArr.length > 8 && i11 < iArr.length / 3) {
                a(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.f13567h--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f13565f, 0, i10);
                    System.arraycopy(objArr, 0, this.f13566g, 0, i10);
                }
                int i12 = this.f13567h;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, this.f13565f, i10, i12 - i10);
                    System.arraycopy(objArr, i13, this.f13566g, i10, this.f13567h - i10);
                }
            } else {
                int i14 = i11 - 1;
                this.f13567h = i14;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, iArr, i10, i14 - i10);
                    Object[] objArr2 = this.f13566g;
                    System.arraycopy(objArr2, i15, objArr2, i10, this.f13567h - i10);
                }
                this.f13566g[this.f13567h] = null;
            }
        }
        return e10;
    }

    public E h(int i10) {
        return (E) this.f13566g[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f13565f;
        int i10 = this.f13567h;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    public int indexOf(Object obj) {
        return obj == null ? f() : e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f13567h <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return d().m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        g(indexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            z10 |= remove(it2.next());
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.f13567h - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.f13566g[i10])) {
                g(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f13567h;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i10 = this.f13567h;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f13566g, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f13567h * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f13567h; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E h10 = h(i10);
            if (h10 != this) {
                sb2.append(h10);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public b(int i10) {
        if (i10 == 0) {
            this.f13565f = f13559j;
            this.f13566g = f13560k;
        } else {
            a(i10);
        }
        this.f13567h = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f13567h) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f13567h));
        }
        System.arraycopy(this.f13566g, 0, tArr, 0, this.f13567h);
        int length = tArr.length;
        int i10 = this.f13567h;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }
}

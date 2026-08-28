package xb;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import jc.l;
import wb.c;
import wb.e;
import wb.h;

/* compiled from: ListBuilder.kt */
/* loaded from: classes2.dex */
public final class a<E> extends c<E> implements RandomAccess, Serializable {

    /* renamed from: f, reason: collision with root package name */
    public E[] f16244f;

    /* renamed from: g, reason: collision with root package name */
    public int f16245g;

    /* renamed from: h, reason: collision with root package name */
    public int f16246h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f16247i;

    /* renamed from: j, reason: collision with root package name */
    public final a<E> f16248j;

    /* renamed from: k, reason: collision with root package name */
    public final a<E> f16249k;

    /* compiled from: ListBuilder.kt */
    /* renamed from: xb.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0418a<E> implements ListIterator<E> {

        /* renamed from: f, reason: collision with root package name */
        public final a<E> f16250f;

        /* renamed from: g, reason: collision with root package name */
        public int f16251g;

        /* renamed from: h, reason: collision with root package name */
        public int f16252h;

        public C0418a(a<E> aVar, int i10) {
            l.f(aVar, "list");
            this.f16250f = aVar;
            this.f16251g = i10;
            this.f16252h = -1;
        }

        @Override // java.util.ListIterator
        public void add(E e10) {
            a<E> aVar = this.f16250f;
            int i10 = this.f16251g;
            this.f16251g = i10 + 1;
            aVar.add(i10, e10);
            this.f16252h = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f16251g < this.f16250f.f16246h;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f16251g > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            if (this.f16251g < this.f16250f.f16246h) {
                int i10 = this.f16251g;
                this.f16251g = i10 + 1;
                this.f16252h = i10;
                return (E) this.f16250f.f16244f[this.f16250f.f16245g + this.f16252h];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f16251g;
        }

        @Override // java.util.ListIterator
        public E previous() {
            int i10 = this.f16251g;
            if (i10 > 0) {
                int i11 = i10 - 1;
                this.f16251g = i11;
                this.f16252h = i11;
                return (E) this.f16250f.f16244f[this.f16250f.f16245g + this.f16252h];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f16251g - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i10 = this.f16252h;
            if (i10 != -1) {
                this.f16250f.remove(i10);
                this.f16251g = this.f16252h;
                this.f16252h = -1;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }

        @Override // java.util.ListIterator
        public void set(E e10) {
            int i10 = this.f16252h;
            if (i10 != -1) {
                this.f16250f.set(i10, e10);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
    }

    public a(E[] eArr, int i10, int i11, boolean z10, a<E> aVar, a<E> aVar2) {
        this.f16244f = eArr;
        this.f16245g = i10;
        this.f16246h = i11;
        this.f16247i = z10;
        this.f16248j = aVar;
        this.f16249k = aVar2;
    }

    @Override // wb.c
    public int a() {
        return this.f16246h;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        i();
        g(this.f16245g + this.f16246h, e10);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        l.f(collection, "elements");
        i();
        int size = collection.size();
        f(this.f16245g + this.f16246h, collection, size);
        return size > 0;
    }

    @Override // wb.c
    public E b(int i10) {
        i();
        wb.b.f15451f.a(i10, this.f16246h);
        return o(this.f16245g + i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        i();
        p(this.f16245g, this.f16246h);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof List) && j((List) obj));
    }

    public final void f(int i10, Collection<? extends E> collection, int i11) {
        a<E> aVar = this.f16248j;
        if (aVar != null) {
            aVar.f(i10, collection, i11);
            this.f16244f = this.f16248j.f16244f;
            this.f16246h += i11;
        } else {
            m(i10, i11);
            Iterator<? extends E> it2 = collection.iterator();
            for (int i12 = 0; i12 < i11; i12++) {
                this.f16244f[i10 + i12] = it2.next();
            }
        }
    }

    public final void g(int i10, E e10) {
        a<E> aVar = this.f16248j;
        if (aVar != null) {
            aVar.g(i10, e10);
            this.f16244f = this.f16248j.f16244f;
            this.f16246h++;
        } else {
            m(i10, 1);
            this.f16244f[i10] = e10;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        wb.b.f15451f.a(i10, this.f16246h);
        return this.f16244f[this.f16245g + i10];
    }

    public final List<E> h() {
        if (this.f16248j == null) {
            i();
            this.f16247i = true;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10;
        i10 = b.i(this.f16244f, this.f16245g, this.f16246h);
        return i10;
    }

    public final void i() {
        if (n()) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f16246h; i10++) {
            if (l.a(this.f16244f[this.f16245g + i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.f16246h == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C0418a(this, 0);
    }

    public final boolean j(List<?> list) {
        boolean h10;
        h10 = b.h(this.f16244f, this.f16245g, this.f16246h, list);
        return h10;
    }

    public final void k(int i10) {
        if (this.f16248j != null) {
            throw new IllegalStateException();
        }
        if (i10 >= 0) {
            E[] eArr = this.f16244f;
            if (i10 > eArr.length) {
                this.f16244f = (E[]) b.e(this.f16244f, e.f15460f.a(eArr.length, i10));
                return;
            }
            return;
        }
        throw new OutOfMemoryError();
    }

    public final void l(int i10) {
        k(this.f16246h + i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        for (int i10 = this.f16246h - 1; i10 >= 0; i10--) {
            if (l.a(this.f16244f[this.f16245g + i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new C0418a(this, 0);
    }

    public final void m(int i10, int i11) {
        l(i11);
        E[] eArr = this.f16244f;
        h.d(eArr, eArr, i10 + i11, i10, this.f16245g + this.f16246h);
        this.f16246h += i11;
    }

    public final boolean n() {
        a<E> aVar;
        return this.f16247i || ((aVar = this.f16249k) != null && aVar.f16247i);
    }

    public final E o(int i10) {
        a<E> aVar = this.f16248j;
        if (aVar != null) {
            this.f16246h--;
            return aVar.o(i10);
        }
        E[] eArr = this.f16244f;
        E e10 = eArr[i10];
        h.d(eArr, eArr, i10, i10 + 1, this.f16245g + this.f16246h);
        b.f(this.f16244f, (this.f16245g + this.f16246h) - 1);
        this.f16246h--;
        return e10;
    }

    public final void p(int i10, int i11) {
        a<E> aVar = this.f16248j;
        if (aVar != null) {
            aVar.p(i10, i11);
        } else {
            E[] eArr = this.f16244f;
            h.d(eArr, eArr, i10, i10 + i11, this.f16246h);
            E[] eArr2 = this.f16244f;
            int i12 = this.f16246h;
            b.g(eArr2, i12 - i11, i12);
        }
        this.f16246h -= i11;
    }

    public final int q(int i10, int i11, Collection<? extends E> collection, boolean z10) {
        a<E> aVar = this.f16248j;
        if (aVar != null) {
            int q10 = aVar.q(i10, i11, collection, z10);
            this.f16246h -= q10;
            return q10;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i10 + i12;
            if (collection.contains(this.f16244f[i14]) == z10) {
                E[] eArr = this.f16244f;
                i12++;
                eArr[i13 + i10] = eArr[i14];
                i13++;
            } else {
                i12++;
            }
        }
        int i15 = i11 - i13;
        E[] eArr2 = this.f16244f;
        h.d(eArr2, eArr2, i10 + i13, i11 + i10, this.f16246h);
        E[] eArr3 = this.f16244f;
        int i16 = this.f16246h;
        b.g(eArr3, i16 - i15, i16);
        this.f16246h -= i15;
        return i15;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        i();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
        }
        return indexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<? extends Object> collection) {
        l.f(collection, "elements");
        i();
        return q(this.f16245g, this.f16246h, collection, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<? extends Object> collection) {
        l.f(collection, "elements");
        i();
        return q(this.f16245g, this.f16246h, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i10, E e10) {
        i();
        wb.b.f15451f.a(i10, this.f16246h);
        E[] eArr = this.f16244f;
        int i11 = this.f16245g;
        E e11 = eArr[i11 + i10];
        eArr[i11 + i10] = e10;
        return e11;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int i10, int i11) {
        wb.b.f15451f.c(i10, i11, this.f16246h);
        E[] eArr = this.f16244f;
        int i12 = this.f16245g + i10;
        int i13 = i11 - i10;
        boolean z10 = this.f16247i;
        a<E> aVar = this.f16249k;
        return new a(eArr, i12, i13, z10, this, aVar == null ? this : aVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        l.f(tArr, "destination");
        int length = tArr.length;
        int i10 = this.f16246h;
        if (length < i10) {
            E[] eArr = this.f16244f;
            int i11 = this.f16245g;
            T[] tArr2 = (T[]) Arrays.copyOfRange(eArr, i11, i10 + i11, tArr.getClass());
            l.e(tArr2, "copyOfRange(array, offse…h, destination.javaClass)");
            return tArr2;
        }
        E[] eArr2 = this.f16244f;
        l.d(eArr2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.builders.ListBuilder.toArray>");
        int i12 = this.f16245g;
        h.d(eArr2, tArr, 0, i12, this.f16246h + i12);
        int length2 = tArr.length;
        int i13 = this.f16246h;
        if (length2 > i13) {
            tArr[i13] = null;
        }
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String j10;
        j10 = b.j(this.f16244f, this.f16245g, this.f16246h);
        return j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i10) {
        wb.b.f15451f.b(i10, this.f16246h);
        return new C0418a(this, i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, E e10) {
        i();
        wb.b.f15451f.b(i10, this.f16246h);
        g(this.f16245g + i10, e10);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        l.f(collection, "elements");
        i();
        wb.b.f15451f.b(i10, this.f16246h);
        int size = collection.size();
        f(this.f16245g + i10, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        E[] eArr = this.f16244f;
        int i10 = this.f16245g;
        Object[] h10 = h.h(eArr, i10, this.f16246h + i10);
        l.d(h10, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return h10;
    }

    public a() {
        this(10);
    }

    public a(int i10) {
        this(b.d(i10), 0, 0, false, null, null);
    }
}

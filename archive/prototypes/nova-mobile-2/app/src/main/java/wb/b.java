package wb;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* compiled from: AbstractList.kt */
/* loaded from: classes2.dex */
public abstract class b<E> extends wb.a<E> implements List<E> {

    /* renamed from: f, reason: collision with root package name */
    public static final a f15451f = new a(null);

    /* compiled from: AbstractList.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final void a(int i10, int i11) {
            if (i10 < 0 || i10 >= i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void b(int i10, int i11) {
            if (i10 < 0 || i10 > i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void c(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
        }

        public final boolean d(Collection<?> collection, Collection<?> collection2) {
            jc.l.f(collection, "c");
            jc.l.f(collection2, "other");
            if (collection.size() != collection2.size()) {
                return false;
            }
            Iterator<?> it2 = collection2.iterator();
            Iterator<?> it3 = collection.iterator();
            while (it3.hasNext()) {
                if (!jc.l.a(it3.next(), it2.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int e(Collection<?> collection) {
            jc.l.f(collection, "c");
            Iterator<?> it2 = collection.iterator();
            int i10 = 1;
            while (it2.hasNext()) {
                Object next = it2.next();
                i10 = (i10 * 31) + (next != null ? next.hashCode() : 0);
            }
            return i10;
        }
    }

    /* compiled from: AbstractList.kt */
    /* renamed from: wb.b$b, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0401b implements Iterator<E> {

        /* renamed from: f, reason: collision with root package name */
        public int f15452f;

        public C0401b() {
        }

        public final int a() {
            return this.f15452f;
        }

        public final void b(int i10) {
            this.f15452f = i10;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15452f < b.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                b<E> bVar = b.this;
                int i10 = this.f15452f;
                this.f15452f = i10 + 1;
                return bVar.get(i10);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    /* loaded from: classes2.dex */
    public class c extends b<E>.C0401b implements ListIterator<E> {
        public c(int i10) {
            super();
            b.f15451f.b(i10, b.this.size());
            b(i10);
        }

        @Override // java.util.ListIterator
        public void add(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                b<E> bVar = b.this;
                b(a() - 1);
                return bVar.get(a());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    /* loaded from: classes2.dex */
    public static final class d<E> extends b<E> implements RandomAccess {

        /* renamed from: g, reason: collision with root package name */
        public final b<E> f15455g;

        /* renamed from: h, reason: collision with root package name */
        public final int f15456h;

        /* renamed from: i, reason: collision with root package name */
        public int f15457i;

        /* JADX WARN: Multi-variable type inference failed */
        public d(b<? extends E> bVar, int i10, int i11) {
            jc.l.f(bVar, "list");
            this.f15455g = bVar;
            this.f15456h = i10;
            b.f15451f.c(i10, i11, bVar.size());
            this.f15457i = i11 - i10;
        }

        @Override // wb.a
        public int a() {
            return this.f15457i;
        }

        @Override // wb.b, java.util.List
        public E get(int i10) {
            b.f15451f.a(i10, this.f15457i);
            return this.f15455g.get(this.f15456h + i10);
        }
    }

    @Override // java.util.List
    public void add(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return f15451f.d(this, (Collection) obj);
        }
        return false;
    }

    public abstract E get(int i10);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return f15451f.e(this);
    }

    public int indexOf(E e10) {
        Iterator<E> it2 = iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (jc.l.a(it2.next(), e10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new C0401b();
    }

    public int lastIndexOf(E e10) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (jc.l.a(listIterator.previous(), e10)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new c(0);
    }

    @Override // java.util.List
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<E> subList(int i10, int i11) {
        return new d(this, i10, i11);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i10) {
        return new c(i10);
    }
}

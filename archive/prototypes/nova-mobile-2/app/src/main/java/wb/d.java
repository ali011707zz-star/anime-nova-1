package wb;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: Collections.kt */
/* loaded from: classes2.dex */
public final class d<T> implements Collection<T> {

    /* renamed from: f, reason: collision with root package name */
    public final T[] f15458f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f15459g;

    public d(T[] tArr, boolean z10) {
        jc.l.f(tArr, "values");
        this.f15458f = tArr;
        this.f15459g = z10;
    }

    public int a() {
        return this.f15458f.length;
    }

    @Override // java.util.Collection
    public boolean add(T t10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return i.o(this.f15458f, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        jc.l.f(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f15458f.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return jc.b.a(this.f15458f);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return k.b(this.f15458f, this.f15459g);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        jc.l.f(tArr, "array");
        return (T[]) jc.f.b(this, tArr);
    }
}

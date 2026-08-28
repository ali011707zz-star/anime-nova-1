package o4;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import jc.l;

/* compiled from: FilterList.kt */
/* loaded from: classes.dex */
public final class b implements List<a<?>> {
    private final List<a<?>> list;

    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends a<?>> list) {
        l.f(list, "list");
        this.list = list;
    }

    @Override // java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int i10, a<?> aVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends a<?>> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends a<?>> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean add(a<?> aVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean c(a<?> aVar) {
        l.f(aVar, "element");
        return this.list.contains(aVar);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof a) {
            return c((a) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        l.f(collection, "elements");
        return this.list.containsAll(collection);
    }

    @Override // java.util.List
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public a<?> get(int i10) {
        return this.list.get(i10);
    }

    public int e() {
        return this.list.size();
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && l.a(this.list, ((b) obj).list);
    }

    public int f(a<?> aVar) {
        l.f(aVar, "element");
        return this.list.indexOf(aVar);
    }

    public int g(a<?> aVar) {
        l.f(aVar, "element");
        return this.list.lastIndexOf(aVar);
    }

    @Override // java.util.List
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public a<?> set(int i10, a<?> aVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof a) {
            return f((a) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<a<?>> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof a) {
            return g((a) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator<a<?>> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public ListIterator<a<?>> listIterator(int i10) {
        return this.list.listIterator(i10);
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ a<?> remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<a<?>> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return e();
    }

    @Override // java.util.List
    public void sort(Comparator<? super a<?>> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<a<?>> subList(int i10, int i11) {
        return this.list.subList(i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return jc.f.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        l.f(tArr, "array");
        return (T[]) jc.f.b(this, tArr);
    }

    public String toString() {
        return "FilterList(list=" + this.list + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(a<?>... aVarArr) {
        this((List<? extends a<?>>) ((aVarArr.length == 0) ^ true ? wb.h.b(aVarArr) : wb.l.i()));
        l.f(aVarArr, "fs");
    }
}

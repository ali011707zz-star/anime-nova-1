package wb;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: AbstractCollection.kt */
/* loaded from: classes2.dex */
public abstract class a<E> implements Collection<E> {

    /* compiled from: AbstractCollection.kt */
    /* renamed from: wb.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0400a extends jc.m implements ic.l<E, CharSequence> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ a<E> f15450f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0400a(a<? extends E> aVar) {
            super(1);
            this.f15450f = aVar;
        }

        @Override // ic.l
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(E e10) {
            return e10 == this.f15450f ? "(this Collection)" : String.valueOf(e10);
        }
    }

    public abstract int a();

    @Override // java.util.Collection
    public boolean add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(E e10) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it2 = iterator();
        while (it2.hasNext()) {
            if (jc.l.a(it2.next(), e10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
        return size() == 0;
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
    public Object[] toArray() {
        return jc.f.a(this);
    }

    public String toString() {
        return t.G(this, ", ", "[", "]", 0, null, new C0400a(this), 24, null);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        jc.l.f(tArr, "array");
        T[] tArr2 = (T[]) jc.f.b(this, tArr);
        jc.l.d(tArr2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.CollectionsKt__CollectionsJVMKt.copyToArrayImpl>");
        return tArr2;
    }
}

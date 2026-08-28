package jc;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: ArrayIterator.kt */
/* loaded from: classes2.dex */
public final class a<T> implements Iterator<T> {

    /* renamed from: f, reason: collision with root package name */
    public final T[] f9168f;

    /* renamed from: g, reason: collision with root package name */
    public int f9169g;

    public a(T[] tArr) {
        l.f(tArr, "array");
        this.f9168f = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f9169g < this.f9168f.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f9168f;
            int i10 = this.f9169g;
            this.f9169g = i10 + 1;
            return tArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f9169g--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

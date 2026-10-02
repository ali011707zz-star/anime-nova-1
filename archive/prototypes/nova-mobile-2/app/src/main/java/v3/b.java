package v3;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: LsaExtIterator.java */
/* loaded from: classes.dex */
public abstract class b<T> implements Iterator<T> {

    /* renamed from: f, reason: collision with root package name */
    public T f14795f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14796g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14797h;

    public abstract void a();

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (!this.f14797h) {
            a();
            this.f14797h = true;
        }
        return this.f14796g;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!this.f14797h) {
            hasNext();
        }
        if (this.f14796g) {
            T t10 = this.f14795f;
            a();
            if (!this.f14796g) {
                this.f14795f = null;
            }
            return t10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove not supported");
    }
}

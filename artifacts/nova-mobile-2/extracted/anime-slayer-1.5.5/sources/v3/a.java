package v3;

import java.util.Iterator;

/* compiled from: LazyIterator.java */
/* loaded from: classes.dex */
public class a<T> implements Iterator<T> {

    /* renamed from: f, reason: collision with root package name */
    public final Iterable<? extends T> f14793f;

    /* renamed from: g, reason: collision with root package name */
    public Iterator<? extends T> f14794g;

    public a(Iterable<? extends T> iterable) {
        this.f14793f = iterable;
    }

    public final void a() {
        if (this.f14794g != null) {
            return;
        }
        this.f14794g = this.f14793f.iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        a();
        return this.f14794g.hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        a();
        return this.f14794g.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        a();
        this.f14794g.remove();
    }
}

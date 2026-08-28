package v3;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: LsaIterator.java */
/* loaded from: classes.dex */
public abstract class c<T> implements Iterator<T> {
    public abstract T a();

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            return a();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove not supported");
    }
}

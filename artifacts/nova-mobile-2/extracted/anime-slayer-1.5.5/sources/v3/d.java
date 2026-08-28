package v3;

import java.util.Iterator;

/* compiled from: PrimitiveIterator.java */
/* loaded from: classes.dex */
public abstract class d implements Iterator<Integer> {
    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer next() {
        return Integer.valueOf(b());
    }

    public abstract int b();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove");
    }
}

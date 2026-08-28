package wb;

import java.util.AbstractList;

/* compiled from: AbstractMutableList.kt */
/* loaded from: classes2.dex */
public abstract class c<E> extends AbstractList<E> {
    public abstract int a();

    public abstract E b(int i10);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i10) {
        return b(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return a();
    }
}

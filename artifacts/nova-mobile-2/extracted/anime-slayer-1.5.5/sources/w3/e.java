package w3;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: ObjSorted.java */
/* loaded from: classes.dex */
public class e<T> extends v3.b<T> {

    /* renamed from: i, reason: collision with root package name */
    public final Iterator<? extends T> f15245i;

    /* renamed from: j, reason: collision with root package name */
    public final Comparator<? super T> f15246j;

    /* renamed from: k, reason: collision with root package name */
    public Iterator<T> f15247k;

    public e(Iterator<? extends T> it2, Comparator<? super T> comparator) {
        this.f15245i = it2;
        this.f15246j = comparator;
    }

    @Override // v3.b
    public void a() {
        if (!this.f14797h) {
            List a10 = u3.a.a(this.f15245i);
            Collections.sort(a10, this.f15246j);
            this.f15247k = a10.iterator();
        }
        boolean hasNext = this.f15247k.hasNext();
        this.f14796g = hasNext;
        if (hasNext) {
            this.f14795f = this.f15247k.next();
        }
    }
}

package pc;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import jc.l;

/* compiled from: SequencesJVM.kt */
/* loaded from: classes2.dex */
public final class a<T> implements c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference<c<T>> f12218a;

    public a(c<? extends T> cVar) {
        l.f(cVar, "sequence");
        this.f12218a = new AtomicReference<>(cVar);
    }

    @Override // pc.c
    public Iterator<T> iterator() {
        c<T> andSet = this.f12218a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}

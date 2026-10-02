package pc;

import ic.l;
import java.util.Iterator;

/* compiled from: Sequences.kt */
/* loaded from: classes2.dex */
public final class i<T, R> implements c<R> {

    /* renamed from: a, reason: collision with root package name */
    public final c<T> f12227a;

    /* renamed from: b, reason: collision with root package name */
    public final l<T, R> f12228b;

    /* compiled from: Sequences.kt */
    /* loaded from: classes2.dex */
    public static final class a implements Iterator<R> {

        /* renamed from: f, reason: collision with root package name */
        public final Iterator<T> f12229f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ i<T, R> f12230g;

        public a(i<T, R> iVar) {
            this.f12230g = iVar;
            this.f12229f = iVar.f12227a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12229f.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) this.f12230g.f12228b.invoke(this.f12229f.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(c<? extends T> cVar, l<? super T, ? extends R> lVar) {
        jc.l.f(cVar, "sequence");
        jc.l.f(lVar, "transformer");
        this.f12227a = cVar;
        this.f12228b = lVar;
    }

    @Override // pc.c
    public Iterator<R> iterator() {
        return new a(this);
    }
}

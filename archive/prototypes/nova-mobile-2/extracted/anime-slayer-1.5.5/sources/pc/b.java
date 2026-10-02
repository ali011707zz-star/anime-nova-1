package pc;

import ic.l;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: Sequences.kt */
/* loaded from: classes2.dex */
public final class b<T> implements c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final ic.a<T> f12219a;

    /* renamed from: b, reason: collision with root package name */
    public final l<T, T> f12220b;

    /* compiled from: Sequences.kt */
    /* loaded from: classes2.dex */
    public static final class a implements Iterator<T> {

        /* renamed from: f, reason: collision with root package name */
        public T f12221f;

        /* renamed from: g, reason: collision with root package name */
        public int f12222g = -2;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ b<T> f12223h;

        public a(b<T> bVar) {
            this.f12223h = bVar;
        }

        public final void a() {
            T t10;
            if (this.f12222g == -2) {
                t10 = (T) this.f12223h.f12219a.invoke();
            } else {
                l lVar = this.f12223h.f12220b;
                T t11 = this.f12221f;
                jc.l.c(t11);
                t10 = (T) lVar.invoke(t11);
            }
            this.f12221f = t10;
            this.f12222g = t10 == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f12222g < 0) {
                a();
            }
            return this.f12222g == 1;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f12222g < 0) {
                a();
            }
            if (this.f12222g != 0) {
                T t10 = this.f12221f;
                jc.l.d(t10, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
                this.f12222g = -1;
                return t10;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(ic.a<? extends T> aVar, l<? super T, ? extends T> lVar) {
        jc.l.f(aVar, "getInitialValue");
        jc.l.f(lVar, "getNextValue");
        this.f12219a = aVar;
        this.f12220b = lVar;
    }

    @Override // pc.c
    public Iterator<T> iterator() {
        return new a(this);
    }
}

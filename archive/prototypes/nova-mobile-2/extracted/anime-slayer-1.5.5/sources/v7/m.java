package v7;

import java.util.Queue;

/* compiled from: ModelCache.java */
/* loaded from: classes.dex */
public class m<A, B> {

    /* renamed from: a, reason: collision with root package name */
    public final l8.g<b<A>, B> f14910a;

    /* compiled from: ModelCache.java */
    /* loaded from: classes.dex */
    public class a extends l8.g<b<A>, B> {
        public a(long j10) {
            super(j10);
        }

        @Override // l8.g
        /* renamed from: n, reason: merged with bridge method [inline-methods] */
        public void j(b<A> bVar, B b10) {
            bVar.c();
        }
    }

    /* compiled from: ModelCache.java */
    /* loaded from: classes.dex */
    public static final class b<A> {

        /* renamed from: d, reason: collision with root package name */
        public static final Queue<b<?>> f14912d = l8.k.f(0);

        /* renamed from: a, reason: collision with root package name */
        public int f14913a;

        /* renamed from: b, reason: collision with root package name */
        public int f14914b;

        /* renamed from: c, reason: collision with root package name */
        public A f14915c;

        public static <A> b<A> a(A a10, int i10, int i11) {
            b<A> bVar;
            Queue<b<?>> queue = f14912d;
            synchronized (queue) {
                bVar = (b) queue.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a10, i10, i11);
            return bVar;
        }

        public final void b(A a10, int i10, int i11) {
            this.f14915c = a10;
            this.f14914b = i10;
            this.f14913a = i11;
        }

        public void c() {
            Queue<b<?>> queue = f14912d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f14914b == bVar.f14914b && this.f14913a == bVar.f14913a && this.f14915c.equals(bVar.f14915c);
        }

        public int hashCode() {
            return (((this.f14913a * 31) + this.f14914b) * 31) + this.f14915c.hashCode();
        }
    }

    public m(long j10) {
        this.f14910a = new a(j10);
    }

    public B a(A a10, int i10, int i11) {
        b<A> a11 = b.a(a10, i10, i11);
        B g10 = this.f14910a.g(a11);
        a11.c();
        return g10;
    }

    public void b(A a10, int i10, int i11, B b10) {
        this.f14910a.k(b.a(a10, i10, i11), b10);
    }
}

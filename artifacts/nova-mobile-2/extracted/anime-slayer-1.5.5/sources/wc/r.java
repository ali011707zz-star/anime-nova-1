package wc;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rc.u0;

/* compiled from: LockFreeTaskQueue.kt */
/* loaded from: classes2.dex */
public final class r<E> {
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f15529a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15530b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15531c;

    /* renamed from: d, reason: collision with root package name */
    public /* synthetic */ AtomicReferenceArray f15532d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f15525e = new a(null);

    /* renamed from: h, reason: collision with root package name */
    public static final a0 f15528h = new a0("REMOVE_FROZEN");

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15526f = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_next");

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f15527g = AtomicLongFieldUpdater.newUpdater(r.class, "_state");

    /* compiled from: LockFreeTaskQueue.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(jc.g gVar) {
            this();
        }

        public final int a(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return d(j10, 1073741823L) | (i10 << 0);
        }

        public final long c(long j10, int i10) {
            return d(j10, 1152921503533105152L) | (i10 << 30);
        }

        public final long d(long j10, long j11) {
            return j10 & (j11 ^ (-1));
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f15533a;

        public b(int i10) {
            this.f15533a = i10;
        }
    }

    public r(int i10, boolean z10) {
        this.f15529a = i10;
        this.f15530b = z10;
        int i11 = i10 - 1;
        this.f15531c = i11;
        this.f15532d = new AtomicReferenceArray(i10);
        if (!(i11 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i10 & i11) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x004e, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(E e10) {
        while (true) {
            long j10 = this._state;
            if ((3458764513820540928L & j10) != 0) {
                return f15525e.a(j10);
            }
            a aVar = f15525e;
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f15531c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f15530b && this.f15532d.get(i11 & i12) != null) {
                int i13 = this.f15529a;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    break;
                }
            } else if (f15527g.compareAndSet(this, j10, aVar.c(j10, (i11 + 1) & 1073741823))) {
                this.f15532d.set(i11 & i12, e10);
                r<E> rVar = this;
                while ((rVar._state & 1152921504606846976L) != 0 && (rVar = rVar.i().e(i11, e10)) != null) {
                }
                return 0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final r<E> b(long j10) {
        r<E> rVar = new r<>(this.f15529a * 2, this.f15530b);
        int i10 = (int) ((1073741823 & j10) >> 0);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.f15531c;
            if ((i10 & i12) != (i11 & i12)) {
                Object obj = this.f15532d.get(i12 & i10);
                if (obj == null) {
                    obj = new b(i10);
                }
                rVar.f15532d.set(rVar.f15531c & i10, obj);
                i10++;
            } else {
                rVar._state = f15525e.d(j10, 1152921504606846976L);
                return rVar;
            }
        }
    }

    public final r<E> c(long j10) {
        while (true) {
            r<E> rVar = (r) this._next;
            if (rVar != null) {
                return rVar;
            }
            ad.c.a(f15526f, this, null, b(j10));
        }
    }

    public final boolean d() {
        long j10;
        do {
            j10 = this._state;
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!f15527g.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final r<E> e(int i10, E e10) {
        Object obj = this.f15532d.get(this.f15531c & i10);
        if (!(obj instanceof b) || ((b) obj).f15533a != i10) {
            return null;
        }
        this.f15532d.set(i10 & this.f15531c, e10);
        return this;
    }

    public final int f() {
        long j10 = this._state;
        return 1073741823 & (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j10) >> 0)));
    }

    public final boolean g() {
        long j10 = this._state;
        return ((int) ((1073741823 & j10) >> 0)) == ((int) ((j10 & 1152921503533105152L) >> 30));
    }

    public final long h() {
        long j10;
        long j11;
        do {
            j10 = this._state;
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!f15527g.compareAndSet(this, j10, j11));
        return j11;
    }

    public final r<E> i() {
        return c(h());
    }

    public final Object j() {
        while (true) {
            long j10 = this._state;
            if ((1152921504606846976L & j10) != 0) {
                return f15528h;
            }
            a aVar = f15525e;
            int i10 = (int) ((1073741823 & j10) >> 0);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f15531c;
            if ((i11 & i12) == (i10 & i12)) {
                return null;
            }
            Object obj = this.f15532d.get(i12 & i10);
            if (obj == null) {
                if (this.f15530b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i13 = (i10 + 1) & 1073741823;
                if (f15527g.compareAndSet(this, j10, aVar.b(j10, i13))) {
                    this.f15532d.set(this.f15531c & i10, null);
                    return obj;
                }
                if (this.f15530b) {
                    r<E> rVar = this;
                    do {
                        rVar = rVar.k(i10, i13);
                    } while (rVar != null);
                    return obj;
                }
            }
        }
    }

    public final r<E> k(int i10, int i11) {
        long j10;
        a aVar;
        int i12;
        do {
            j10 = this._state;
            aVar = f15525e;
            i12 = (int) ((1073741823 & j10) >> 0);
            if (u0.a()) {
                if (!(i12 == i10)) {
                    throw new AssertionError();
                }
            }
            if ((1152921504606846976L & j10) != 0) {
                return i();
            }
        } while (!f15527g.compareAndSet(this, j10, aVar.b(j10, i11)));
        this.f15532d.set(this.f15531c & i12, null);
        return null;
    }
}

package tc;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.NoWhenBranchMatchedException;
import kotlinx.coroutines.internal.UndeliveredElementException;
import rc.u0;
import tc.a;
import wc.a0;

/* compiled from: ArrayChannel.kt */
/* loaded from: classes2.dex */
public class d<E> extends tc.a<E> {

    /* renamed from: i, reason: collision with root package name */
    public final int f14146i;

    /* renamed from: j, reason: collision with root package name */
    public final e f14147j;

    /* renamed from: k, reason: collision with root package name */
    public final ReentrantLock f14148k;

    /* renamed from: l, reason: collision with root package name */
    public Object[] f14149l;

    /* renamed from: m, reason: collision with root package name */
    public int f14150m;
    private volatile /* synthetic */ int size;

    /* compiled from: ArrayChannel.kt */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14151a;

        static {
            int[] iArr = new int[e.values().length];
            iArr[e.SUSPEND.ordinal()] = 1;
            iArr[e.DROP_LATEST.ordinal()] = 2;
            iArr[e.DROP_OLDEST.ordinal()] = 3;
            f14151a = iArr;
        }
    }

    public d(int i10, e eVar, ic.l<? super E, vb.p> lVar) {
        super(lVar);
        this.f14146i = i10;
        this.f14147j = eVar;
        if (i10 >= 1) {
            this.f14148k = new ReentrantLock();
            Object[] objArr = new Object[Math.min(i10, 8)];
            wb.h.j(objArr, b.f14134a, 0, 0, 6, null);
            vb.p pVar = vb.p.f15031a;
            this.f14149l = objArr;
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i10 + " was specified").toString());
    }

    @Override // tc.a
    public boolean L(s<? super E> sVar) {
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            return super.L(sVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // tc.a
    public final boolean N() {
        return false;
    }

    @Override // tc.a
    public final boolean O() {
        return this.size == 0;
    }

    @Override // tc.a
    public boolean P() {
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            return super.P();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // tc.a
    public void R(boolean z10) {
        ic.l<E, vb.p> lVar = this.f14141f;
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            UndeliveredElementException undeliveredElementException = null;
            for (int i11 = 0; i11 < i10; i11++) {
                Object obj = this.f14149l[this.f14150m];
                if (lVar != null && obj != b.f14134a) {
                    undeliveredElementException = wc.v.c(lVar, obj, undeliveredElementException);
                }
                Object[] objArr = this.f14149l;
                int i12 = this.f14150m;
                objArr[i12] = b.f14134a;
                this.f14150m = (i12 + 1) % objArr.length;
            }
            this.size = 0;
            vb.p pVar = vb.p.f15031a;
            reentrantLock.unlock();
            super.R(z10);
            if (undeliveredElementException != null) {
                throw undeliveredElementException;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // tc.a
    public Object V() {
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            if (i10 == 0) {
                Object n10 = n();
                if (n10 == null) {
                    n10 = b.f14137d;
                }
                return n10;
            }
            Object[] objArr = this.f14149l;
            int i11 = this.f14150m;
            Object obj = objArr[i11];
            w wVar = null;
            objArr[i11] = null;
            this.size = i10 - 1;
            Object obj2 = b.f14137d;
            if (i10 == this.f14146i) {
                w wVar2 = null;
                while (true) {
                    w E = E();
                    if (E == null) {
                        wVar = wVar2;
                        break;
                    }
                    a0 X = E.X(null);
                    if (X != null) {
                        if (u0.a()) {
                            if (!(X == rc.q.f13321a)) {
                                throw new AssertionError();
                            }
                        }
                        obj2 = E.V();
                        wVar = E;
                        r6 = true;
                    } else {
                        E.Y();
                        wVar2 = E;
                    }
                }
            }
            if (obj2 != b.f14137d && !(obj2 instanceof m)) {
                this.size = i10;
                Object[] objArr2 = this.f14149l;
                objArr2[(this.f14150m + i10) % objArr2.length] = obj2;
            }
            this.f14150m = (this.f14150m + 1) % this.f14149l.length;
            vb.p pVar = vb.p.f15031a;
            if (r6) {
                jc.l.c(wVar);
                wVar.U();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0091 A[Catch: all -> 0x00ba, TRY_LEAVE, TryCatch #0 {all -> 0x00ba, blocks: (B:3:0x0005, B:5:0x0009, B:7:0x000f, B:11:0x0015, B:13:0x0029, B:50:0x0033, B:30:0x0077, B:32:0x007b, B:34:0x007f, B:35:0x00a1, B:40:0x008b, B:42:0x0091, B:15:0x0043, B:17:0x0048, B:21:0x004d, B:23:0x0053, B:26:0x005f, B:45:0x0066, B:46:0x0075), top: B:2:0x0005 }] */
    @Override // tc.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object W(zc.d<?> dVar) {
        boolean z10;
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            if (i10 == 0) {
                Object n10 = n();
                if (n10 == null) {
                    n10 = b.f14137d;
                }
                return n10;
            }
            Object[] objArr = this.f14149l;
            int i11 = this.f14150m;
            Object obj = objArr[i11];
            Object obj2 = null;
            objArr[i11] = null;
            this.size = i10 - 1;
            Object obj3 = b.f14137d;
            if (i10 == this.f14146i) {
                while (true) {
                    a.g<E> J = J();
                    Object m10 = dVar.m(J);
                    if (m10 == null) {
                        obj2 = J.o();
                        jc.l.c(obj2);
                        obj3 = ((w) obj2).V();
                        break;
                    }
                    if (m10 == b.f14137d) {
                        break;
                    }
                    if (m10 != wc.c.f15475b) {
                        if (m10 == zc.e.d()) {
                            this.size = i10;
                            this.f14149l[this.f14150m] = obj;
                            return m10;
                        }
                        if (!(m10 instanceof m)) {
                            throw new IllegalStateException(jc.l.m("performAtomicTrySelect(describeTryOffer) returned ", m10).toString());
                        }
                        obj3 = m10;
                        obj2 = obj3;
                    }
                }
                z10 = true;
                if (obj3 == b.f14137d && !(obj3 instanceof m)) {
                    this.size = i10;
                    Object[] objArr2 = this.f14149l;
                    objArr2[(this.f14150m + i10) % objArr2.length] = obj3;
                } else if (!dVar.p()) {
                    this.size = i10;
                    this.f14149l[this.f14150m] = obj;
                    return zc.e.d();
                }
                this.f14150m = (this.f14150m + 1) % this.f14149l.length;
                vb.p pVar = vb.p.f15031a;
                if (z10) {
                    jc.l.c(obj2);
                    ((w) obj2).U();
                }
                return obj;
            }
            z10 = false;
            if (obj3 == b.f14137d) {
            }
            if (!dVar.p()) {
            }
            this.f14150m = (this.f14150m + 1) % this.f14149l.length;
            vb.p pVar2 = vb.p.f15031a;
            if (z10) {
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void b0(int i10, E e10) {
        if (i10 < this.f14146i) {
            c0(i10);
            Object[] objArr = this.f14149l;
            objArr[(this.f14150m + i10) % objArr.length] = e10;
            return;
        }
        if (u0.a()) {
            if (!(this.f14147j == e.DROP_OLDEST)) {
                throw new AssertionError();
            }
        }
        Object[] objArr2 = this.f14149l;
        int i11 = this.f14150m;
        objArr2[i11 % objArr2.length] = null;
        objArr2[(i10 + i11) % objArr2.length] = e10;
        this.f14150m = (i11 + 1) % objArr2.length;
    }

    public final void c0(int i10) {
        Object[] objArr = this.f14149l;
        if (i10 >= objArr.length) {
            int min = Math.min(objArr.length * 2, this.f14146i);
            Object[] objArr2 = new Object[min];
            if (i10 > 0) {
                int i11 = 0;
                while (true) {
                    int i12 = i11 + 1;
                    Object[] objArr3 = this.f14149l;
                    objArr2[i11] = objArr3[(this.f14150m + i11) % objArr3.length];
                    if (i12 >= i10) {
                        break;
                    } else {
                        i11 = i12;
                    }
                }
            }
            wb.h.i(objArr2, b.f14134a, i10, min);
            this.f14149l = objArr2;
            this.f14150m = 0;
        }
    }

    public final a0 d0(int i10) {
        if (i10 < this.f14146i) {
            this.size = i10 + 1;
            return null;
        }
        int i11 = a.f14151a[this.f14147j.ordinal()];
        if (i11 == 1) {
            return b.f14136c;
        }
        if (i11 == 2) {
            return b.f14135b;
        }
        if (i11 == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // tc.c
    public Object h(w wVar) {
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            return super.h(wVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // tc.c
    public String k() {
        return "(buffer:capacity=" + this.f14146i + ",size=" + this.size + ')';
    }

    @Override // tc.c
    public final boolean w() {
        return false;
    }

    @Override // tc.c
    public final boolean x() {
        return this.size == this.f14146i && this.f14147j == e.SUSPEND;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if ((r2 instanceof tc.m) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
    
        r3 = r2.s(r6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r3 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if (rc.u0.a() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        if (r3 != rc.q.f13321a) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0037, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        if (r3 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0039, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        r5.size = r1;
        r1 = vb.p.f15031a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
    
        r0.unlock();
        r2.h(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        return r2.o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0020, code lost:
    
        r5.size = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0025, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0052, code lost:
    
        b0(r1, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005a, code lost:
    
        return tc.b.f14135b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r1 == 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        r2 = D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r2 != null) goto L11;
     */
    @Override // tc.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object z(E e10) {
        ReentrantLock reentrantLock = this.f14148k;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            m<?> n10 = n();
            if (n10 != null) {
                return n10;
            }
            a0 d02 = d0(i10);
            if (d02 != null) {
                return d02;
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}

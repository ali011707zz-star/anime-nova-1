package tc;

import java.util.concurrent.locks.ReentrantLock;
import kotlinx.coroutines.internal.UndeliveredElementException;
import wc.a0;

/* compiled from: ConflatedChannel.kt */
/* loaded from: classes2.dex */
public class n<E> extends a<E> {

    /* renamed from: i, reason: collision with root package name */
    public final ReentrantLock f14165i;

    /* renamed from: j, reason: collision with root package name */
    public Object f14166j;

    public n(ic.l<? super E, vb.p> lVar) {
        super(lVar);
        this.f14165i = new ReentrantLock();
        this.f14166j = b.f14134a;
    }

    @Override // tc.a
    public boolean L(s<? super E> sVar) {
        ReentrantLock reentrantLock = this.f14165i;
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
        return this.f14166j == b.f14134a;
    }

    @Override // tc.a
    public void R(boolean z10) {
        ReentrantLock reentrantLock = this.f14165i;
        reentrantLock.lock();
        try {
            UndeliveredElementException b02 = b0(b.f14134a);
            vb.p pVar = vb.p.f15031a;
            reentrantLock.unlock();
            super.R(z10);
            if (b02 != null) {
                throw b02;
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // tc.a
    public Object V() {
        ReentrantLock reentrantLock = this.f14165i;
        reentrantLock.lock();
        try {
            Object obj = this.f14166j;
            a0 a0Var = b.f14134a;
            if (obj != a0Var) {
                this.f14166j = a0Var;
                vb.p pVar = vb.p.f15031a;
                return obj;
            }
            Object n10 = n();
            if (n10 == null) {
                n10 = b.f14137d;
            }
            return n10;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // tc.a
    public Object W(zc.d<?> dVar) {
        ReentrantLock reentrantLock = this.f14165i;
        reentrantLock.lock();
        try {
            Object obj = this.f14166j;
            a0 a0Var = b.f14134a;
            if (obj == a0Var) {
                Object n10 = n();
                if (n10 == null) {
                    n10 = b.f14137d;
                }
                return n10;
            }
            if (!dVar.p()) {
                return zc.e.d();
            }
            Object obj2 = this.f14166j;
            this.f14166j = a0Var;
            vb.p pVar = vb.p.f15031a;
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final UndeliveredElementException b0(Object obj) {
        ic.l<E, vb.p> lVar;
        Object obj2 = this.f14166j;
        UndeliveredElementException undeliveredElementException = null;
        if (obj2 != b.f14134a && (lVar = this.f14141f) != null) {
            undeliveredElementException = wc.v.d(lVar, obj2, null, 2, null);
        }
        this.f14166j = obj;
        return undeliveredElementException;
    }

    @Override // tc.c
    public String k() {
        return "(value=" + this.f14166j + ')';
    }

    @Override // tc.c
    public final boolean w() {
        return false;
    }

    @Override // tc.c
    public final boolean x() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        if ((r1 instanceof tc.m) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        r2 = r1.s(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r2 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (rc.u0.a() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        if (r2 != rc.q.f13321a) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r2 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003c, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0033, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        r2 = vb.p.f15031a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        r0.unlock();
        r1.h(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0049, code lost:
    
        return r1.o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x001f, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004a, code lost:
    
        r5 = b0(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x004e, code lost:
    
        if (r5 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0055, code lost:
    
        return tc.b.f14135b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0056, code lost:
    
        throw r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
    
        if (r4.f14166j == tc.b.f14134a) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        r1 = D();
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        if (r1 != null) goto L10;
     */
    @Override // tc.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object z(E e10) {
        ReentrantLock reentrantLock = this.f14165i;
        reentrantLock.lock();
        try {
            m<?> n10 = n();
            if (n10 != null) {
                return n10;
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}

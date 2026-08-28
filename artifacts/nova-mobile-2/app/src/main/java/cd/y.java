package cd;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SegmentPool.kt */
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: c, reason: collision with root package name */
    public static final int f3963c;

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicReference<x>[] f3964d;

    /* renamed from: e, reason: collision with root package name */
    public static final y f3965e = new y();

    /* renamed from: a, reason: collision with root package name */
    public static final int f3961a = 65536;

    /* renamed from: b, reason: collision with root package name */
    public static final x f3962b = new x(new byte[0], 0, 0, false, false);

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f3963c = highestOneBit;
        AtomicReference<x>[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i10 = 0; i10 < highestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference<>();
        }
        f3964d = atomicReferenceArr;
    }

    public static final void b(x xVar) {
        AtomicReference<x> a10;
        x xVar2;
        jc.l.f(xVar, "segment");
        if (xVar.f3959f == null && xVar.f3960g == null) {
            if (xVar.f3957d || (xVar2 = (a10 = f3965e.a()).get()) == f3962b) {
                return;
            }
            int i10 = xVar2 != null ? xVar2.f3956c : 0;
            if (i10 >= f3961a) {
                return;
            }
            xVar.f3959f = xVar2;
            xVar.f3955b = 0;
            xVar.f3956c = i10 + RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
            if (a10.compareAndSet(xVar2, xVar)) {
                return;
            }
            xVar.f3959f = null;
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final x c() {
        AtomicReference<x> a10 = f3965e.a();
        x xVar = f3962b;
        x andSet = a10.getAndSet(xVar);
        if (andSet == xVar) {
            return new x();
        }
        if (andSet == null) {
            a10.set(null);
            return new x();
        }
        a10.set(andSet.f3959f);
        andSet.f3959f = null;
        andSet.f3956c = 0;
        return andSet;
    }

    public final AtomicReference<x> a() {
        Thread currentThread = Thread.currentThread();
        jc.l.e(currentThread, "Thread.currentThread()");
        return f3964d[(int) (currentThread.getId() & (f3963c - 1))];
    }
}

package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* compiled from: GapWorker.java */
/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal<l> f3044j = new ThreadLocal<>();

    /* renamed from: k, reason: collision with root package name */
    public static Comparator<c> f3045k = new a();

    /* renamed from: g, reason: collision with root package name */
    public long f3047g;

    /* renamed from: h, reason: collision with root package name */
    public long f3048h;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<RecyclerView> f3046f = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    public ArrayList<c> f3049i = new ArrayList<>();

    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.f3057d;
            if ((recyclerView == null) != (cVar2.f3057d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = cVar.f3054a;
            if (z10 != cVar2.f3054a) {
                return z10 ? -1 : 1;
            }
            int i10 = cVar2.f3055b - cVar.f3055b;
            if (i10 != 0) {
                return i10;
            }
            int i11 = cVar.f3056c - cVar2.f3056c;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    }

    /* compiled from: GapWorker.java */
    @SuppressLint({"VisibleForTests"})
    /* loaded from: classes.dex */
    public static class b implements RecyclerView.p.c {

        /* renamed from: a, reason: collision with root package name */
        public int f3050a;

        /* renamed from: b, reason: collision with root package name */
        public int f3051b;

        /* renamed from: c, reason: collision with root package name */
        public int[] f3052c;

        /* renamed from: d, reason: collision with root package name */
        public int f3053d;

        @Override // androidx.recyclerview.widget.RecyclerView.p.c
        public void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 >= 0) {
                int i12 = this.f3053d * 2;
                int[] iArr = this.f3052c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f3052c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i12 >= iArr.length) {
                    int[] iArr3 = new int[i12 * 2];
                    this.f3052c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f3052c;
                iArr4[i12] = i10;
                iArr4[i12 + 1] = i11;
                this.f3053d++;
                return;
            }
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }

        public void b() {
            int[] iArr = this.f3052c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3053d = 0;
        }

        public void c(RecyclerView recyclerView, boolean z10) {
            this.f3053d = 0;
            int[] iArr = this.f3052c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.p pVar = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || pVar == null || !pVar.isItemPrefetchEnabled()) {
                return;
            }
            if (z10) {
                if (!recyclerView.mAdapterHelper.p()) {
                    pVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                pVar.collectAdjacentPrefetchPositions(this.f3050a, this.f3051b, recyclerView.mState, this);
            }
            int i10 = this.f3053d;
            if (i10 > pVar.mPrefetchMaxCountObserved) {
                pVar.mPrefetchMaxCountObserved = i10;
                pVar.mPrefetchMaxObservedInInitialPrefetch = z10;
                recyclerView.mRecycler.K();
            }
        }

        public boolean d(int i10) {
            if (this.f3052c != null) {
                int i11 = this.f3053d * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.f3052c[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e(int i10, int i11) {
            this.f3050a = i10;
            this.f3051b = i11;
        }
    }

    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3054a;

        /* renamed from: b, reason: collision with root package name */
        public int f3055b;

        /* renamed from: c, reason: collision with root package name */
        public int f3056c;

        /* renamed from: d, reason: collision with root package name */
        public RecyclerView f3057d;

        /* renamed from: e, reason: collision with root package name */
        public int f3058e;

        public void a() {
            this.f3054a = false;
            this.f3055b = 0;
            this.f3056c = 0;
            this.f3057d = null;
            this.f3058e = 0;
        }
    }

    public static boolean e(RecyclerView recyclerView, int i10) {
        int j10 = recyclerView.mChildHelper.j();
        for (int i11 = 0; i11 < j10; i11++) {
            RecyclerView.e0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.i(i11));
            if (childViewHolderInt.mPosition == i10 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    public void a(RecyclerView recyclerView) {
        this.f3046f.add(recyclerView);
    }

    public final void b() {
        c cVar;
        int size = this.f3046f.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = this.f3046f.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i10 += recyclerView.mPrefetchRegistry.f3053d;
            }
        }
        this.f3049i.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = this.f3046f.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                b bVar = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(bVar.f3050a) + Math.abs(bVar.f3051b);
                for (int i14 = 0; i14 < bVar.f3053d * 2; i14 += 2) {
                    if (i12 >= this.f3049i.size()) {
                        cVar = new c();
                        this.f3049i.add(cVar);
                    } else {
                        cVar = this.f3049i.get(i12);
                    }
                    int[] iArr = bVar.f3052c;
                    int i15 = iArr[i14 + 1];
                    cVar.f3054a = i15 <= abs;
                    cVar.f3055b = abs;
                    cVar.f3056c = i15;
                    cVar.f3057d = recyclerView2;
                    cVar.f3058e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f3049i, f3045k);
    }

    public final void c(c cVar, long j10) {
        RecyclerView.e0 i10 = i(cVar.f3057d, cVar.f3058e, cVar.f3054a ? RecyclerView.FOREVER_NS : j10);
        if (i10 == null || i10.mNestedRecyclerView == null || !i10.isBound() || i10.isInvalid()) {
            return;
        }
        h(i10.mNestedRecyclerView.get(), j10);
    }

    public final void d(long j10) {
        for (int i10 = 0; i10 < this.f3049i.size(); i10++) {
            c cVar = this.f3049i.get(i10);
            if (cVar.f3057d == null) {
                return;
            }
            c(cVar, j10);
            cVar.a();
        }
    }

    public void f(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.f3047g == 0) {
            this.f3047g = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.e(i10, i11);
    }

    public void g(long j10) {
        b();
        d(j10);
    }

    public final void h(RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.c(recyclerView, true);
        if (bVar.f3053d != 0) {
            try {
                m0.k.a(RecyclerView.TRACE_NESTED_PREFETCH_TAG);
                recyclerView.mState.f(recyclerView.mAdapter);
                for (int i10 = 0; i10 < bVar.f3053d * 2; i10 += 2) {
                    i(recyclerView, bVar.f3052c[i10], j10);
                }
            } finally {
                m0.k.b();
            }
        }
    }

    public final RecyclerView.e0 i(RecyclerView recyclerView, int i10, long j10) {
        if (e(recyclerView, i10)) {
            return null;
        }
        RecyclerView.w wVar = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.e0 I = wVar.I(i10, false, j10);
            if (I != null) {
                if (I.isBound() && !I.isInvalid()) {
                    wVar.B(I.itemView);
                } else {
                    wVar.a(I, false);
                }
            }
            return I;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void j(RecyclerView recyclerView) {
        this.f3046f.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m0.k.a(RecyclerView.TRACE_PREFETCH_TAG);
            if (!this.f3046f.isEmpty()) {
                int size = this.f3046f.size();
                long j10 = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = this.f3046f.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j10 = Math.max(recyclerView.getDrawingTime(), j10);
                    }
                }
                if (j10 != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(j10) + this.f3048h);
                }
            }
        } finally {
            this.f3047g = 0L;
            m0.k.b();
        }
    }
}

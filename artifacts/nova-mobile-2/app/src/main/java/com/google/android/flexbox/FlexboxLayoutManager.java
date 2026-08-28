package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import androidx.recyclerview.widget.s;
import com.google.android.flexbox.a;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.p implements v9.a, RecyclerView.a0.b {
    public static final Rect A = new Rect();

    /* renamed from: a, reason: collision with root package name */
    public int f4670a;

    /* renamed from: b, reason: collision with root package name */
    public int f4671b;

    /* renamed from: c, reason: collision with root package name */
    public int f4672c;

    /* renamed from: d, reason: collision with root package name */
    public int f4673d;

    /* renamed from: e, reason: collision with root package name */
    public int f4674e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4675f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4676g;

    /* renamed from: h, reason: collision with root package name */
    public List<v9.c> f4677h;

    /* renamed from: i, reason: collision with root package name */
    public final com.google.android.flexbox.a f4678i;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView.w f4679j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView.b0 f4680k;

    /* renamed from: l, reason: collision with root package name */
    public d f4681l;

    /* renamed from: m, reason: collision with root package name */
    public b f4682m;

    /* renamed from: n, reason: collision with root package name */
    public s f4683n;

    /* renamed from: o, reason: collision with root package name */
    public s f4684o;

    /* renamed from: p, reason: collision with root package name */
    public e f4685p;

    /* renamed from: q, reason: collision with root package name */
    public int f4686q;

    /* renamed from: r, reason: collision with root package name */
    public int f4687r;

    /* renamed from: s, reason: collision with root package name */
    public int f4688s;

    /* renamed from: t, reason: collision with root package name */
    public int f4689t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4690u;

    /* renamed from: v, reason: collision with root package name */
    public SparseArray<View> f4691v;

    /* renamed from: w, reason: collision with root package name */
    public final Context f4692w;

    /* renamed from: x, reason: collision with root package name */
    public View f4693x;

    /* renamed from: y, reason: collision with root package name */
    public int f4694y;

    /* renamed from: z, reason: collision with root package name */
    public a.C0088a f4695z;

    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a, reason: collision with root package name */
        public int f4696a;

        /* renamed from: b, reason: collision with root package name */
        public int f4697b;

        /* renamed from: c, reason: collision with root package name */
        public int f4698c;

        /* renamed from: d, reason: collision with root package name */
        public int f4699d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f4700e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f4701f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f4702g;

        public b() {
            this.f4699d = 0;
        }

        public static /* synthetic */ int l(b bVar, int i10) {
            int i11 = bVar.f4699d + i10;
            bVar.f4699d = i11;
            return i11;
        }

        public final void r() {
            if (!FlexboxLayoutManager.this.o() && FlexboxLayoutManager.this.f4675f) {
                this.f4698c = this.f4700e ? FlexboxLayoutManager.this.f4683n.i() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f4683n.m();
            } else {
                this.f4698c = this.f4700e ? FlexboxLayoutManager.this.f4683n.i() : FlexboxLayoutManager.this.f4683n.m();
            }
        }

        public final void s(View view) {
            s sVar = FlexboxLayoutManager.this.f4671b == 0 ? FlexboxLayoutManager.this.f4684o : FlexboxLayoutManager.this.f4683n;
            if (!FlexboxLayoutManager.this.o() && FlexboxLayoutManager.this.f4675f) {
                if (this.f4700e) {
                    this.f4698c = sVar.g(view) + sVar.o();
                } else {
                    this.f4698c = sVar.d(view);
                }
            } else if (this.f4700e) {
                this.f4698c = sVar.d(view) + sVar.o();
            } else {
                this.f4698c = sVar.g(view);
            }
            this.f4696a = FlexboxLayoutManager.this.getPosition(view);
            this.f4702g = false;
            int[] iArr = FlexboxLayoutManager.this.f4678i.f4727c;
            int i10 = this.f4696a;
            if (i10 == -1) {
                i10 = 0;
            }
            int i11 = iArr[i10];
            this.f4697b = i11 != -1 ? i11 : 0;
            if (FlexboxLayoutManager.this.f4677h.size() > this.f4697b) {
                this.f4696a = ((v9.c) FlexboxLayoutManager.this.f4677h.get(this.f4697b)).f14984o;
            }
        }

        public final void t() {
            this.f4696a = -1;
            this.f4697b = -1;
            this.f4698c = Integer.MIN_VALUE;
            this.f4701f = false;
            this.f4702g = false;
            if (FlexboxLayoutManager.this.o()) {
                if (FlexboxLayoutManager.this.f4671b == 0) {
                    this.f4700e = FlexboxLayoutManager.this.f4670a == 1;
                    return;
                } else {
                    this.f4700e = FlexboxLayoutManager.this.f4671b == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f4671b == 0) {
                this.f4700e = FlexboxLayoutManager.this.f4670a == 3;
            } else {
                this.f4700e = FlexboxLayoutManager.this.f4671b == 2;
            }
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f4696a + ", mFlexLinePosition=" + this.f4697b + ", mCoordinate=" + this.f4698c + ", mPerpendicularCoordinate=" + this.f4699d + ", mLayoutFromEnd=" + this.f4700e + ", mValid=" + this.f4701f + ", mAssignedFromSavedState=" + this.f4702g + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public int f4713a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f4714b;

        /* renamed from: c, reason: collision with root package name */
        public int f4715c;

        /* renamed from: d, reason: collision with root package name */
        public int f4716d;

        /* renamed from: e, reason: collision with root package name */
        public int f4717e;

        /* renamed from: f, reason: collision with root package name */
        public int f4718f;

        /* renamed from: g, reason: collision with root package name */
        public int f4719g;

        /* renamed from: h, reason: collision with root package name */
        public int f4720h;

        /* renamed from: i, reason: collision with root package name */
        public int f4721i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f4722j;

        public d() {
            this.f4720h = 1;
            this.f4721i = 1;
        }

        public static /* synthetic */ int c(d dVar, int i10) {
            int i11 = dVar.f4717e + i10;
            dVar.f4717e = i11;
            return i11;
        }

        public static /* synthetic */ int d(d dVar, int i10) {
            int i11 = dVar.f4717e - i10;
            dVar.f4717e = i11;
            return i11;
        }

        public static /* synthetic */ int i(d dVar, int i10) {
            int i11 = dVar.f4713a - i10;
            dVar.f4713a = i11;
            return i11;
        }

        public static /* synthetic */ int l(d dVar) {
            int i10 = dVar.f4715c;
            dVar.f4715c = i10 + 1;
            return i10;
        }

        public static /* synthetic */ int m(d dVar) {
            int i10 = dVar.f4715c;
            dVar.f4715c = i10 - 1;
            return i10;
        }

        public static /* synthetic */ int n(d dVar, int i10) {
            int i11 = dVar.f4715c + i10;
            dVar.f4715c = i11;
            return i11;
        }

        public static /* synthetic */ int q(d dVar, int i10) {
            int i11 = dVar.f4718f + i10;
            dVar.f4718f = i11;
            return i11;
        }

        public static /* synthetic */ int u(d dVar, int i10) {
            int i11 = dVar.f4716d + i10;
            dVar.f4716d = i11;
            return i11;
        }

        public static /* synthetic */ int v(d dVar, int i10) {
            int i11 = dVar.f4716d - i10;
            dVar.f4716d = i11;
            return i11;
        }

        public final boolean D(RecyclerView.b0 b0Var, List<v9.c> list) {
            int i10;
            int i11 = this.f4716d;
            return i11 >= 0 && i11 < b0Var.b() && (i10 = this.f4715c) >= 0 && i10 < list.size();
        }

        public String toString() {
            return "LayoutState{mAvailable=" + this.f4713a + ", mFlexLinePosition=" + this.f4715c + ", mPosition=" + this.f4716d + ", mOffset=" + this.f4717e + ", mScrollingOffset=" + this.f4718f + ", mLastScrollDelta=" + this.f4719g + ", mItemDirection=" + this.f4720h + ", mLayoutDirection=" + this.f4721i + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    public static boolean isMeasurementUpToDate(int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (i12 > 0 && i10 != i12) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i10;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i10;
        }
        return true;
    }

    private boolean shouldMeasureChild(View view, int i10, int i11, RecyclerView.q qVar) {
        return (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && isMeasurementUpToDate(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
    }

    public final void A() {
        if (this.f4683n != null) {
            return;
        }
        if (o()) {
            if (this.f4671b == 0) {
                this.f4683n = s.a(this);
                this.f4684o = s.c(this);
                return;
            } else {
                this.f4683n = s.c(this);
                this.f4684o = s.a(this);
                return;
            }
        }
        if (this.f4671b == 0) {
            this.f4683n = s.c(this);
            this.f4684o = s.a(this);
        } else {
            this.f4683n = s.a(this);
            this.f4684o = s.c(this);
        }
    }

    public final int B(RecyclerView.w wVar, RecyclerView.b0 b0Var, d dVar) {
        if (dVar.f4718f != Integer.MIN_VALUE) {
            if (dVar.f4713a < 0) {
                d.q(dVar, dVar.f4713a);
            }
            T(wVar, dVar);
        }
        int i10 = dVar.f4713a;
        int i11 = dVar.f4713a;
        int i12 = 0;
        boolean o10 = o();
        while (true) {
            if ((i11 > 0 || this.f4681l.f4714b) && dVar.D(b0Var, this.f4677h)) {
                v9.c cVar = this.f4677h.get(dVar.f4715c);
                dVar.f4716d = cVar.f14984o;
                i12 += Q(cVar, dVar);
                if (o10 || !this.f4675f) {
                    d.c(dVar, cVar.a() * dVar.f4721i);
                } else {
                    d.d(dVar, cVar.a() * dVar.f4721i);
                }
                i11 -= cVar.a();
            }
        }
        d.i(dVar, i12);
        if (dVar.f4718f != Integer.MIN_VALUE) {
            d.q(dVar, i12);
            if (dVar.f4713a < 0) {
                d.q(dVar, dVar.f4713a);
            }
            T(wVar, dVar);
        }
        return i10 - dVar.f4713a;
    }

    public final View C(int i10) {
        View H = H(0, getChildCount(), i10);
        if (H == null) {
            return null;
        }
        int i11 = this.f4678i.f4727c[getPosition(H)];
        if (i11 == -1) {
            return null;
        }
        return D(H, this.f4677h.get(i11));
    }

    public final View D(View view, v9.c cVar) {
        boolean o10 = o();
        int i10 = cVar.f14977h;
        for (int i11 = 1; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f4675f && !o10) {
                    if (this.f4683n.d(view) >= this.f4683n.d(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.f4683n.g(view) <= this.f4683n.g(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View E(int i10) {
        View H = H(getChildCount() - 1, -1, i10);
        if (H == null) {
            return null;
        }
        return F(H, this.f4677h.get(this.f4678i.f4727c[getPosition(H)]));
    }

    public final View F(View view, v9.c cVar) {
        boolean o10 = o();
        int childCount = (getChildCount() - cVar.f14977h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f4675f && !o10) {
                    if (this.f4683n.g(view) <= this.f4683n.g(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.f4683n.d(view) >= this.f4683n.d(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View G(int i10, int i11, boolean z10) {
        int i12 = i11 > i10 ? 1 : -1;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (P(childAt, z10)) {
                return childAt;
            }
            i10 += i12;
        }
        return null;
    }

    public final View H(int i10, int i11, int i12) {
        int position;
        A();
        ensureLayoutState();
        int m10 = this.f4683n.m();
        int i13 = this.f4683n.i();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i12) {
                if (((RecyclerView.q) childAt.getLayoutParams()).e()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f4683n.g(childAt) >= m10 && this.f4683n.d(childAt) <= i13) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i10 += i14;
        }
        return view != null ? view : view2;
    }

    public final int I(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).bottomMargin;
    }

    public final int J(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).leftMargin;
    }

    public final int K(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).rightMargin;
    }

    public final int L(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.q) view.getLayoutParams())).topMargin;
    }

    public View M(int i10) {
        View view = this.f4691v.get(i10);
        return view != null ? view : this.f4679j.o(i10);
    }

    public final int N(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        A();
        int i11 = 1;
        this.f4681l.f4722j = true;
        boolean z10 = !o() && this.f4675f;
        if (!z10 ? i10 <= 0 : i10 >= 0) {
            i11 = -1;
        }
        int abs = Math.abs(i10);
        h0(i11, abs);
        int B = this.f4681l.f4718f + B(wVar, b0Var, this.f4681l);
        if (B < 0) {
            return 0;
        }
        if (z10) {
            if (abs > B) {
                i10 = (-i11) * B;
            }
        } else if (abs > B) {
            i10 = i11 * B;
        }
        this.f4683n.r(-i10);
        this.f4681l.f4719g = i10;
        return i10;
    }

    public final int O(int i10) {
        int i11;
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        A();
        boolean o10 = o();
        View view = this.f4693x;
        int width = o10 ? view.getWidth() : view.getHeight();
        int width2 = o10 ? getWidth() : getHeight();
        if (getLayoutDirection() == 1) {
            int abs = Math.abs(i10);
            if (i10 >= 0) {
                if (this.f4682m.f4699d + i10 <= 0) {
                    return i10;
                }
                i11 = this.f4682m.f4699d;
            } else {
                i11 = Math.min((width2 + this.f4682m.f4699d) - width, abs);
            }
        } else if (i10 <= 0) {
            if (this.f4682m.f4699d + i10 >= 0) {
                return i10;
            }
            i11 = this.f4682m.f4699d;
        } else {
            return Math.min((width2 - this.f4682m.f4699d) - width, i10);
        }
        return -i11;
    }

    public final boolean P(View view, boolean z10) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int J = J(view);
        int L = L(view);
        int K = K(view);
        int I = I(view);
        return z10 ? (paddingLeft <= J && width >= K) && (paddingTop <= L && height >= I) : (J >= width || K >= paddingLeft) && (L >= height || I >= paddingTop);
    }

    public final int Q(v9.c cVar, d dVar) {
        if (o()) {
            return R(cVar, dVar);
        }
        return S(cVar, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int R(v9.c cVar, d dVar) {
        float f10;
        float f11;
        float f12;
        int b10;
        int i10;
        c cVar2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i11 = dVar.f4717e;
        if (dVar.f4721i == -1) {
            i11 -= cVar.f14976g;
        }
        int i12 = i11;
        int i13 = dVar.f4716d;
        int i14 = this.f4672c;
        int i15 = 1;
        if (i14 != 0) {
            if (i14 == 1) {
                int i16 = cVar.f14974e;
                float f13 = (width - i16) + paddingRight;
                f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f11 = i16 - paddingLeft;
                f10 = f13;
            } else if (i14 == 2) {
                int i17 = cVar.f14974e;
                f10 = paddingLeft + ((width - i17) / 2.0f);
                f11 = (width - paddingRight) - ((width - i17) / 2.0f);
            } else if (i14 == 3) {
                f10 = paddingLeft;
                f12 = (width - cVar.f14974e) / (cVar.f14977h != 1 ? r4 - 1 : 1.0f);
                f11 = width - paddingRight;
            } else if (i14 == 4) {
                int i18 = cVar.f14977h;
                f12 = i18 != 0 ? (width - cVar.f14974e) / i18 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                float f14 = f12 / 2.0f;
                f10 = paddingLeft + f14;
                f11 = (width - paddingRight) - f14;
            } else if (i14 == 5) {
                f12 = cVar.f14977h != 0 ? (width - cVar.f14974e) / (r4 + 1) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f10 = paddingLeft + f12;
                f11 = (width - paddingRight) - f12;
            } else {
                throw new IllegalStateException("Invalid justifyContent is set: " + this.f4672c);
            }
            float f15 = f10 - this.f4682m.f4699d;
            float f16 = f11 - this.f4682m.f4699d;
            float max = Math.max(f12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            int i19 = 0;
            b10 = cVar.b();
            i10 = i13;
            while (i10 < i13 + b10) {
                View M = M(i10);
                if (M != null) {
                    if (dVar.f4721i == i15) {
                        calculateItemDecorationsForChild(M, A);
                        addView(M);
                    } else {
                        calculateItemDecorationsForChild(M, A);
                        addView(M, i19);
                        i19++;
                    }
                    int i20 = i19;
                    com.google.android.flexbox.a aVar = this.f4678i;
                    long j10 = aVar.f4728d[i10];
                    int r10 = aVar.r(j10);
                    int q10 = this.f4678i.q(j10);
                    c cVar3 = (c) M.getLayoutParams();
                    if (shouldMeasureChild(M, r10, q10, cVar3)) {
                        M.measure(r10, q10);
                    }
                    float leftDecorationWidth = f15 + ((ViewGroup.MarginLayoutParams) cVar3).leftMargin + getLeftDecorationWidth(M);
                    float rightDecorationWidth = f16 - (((ViewGroup.MarginLayoutParams) cVar3).rightMargin + getRightDecorationWidth(M));
                    int topDecorationHeight = i12 + getTopDecorationHeight(M);
                    if (this.f4675f) {
                        cVar2 = cVar3;
                        this.f4678i.I(M, cVar, Math.round(rightDecorationWidth) - M.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), topDecorationHeight + M.getMeasuredHeight());
                    } else {
                        cVar2 = cVar3;
                        this.f4678i.I(M, cVar, Math.round(leftDecorationWidth), topDecorationHeight, Math.round(leftDecorationWidth) + M.getMeasuredWidth(), topDecorationHeight + M.getMeasuredHeight());
                    }
                    i19 = i20;
                    f15 = leftDecorationWidth + M.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar2).rightMargin + getRightDecorationWidth(M) + max;
                    f16 = rightDecorationWidth - (((M.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cVar2).leftMargin) + getLeftDecorationWidth(M)) + max);
                }
                i10++;
                i15 = 1;
            }
            d.n(dVar, this.f4681l.f4721i);
            return cVar.a();
        }
        f10 = paddingLeft;
        f11 = width - paddingRight;
        f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f152 = f10 - this.f4682m.f4699d;
        float f162 = f11 - this.f4682m.f4699d;
        float max2 = Math.max(f12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        int i192 = 0;
        b10 = cVar.b();
        i10 = i13;
        while (i10 < i13 + b10) {
        }
        d.n(dVar, this.f4681l.f4721i);
        return cVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int S(v9.c cVar, d dVar) {
        float f10;
        float f11;
        float f12;
        int b10;
        int i10;
        float f13;
        View view;
        int i11;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i12 = dVar.f4717e;
        int i13 = dVar.f4717e;
        if (dVar.f4721i == -1) {
            int i14 = cVar.f14976g;
            i12 -= i14;
            i13 += i14;
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = dVar.f4716d;
        int i18 = this.f4672c;
        if (i18 != 0) {
            if (i18 == 1) {
                int i19 = cVar.f14974e;
                float f14 = (height - i19) + paddingBottom;
                f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f11 = i19 - paddingTop;
                f10 = f14;
            } else if (i18 == 2) {
                int i20 = cVar.f14974e;
                f10 = paddingTop + ((height - i20) / 2.0f);
                f11 = (height - paddingBottom) - ((height - i20) / 2.0f);
            } else if (i18 == 3) {
                f10 = paddingTop;
                f12 = (height - cVar.f14974e) / (cVar.f14977h != 1 ? r4 - 1 : 1.0f);
                f11 = height - paddingBottom;
            } else if (i18 == 4) {
                int i21 = cVar.f14977h;
                f12 = i21 != 0 ? (height - cVar.f14974e) / i21 : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                float f15 = f12 / 2.0f;
                f10 = paddingTop + f15;
                f11 = (height - paddingBottom) - f15;
            } else if (i18 == 5) {
                f12 = cVar.f14977h != 0 ? (height - cVar.f14974e) / (r4 + 1) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f10 = paddingTop + f12;
                f11 = (height - paddingBottom) - f12;
            } else {
                throw new IllegalStateException("Invalid justifyContent is set: " + this.f4672c);
            }
            float f16 = f10 - this.f4682m.f4699d;
            float f17 = f11 - this.f4682m.f4699d;
            float max = Math.max(f12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            int i22 = 0;
            b10 = cVar.b();
            i10 = i17;
            while (i10 < i17 + b10) {
                View M = M(i10);
                if (M == null) {
                    i11 = i10;
                    f13 = max;
                } else {
                    com.google.android.flexbox.a aVar = this.f4678i;
                    f13 = max;
                    long j10 = aVar.f4728d[i10];
                    int r10 = aVar.r(j10);
                    int q10 = this.f4678i.q(j10);
                    if (shouldMeasureChild(M, r10, q10, (c) M.getLayoutParams())) {
                        M.measure(r10, q10);
                    }
                    float topDecorationHeight = f16 + ((ViewGroup.MarginLayoutParams) r13).topMargin + getTopDecorationHeight(M);
                    float bottomDecorationHeight = f17 - (((ViewGroup.MarginLayoutParams) r13).rightMargin + getBottomDecorationHeight(M));
                    if (dVar.f4721i == 1) {
                        calculateItemDecorationsForChild(M, A);
                        addView(M);
                    } else {
                        calculateItemDecorationsForChild(M, A);
                        addView(M, i22);
                        i22++;
                    }
                    int i23 = i22;
                    int leftDecorationWidth = i15 + getLeftDecorationWidth(M);
                    int rightDecorationWidth = i16 - getRightDecorationWidth(M);
                    boolean z10 = this.f4675f;
                    if (z10) {
                        if (this.f4676g) {
                            view = M;
                            i11 = i10;
                            this.f4678i.J(M, cVar, z10, rightDecorationWidth - M.getMeasuredWidth(), Math.round(bottomDecorationHeight) - M.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                        } else {
                            view = M;
                            i11 = i10;
                            this.f4678i.J(view, cVar, z10, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    } else {
                        view = M;
                        i11 = i10;
                        if (this.f4676g) {
                            this.f4678i.J(view, cVar, z10, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), leftDecorationWidth + view.getMeasuredWidth(), Math.round(bottomDecorationHeight));
                        } else {
                            this.f4678i.J(view, cVar, z10, leftDecorationWidth, Math.round(topDecorationHeight), leftDecorationWidth + view.getMeasuredWidth(), Math.round(topDecorationHeight) + view.getMeasuredHeight());
                        }
                    }
                    View view2 = view;
                    f16 = topDecorationHeight + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r13).topMargin + getBottomDecorationHeight(view2) + f13;
                    i22 = i23;
                    f17 = bottomDecorationHeight - (((view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r13).bottomMargin) + getTopDecorationHeight(view2)) + f13);
                }
                i10 = i11 + 1;
                max = f13;
            }
            d.n(dVar, this.f4681l.f4721i);
            return cVar.a();
        }
        f10 = paddingTop;
        f11 = height - paddingBottom;
        f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f162 = f10 - this.f4682m.f4699d;
        float f172 = f11 - this.f4682m.f4699d;
        float max2 = Math.max(f12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        int i222 = 0;
        b10 = cVar.b();
        i10 = i17;
        while (i10 < i17 + b10) {
        }
        d.n(dVar, this.f4681l.f4721i);
        return cVar.a();
    }

    public final void T(RecyclerView.w wVar, d dVar) {
        if (dVar.f4722j) {
            if (dVar.f4721i == -1) {
                U(wVar, dVar);
            } else {
                V(wVar, dVar);
            }
        }
    }

    public final void U(RecyclerView.w wVar, d dVar) {
        int childCount;
        int i10;
        View childAt;
        int i11;
        if (dVar.f4718f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i11 = this.f4678i.f4727c[getPosition(childAt)]) == -1) {
            return;
        }
        v9.c cVar = this.f4677h.get(i11);
        int i12 = i10;
        while (true) {
            if (i12 < 0) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!x(childAt2, dVar.f4718f)) {
                    break;
                }
                if (cVar.f14984o != getPosition(childAt2)) {
                    continue;
                } else if (i11 <= 0) {
                    childCount = i12;
                    break;
                } else {
                    i11 += dVar.f4721i;
                    cVar = this.f4677h.get(i11);
                    childCount = i12;
                }
            }
            i12--;
        }
        recycleChildren(wVar, childCount, i10);
    }

    public final void V(RecyclerView.w wVar, d dVar) {
        int childCount;
        View childAt;
        if (dVar.f4718f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i10 = this.f4678i.f4727c[getPosition(childAt)];
        int i11 = -1;
        if (i10 == -1) {
            return;
        }
        v9.c cVar = this.f4677h.get(i10);
        int i12 = 0;
        while (true) {
            if (i12 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!y(childAt2, dVar.f4718f)) {
                    break;
                }
                if (cVar.f14985p != getPosition(childAt2)) {
                    continue;
                } else if (i10 >= this.f4677h.size() - 1) {
                    i11 = i12;
                    break;
                } else {
                    i10 += dVar.f4721i;
                    cVar = this.f4677h.get(i10);
                    i11 = i12;
                }
            }
            i12++;
        }
        recycleChildren(wVar, 0, i11);
    }

    public final void W() {
        int widthMode;
        if (o()) {
            widthMode = getHeightMode();
        } else {
            widthMode = getWidthMode();
        }
        this.f4681l.f4714b = widthMode == 0 || widthMode == Integer.MIN_VALUE;
    }

    public final void X() {
        int layoutDirection = getLayoutDirection();
        int i10 = this.f4670a;
        if (i10 == 0) {
            this.f4675f = layoutDirection == 1;
            this.f4676g = this.f4671b == 2;
            return;
        }
        if (i10 == 1) {
            this.f4675f = layoutDirection != 1;
            this.f4676g = this.f4671b == 2;
            return;
        }
        if (i10 == 2) {
            boolean z10 = layoutDirection == 1;
            this.f4675f = z10;
            if (this.f4671b == 2) {
                this.f4675f = !z10;
            }
            this.f4676g = false;
            return;
        }
        if (i10 != 3) {
            this.f4675f = false;
            this.f4676g = false;
            return;
        }
        boolean z11 = layoutDirection == 1;
        this.f4675f = z11;
        if (this.f4671b == 2) {
            this.f4675f = !z11;
        }
        this.f4676g = true;
    }

    public void Y(int i10) {
        int i11 = this.f4673d;
        if (i11 != i10) {
            if (i11 == 4 || i10 == 4) {
                removeAllViews();
                z();
            }
            this.f4673d = i10;
            requestLayout();
        }
    }

    public void Z(int i10) {
        if (this.f4670a != i10) {
            removeAllViews();
            this.f4670a = i10;
            this.f4683n = null;
            this.f4684o = null;
            z();
            requestLayout();
        }
    }

    @Override // v9.a
    public int a(View view, int i10, int i11) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (o()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    public void a0(int i10) {
        if (i10 != 2) {
            int i11 = this.f4671b;
            if (i11 != i10) {
                if (i11 == 0 || i10 == 0) {
                    removeAllViews();
                    z();
                }
                this.f4671b = i10;
                this.f4683n = null;
                this.f4684o = null;
                requestLayout();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
    }

    @Override // v9.a
    public List<v9.c> b() {
        return this.f4677h;
    }

    public void b0(int i10) {
        if (this.f4672c != i10) {
            this.f4672c = i10;
            requestLayout();
        }
    }

    @Override // v9.a
    public int c() {
        return this.f4680k.b();
    }

    public final boolean c0(RecyclerView.b0 b0Var, b bVar) {
        View C;
        int m10;
        if (getChildCount() == 0) {
            return false;
        }
        if (bVar.f4700e) {
            C = E(b0Var.b());
        } else {
            C = C(b0Var.b());
        }
        if (C == null) {
            return false;
        }
        bVar.s(C);
        if (!b0Var.e() && supportsPredictiveItemAnimations()) {
            if (this.f4683n.g(C) >= this.f4683n.i() || this.f4683n.d(C) < this.f4683n.m()) {
                if (bVar.f4700e) {
                    m10 = this.f4683n.i();
                } else {
                    m10 = this.f4683n.m();
                }
                bVar.f4698c = m10;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollHorizontally() {
        if (this.f4671b == 0) {
            return o();
        }
        if (o()) {
            int width = getWidth();
            View view = this.f4693x;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean canScrollVertically() {
        if (this.f4671b == 0) {
            return !o();
        }
        if (o()) {
            return true;
        }
        int height = getHeight();
        View view = this.f4693x;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean checkLayoutParams(RecyclerView.q qVar) {
        return qVar instanceof c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    public final int computeScrollExtent(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        int b10 = b0Var.b();
        A();
        View C = C(b10);
        View E = E(b10);
        if (b0Var.b() == 0 || C == null || E == null) {
            return 0;
        }
        return Math.min(this.f4683n.n(), this.f4683n.d(E) - this.f4683n.g(C));
    }

    public final int computeScrollOffset(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        int b10 = b0Var.b();
        View C = C(b10);
        View E = E(b10);
        if (b0Var.b() != 0 && C != null && E != null) {
            int position = getPosition(C);
            int position2 = getPosition(E);
            int abs = Math.abs(this.f4683n.d(E) - this.f4683n.g(C));
            int i10 = this.f4678i.f4727c[position];
            if (i10 != 0 && i10 != -1) {
                return Math.round((i10 * (abs / ((r4[position2] - i10) + 1))) + (this.f4683n.m() - this.f4683n.g(C)));
            }
        }
        return 0;
    }

    public final int computeScrollRange(RecyclerView.b0 b0Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        int b10 = b0Var.b();
        View C = C(b10);
        View E = E(b10);
        if (b0Var.b() == 0 || C == null || E == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f4683n.d(E) - this.f4683n.g(C)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * b0Var.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a0.b
    public PointF computeScrollVectorForPosition(int i10) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i11 = i10 < getPosition(childAt) ? -1 : 1;
        if (o()) {
            return new PointF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i11);
        }
        return new PointF(i11, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollExtent(RecyclerView.b0 b0Var) {
        return computeScrollExtent(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.b0 b0Var) {
        return computeScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.b0 b0Var) {
        return computeScrollRange(b0Var);
    }

    @Override // v9.a
    public int d(int i10, int i11, int i12) {
        return RecyclerView.p.getChildMeasureSpec(getHeight(), getHeightMode(), i11, i12, canScrollVertically());
    }

    public final boolean d0(RecyclerView.b0 b0Var, b bVar, e eVar) {
        int i10;
        View childAt;
        int g10;
        if (!b0Var.e() && (i10 = this.f4686q) != -1) {
            if (i10 >= 0 && i10 < b0Var.b()) {
                bVar.f4696a = this.f4686q;
                bVar.f4697b = this.f4678i.f4727c[bVar.f4696a];
                e eVar2 = this.f4685p;
                if (eVar2 != null && eVar2.j(b0Var.b())) {
                    bVar.f4698c = this.f4683n.m() + eVar.f4724g;
                    bVar.f4702g = true;
                    bVar.f4697b = -1;
                    return true;
                }
                if (this.f4687r == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.f4686q);
                    if (findViewByPosition != null) {
                        if (this.f4683n.e(findViewByPosition) > this.f4683n.n()) {
                            bVar.r();
                            return true;
                        }
                        if (this.f4683n.g(findViewByPosition) - this.f4683n.m() < 0) {
                            bVar.f4698c = this.f4683n.m();
                            bVar.f4700e = false;
                            return true;
                        }
                        if (this.f4683n.i() - this.f4683n.d(findViewByPosition) < 0) {
                            bVar.f4698c = this.f4683n.i();
                            bVar.f4700e = true;
                            return true;
                        }
                        if (bVar.f4700e) {
                            g10 = this.f4683n.d(findViewByPosition) + this.f4683n.o();
                        } else {
                            g10 = this.f4683n.g(findViewByPosition);
                        }
                        bVar.f4698c = g10;
                    } else {
                        if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                            bVar.f4700e = this.f4686q < getPosition(childAt);
                        }
                        bVar.r();
                    }
                    return true;
                }
                if (o() || !this.f4675f) {
                    bVar.f4698c = this.f4683n.m() + this.f4687r;
                } else {
                    bVar.f4698c = this.f4687r - this.f4683n.j();
                }
                return true;
            }
            this.f4686q = -1;
            this.f4687r = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // v9.a
    public int e() {
        return this.f4670a;
    }

    public final void e0(RecyclerView.b0 b0Var, b bVar) {
        if (d0(b0Var, bVar, this.f4685p) || c0(b0Var, bVar)) {
            return;
        }
        bVar.r();
        bVar.f4696a = 0;
        bVar.f4697b = 0;
    }

    public final void ensureLayoutState() {
        if (this.f4681l == null) {
            this.f4681l = new d();
        }
    }

    @Override // v9.a
    public int f() {
        return this.f4674e;
    }

    public final void f0(int i10) {
        if (i10 >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f4678i.m(childCount);
        this.f4678i.n(childCount);
        this.f4678i.l(childCount);
        if (i10 >= this.f4678i.f4727c.length) {
            return;
        }
        this.f4694y = i10;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.f4686q = getPosition(childClosestToStart);
        if (!o() && this.f4675f) {
            this.f4687r = this.f4683n.d(childClosestToStart) + this.f4683n.j();
        } else {
            this.f4687r = this.f4683n.g(childClosestToStart) - this.f4683n.m();
        }
    }

    public int findFirstVisibleItemPosition() {
        View G = G(0, getChildCount(), false);
        if (G == null) {
            return -1;
        }
        return getPosition(G);
    }

    public int findLastVisibleItemPosition() {
        View G = G(getChildCount() - 1, -1, false);
        if (G == null) {
            return -1;
        }
        return getPosition(G);
    }

    public final int fixLayoutEndGap(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int i11;
        int i12;
        if (!o() && this.f4675f) {
            int m10 = i10 - this.f4683n.m();
            if (m10 <= 0) {
                return 0;
            }
            i11 = N(m10, wVar, b0Var);
        } else {
            int i13 = this.f4683n.i() - i10;
            if (i13 <= 0) {
                return 0;
            }
            i11 = -N(-i13, wVar, b0Var);
        }
        int i14 = i10 + i11;
        if (!z10 || (i12 = this.f4683n.i() - i14) <= 0) {
            return i11;
        }
        this.f4683n.r(i12);
        return i12 + i11;
    }

    public final int fixLayoutStartGap(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10) {
        int i11;
        int m10;
        if (!o() && this.f4675f) {
            int i12 = this.f4683n.i() - i10;
            if (i12 <= 0) {
                return 0;
            }
            i11 = N(-i12, wVar, b0Var);
        } else {
            int m11 = i10 - this.f4683n.m();
            if (m11 <= 0) {
                return 0;
            }
            i11 = -N(m11, wVar, b0Var);
        }
        int i13 = i10 + i11;
        if (!z10 || (m10 = i13 - this.f4683n.m()) <= 0) {
            return i11;
        }
        this.f4683n.r(-m10);
        return i11 - m10;
    }

    @Override // v9.a
    public int g() {
        if (this.f4677h.size() == 0) {
            return 0;
        }
        int i10 = Integer.MIN_VALUE;
        int size = this.f4677h.size();
        for (int i11 = 0; i11 < size; i11++) {
            i10 = Math.max(i10, this.f4677h.get(i11).f14974e);
        }
        return i10;
    }

    public final void g0(int i10) {
        boolean z10;
        int i11;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        if (o()) {
            int i12 = this.f4688s;
            z10 = (i12 == Integer.MIN_VALUE || i12 == width) ? false : true;
            i11 = this.f4681l.f4714b ? this.f4692w.getResources().getDisplayMetrics().heightPixels : this.f4681l.f4713a;
        } else {
            int i13 = this.f4689t;
            z10 = (i13 == Integer.MIN_VALUE || i13 == height) ? false : true;
            if (!this.f4681l.f4714b) {
                i11 = this.f4681l.f4713a;
            } else {
                i11 = this.f4692w.getResources().getDisplayMetrics().widthPixels;
            }
        }
        int i14 = i11;
        this.f4688s = width;
        this.f4689t = height;
        int i15 = this.f4694y;
        if (i15 != -1 || (this.f4686q == -1 && !z10)) {
            int min = i15 != -1 ? Math.min(i15, this.f4682m.f4696a) : this.f4682m.f4696a;
            this.f4695z.a();
            if (o()) {
                if (this.f4677h.size() > 0) {
                    this.f4678i.h(this.f4677h, min);
                    this.f4678i.b(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i14, min, this.f4682m.f4696a, this.f4677h);
                } else {
                    this.f4678i.l(i10);
                    this.f4678i.c(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i14, 0, this.f4677h);
                }
            } else if (this.f4677h.size() > 0) {
                this.f4678i.h(this.f4677h, min);
                this.f4678i.b(this.f4695z, makeMeasureSpec2, makeMeasureSpec, i14, min, this.f4682m.f4696a, this.f4677h);
            } else {
                this.f4678i.l(i10);
                this.f4678i.e(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i14, 0, this.f4677h);
            }
            this.f4677h = this.f4695z.f4730a;
            this.f4678i.j(makeMeasureSpec, makeMeasureSpec2, min);
            this.f4678i.P(min);
            return;
        }
        if (this.f4682m.f4700e) {
            return;
        }
        this.f4677h.clear();
        this.f4695z.a();
        if (o()) {
            this.f4678i.d(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i14, this.f4682m.f4696a, this.f4677h);
        } else {
            this.f4678i.f(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i14, this.f4682m.f4696a, this.f4677h);
        }
        this.f4677h = this.f4695z.f4730a;
        this.f4678i.i(makeMeasureSpec, makeMeasureSpec2);
        this.f4678i.O();
        b bVar = this.f4682m;
        bVar.f4697b = this.f4678i.f4727c[bVar.f4696a];
        this.f4681l.f4715c = this.f4682m.f4697b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        return new c(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new c(context, attributeSet);
    }

    public final View getChildClosestToStart() {
        return getChildAt(0);
    }

    @Override // v9.a
    public void h(View view, int i10, int i11, v9.c cVar) {
        calculateItemDecorationsForChild(view, A);
        if (o()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            cVar.f14974e += leftDecorationWidth;
            cVar.f14975f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            cVar.f14974e += topDecorationHeight;
            cVar.f14975f += topDecorationHeight;
        }
    }

    public final void h0(int i10, int i11) {
        this.f4681l.f4721i = i10;
        boolean o10 = o();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z10 = !o10 && this.f4675f;
        if (i10 == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f4681l.f4717e = this.f4683n.d(childAt);
            int position = getPosition(childAt);
            View F = F(childAt, this.f4677h.get(this.f4678i.f4727c[position]));
            this.f4681l.f4720h = 1;
            d dVar = this.f4681l;
            dVar.f4716d = position + dVar.f4720h;
            if (this.f4678i.f4727c.length <= this.f4681l.f4716d) {
                this.f4681l.f4715c = -1;
            } else {
                d dVar2 = this.f4681l;
                dVar2.f4715c = this.f4678i.f4727c[dVar2.f4716d];
            }
            if (z10) {
                this.f4681l.f4717e = this.f4683n.g(F);
                this.f4681l.f4718f = (-this.f4683n.g(F)) + this.f4683n.m();
                d dVar3 = this.f4681l;
                dVar3.f4718f = Math.max(dVar3.f4718f, 0);
            } else {
                this.f4681l.f4717e = this.f4683n.d(F);
                this.f4681l.f4718f = this.f4683n.d(F) - this.f4683n.i();
            }
            if ((this.f4681l.f4715c == -1 || this.f4681l.f4715c > this.f4677h.size() - 1) && this.f4681l.f4716d <= c()) {
                int i12 = i11 - this.f4681l.f4718f;
                this.f4695z.a();
                if (i12 > 0) {
                    if (o10) {
                        this.f4678i.c(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i12, this.f4681l.f4716d, this.f4677h);
                    } else {
                        this.f4678i.e(this.f4695z, makeMeasureSpec, makeMeasureSpec2, i12, this.f4681l.f4716d, this.f4677h);
                    }
                    this.f4678i.j(makeMeasureSpec, makeMeasureSpec2, this.f4681l.f4716d);
                    this.f4678i.P(this.f4681l.f4716d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f4681l.f4717e = this.f4683n.g(childAt2);
            int position2 = getPosition(childAt2);
            View D = D(childAt2, this.f4677h.get(this.f4678i.f4727c[position2]));
            this.f4681l.f4720h = 1;
            int i13 = this.f4678i.f4727c[position2];
            if (i13 == -1) {
                i13 = 0;
            }
            if (i13 <= 0) {
                this.f4681l.f4716d = -1;
            } else {
                this.f4681l.f4716d = position2 - this.f4677h.get(i13 - 1).b();
            }
            this.f4681l.f4715c = i13 > 0 ? i13 - 1 : 0;
            if (z10) {
                this.f4681l.f4717e = this.f4683n.d(D);
                this.f4681l.f4718f = this.f4683n.d(D) - this.f4683n.i();
                d dVar4 = this.f4681l;
                dVar4.f4718f = Math.max(dVar4.f4718f, 0);
            } else {
                this.f4681l.f4717e = this.f4683n.g(D);
                this.f4681l.f4718f = (-this.f4683n.g(D)) + this.f4683n.m();
            }
        }
        d dVar5 = this.f4681l;
        dVar5.f4713a = i11 - dVar5.f4718f;
    }

    @Override // v9.a
    public int i() {
        return this.f4671b;
    }

    public final void i0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            W();
        } else {
            this.f4681l.f4714b = false;
        }
        if (!o() && this.f4675f) {
            this.f4681l.f4713a = bVar.f4698c - getPaddingRight();
        } else {
            this.f4681l.f4713a = this.f4683n.i() - bVar.f4698c;
        }
        this.f4681l.f4716d = bVar.f4696a;
        this.f4681l.f4720h = 1;
        this.f4681l.f4721i = 1;
        this.f4681l.f4717e = bVar.f4698c;
        this.f4681l.f4718f = Integer.MIN_VALUE;
        this.f4681l.f4715c = bVar.f4697b;
        if (!z10 || this.f4677h.size() <= 1 || bVar.f4697b < 0 || bVar.f4697b >= this.f4677h.size() - 1) {
            return;
        }
        v9.c cVar = this.f4677h.get(bVar.f4697b);
        d.l(this.f4681l);
        d.u(this.f4681l, cVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // v9.a
    public void j(v9.c cVar) {
    }

    public final void j0(b bVar, boolean z10, boolean z11) {
        if (z11) {
            W();
        } else {
            this.f4681l.f4714b = false;
        }
        if (!o() && this.f4675f) {
            this.f4681l.f4713a = (this.f4693x.getWidth() - bVar.f4698c) - this.f4683n.m();
        } else {
            this.f4681l.f4713a = bVar.f4698c - this.f4683n.m();
        }
        this.f4681l.f4716d = bVar.f4696a;
        this.f4681l.f4720h = 1;
        this.f4681l.f4721i = -1;
        this.f4681l.f4717e = bVar.f4698c;
        this.f4681l.f4718f = Integer.MIN_VALUE;
        this.f4681l.f4715c = bVar.f4697b;
        if (!z10 || bVar.f4697b <= 0 || this.f4677h.size() <= bVar.f4697b) {
            return;
        }
        v9.c cVar = this.f4677h.get(bVar.f4697b);
        d.m(this.f4681l);
        d.v(this.f4681l, cVar.b());
    }

    @Override // v9.a
    public View k(int i10) {
        return M(i10);
    }

    @Override // v9.a
    public int l(int i10, int i11, int i12) {
        return RecyclerView.p.getChildMeasureSpec(getWidth(), getWidthMode(), i11, i12, canScrollHorizontally());
    }

    @Override // v9.a
    public int m() {
        return this.f4673d;
    }

    @Override // v9.a
    public void n(int i10, View view) {
        this.f4691v.put(i10, view);
    }

    @Override // v9.a
    public boolean o() {
        int i10 = this.f4670a;
        return i10 == 0 || i10 == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onAdapterChanged(RecyclerView.h hVar, RecyclerView.h hVar2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f4693x = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.w wVar) {
        super.onDetachedFromWindow(recyclerView, wVar);
        if (this.f4690u) {
            removeAndRecycleAllViews(wVar);
            wVar.c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        f0(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        super.onItemsMoved(recyclerView, i10, i11, i12);
        f0(Math.min(i10, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        f0(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        super.onItemsUpdated(recyclerView, i10, i11, obj);
        f0(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int i10;
        int i11;
        this.f4679j = wVar;
        this.f4680k = b0Var;
        int b10 = b0Var.b();
        if (b10 == 0 && b0Var.e()) {
            return;
        }
        X();
        A();
        ensureLayoutState();
        this.f4678i.m(b10);
        this.f4678i.n(b10);
        this.f4678i.l(b10);
        this.f4681l.f4722j = false;
        e eVar = this.f4685p;
        if (eVar != null && eVar.j(b10)) {
            this.f4686q = this.f4685p.f4723f;
        }
        if (!this.f4682m.f4701f || this.f4686q != -1 || this.f4685p != null) {
            this.f4682m.t();
            e0(b0Var, this.f4682m);
            this.f4682m.f4701f = true;
        }
        detachAndScrapAttachedViews(wVar);
        if (this.f4682m.f4700e) {
            j0(this.f4682m, false, true);
        } else {
            i0(this.f4682m, false, true);
        }
        g0(b10);
        B(wVar, b0Var, this.f4681l);
        if (this.f4682m.f4700e) {
            i11 = this.f4681l.f4717e;
            i0(this.f4682m, true, false);
            B(wVar, b0Var, this.f4681l);
            i10 = this.f4681l.f4717e;
        } else {
            i10 = this.f4681l.f4717e;
            j0(this.f4682m, true, false);
            B(wVar, b0Var, this.f4681l);
            i11 = this.f4681l.f4717e;
        }
        if (getChildCount() > 0) {
            if (this.f4682m.f4700e) {
                fixLayoutStartGap(i11 + fixLayoutEndGap(i10, wVar, b0Var, true), wVar, b0Var, false);
            } else {
                fixLayoutEndGap(i10 + fixLayoutStartGap(i11, wVar, b0Var, true), wVar, b0Var, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.b0 b0Var) {
        super.onLayoutCompleted(b0Var);
        this.f4685p = null;
        this.f4686q = -1;
        this.f4687r = Integer.MIN_VALUE;
        this.f4694y = -1;
        this.f4682m.t();
        this.f4691v.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof e) {
            this.f4685p = (e) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public Parcelable onSaveInstanceState() {
        if (this.f4685p != null) {
            return new e(this.f4685p);
        }
        e eVar = new e();
        if (getChildCount() <= 0) {
            eVar.l();
        } else {
            View childClosestToStart = getChildClosestToStart();
            eVar.f4723f = getPosition(childClosestToStart);
            eVar.f4724g = this.f4683n.g(childClosestToStart) - this.f4683n.m();
        }
        return eVar;
    }

    @Override // v9.a
    public int p(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (o()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    public final void recycleChildren(RecyclerView.w wVar, int i10, int i11) {
        while (i11 >= i10) {
            removeAndRecycleViewAt(i11, wVar);
            i11--;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (o() && this.f4671b != 0) {
            int O = O(i10);
            b.l(this.f4682m, O);
            this.f4684o.r(-O);
            return O;
        }
        int N = N(i10, wVar, b0Var);
        this.f4691v.clear();
        return N;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void scrollToPosition(int i10) {
        this.f4686q = i10;
        this.f4687r = Integer.MIN_VALUE;
        e eVar = this.f4685p;
        if (eVar != null) {
            eVar.l();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (!o() && (this.f4671b != 0 || o())) {
            int O = O(i10);
            b.l(this.f4682m, O);
            this.f4684o.r(-O);
            return O;
        }
        int N = N(i10, wVar, b0Var);
        this.f4691v.clear();
        return N;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i10) {
        n nVar = new n(recyclerView.getContext());
        nVar.setTargetPosition(i10);
        startSmoothScroll(nVar);
    }

    public final boolean x(View view, int i10) {
        return (o() || !this.f4675f) ? this.f4683n.g(view) >= this.f4683n.h() - i10 : this.f4683n.d(view) <= i10;
    }

    public final boolean y(View view, int i10) {
        return (o() || !this.f4675f) ? this.f4683n.d(view) <= i10 : this.f4683n.h() - this.f4683n.g(view) <= i10;
    }

    public final void z() {
        this.f4677h.clear();
        this.f4682m.t();
        this.f4682m.f4699d = 0;
    }

    /* loaded from: classes.dex */
    public static class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f4723f;

        /* renamed from: g, reason: collision with root package name */
        public int f4724g;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<e> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public e[] newArray(int i10) {
                return new e[i10];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final boolean j(int i10) {
            int i11 = this.f4723f;
            return i11 >= 0 && i11 < i10;
        }

        public final void l() {
            this.f4723f = -1;
        }

        public String toString() {
            return "SavedState{mAnchorPosition=" + this.f4723f + ", mAnchorOffset=" + this.f4724g + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f4723f);
            parcel.writeInt(this.f4724g);
        }

        public e() {
        }

        public e(Parcel parcel) {
            this.f4723f = parcel.readInt();
            this.f4724g = parcel.readInt();
        }

        public e(e eVar) {
            this.f4723f = eVar.f4723f;
            this.f4724g = eVar.f4724g;
        }
    }

    public FlexboxLayoutManager(Context context, int i10, int i11) {
        this.f4674e = -1;
        this.f4677h = new ArrayList();
        this.f4678i = new com.google.android.flexbox.a(this);
        this.f4682m = new b();
        this.f4686q = -1;
        this.f4687r = Integer.MIN_VALUE;
        this.f4688s = Integer.MIN_VALUE;
        this.f4689t = Integer.MIN_VALUE;
        this.f4691v = new SparseArray<>();
        this.f4694y = -1;
        this.f4695z = new a.C0088a();
        Z(i10);
        a0(i11);
        Y(4);
        this.f4692w = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsUpdated(recyclerView, i10, i11);
        f0(i10);
    }

    /* loaded from: classes.dex */
    public static class c extends RecyclerView.q implements v9.b {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: j, reason: collision with root package name */
        public float f4704j;

        /* renamed from: k, reason: collision with root package name */
        public float f4705k;

        /* renamed from: l, reason: collision with root package name */
        public int f4706l;

        /* renamed from: m, reason: collision with root package name */
        public float f4707m;

        /* renamed from: n, reason: collision with root package name */
        public int f4708n;

        /* renamed from: o, reason: collision with root package name */
        public int f4709o;

        /* renamed from: p, reason: collision with root package name */
        public int f4710p;

        /* renamed from: q, reason: collision with root package name */
        public int f4711q;

        /* renamed from: r, reason: collision with root package name */
        public boolean f4712r;

        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4704j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f4705k = 1.0f;
            this.f4706l = -1;
            this.f4707m = -1.0f;
            this.f4710p = 16777215;
            this.f4711q = 16777215;
        }

        @Override // v9.b
        public int F() {
            return this.f4709o;
        }

        @Override // v9.b
        public int G() {
            return this.f4708n;
        }

        @Override // v9.b
        public boolean L() {
            return this.f4712r;
        }

        @Override // v9.b
        public int N() {
            return this.f4711q;
        }

        @Override // v9.b
        public void R(int i10) {
            this.f4708n = i10;
        }

        @Override // v9.b
        public int U() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // v9.b
        public int V() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // v9.b
        public int a0() {
            return this.f4710p;
        }

        @Override // v9.b
        public void b(int i10) {
            this.f4709o = i10;
        }

        @Override // v9.b
        public float d() {
            return this.f4704j;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // v9.b
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // v9.b
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // v9.b
        public float h() {
            return this.f4707m;
        }

        @Override // v9.b
        public int h0() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // v9.b
        public int k() {
            return this.f4706l;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeFloat(this.f4704j);
            parcel.writeFloat(this.f4705k);
            parcel.writeInt(this.f4706l);
            parcel.writeFloat(this.f4707m);
            parcel.writeInt(this.f4708n);
            parcel.writeInt(this.f4709o);
            parcel.writeInt(this.f4710p);
            parcel.writeInt(this.f4711q);
            parcel.writeByte(this.f4712r ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        @Override // v9.b
        public float x() {
            return this.f4705k;
        }

        @Override // v9.b
        public int z() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f4704j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f4705k = 1.0f;
            this.f4706l = -1;
            this.f4707m = -1.0f;
            this.f4710p = 16777215;
            this.f4711q = 16777215;
        }

        public c(Parcel parcel) {
            super(-2, -2);
            this.f4704j = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f4705k = 1.0f;
            this.f4706l = -1;
            this.f4707m = -1.0f;
            this.f4710p = 16777215;
            this.f4711q = 16777215;
            this.f4704j = parcel.readFloat();
            this.f4705k = parcel.readFloat();
            this.f4706l = parcel.readInt();
            this.f4707m = parcel.readFloat();
            this.f4708n = parcel.readInt();
            this.f4709o = parcel.readInt();
            this.f4710p = parcel.readInt();
            this.f4711q = parcel.readInt();
            this.f4712r = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f4674e = -1;
        this.f4677h = new ArrayList();
        this.f4678i = new com.google.android.flexbox.a(this);
        this.f4682m = new b();
        this.f4686q = -1;
        this.f4687r = Integer.MIN_VALUE;
        this.f4688s = Integer.MIN_VALUE;
        this.f4689t = Integer.MIN_VALUE;
        this.f4691v = new SparseArray<>();
        this.f4694y = -1;
        this.f4695z = new a.C0088a();
        RecyclerView.p.d properties = RecyclerView.p.getProperties(context, attributeSet, i10, i11);
        int i12 = properties.f2773a;
        if (i12 != 0) {
            if (i12 == 1) {
                if (properties.f2775c) {
                    Z(3);
                } else {
                    Z(2);
                }
            }
        } else if (properties.f2775c) {
            Z(1);
        } else {
            Z(0);
        }
        a0(1);
        Y(4);
        this.f4692w = context;
    }
}

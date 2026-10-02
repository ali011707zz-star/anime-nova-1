package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Arrays;
import org.apache.http.impl.auth.NTLMEngineImpl;
import r0.c;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2679a;

    /* renamed from: b, reason: collision with root package name */
    public int f2680b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f2681c;

    /* renamed from: d, reason: collision with root package name */
    public View[] f2682d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseIntArray f2683e;

    /* renamed from: f, reason: collision with root package name */
    public final SparseIntArray f2684f;

    /* renamed from: g, reason: collision with root package name */
    public c f2685g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f2686h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2687i;

    /* loaded from: classes.dex */
    public static final class a extends c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int e(int i10, int i11) {
            return i10 % i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i10) {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final SparseIntArray f2690a = new SparseIntArray();

        /* renamed from: b, reason: collision with root package name */
        public final SparseIntArray f2691b = new SparseIntArray();

        /* renamed from: c, reason: collision with root package name */
        public boolean f2692c = false;

        /* renamed from: d, reason: collision with root package name */
        public boolean f2693d = false;

        public static int a(SparseIntArray sparseIntArray, int i10) {
            int size = sparseIntArray.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) >>> 1;
                if (sparseIntArray.keyAt(i12) < i10) {
                    i11 = i12 + 1;
                } else {
                    size = i12 - 1;
                }
            }
            int i13 = i11 - 1;
            if (i13 < 0 || i13 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i13);
        }

        public int b(int i10, int i11) {
            if (!this.f2693d) {
                return d(i10, i11);
            }
            int i12 = this.f2691b.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int d10 = d(i10, i11);
            this.f2691b.put(i10, d10);
            return d10;
        }

        public int c(int i10, int i11) {
            if (!this.f2692c) {
                return e(i10, i11);
            }
            int i12 = this.f2690a.get(i10, -1);
            if (i12 != -1) {
                return i12;
            }
            int e10 = e(i10, i11);
            this.f2690a.put(i10, e10);
            return e10;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int d(int i10, int i11) {
            int i12;
            int i13;
            int a10;
            if (this.f2693d && (a10 = a(this.f2691b, i10)) != -1) {
                int i14 = this.f2691b.get(a10);
                i12 = a10 + 1;
                i13 = c(a10, i11) + f(a10);
                i14 = i13 == i11 ? i14 + 1 : 0;
                int f10 = f(i10);
                while (i12 < i10) {
                    int f11 = f(i12);
                    i13 += f11;
                    if (i13 == i11) {
                        i14++;
                        i13 = 0;
                    } else if (i13 > i11) {
                        i14++;
                        i13 = f11;
                    }
                    i12++;
                }
                return i13 + f10 <= i11 ? i14 + 1 : i14;
            }
            i12 = 0;
            i13 = 0;
            int f102 = f(i10);
            while (i12 < i10) {
            }
            if (i13 + f102 <= i11) {
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:10:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:10:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:10:0x0030). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int e(int i10, int i11) {
            int i12;
            int i13;
            int f10 = f(i10);
            if (f10 == i11) {
                return 0;
            }
            if (!this.f2692c || (i12 = a(this.f2690a, i10)) < 0) {
                i12 = 0;
                i13 = 0;
                if (i12 >= i10) {
                    int f11 = f(i12);
                    i13 += f11;
                    if (i13 == i11) {
                        i13 = 0;
                    } else if (i13 > i11) {
                        i13 = f11;
                    }
                    i12++;
                    if (i12 >= i10) {
                        if (f10 + i13 <= i11) {
                            return i13;
                        }
                        return 0;
                    }
                }
            } else {
                i13 = this.f2690a.get(i12) + f(i12);
                i12++;
                if (i12 >= i10) {
                }
            }
        }

        public abstract int f(int i10);

        public void g() {
            this.f2691b.clear();
        }

        public void h() {
            this.f2690a.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2679a = false;
        this.f2680b = -1;
        this.f2683e = new SparseIntArray();
        this.f2684f = new SparseIntArray();
        this.f2685g = new a();
        this.f2686h = new Rect();
        I(RecyclerView.p.getProperties(context, attributeSet, i10, i11).f2774b);
    }

    public static int[] t(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    public int A() {
        return this.f2680b;
    }

    public final int B(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.f2685g.b(i10, this.f2680b);
        }
        int f10 = wVar.f(i10);
        if (f10 == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot find span size for pre layout position. ");
            sb2.append(i10);
            return 0;
        }
        return this.f2685g.b(f10, this.f2680b);
    }

    public final int C(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.f2685g.c(i10, this.f2680b);
        }
        int i11 = this.f2684f.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int f10 = wVar.f(i10);
        if (f10 == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
            sb2.append(i10);
            return 0;
        }
        return this.f2685g.c(f10, this.f2680b);
    }

    public final int D(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10) {
        if (!b0Var.e()) {
            return this.f2685g.f(i10);
        }
        int i11 = this.f2683e.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int f10 = wVar.f(i10);
        if (f10 == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:");
            sb2.append(i10);
            return 1;
        }
        return this.f2685g.f(f10);
    }

    public c E() {
        return this.f2685g;
    }

    public final void F(float f10, int i10) {
        s(Math.max(Math.round(f10 * this.f2680b), i10));
    }

    public final void G(View view, int i10, boolean z10) {
        int i11;
        int i12;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f2778g;
        int i13 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar).topMargin + ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
        int i14 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar).leftMargin + ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
        int z11 = z(bVar.f2688j, bVar.f2689k);
        if (this.mOrientation == 1) {
            i12 = RecyclerView.p.getChildMeasureSpec(z11, i10, i14, ((ViewGroup.MarginLayoutParams) bVar).width, false);
            i11 = RecyclerView.p.getChildMeasureSpec(this.mOrientationHelper.n(), getHeightMode(), i13, ((ViewGroup.MarginLayoutParams) bVar).height, true);
        } else {
            int childMeasureSpec = RecyclerView.p.getChildMeasureSpec(z11, i10, i13, ((ViewGroup.MarginLayoutParams) bVar).height, false);
            int childMeasureSpec2 = RecyclerView.p.getChildMeasureSpec(this.mOrientationHelper.n(), getWidthMode(), i14, ((ViewGroup.MarginLayoutParams) bVar).width, true);
            i11 = childMeasureSpec;
            i12 = childMeasureSpec2;
        }
        H(view, i12, i11, z10);
    }

    public final void H(View view, int i10, int i11, boolean z10) {
        boolean shouldMeasureChild;
        RecyclerView.q qVar = (RecyclerView.q) view.getLayoutParams();
        if (z10) {
            shouldMeasureChild = shouldReMeasureChild(view, i10, i11, qVar);
        } else {
            shouldMeasureChild = shouldMeasureChild(view, i10, i11, qVar);
        }
        if (shouldMeasureChild) {
            view.measure(i10, i11);
        }
    }

    public void I(int i10) {
        if (i10 == this.f2680b) {
            return;
        }
        this.f2679a = true;
        if (i10 >= 1) {
            this.f2680b = i10;
            this.f2685g.h();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i10);
        }
    }

    public void J(c cVar) {
        this.f2685g = cVar;
    }

    public final void K() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        s(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean checkLayoutParams(RecyclerView.q qVar) {
        return qVar instanceof b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void collectPrefetchPositionsForLayoutState(RecyclerView.b0 b0Var, LinearLayoutManager.c cVar, RecyclerView.p.c cVar2) {
        int i10 = this.f2680b;
        for (int i11 = 0; i11 < this.f2680b && cVar.c(b0Var) && i10 > 0; i11++) {
            int i12 = cVar.f2706d;
            cVar2.a(i12, Math.max(0, cVar.f2709g));
            i10 -= this.f2685g.f(i12);
            cVar.f2706d += cVar.f2707e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollOffset(RecyclerView.b0 b0Var) {
        if (this.f2687i) {
            return v(b0Var);
        }
        return super.computeHorizontalScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeHorizontalScrollRange(RecyclerView.b0 b0Var) {
        if (this.f2687i) {
            return w(b0Var);
        }
        return super.computeHorizontalScrollRange(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollOffset(RecyclerView.b0 b0Var) {
        if (this.f2687i) {
            return v(b0Var);
        }
        return super.computeVerticalScrollOffset(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int computeVerticalScrollRange(RecyclerView.b0 b0Var) {
        if (this.f2687i) {
            return w(b0Var);
        }
        return super.computeVerticalScrollRange(b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View findReferenceChild(RecyclerView.w wVar, RecyclerView.b0 b0Var, boolean z10, boolean z11) {
        int i10;
        int childCount = getChildCount();
        int i11 = -1;
        int i12 = 1;
        if (z11) {
            i10 = getChildCount() - 1;
            i12 = -1;
        } else {
            i11 = childCount;
            i10 = 0;
        }
        int b10 = b0Var.b();
        ensureLayoutState();
        int m10 = this.mOrientationHelper.m();
        int i13 = this.mOrientationHelper.i();
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            int position = getPosition(childAt);
            if (position >= 0 && position < b10 && C(wVar, b0Var, position) == 0) {
                if (((RecyclerView.q) childAt.getLayoutParams()).e()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.g(childAt) < i13 && this.mOrientationHelper.d(childAt) >= m10) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i10 += i12;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int getColumnCountForAccessibility(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.mOrientation == 1) {
            return this.f2680b;
        }
        if (b0Var.b() < 1) {
            return 0;
        }
        return B(wVar, b0Var, b0Var.b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int getRowCountForAccessibility(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (this.mOrientation == 0) {
            return this.f2680b;
        }
        if (b0Var.b() < 1) {
            return 0;
        }
        return B(wVar, b0Var, b0Var.b() - 1) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        r21.f2700b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutChunk(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int f10;
        int childMeasureSpec;
        int i17;
        View d10;
        int l10 = this.mOrientationHelper.l();
        int r52 = 0;
        boolean z10 = l10 != 1073741824;
        int i18 = getChildCount() > 0 ? this.f2681c[this.f2680b] : 0;
        if (z10) {
            K();
        }
        boolean z11 = cVar.f2707e == 1;
        int i19 = this.f2680b;
        if (!z11) {
            i19 = C(wVar, b0Var, cVar.f2706d) + D(wVar, b0Var, cVar.f2706d);
        }
        int i20 = 0;
        while (i20 < this.f2680b && cVar.c(b0Var) && i19 > 0) {
            int i21 = cVar.f2706d;
            int D = D(wVar, b0Var, i21);
            if (D > this.f2680b) {
                throw new IllegalArgumentException("Item at position " + i21 + " requires " + D + " spans but GridLayoutManager has only " + this.f2680b + " spans.");
            }
            i19 -= D;
            if (i19 < 0 || (d10 = cVar.d(wVar)) == null) {
                break;
            }
            this.f2682d[i20] = d10;
            i20++;
        }
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        q(wVar, b0Var, i20, z11);
        int i22 = 0;
        int i23 = 0;
        while (i22 < i20) {
            View view = this.f2682d[i22];
            if (cVar.f2714l == null) {
                if (z11) {
                    addView(view);
                } else {
                    addView(view, r52);
                }
            } else if (z11) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, r52);
            }
            calculateItemDecorationsForChild(view, this.f2686h);
            G(view, l10, r52);
            int e10 = this.mOrientationHelper.e(view);
            if (e10 > i23) {
                i23 = e10;
            }
            float f12 = (this.mOrientationHelper.f(view) * 1.0f) / ((b) view.getLayoutParams()).f2689k;
            if (f12 > f11) {
                f11 = f12;
            }
            i22++;
            r52 = 0;
        }
        if (z10) {
            F(f11, i18);
            i23 = 0;
            for (int i24 = 0; i24 < i20; i24++) {
                View view2 = this.f2682d[i24];
                G(view2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH, true);
                int e11 = this.mOrientationHelper.e(view2);
                if (e11 > i23) {
                    i23 = e11;
                }
            }
        }
        for (int i25 = 0; i25 < i20; i25++) {
            View view3 = this.f2682d[i25];
            if (this.mOrientationHelper.e(view3) != i23) {
                b bVar2 = (b) view3.getLayoutParams();
                Rect rect = bVar2.f2778g;
                int i26 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) bVar2).topMargin + ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin;
                int i27 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) bVar2).leftMargin + ((ViewGroup.MarginLayoutParams) bVar2).rightMargin;
                int z12 = z(bVar2.f2688j, bVar2.f2689k);
                if (this.mOrientation == 1) {
                    i17 = RecyclerView.p.getChildMeasureSpec(z12, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH, i27, ((ViewGroup.MarginLayoutParams) bVar2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i23 - i26, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i23 - i27, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                    childMeasureSpec = RecyclerView.p.getChildMeasureSpec(z12, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH, i26, ((ViewGroup.MarginLayoutParams) bVar2).height, false);
                    i17 = makeMeasureSpec;
                }
                H(view3, i17, childMeasureSpec, true);
            }
        }
        int i28 = 0;
        bVar.f2699a = i23;
        if (this.mOrientation == 1) {
            if (cVar.f2708f == -1) {
                i12 = cVar.f2704b;
                i13 = i12 - i23;
            } else {
                int i29 = cVar.f2704b;
                i13 = i29;
                i12 = i23 + i29;
            }
            i10 = 0;
            i11 = 0;
        } else if (cVar.f2708f == -1) {
            int i30 = cVar.f2704b;
            i11 = i30 - i23;
            i13 = 0;
            i10 = i30;
            i12 = 0;
        } else {
            int i31 = cVar.f2704b;
            i10 = i23 + i31;
            i11 = i31;
            i12 = 0;
            i13 = 0;
        }
        while (i28 < i20) {
            View view4 = this.f2682d[i28];
            b bVar3 = (b) view4.getLayoutParams();
            if (this.mOrientation == 1) {
                if (isLayoutRTL()) {
                    int paddingLeft = getPaddingLeft() + this.f2681c[this.f2680b - bVar3.f2688j];
                    f10 = i12;
                    i15 = paddingLeft;
                    i16 = paddingLeft - this.mOrientationHelper.f(view4);
                } else {
                    int paddingLeft2 = getPaddingLeft() + this.f2681c[bVar3.f2688j];
                    f10 = i12;
                    i16 = paddingLeft2;
                    i15 = this.mOrientationHelper.f(view4) + paddingLeft2;
                }
                i14 = i13;
            } else {
                int paddingTop = getPaddingTop() + this.f2681c[bVar3.f2688j];
                i14 = paddingTop;
                i15 = i10;
                i16 = i11;
                f10 = this.mOrientationHelper.f(view4) + paddingTop;
            }
            layoutDecoratedWithMargins(view4, i16, i14, i15, f10);
            if (bVar3.e() || bVar3.c()) {
                bVar.f2701c = true;
            }
            bVar.f2702d |= view4.hasFocusable();
            i28++;
            i12 = f10;
            i10 = i15;
            i11 = i16;
            i13 = i14;
        }
        Arrays.fill(this.f2682d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void onAnchorReady(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.a aVar, int i10) {
        super.onAnchorReady(wVar, b0Var, aVar, i10);
        K();
        if (b0Var.b() > 0 && !b0Var.e()) {
            x(wVar, b0Var, aVar, i10);
        }
        y();
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f6, code lost:
    
        if (r13 == (r2 > r7)) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0107  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        int childCount;
        int i11;
        int i12;
        View view2;
        View view3;
        int i13;
        int i14;
        boolean z10;
        int i15;
        int i16;
        RecyclerView.w wVar2 = wVar;
        RecyclerView.b0 b0Var2 = b0Var;
        View findContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (findContainingItemView == null) {
            return null;
        }
        b bVar = (b) findContainingItemView.getLayoutParams();
        int i17 = bVar.f2688j;
        int i18 = bVar.f2689k + i17;
        if (super.onFocusSearchFailed(view, i10, wVar, b0Var) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i10) == 1) != this.mShouldReverseLayout) {
            i11 = getChildCount() - 1;
            childCount = -1;
            i12 = -1;
        } else {
            childCount = getChildCount();
            i11 = 0;
            i12 = 1;
        }
        boolean z11 = this.mOrientation == 1 && isLayoutRTL();
        int B = B(wVar2, b0Var2, i11);
        int i19 = i11;
        int i20 = 0;
        int i21 = -1;
        int i22 = -1;
        int i23 = 0;
        View view5 = null;
        while (i19 != childCount) {
            int B2 = B(wVar2, b0Var2, i19);
            View childAt = getChildAt(i19);
            if (childAt == findContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || B2 == B) {
                b bVar2 = (b) childAt.getLayoutParams();
                int i24 = bVar2.f2688j;
                view2 = findContainingItemView;
                int i25 = bVar2.f2689k + i24;
                if (childAt.hasFocusable() && i24 == i17 && i25 == i18) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int min = Math.min(i25, i18) - Math.max(i24, i17);
                    if (childAt.hasFocusable()) {
                        if (min <= i20) {
                            if (min == i20) {
                            }
                        }
                    } else if (view4 == null) {
                        i13 = i20;
                        i14 = childCount;
                        if (isViewPartiallyVisible(childAt, false, true)) {
                            i15 = i23;
                            if (min > i15) {
                                i16 = i22;
                                if (z10) {
                                    if (childAt.hasFocusable()) {
                                        i21 = bVar2.f2688j;
                                        i22 = i16;
                                        i23 = i15;
                                        view5 = view3;
                                        view4 = childAt;
                                        i20 = Math.min(i25, i18) - Math.max(i24, i17);
                                    } else {
                                        int i26 = bVar2.f2688j;
                                        i23 = Math.min(i25, i18) - Math.max(i24, i17);
                                        i22 = i26;
                                        i20 = i13;
                                        view5 = childAt;
                                    }
                                    i19 += i12;
                                    wVar2 = wVar;
                                    b0Var2 = b0Var;
                                    findContainingItemView = view2;
                                    childCount = i14;
                                }
                            } else {
                                if (min == i15) {
                                    i16 = i22;
                                } else {
                                    i16 = i22;
                                }
                                z10 = false;
                                if (z10) {
                                }
                            }
                        }
                        i16 = i22;
                        i15 = i23;
                        z10 = false;
                        if (z10) {
                        }
                    }
                    i13 = i20;
                    i14 = childCount;
                    i16 = i22;
                    i15 = i23;
                    z10 = false;
                    if (z10) {
                    }
                } else {
                    view3 = view5;
                }
                i13 = i20;
                i14 = childCount;
                i16 = i22;
                i15 = i23;
                z10 = true;
                if (z10) {
                }
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = findContainingItemView;
                view3 = view5;
                i13 = i20;
                i14 = childCount;
                i16 = i22;
                i15 = i23;
            }
            i22 = i16;
            i23 = i15;
            i20 = i13;
            view5 = view3;
            i19 += i12;
            wVar2 = wVar;
            b0Var2 = b0Var;
            findContainingItemView = view2;
            childCount = i14;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.w wVar, RecyclerView.b0 b0Var, View view, r0.c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, cVar);
            return;
        }
        b bVar = (b) layoutParams;
        int B = B(wVar, b0Var, bVar.a());
        if (this.mOrientation == 0) {
            cVar.e0(c.C0311c.f(bVar.g(), bVar.i(), B, 1, false, false));
        } else {
            cVar.e0(c.C0311c.f(B, 1, bVar.g(), bVar.i(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.f2685g.h();
        this.f2685g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f2685g.h();
        this.f2685g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.f2685g.h();
        this.f2685g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.f2685g.h();
        this.f2685g.g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.f2685g.h();
        this.f2685g.g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutChildren(RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        if (b0Var.e()) {
            r();
        }
        super.onLayoutChildren(wVar, b0Var);
        u();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void onLayoutCompleted(RecyclerView.b0 b0Var) {
        super.onLayoutCompleted(b0Var);
        this.f2679a = false;
    }

    public final void q(RecyclerView.w wVar, RecyclerView.b0 b0Var, int i10, boolean z10) {
        int i11;
        int i12;
        int i13 = 0;
        int i14 = -1;
        if (z10) {
            i14 = i10;
            i11 = 0;
            i12 = 1;
        } else {
            i11 = i10 - 1;
            i12 = -1;
        }
        while (i11 != i14) {
            View view = this.f2682d[i11];
            b bVar = (b) view.getLayoutParams();
            int D = D(wVar, b0Var, getPosition(view));
            bVar.f2689k = D;
            bVar.f2688j = i13;
            i13 += D;
            i11 += i12;
        }
    }

    public final void r() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            b bVar = (b) getChildAt(i10).getLayoutParams();
            int a10 = bVar.a();
            this.f2683e.put(a10, bVar.i());
            this.f2684f.put(a10, bVar.g());
        }
    }

    public final void s(int i10) {
        this.f2681c = t(this.f2681c, this.f2680b, i10);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int scrollHorizontallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        K();
        y();
        return super.scrollHorizontallyBy(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int scrollVerticallyBy(int i10, RecyclerView.w wVar, RecyclerView.b0 b0Var) {
        K();
        y();
        return super.scrollVerticallyBy(i10, wVar, b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int chooseSize;
        int chooseSize2;
        if (this.f2681c == null) {
            super.setMeasuredDimension(rect, i10, i11);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            chooseSize2 = RecyclerView.p.chooseSize(i11, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f2681c;
            chooseSize = RecyclerView.p.chooseSize(i10, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            chooseSize = RecyclerView.p.chooseSize(i10, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f2681c;
            chooseSize2 = RecyclerView.p.chooseSize(i11, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z10) {
        if (!z10) {
            super.setStackFromEnd(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.f2679a;
    }

    public final void u() {
        this.f2683e.clear();
        this.f2684f.clear();
    }

    public final int v(RecyclerView.b0 b0Var) {
        int max;
        if (getChildCount() != 0 && b0Var.b() != 0) {
            ensureLayoutState();
            boolean isSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled, true);
            View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled, true);
            if (findFirstVisibleChildClosestToStart != null && findFirstVisibleChildClosestToEnd != null) {
                int b10 = this.f2685g.b(getPosition(findFirstVisibleChildClosestToStart), this.f2680b);
                int b11 = this.f2685g.b(getPosition(findFirstVisibleChildClosestToEnd), this.f2680b);
                int min = Math.min(b10, b11);
                int max2 = Math.max(b10, b11);
                int b12 = this.f2685g.b(b0Var.b() - 1, this.f2680b) + 1;
                if (this.mShouldReverseLayout) {
                    max = Math.max(0, (b12 - max2) - 1);
                } else {
                    max = Math.max(0, min);
                }
                if (!isSmoothScrollbarEnabled) {
                    return max;
                }
                return Math.round((max * (Math.abs(this.mOrientationHelper.d(findFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(findFirstVisibleChildClosestToStart)) / ((this.f2685g.b(getPosition(findFirstVisibleChildClosestToEnd), this.f2680b) - this.f2685g.b(getPosition(findFirstVisibleChildClosestToStart), this.f2680b)) + 1))) + (this.mOrientationHelper.m() - this.mOrientationHelper.g(findFirstVisibleChildClosestToStart)));
            }
        }
        return 0;
    }

    public final int w(RecyclerView.b0 b0Var) {
        if (getChildCount() != 0 && b0Var.b() != 0) {
            ensureLayoutState();
            View findFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View findFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (findFirstVisibleChildClosestToStart != null && findFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f2685g.b(b0Var.b() - 1, this.f2680b) + 1;
                }
                int d10 = this.mOrientationHelper.d(findFirstVisibleChildClosestToEnd) - this.mOrientationHelper.g(findFirstVisibleChildClosestToStart);
                int b10 = this.f2685g.b(getPosition(findFirstVisibleChildClosestToStart), this.f2680b);
                return (int) ((d10 / ((this.f2685g.b(getPosition(findFirstVisibleChildClosestToEnd), this.f2680b) - b10) + 1)) * (this.f2685g.b(b0Var.b() - 1, this.f2680b) + 1));
            }
        }
        return 0;
    }

    public final void x(RecyclerView.w wVar, RecyclerView.b0 b0Var, LinearLayoutManager.a aVar, int i10) {
        boolean z10 = i10 == 1;
        int C = C(wVar, b0Var, aVar.f2695b);
        if (z10) {
            while (C > 0) {
                int i11 = aVar.f2695b;
                if (i11 <= 0) {
                    return;
                }
                int i12 = i11 - 1;
                aVar.f2695b = i12;
                C = C(wVar, b0Var, i12);
            }
            return;
        }
        int b10 = b0Var.b() - 1;
        int i13 = aVar.f2695b;
        while (i13 < b10) {
            int i14 = i13 + 1;
            int C2 = C(wVar, b0Var, i14);
            if (C2 <= C) {
                break;
            }
            i13 = i14;
            C = C2;
        }
        aVar.f2695b = i13;
    }

    public final void y() {
        View[] viewArr = this.f2682d;
        if (viewArr == null || viewArr.length != this.f2680b) {
            this.f2682d = new View[this.f2680b];
        }
    }

    public int z(int i10, int i11) {
        if (this.mOrientation == 1 && isLayoutRTL()) {
            int[] iArr = this.f2681c;
            int i12 = this.f2680b;
            return iArr[i12 - i10] - iArr[(i12 - i10) - i11];
        }
        int[] iArr2 = this.f2681c;
        return iArr2[i11 + i10] - iArr2[i10];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public RecyclerView.q generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class b extends RecyclerView.q {

        /* renamed from: j, reason: collision with root package name */
        public int f2688j;

        /* renamed from: k, reason: collision with root package name */
        public int f2689k;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2688j = -1;
            this.f2689k = 0;
        }

        public int g() {
            return this.f2688j;
        }

        public int i() {
            return this.f2689k;
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f2688j = -1;
            this.f2689k = 0;
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2688j = -1;
            this.f2689k = 0;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2688j = -1;
            this.f2689k = 0;
        }
    }

    public GridLayoutManager(Context context, int i10, int i11, boolean z10) {
        super(context, i11, z10);
        this.f2679a = false;
        this.f2680b = -1;
        this.f2683e = new SparseIntArray();
        this.f2684f = new SparseIntArray();
        this.f2685g = new a();
        this.f2686h = new Rect();
        I(i10);
    }
}

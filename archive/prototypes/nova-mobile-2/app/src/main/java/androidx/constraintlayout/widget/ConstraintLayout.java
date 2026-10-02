package androidx.constraintlayout.widget;

import a0.g;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import io.wax911.support.util.SupportStateUtil;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.http2.Http2Connection;
import org.apache.http.impl.auth.NTLMEngineImpl;
import w.d;
import w.e;
import w.f;
import w.j;
import w.k;

/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean MEASURE = false;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.1.1";
    private static a0.e sSharedValues;
    public SparseArray<View> mChildrenByIds;
    private ArrayList<androidx.constraintlayout.widget.b> mConstraintHelpers;
    public a0.a mConstraintLayoutSpec;
    private androidx.constraintlayout.widget.c mConstraintSet;
    private int mConstraintSetId;
    private a0.b mConstraintsChangedListener;
    private HashMap<String, Integer> mDesignIds;
    public boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    public int mLastMeasureHeightMode;
    public int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    public int mLastMeasureWidthMode;
    public int mLastMeasureWidthSize;
    public f mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    public c mMeasurer;
    private t.e mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<w.e> mTempMapIdToWidget;

    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1608a;

        static {
            int[] iArr = new int[e.b.values().length];
            f1608a = iArr;
            try {
                iArr[e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1608a[e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1608a[e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1608a[e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class c implements x.b.InterfaceC0402b {

        /* renamed from: a, reason: collision with root package name */
        public ConstraintLayout f1658a;

        /* renamed from: b, reason: collision with root package name */
        public int f1659b;

        /* renamed from: c, reason: collision with root package name */
        public int f1660c;

        /* renamed from: d, reason: collision with root package name */
        public int f1661d;

        /* renamed from: e, reason: collision with root package name */
        public int f1662e;

        /* renamed from: f, reason: collision with root package name */
        public int f1663f;

        /* renamed from: g, reason: collision with root package name */
        public int f1664g;

        public c(ConstraintLayout constraintLayout) {
            this.f1658a = constraintLayout;
        }

        @Override // x.b.InterfaceC0402b
        @SuppressLint({"WrongCall"})
        public final void a(w.e eVar, b.a aVar) {
            int makeMeasureSpec;
            int makeMeasureSpec2;
            int baseline;
            int max;
            int i10;
            int i11;
            int i12;
            if (eVar == null) {
                return;
            }
            if (eVar.Q() == 8 && !eVar.e0()) {
                aVar.f15558e = 0;
                aVar.f15559f = 0;
                aVar.f15560g = 0;
                return;
            }
            if (eVar.I() == null) {
                return;
            }
            e.b bVar = aVar.f15554a;
            e.b bVar2 = aVar.f15555b;
            int i13 = aVar.f15556c;
            int i14 = aVar.f15557d;
            int i15 = this.f1659b + this.f1660c;
            int i16 = this.f1661d;
            View view = (View) eVar.q();
            int[] iArr = a.f1608a;
            int i17 = iArr[bVar.ordinal()];
            if (i17 == 1) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
            } else if (i17 == 2) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1663f, i16, -2);
            } else if (i17 == 3) {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1663f, i16 + eVar.z(), -1);
            } else if (i17 != 4) {
                makeMeasureSpec = 0;
            } else {
                makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1663f, i16, -2);
                boolean z10 = eVar.f15199v == 1;
                int i18 = aVar.f15563j;
                if (i18 == b.a.f15552l || i18 == b.a.f15553m) {
                    if (aVar.f15563j == b.a.f15553m || !z10 || (z10 && (view.getMeasuredHeight() == eVar.v())) || (view instanceof e) || eVar.i0()) {
                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(eVar.R(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                    }
                }
            }
            int i19 = iArr[bVar2.ordinal()];
            if (i19 == 1) {
                makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
            } else if (i19 == 2) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1664g, i15, -2);
            } else if (i19 == 3) {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1664g, i15 + eVar.P(), -1);
            } else if (i19 != 4) {
                makeMeasureSpec2 = 0;
            } else {
                makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1664g, i15, -2);
                boolean z11 = eVar.f15201w == 1;
                int i20 = aVar.f15563j;
                if (i20 == b.a.f15552l || i20 == b.a.f15553m) {
                    if (aVar.f15563j == b.a.f15553m || !z11 || (z11 && (view.getMeasuredWidth() == eVar.R())) || (view instanceof e) || eVar.j0()) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(eVar.v(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                    }
                }
            }
            f fVar = (f) eVar.I();
            if (fVar != null && j.b(ConstraintLayout.this.mOptimizationLevel, 256) && view.getMeasuredWidth() == eVar.R() && view.getMeasuredWidth() < fVar.R() && view.getMeasuredHeight() == eVar.v() && view.getMeasuredHeight() < fVar.v() && view.getBaseline() == eVar.n() && !eVar.h0()) {
                if (d(eVar.A(), makeMeasureSpec, eVar.R()) && d(eVar.B(), makeMeasureSpec2, eVar.v())) {
                    aVar.f15558e = eVar.R();
                    aVar.f15559f = eVar.v();
                    aVar.f15560g = eVar.n();
                    return;
                }
            }
            e.b bVar3 = e.b.MATCH_CONSTRAINT;
            boolean z12 = bVar == bVar3;
            boolean z13 = bVar2 == bVar3;
            e.b bVar4 = e.b.MATCH_PARENT;
            boolean z14 = bVar2 == bVar4 || bVar2 == e.b.FIXED;
            boolean z15 = bVar == bVar4 || bVar == e.b.FIXED;
            boolean z16 = z12 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            boolean z17 = z13 && eVar.f15162c0 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            if (view == null) {
                return;
            }
            b bVar5 = (b) view.getLayoutParams();
            int i21 = aVar.f15563j;
            if (i21 != b.a.f15552l && i21 != b.a.f15553m && z12 && eVar.f15199v == 0 && z13 && eVar.f15201w == 0) {
                i12 = -1;
                i11 = 0;
                baseline = 0;
                max = 0;
            } else {
                if ((view instanceof g) && (eVar instanceof k)) {
                    ((g) view).u((k) eVar, makeMeasureSpec, makeMeasureSpec2);
                } else {
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                }
                eVar.M0(makeMeasureSpec, makeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i22 = eVar.f15205y;
                max = i22 > 0 ? Math.max(i22, measuredWidth) : measuredWidth;
                int i23 = eVar.f15207z;
                if (i23 > 0) {
                    max = Math.min(i23, max);
                }
                int i24 = eVar.B;
                if (i24 > 0) {
                    i11 = Math.max(i24, measuredHeight);
                    i10 = makeMeasureSpec;
                } else {
                    i10 = makeMeasureSpec;
                    i11 = measuredHeight;
                }
                int i25 = eVar.C;
                if (i25 > 0) {
                    i11 = Math.min(i25, i11);
                }
                if (!j.b(ConstraintLayout.this.mOptimizationLevel, 1)) {
                    if (z16 && z14) {
                        max = (int) ((i11 * eVar.f15162c0) + 0.5f);
                    } else if (z17 && z15) {
                        i11 = (int) ((max / eVar.f15162c0) + 0.5f);
                    }
                }
                if (measuredWidth != max || measuredHeight != i11) {
                    int makeMeasureSpec3 = measuredWidth != max ? View.MeasureSpec.makeMeasureSpec(max, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH) : i10;
                    if (measuredHeight != i11) {
                        makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i11, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                    }
                    view.measure(makeMeasureSpec3, makeMeasureSpec2);
                    eVar.M0(makeMeasureSpec3, makeMeasureSpec2);
                    max = view.getMeasuredWidth();
                    i11 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
                i12 = -1;
            }
            boolean z18 = baseline != i12;
            aVar.f15562i = (max == aVar.f15556c && i11 == aVar.f15557d) ? false : true;
            if (bVar5.f1620f0) {
                z18 = true;
            }
            if (z18 && baseline != -1 && eVar.n() != baseline) {
                aVar.f15562i = true;
            }
            aVar.f15558e = max;
            aVar.f15559f = i11;
            aVar.f15561h = z18;
            aVar.f15560g = baseline;
        }

        @Override // x.b.InterfaceC0402b
        public final void b() {
            int childCount = this.f1658a.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = this.f1658a.getChildAt(i10);
                if (childAt instanceof e) {
                    ((e) childAt).a(this.f1658a);
                }
            }
            int size = this.f1658a.mConstraintHelpers.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    ((androidx.constraintlayout.widget.b) this.f1658a.mConstraintHelpers.get(i11)).q(this.f1658a);
                }
            }
        }

        public void c(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f1659b = i12;
            this.f1660c = i13;
            this.f1661d = i14;
            this.f1662e = i15;
            this.f1663f = i10;
            this.f1664g = i11;
        }

        public final boolean d(int i10, int i11, int i12) {
            if (i10 == i11) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i10);
            View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i12 == size;
            }
            return false;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mMaxHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = SupportStateUtil.RECYCLER_TYPE_EMPTY;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(null, 0, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        int max2 = Build.VERSION.SDK_INT >= 17 ? Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart()) : 0;
        return max2 > 0 ? max2 : max;
    }

    public static a0.e getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new a0.e();
        }
        return sSharedValues;
    }

    private final w.e getTargetWidget(int i10) {
        if (i10 == 0) {
            return this.mLayoutWidget;
        }
        View view = this.mChildrenByIds.get(i10);
        if (view == null && (view = findViewById(i10)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        return ((b) view.getLayoutParams()).f1650u0;
    }

    private void init(AttributeSet attributeSet, int i10, int i11) {
        this.mLayoutWidget.s0(this);
        this.mLayoutWidget.M1(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a0.d.f164m1, i10, i11);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i12 = 0; i12 < indexCount; i12++) {
                int index = obtainStyledAttributes.getIndex(i12);
                if (index == a0.d.f219r1) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == a0.d.f230s1) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == a0.d.f197p1) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == a0.d.f208q1) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == a0.d.F2) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == a0.d.A1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == a0.d.f285x1) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.c cVar = new androidx.constraintlayout.widget.c();
                        this.mConstraintSet = cVar;
                        cVar.v(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.N1(this.mOptimizationLevel);
    }

    private void markHierarchyDirty() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void setChildrenConstraints() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            w.e viewWidget = getViewWidget(getChildAt(i10));
            if (viewWidget != null) {
                viewWidget.o0();
            }
        }
        if (isInEditMode) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    if (indexOf != -1) {
                        resourceName = resourceName.substring(indexOf + 1);
                    }
                    getTargetWidget(childAt.getId()).t0(resourceName);
                } catch (Resources.NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt2 = getChildAt(i12);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof d)) {
                    this.mConstraintSet = ((d) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.c cVar = this.mConstraintSet;
        if (cVar != null) {
            cVar.j(this, true);
        }
        this.mLayoutWidget.l1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i13 = 0; i13 < size; i13++) {
                this.mConstraintHelpers.get(i13).s(this);
            }
        }
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt3 = getChildAt(i14);
            if (childAt3 instanceof e) {
                ((e) childAt3).b(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt4 = getChildAt(i15);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt5 = getChildAt(i16);
            w.e viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                b bVar = (b) childAt5.getLayoutParams();
                this.mLayoutWidget.c(viewWidget2);
                applyConstraintsFromLayoutParams(isInEditMode, childAt5, viewWidget2, bVar, this.mTempMapIdToWidget);
            }
        }
    }

    private void setWidgetBaseline(w.e eVar, b bVar, SparseArray<w.e> sparseArray, int i10, d.b bVar2) {
        View view = this.mChildrenByIds.get(i10);
        w.e eVar2 = sparseArray.get(i10);
        if (eVar2 == null || view == null || !(view.getLayoutParams() instanceof b)) {
            return;
        }
        bVar.f1620f0 = true;
        d.b bVar3 = d.b.BASELINE;
        if (bVar2 == bVar3) {
            b bVar4 = (b) view.getLayoutParams();
            bVar4.f1620f0 = true;
            bVar4.f1650u0.B0(true);
        }
        eVar.m(bVar3).a(eVar2.m(bVar2), bVar.C, bVar.B, true);
        eVar.B0(true);
        eVar.m(d.b.TOP).p();
        eVar.m(d.b.BOTTOM).p();
    }

    private boolean updateHierarchy() {
        int childCount = getChildCount();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= childCount) {
                break;
            }
            if (getChildAt(i10).isLayoutRequested()) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10) {
            setChildrenConstraints();
        }
        return z10;
    }

    public void applyConstraintsFromLayoutParams(boolean z10, View view, w.e eVar, b bVar, SparseArray<w.e> sparseArray) {
        int i10;
        float f10;
        int i11;
        int i12;
        w.e eVar2;
        w.e eVar3;
        w.e eVar4;
        w.e eVar5;
        int i13;
        bVar.b();
        bVar.f1652v0 = false;
        eVar.a1(view.getVisibility());
        if (bVar.f1626i0) {
            eVar.K0(true);
            eVar.a1(8);
        }
        eVar.s0(view);
        if (view instanceof androidx.constraintlayout.widget.b) {
            ((androidx.constraintlayout.widget.b) view).o(eVar, this.mLayoutWidget.G1());
        }
        if (bVar.f1622g0) {
            w.g gVar = (w.g) eVar;
            int i14 = bVar.f1644r0;
            int i15 = bVar.f1646s0;
            float f11 = bVar.f1648t0;
            if (Build.VERSION.SDK_INT < 17) {
                i14 = bVar.f1609a;
                i15 = bVar.f1611b;
                f11 = bVar.f1613c;
            }
            if (f11 != -1.0f) {
                gVar.q1(f11);
                return;
            } else if (i14 != -1) {
                gVar.o1(i14);
                return;
            } else {
                if (i15 != -1) {
                    gVar.p1(i15);
                    return;
                }
                return;
            }
        }
        int i16 = bVar.f1630k0;
        int i17 = bVar.f1632l0;
        int i18 = bVar.f1634m0;
        int i19 = bVar.f1636n0;
        int i20 = bVar.f1638o0;
        int i21 = bVar.f1640p0;
        float f12 = bVar.f1642q0;
        if (Build.VERSION.SDK_INT < 17) {
            i16 = bVar.f1615d;
            int i22 = bVar.f1617e;
            int i23 = bVar.f1619f;
            int i24 = bVar.f1621g;
            int i25 = bVar.f1651v;
            int i26 = bVar.f1654x;
            float f13 = bVar.F;
            if (i16 == -1 && i22 == -1) {
                int i27 = bVar.f1645s;
                if (i27 != -1) {
                    i16 = i27;
                } else {
                    int i28 = bVar.f1643r;
                    if (i28 != -1) {
                        i22 = i28;
                    }
                }
            }
            if (i23 == -1 && i24 == -1) {
                i11 = bVar.f1647t;
                if (i11 == -1) {
                    int i29 = bVar.f1649u;
                    if (i29 != -1) {
                        i10 = i26;
                        f10 = f13;
                        i20 = i25;
                        i12 = i29;
                        i17 = i22;
                        i11 = i23;
                    }
                }
                i10 = i26;
                f10 = f13;
                i20 = i25;
                i12 = i24;
                i17 = i22;
            }
            i11 = i23;
            i10 = i26;
            f10 = f13;
            i20 = i25;
            i12 = i24;
            i17 = i22;
        } else {
            i10 = i21;
            f10 = f12;
            i11 = i18;
            i12 = i19;
        }
        int i30 = bVar.f1637o;
        if (i30 != -1) {
            w.e eVar6 = sparseArray.get(i30);
            if (eVar6 != null) {
                eVar.j(eVar6, bVar.f1641q, bVar.f1639p);
            }
        } else {
            if (i16 != -1) {
                w.e eVar7 = sparseArray.get(i16);
                if (eVar7 != null) {
                    d.b bVar2 = d.b.LEFT;
                    eVar.Z(bVar2, eVar7, bVar2, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i20);
                }
            } else if (i17 != -1 && (eVar2 = sparseArray.get(i17)) != null) {
                eVar.Z(d.b.LEFT, eVar2, d.b.RIGHT, ((ViewGroup.MarginLayoutParams) bVar).leftMargin, i20);
            }
            if (i11 != -1) {
                w.e eVar8 = sparseArray.get(i11);
                if (eVar8 != null) {
                    eVar.Z(d.b.RIGHT, eVar8, d.b.LEFT, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i10);
                }
            } else if (i12 != -1 && (eVar3 = sparseArray.get(i12)) != null) {
                d.b bVar3 = d.b.RIGHT;
                eVar.Z(bVar3, eVar3, bVar3, ((ViewGroup.MarginLayoutParams) bVar).rightMargin, i10);
            }
            int i31 = bVar.f1623h;
            if (i31 != -1) {
                w.e eVar9 = sparseArray.get(i31);
                if (eVar9 != null) {
                    d.b bVar4 = d.b.TOP;
                    eVar.Z(bVar4, eVar9, bVar4, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f1653w);
                }
            } else {
                int i32 = bVar.f1625i;
                if (i32 != -1 && (eVar4 = sparseArray.get(i32)) != null) {
                    eVar.Z(d.b.TOP, eVar4, d.b.BOTTOM, ((ViewGroup.MarginLayoutParams) bVar).topMargin, bVar.f1653w);
                }
            }
            int i33 = bVar.f1627j;
            if (i33 != -1) {
                w.e eVar10 = sparseArray.get(i33);
                if (eVar10 != null) {
                    eVar.Z(d.b.BOTTOM, eVar10, d.b.TOP, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f1655y);
                }
            } else {
                int i34 = bVar.f1629k;
                if (i34 != -1 && (eVar5 = sparseArray.get(i34)) != null) {
                    d.b bVar5 = d.b.BOTTOM;
                    eVar.Z(bVar5, eVar5, bVar5, ((ViewGroup.MarginLayoutParams) bVar).bottomMargin, bVar.f1655y);
                }
            }
            int i35 = bVar.f1631l;
            if (i35 != -1) {
                setWidgetBaseline(eVar, bVar, sparseArray, i35, d.b.BASELINE);
            } else {
                int i36 = bVar.f1633m;
                if (i36 != -1) {
                    setWidgetBaseline(eVar, bVar, sparseArray, i36, d.b.TOP);
                } else {
                    int i37 = bVar.f1635n;
                    if (i37 != -1) {
                        setWidgetBaseline(eVar, bVar, sparseArray, i37, d.b.BOTTOM);
                    }
                }
            }
            if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                eVar.D0(f10);
            }
            float f14 = bVar.G;
            if (f14 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                eVar.U0(f14);
            }
        }
        if (z10 && ((i13 = bVar.W) != -1 || bVar.X != -1)) {
            eVar.S0(i13, bVar.X);
        }
        if (!bVar.f1616d0) {
            if (((ViewGroup.MarginLayoutParams) bVar).width == -1) {
                if (bVar.Z) {
                    eVar.G0(e.b.MATCH_CONSTRAINT);
                } else {
                    eVar.G0(e.b.MATCH_PARENT);
                }
                eVar.m(d.b.LEFT).f15143g = ((ViewGroup.MarginLayoutParams) bVar).leftMargin;
                eVar.m(d.b.RIGHT).f15143g = ((ViewGroup.MarginLayoutParams) bVar).rightMargin;
            } else {
                eVar.G0(e.b.MATCH_CONSTRAINT);
                eVar.b1(0);
            }
        } else {
            eVar.G0(e.b.FIXED);
            eVar.b1(((ViewGroup.MarginLayoutParams) bVar).width);
            if (((ViewGroup.MarginLayoutParams) bVar).width == -2) {
                eVar.G0(e.b.WRAP_CONTENT);
            }
        }
        if (!bVar.f1618e0) {
            if (((ViewGroup.MarginLayoutParams) bVar).height == -1) {
                if (bVar.f1610a0) {
                    eVar.X0(e.b.MATCH_CONSTRAINT);
                } else {
                    eVar.X0(e.b.MATCH_PARENT);
                }
                eVar.m(d.b.TOP).f15143g = ((ViewGroup.MarginLayoutParams) bVar).topMargin;
                eVar.m(d.b.BOTTOM).f15143g = ((ViewGroup.MarginLayoutParams) bVar).bottomMargin;
            } else {
                eVar.X0(e.b.MATCH_CONSTRAINT);
                eVar.C0(0);
            }
        } else {
            eVar.X0(e.b.FIXED);
            eVar.C0(((ViewGroup.MarginLayoutParams) bVar).height);
            if (((ViewGroup.MarginLayoutParams) bVar).height == -2) {
                eVar.X0(e.b.WRAP_CONTENT);
            }
        }
        eVar.u0(bVar.H);
        eVar.I0(bVar.K);
        eVar.Z0(bVar.L);
        eVar.E0(bVar.M);
        eVar.V0(bVar.N);
        eVar.c1(bVar.f1614c0);
        eVar.H0(bVar.O, bVar.Q, bVar.S, bVar.U);
        eVar.Y0(bVar.P, bVar.R, bVar.T, bVar.V);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<androidx.constraintlayout.widget.b> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.mConstraintHelpers.get(i10).r(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i12 = (int) ((parseInt / 1080.0f) * width);
                        int i13 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f10 = i12;
                        float f11 = i13;
                        float f12 = i12 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float parseInt4 = i13 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f12, f11, f12, parseInt4, paint);
                        canvas.drawLine(f12, parseInt4, f10, parseInt4, paint);
                        canvas.drawLine(f10, parseInt4, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, parseInt4, paint);
                        canvas.drawLine(f10, parseInt4, f12, f11, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(t.e eVar) {
        this.mLayoutWidget.z1(eVar);
    }

    @Override // android.view.View
    public void forceLayout() {
        markHierarchyDirty();
        super.forceLayout();
    }

    public Object getDesignInformation(int i10, Object obj) {
        if (i10 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.mDesignIds;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.B1();
    }

    public View getViewById(int i10) {
        return this.mChildrenByIds.get(i10);
    }

    public final w.e getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f1650u0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof b) {
            return ((b) view.getLayoutParams()).f1650u0;
        }
        return null;
    }

    public boolean isRtl() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    public void loadLayoutDescription(int i10) {
        if (i10 != 0) {
            try {
                this.mConstraintLayoutSpec = new a0.a(getContext(), this, i10);
                return;
            } catch (Resources.NotFoundException unused) {
                this.mConstraintLayoutSpec = null;
                return;
            }
        }
        this.mConstraintLayoutSpec = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            b bVar = (b) childAt.getLayoutParams();
            w.e eVar = bVar.f1650u0;
            if ((childAt.getVisibility() != 8 || bVar.f1622g0 || bVar.f1624h0 || bVar.f1628j0 || isInEditMode) && !bVar.f1626i0) {
                int S = eVar.S();
                int T = eVar.T();
                int R = eVar.R() + S;
                int v10 = eVar.v() + T;
                childAt.layout(S, T, R, v10);
                if ((childAt instanceof e) && (content = ((e) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(S, T, R, v10);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                this.mConstraintHelpers.get(i15).p(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.mOnMeasureWidthMeasureSpec == i10) {
            int i12 = this.mOnMeasureHeightMeasureSpec;
        }
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            int i13 = 0;
            while (true) {
                if (i13 >= childCount) {
                    break;
                }
                if (getChildAt(i13).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
                i13++;
            }
        }
        boolean z10 = this.mDirtyHierarchy;
        this.mOnMeasureWidthMeasureSpec = i10;
        this.mOnMeasureHeightMeasureSpec = i11;
        this.mLayoutWidget.P1(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (updateHierarchy()) {
                this.mLayoutWidget.R1();
            }
        }
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i10, i11);
        resolveMeasuredDimension(i10, i11, this.mLayoutWidget.R(), this.mLayoutWidget.v(), this.mLayoutWidget.H1(), this.mLayoutWidget.F1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        w.e viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof w.g)) {
            b bVar = (b) view.getLayoutParams();
            w.g gVar = new w.g();
            bVar.f1650u0 = gVar;
            bVar.f1622g0 = true;
            gVar.r1(bVar.Y);
        }
        if (view instanceof androidx.constraintlayout.widget.b) {
            androidx.constraintlayout.widget.b bVar2 = (androidx.constraintlayout.widget.b) view;
            bVar2.t();
            ((b) view.getLayoutParams()).f1624h0 = true;
            if (!this.mConstraintHelpers.contains(bVar2)) {
                this.mConstraintHelpers.add(bVar2);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.k1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    public void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = new a0.a(getContext(), this, i10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        markHierarchyDirty();
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        c cVar = this.mMeasurer;
        int i14 = cVar.f1662e;
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i12 + cVar.f1661d, i10, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i13 + i14, i11, 0) & 16777215;
        int min = Math.min(this.mMaxWidth, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.mMaxHeight, resolveSizeAndState2);
        if (z10) {
            min |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z11) {
            min2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(min, min2);
        this.mLastMeasureWidth = min;
        this.mLastMeasureHeight = min2;
    }

    public void resolveSystem(f fVar, int i10, int i11, int i12) {
        int max;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int max2 = Math.max(0, getPaddingTop());
        int max3 = Math.max(0, getPaddingBottom());
        int i13 = max2 + max3;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i11, i12, max2, max3, paddingWidth, i13);
        if (Build.VERSION.SDK_INT >= 17) {
            int max4 = Math.max(0, getPaddingStart());
            int max5 = Math.max(0, getPaddingEnd());
            if (max4 <= 0 && max5 <= 0) {
                max4 = Math.max(0, getPaddingLeft());
            } else if (isRtl()) {
                max4 = max5;
            }
            max = max4;
        } else {
            max = Math.max(0, getPaddingLeft());
        }
        int i14 = size - paddingWidth;
        int i15 = size2 - i13;
        setSelfDimensionBehaviour(fVar, mode, i14, mode2, i15);
        fVar.I1(i10, mode, i14, mode2, i15, this.mLastMeasureWidth, this.mLastMeasureHeight, max, max2);
    }

    public void setConstraintSet(androidx.constraintlayout.widget.c cVar) {
        this.mConstraintSet = cVar;
    }

    public void setDesignInformation(int i10, Object obj, Object obj2) {
        if (i10 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.mDesignIds.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i10) {
        this.mChildrenByIds.remove(getId());
        super.setId(i10);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(a0.b bVar) {
        a0.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.c(bVar);
        }
    }

    public void setOptimizationLevel(int i10) {
        this.mOptimizationLevel = i10;
        this.mLayoutWidget.N1(i10);
    }

    public void setSelfDimensionBehaviour(f fVar, int i10, int i11, int i12, int i13) {
        e.b bVar;
        c cVar = this.mMeasurer;
        int i14 = cVar.f1662e;
        int i15 = cVar.f1661d;
        e.b bVar2 = e.b.FIXED;
        int childCount = getChildCount();
        if (i10 == Integer.MIN_VALUE) {
            bVar = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i11 = Math.max(0, this.mMinWidth);
            }
        } else if (i10 == 0) {
            bVar = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i11 = Math.max(0, this.mMinWidth);
            }
            i11 = 0;
        } else if (i10 != 1073741824) {
            bVar = bVar2;
            i11 = 0;
        } else {
            i11 = Math.min(this.mMaxWidth - i15, i11);
            bVar = bVar2;
        }
        if (i12 == Integer.MIN_VALUE) {
            bVar2 = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i13 = Math.max(0, this.mMinHeight);
            }
        } else if (i12 != 0) {
            if (i12 == 1073741824) {
                i13 = Math.min(this.mMaxHeight - i14, i13);
            }
            i13 = 0;
        } else {
            bVar2 = e.b.WRAP_CONTENT;
            if (childCount == 0) {
                i13 = Math.max(0, this.mMinHeight);
            }
            i13 = 0;
        }
        if (i11 != fVar.R() || i13 != fVar.v()) {
            fVar.E1();
        }
        fVar.d1(0);
        fVar.e1(0);
        fVar.O0(this.mMaxWidth - i15);
        fVar.N0(this.mMaxHeight - i14);
        fVar.R0(0);
        fVar.Q0(0);
        fVar.G0(bVar);
        fVar.b1(i11);
        fVar.X0(bVar2);
        fVar.C0(i13);
        fVar.R0(this.mMinWidth - i15);
        fVar.Q0(this.mMinHeight - i14);
    }

    public void setState(int i10, int i11, int i12) {
        a0.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i10, i11, i12);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public b generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    public b generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mMaxHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = SupportStateUtil.RECYCLER_TYPE_EMPTY;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mMaxHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = SupportStateUtil.RECYCLER_TYPE_EMPTY;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i10, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new f();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mMaxHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = SupportStateUtil.RECYCLER_TYPE_EMPTY;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new c(this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i10, i11);
    }

    /* loaded from: classes.dex */
    public static class b extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public boolean D;
        public boolean E;
        public float F;
        public float G;
        public String H;
        public float I;
        public int J;
        public float K;
        public float L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public float U;
        public float V;
        public int W;
        public int X;
        public int Y;
        public boolean Z;

        /* renamed from: a, reason: collision with root package name */
        public int f1609a;

        /* renamed from: a0, reason: collision with root package name */
        public boolean f1610a0;

        /* renamed from: b, reason: collision with root package name */
        public int f1611b;

        /* renamed from: b0, reason: collision with root package name */
        public String f1612b0;

        /* renamed from: c, reason: collision with root package name */
        public float f1613c;

        /* renamed from: c0, reason: collision with root package name */
        public int f1614c0;

        /* renamed from: d, reason: collision with root package name */
        public int f1615d;

        /* renamed from: d0, reason: collision with root package name */
        public boolean f1616d0;

        /* renamed from: e, reason: collision with root package name */
        public int f1617e;

        /* renamed from: e0, reason: collision with root package name */
        public boolean f1618e0;

        /* renamed from: f, reason: collision with root package name */
        public int f1619f;

        /* renamed from: f0, reason: collision with root package name */
        public boolean f1620f0;

        /* renamed from: g, reason: collision with root package name */
        public int f1621g;

        /* renamed from: g0, reason: collision with root package name */
        public boolean f1622g0;

        /* renamed from: h, reason: collision with root package name */
        public int f1623h;

        /* renamed from: h0, reason: collision with root package name */
        public boolean f1624h0;

        /* renamed from: i, reason: collision with root package name */
        public int f1625i;

        /* renamed from: i0, reason: collision with root package name */
        public boolean f1626i0;

        /* renamed from: j, reason: collision with root package name */
        public int f1627j;

        /* renamed from: j0, reason: collision with root package name */
        public boolean f1628j0;

        /* renamed from: k, reason: collision with root package name */
        public int f1629k;

        /* renamed from: k0, reason: collision with root package name */
        public int f1630k0;

        /* renamed from: l, reason: collision with root package name */
        public int f1631l;

        /* renamed from: l0, reason: collision with root package name */
        public int f1632l0;

        /* renamed from: m, reason: collision with root package name */
        public int f1633m;

        /* renamed from: m0, reason: collision with root package name */
        public int f1634m0;

        /* renamed from: n, reason: collision with root package name */
        public int f1635n;

        /* renamed from: n0, reason: collision with root package name */
        public int f1636n0;

        /* renamed from: o, reason: collision with root package name */
        public int f1637o;

        /* renamed from: o0, reason: collision with root package name */
        public int f1638o0;

        /* renamed from: p, reason: collision with root package name */
        public int f1639p;

        /* renamed from: p0, reason: collision with root package name */
        public int f1640p0;

        /* renamed from: q, reason: collision with root package name */
        public float f1641q;

        /* renamed from: q0, reason: collision with root package name */
        public float f1642q0;

        /* renamed from: r, reason: collision with root package name */
        public int f1643r;

        /* renamed from: r0, reason: collision with root package name */
        public int f1644r0;

        /* renamed from: s, reason: collision with root package name */
        public int f1645s;

        /* renamed from: s0, reason: collision with root package name */
        public int f1646s0;

        /* renamed from: t, reason: collision with root package name */
        public int f1647t;

        /* renamed from: t0, reason: collision with root package name */
        public float f1648t0;

        /* renamed from: u, reason: collision with root package name */
        public int f1649u;

        /* renamed from: u0, reason: collision with root package name */
        public w.e f1650u0;

        /* renamed from: v, reason: collision with root package name */
        public int f1651v;

        /* renamed from: v0, reason: collision with root package name */
        public boolean f1652v0;

        /* renamed from: w, reason: collision with root package name */
        public int f1653w;

        /* renamed from: x, reason: collision with root package name */
        public int f1654x;

        /* renamed from: y, reason: collision with root package name */
        public int f1655y;

        /* renamed from: z, reason: collision with root package name */
        public int f1656z;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1657a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1657a = sparseIntArray;
                sparseIntArray.append(a0.d.f209q2, 64);
                sparseIntArray.append(a0.d.T1, 65);
                sparseIntArray.append(a0.d.f53c2, 8);
                sparseIntArray.append(a0.d.f65d2, 9);
                sparseIntArray.append(a0.d.f88f2, 10);
                sparseIntArray.append(a0.d.f99g2, 11);
                sparseIntArray.append(a0.d.f165m2, 12);
                sparseIntArray.append(a0.d.f154l2, 13);
                sparseIntArray.append(a0.d.J1, 14);
                sparseIntArray.append(a0.d.I1, 15);
                sparseIntArray.append(a0.d.E1, 16);
                sparseIntArray.append(a0.d.G1, 52);
                sparseIntArray.append(a0.d.F1, 53);
                sparseIntArray.append(a0.d.K1, 2);
                sparseIntArray.append(a0.d.M1, 3);
                sparseIntArray.append(a0.d.L1, 4);
                sparseIntArray.append(a0.d.f264v2, 49);
                sparseIntArray.append(a0.d.f275w2, 50);
                sparseIntArray.append(a0.d.Q1, 5);
                sparseIntArray.append(a0.d.R1, 6);
                sparseIntArray.append(a0.d.S1, 7);
                sparseIntArray.append(a0.d.f175n1, 1);
                sparseIntArray.append(a0.d.f110h2, 17);
                sparseIntArray.append(a0.d.f121i2, 18);
                sparseIntArray.append(a0.d.P1, 19);
                sparseIntArray.append(a0.d.O1, 20);
                sparseIntArray.append(a0.d.A2, 21);
                sparseIntArray.append(a0.d.D2, 22);
                sparseIntArray.append(a0.d.B2, 23);
                sparseIntArray.append(a0.d.f297y2, 24);
                sparseIntArray.append(a0.d.C2, 25);
                sparseIntArray.append(a0.d.f308z2, 26);
                sparseIntArray.append(a0.d.f286x2, 55);
                sparseIntArray.append(a0.d.E2, 54);
                sparseIntArray.append(a0.d.Y1, 29);
                sparseIntArray.append(a0.d.f176n2, 30);
                sparseIntArray.append(a0.d.N1, 44);
                sparseIntArray.append(a0.d.f29a2, 45);
                sparseIntArray.append(a0.d.f198p2, 46);
                sparseIntArray.append(a0.d.Z1, 47);
                sparseIntArray.append(a0.d.f187o2, 48);
                sparseIntArray.append(a0.d.C1, 27);
                sparseIntArray.append(a0.d.B1, 28);
                sparseIntArray.append(a0.d.f220r2, 31);
                sparseIntArray.append(a0.d.U1, 32);
                sparseIntArray.append(a0.d.f242t2, 33);
                sparseIntArray.append(a0.d.f231s2, 34);
                sparseIntArray.append(a0.d.f253u2, 35);
                sparseIntArray.append(a0.d.W1, 36);
                sparseIntArray.append(a0.d.V1, 37);
                sparseIntArray.append(a0.d.X1, 38);
                sparseIntArray.append(a0.d.f41b2, 39);
                sparseIntArray.append(a0.d.f143k2, 40);
                sparseIntArray.append(a0.d.f77e2, 41);
                sparseIntArray.append(a0.d.H1, 42);
                sparseIntArray.append(a0.d.D1, 43);
                sparseIntArray.append(a0.d.f132j2, 51);
                sparseIntArray.append(a0.d.G2, 66);
            }
        }

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1609a = -1;
            this.f1611b = -1;
            this.f1613c = -1.0f;
            this.f1615d = -1;
            this.f1617e = -1;
            this.f1619f = -1;
            this.f1621g = -1;
            this.f1623h = -1;
            this.f1625i = -1;
            this.f1627j = -1;
            this.f1629k = -1;
            this.f1631l = -1;
            this.f1633m = -1;
            this.f1635n = -1;
            this.f1637o = -1;
            this.f1639p = 0;
            this.f1641q = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f1643r = -1;
            this.f1645s = -1;
            this.f1647t = -1;
            this.f1649u = -1;
            this.f1651v = Integer.MIN_VALUE;
            this.f1653w = Integer.MIN_VALUE;
            this.f1654x = Integer.MIN_VALUE;
            this.f1655y = Integer.MIN_VALUE;
            this.f1656z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = true;
            this.E = true;
            this.F = 0.5f;
            this.G = 0.5f;
            this.H = null;
            this.I = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.J = 1;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = 1.0f;
            this.W = -1;
            this.X = -1;
            this.Y = -1;
            this.Z = false;
            this.f1610a0 = false;
            this.f1612b0 = null;
            this.f1614c0 = 0;
            this.f1616d0 = true;
            this.f1618e0 = true;
            this.f1620f0 = false;
            this.f1622g0 = false;
            this.f1624h0 = false;
            this.f1626i0 = false;
            this.f1628j0 = false;
            this.f1630k0 = -1;
            this.f1632l0 = -1;
            this.f1634m0 = -1;
            this.f1636n0 = -1;
            this.f1638o0 = Integer.MIN_VALUE;
            this.f1640p0 = Integer.MIN_VALUE;
            this.f1642q0 = 0.5f;
            this.f1650u0 = new w.e();
            this.f1652v0 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a0.d.f164m1);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                int i11 = a.f1657a.get(index);
                switch (i11) {
                    case 1:
                        this.Y = obtainStyledAttributes.getInt(index, this.Y);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f1637o);
                        this.f1637o = resourceId;
                        if (resourceId == -1) {
                            this.f1637o = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f1639p = obtainStyledAttributes.getDimensionPixelSize(index, this.f1639p);
                        break;
                    case 4:
                        float f10 = obtainStyledAttributes.getFloat(index, this.f1641q) % 360.0f;
                        this.f1641q = f10;
                        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            this.f1641q = (360.0f - f10) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f1609a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1609a);
                        break;
                    case 6:
                        this.f1611b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1611b);
                        break;
                    case 7:
                        this.f1613c = obtainStyledAttributes.getFloat(index, this.f1613c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f1615d);
                        this.f1615d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1615d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f1617e);
                        this.f1617e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1617e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f1619f);
                        this.f1619f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1619f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f1621g);
                        this.f1621g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1621g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f1623h);
                        this.f1623h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1623h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f1625i);
                        this.f1625i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1625i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f1627j);
                        this.f1627j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1627j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f1629k);
                        this.f1629k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1629k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f1631l);
                        this.f1631l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1631l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f1643r);
                        this.f1643r = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1643r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f1645s);
                        this.f1645s = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1645s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f1647t);
                        this.f1647t = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1647t = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f1649u);
                        this.f1649u = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1649u = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f1651v = obtainStyledAttributes.getDimensionPixelSize(index, this.f1651v);
                        break;
                    case 22:
                        this.f1653w = obtainStyledAttributes.getDimensionPixelSize(index, this.f1653w);
                        break;
                    case 23:
                        this.f1654x = obtainStyledAttributes.getDimensionPixelSize(index, this.f1654x);
                        break;
                    case 24:
                        this.f1655y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1655y);
                        break;
                    case 25:
                        this.f1656z = obtainStyledAttributes.getDimensionPixelSize(index, this.f1656z);
                        break;
                    case 26:
                        this.A = obtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 27:
                        this.Z = obtainStyledAttributes.getBoolean(index, this.Z);
                        break;
                    case 28:
                        this.f1610a0 = obtainStyledAttributes.getBoolean(index, this.f1610a0);
                        break;
                    case 29:
                        this.F = obtainStyledAttributes.getFloat(index, this.F);
                        break;
                    case 30:
                        this.G = obtainStyledAttributes.getFloat(index, this.G);
                        break;
                    case 31:
                        this.O = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.P = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.Q = obtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.Q) == -2) {
                                this.Q = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.S = obtainStyledAttributes.getDimensionPixelSize(index, this.S);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.S) == -2) {
                                this.S = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.U = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, obtainStyledAttributes.getFloat(index, this.U));
                        this.O = 2;
                        break;
                    case 36:
                        try {
                            this.R = obtainStyledAttributes.getDimensionPixelSize(index, this.R);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.R) == -2) {
                                this.R = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.T = obtainStyledAttributes.getDimensionPixelSize(index, this.T);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.T) == -2) {
                                this.T = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.V = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, obtainStyledAttributes.getFloat(index, this.V));
                        this.P = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                androidx.constraintlayout.widget.c.A(this, obtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.K = obtainStyledAttributes.getFloat(index, this.K);
                                break;
                            case 46:
                                this.L = obtainStyledAttributes.getFloat(index, this.L);
                                break;
                            case 47:
                                this.M = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.N = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.W = obtainStyledAttributes.getDimensionPixelOffset(index, this.W);
                                break;
                            case 50:
                                this.X = obtainStyledAttributes.getDimensionPixelOffset(index, this.X);
                                break;
                            case 51:
                                this.f1612b0 = obtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = obtainStyledAttributes.getResourceId(index, this.f1633m);
                                this.f1633m = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f1633m = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 53:
                                int resourceId16 = obtainStyledAttributes.getResourceId(index, this.f1635n);
                                this.f1635n = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f1635n = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    break;
                                }
                            case 54:
                                this.C = obtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 55:
                                this.B = obtainStyledAttributes.getDimensionPixelSize(index, this.B);
                                break;
                            default:
                                switch (i11) {
                                    case 64:
                                        androidx.constraintlayout.widget.c.y(this, obtainStyledAttributes, index, 0);
                                        this.D = true;
                                        break;
                                    case 65:
                                        androidx.constraintlayout.widget.c.y(this, obtainStyledAttributes, index, 1);
                                        this.E = true;
                                        break;
                                    case 66:
                                        this.f1614c0 = obtainStyledAttributes.getInt(index, this.f1614c0);
                                        break;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
            b();
        }

        public String a() {
            return this.f1612b0;
        }

        public void b() {
            this.f1622g0 = false;
            this.f1616d0 = true;
            this.f1618e0 = true;
            int i10 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i10 == -2 && this.Z) {
                this.f1616d0 = false;
                if (this.O == 0) {
                    this.O = 1;
                }
            }
            int i11 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i11 == -2 && this.f1610a0) {
                this.f1618e0 = false;
                if (this.P == 0) {
                    this.P = 1;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.f1616d0 = false;
                if (i10 == 0 && this.O == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.Z = true;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.f1618e0 = false;
                if (i11 == 0 && this.P == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f1610a0 = true;
                }
            }
            if (this.f1613c == -1.0f && this.f1609a == -1 && this.f1611b == -1) {
                return;
            }
            this.f1622g0 = true;
            this.f1616d0 = true;
            this.f1618e0 = true;
            if (!(this.f1650u0 instanceof w.g)) {
                this.f1650u0 = new w.g();
            }
            ((w.g) this.f1650u0).r1(this.Y);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void resolveLayoutDirection(int i10) {
            boolean z10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i16 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            boolean z11 = false;
            if (Build.VERSION.SDK_INT >= 17) {
                super.resolveLayoutDirection(i10);
                if (1 == getLayoutDirection()) {
                    z10 = true;
                    this.f1634m0 = -1;
                    this.f1636n0 = -1;
                    this.f1630k0 = -1;
                    this.f1632l0 = -1;
                    this.f1638o0 = -1;
                    this.f1640p0 = -1;
                    this.f1638o0 = this.f1651v;
                    this.f1640p0 = this.f1654x;
                    float f10 = this.F;
                    this.f1642q0 = f10;
                    int i17 = this.f1609a;
                    this.f1644r0 = i17;
                    int i18 = this.f1611b;
                    this.f1646s0 = i18;
                    float f11 = this.f1613c;
                    this.f1648t0 = f11;
                    if (!z10) {
                        int i19 = this.f1643r;
                        if (i19 != -1) {
                            this.f1634m0 = i19;
                        } else {
                            int i20 = this.f1645s;
                            if (i20 != -1) {
                                this.f1636n0 = i20;
                            }
                            i11 = this.f1647t;
                            if (i11 != -1) {
                                this.f1632l0 = i11;
                                z11 = true;
                            }
                            i12 = this.f1649u;
                            if (i12 != -1) {
                                this.f1630k0 = i12;
                                z11 = true;
                            }
                            i13 = this.f1656z;
                            if (i13 != Integer.MIN_VALUE) {
                                this.f1640p0 = i13;
                            }
                            i14 = this.A;
                            if (i14 != Integer.MIN_VALUE) {
                                this.f1638o0 = i14;
                            }
                            if (z11) {
                                this.f1642q0 = 1.0f - f10;
                            }
                            if (this.f1622g0 && this.Y == 1) {
                                if (f11 == -1.0f) {
                                    this.f1648t0 = 1.0f - f11;
                                    this.f1644r0 = -1;
                                    this.f1646s0 = -1;
                                } else if (i17 != -1) {
                                    this.f1646s0 = i17;
                                    this.f1644r0 = -1;
                                    this.f1648t0 = -1.0f;
                                } else if (i18 != -1) {
                                    this.f1644r0 = i18;
                                    this.f1646s0 = -1;
                                    this.f1648t0 = -1.0f;
                                }
                            }
                        }
                        z11 = true;
                        i11 = this.f1647t;
                        if (i11 != -1) {
                        }
                        i12 = this.f1649u;
                        if (i12 != -1) {
                        }
                        i13 = this.f1656z;
                        if (i13 != Integer.MIN_VALUE) {
                        }
                        i14 = this.A;
                        if (i14 != Integer.MIN_VALUE) {
                        }
                        if (z11) {
                        }
                        if (this.f1622g0) {
                            if (f11 == -1.0f) {
                            }
                        }
                    } else {
                        int i21 = this.f1643r;
                        if (i21 != -1) {
                            this.f1632l0 = i21;
                        }
                        int i22 = this.f1645s;
                        if (i22 != -1) {
                            this.f1630k0 = i22;
                        }
                        int i23 = this.f1647t;
                        if (i23 != -1) {
                            this.f1634m0 = i23;
                        }
                        int i24 = this.f1649u;
                        if (i24 != -1) {
                            this.f1636n0 = i24;
                        }
                        int i25 = this.f1656z;
                        if (i25 != Integer.MIN_VALUE) {
                            this.f1638o0 = i25;
                        }
                        int i26 = this.A;
                        if (i26 != Integer.MIN_VALUE) {
                            this.f1640p0 = i26;
                        }
                    }
                    if (this.f1647t != -1 && this.f1649u == -1 && this.f1645s == -1 && this.f1643r == -1) {
                        int i27 = this.f1619f;
                        if (i27 != -1) {
                            this.f1634m0 = i27;
                            if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                                ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                            }
                        } else {
                            int i28 = this.f1621g;
                            if (i28 != -1) {
                                this.f1636n0 = i28;
                                if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                                    ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                                }
                            }
                        }
                        int i29 = this.f1615d;
                        if (i29 != -1) {
                            this.f1630k0 = i29;
                            if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                                return;
                            }
                            ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                            return;
                        }
                        int i30 = this.f1617e;
                        if (i30 != -1) {
                            this.f1632l0 = i30;
                            if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                                return;
                            }
                            ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            z10 = false;
            this.f1634m0 = -1;
            this.f1636n0 = -1;
            this.f1630k0 = -1;
            this.f1632l0 = -1;
            this.f1638o0 = -1;
            this.f1640p0 = -1;
            this.f1638o0 = this.f1651v;
            this.f1640p0 = this.f1654x;
            float f102 = this.F;
            this.f1642q0 = f102;
            int i172 = this.f1609a;
            this.f1644r0 = i172;
            int i182 = this.f1611b;
            this.f1646s0 = i182;
            float f112 = this.f1613c;
            this.f1648t0 = f112;
            if (!z10) {
            }
            if (this.f1647t != -1) {
            }
        }

        public b(int i10, int i11) {
            super(i10, i11);
            this.f1609a = -1;
            this.f1611b = -1;
            this.f1613c = -1.0f;
            this.f1615d = -1;
            this.f1617e = -1;
            this.f1619f = -1;
            this.f1621g = -1;
            this.f1623h = -1;
            this.f1625i = -1;
            this.f1627j = -1;
            this.f1629k = -1;
            this.f1631l = -1;
            this.f1633m = -1;
            this.f1635n = -1;
            this.f1637o = -1;
            this.f1639p = 0;
            this.f1641q = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f1643r = -1;
            this.f1645s = -1;
            this.f1647t = -1;
            this.f1649u = -1;
            this.f1651v = Integer.MIN_VALUE;
            this.f1653w = Integer.MIN_VALUE;
            this.f1654x = Integer.MIN_VALUE;
            this.f1655y = Integer.MIN_VALUE;
            this.f1656z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = true;
            this.E = true;
            this.F = 0.5f;
            this.G = 0.5f;
            this.H = null;
            this.I = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.J = 1;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = 1.0f;
            this.W = -1;
            this.X = -1;
            this.Y = -1;
            this.Z = false;
            this.f1610a0 = false;
            this.f1612b0 = null;
            this.f1614c0 = 0;
            this.f1616d0 = true;
            this.f1618e0 = true;
            this.f1620f0 = false;
            this.f1622g0 = false;
            this.f1624h0 = false;
            this.f1626i0 = false;
            this.f1628j0 = false;
            this.f1630k0 = -1;
            this.f1632l0 = -1;
            this.f1634m0 = -1;
            this.f1636n0 = -1;
            this.f1638o0 = Integer.MIN_VALUE;
            this.f1640p0 = Integer.MIN_VALUE;
            this.f1642q0 = 0.5f;
            this.f1650u0 = new w.e();
            this.f1652v0 = false;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1609a = -1;
            this.f1611b = -1;
            this.f1613c = -1.0f;
            this.f1615d = -1;
            this.f1617e = -1;
            this.f1619f = -1;
            this.f1621g = -1;
            this.f1623h = -1;
            this.f1625i = -1;
            this.f1627j = -1;
            this.f1629k = -1;
            this.f1631l = -1;
            this.f1633m = -1;
            this.f1635n = -1;
            this.f1637o = -1;
            this.f1639p = 0;
            this.f1641q = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f1643r = -1;
            this.f1645s = -1;
            this.f1647t = -1;
            this.f1649u = -1;
            this.f1651v = Integer.MIN_VALUE;
            this.f1653w = Integer.MIN_VALUE;
            this.f1654x = Integer.MIN_VALUE;
            this.f1655y = Integer.MIN_VALUE;
            this.f1656z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = 0;
            this.D = true;
            this.E = true;
            this.F = 0.5f;
            this.G = 0.5f;
            this.H = null;
            this.I = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.J = 1;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 0;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = 1.0f;
            this.W = -1;
            this.X = -1;
            this.Y = -1;
            this.Z = false;
            this.f1610a0 = false;
            this.f1612b0 = null;
            this.f1614c0 = 0;
            this.f1616d0 = true;
            this.f1618e0 = true;
            this.f1620f0 = false;
            this.f1622g0 = false;
            this.f1624h0 = false;
            this.f1626i0 = false;
            this.f1628j0 = false;
            this.f1630k0 = -1;
            this.f1632l0 = -1;
            this.f1634m0 = -1;
            this.f1636n0 = -1;
            this.f1638o0 = Integer.MIN_VALUE;
            this.f1640p0 = Integer.MIN_VALUE;
            this.f1642q0 = 0.5f;
            this.f1650u0 = new w.e();
            this.f1652v0 = false;
        }
    }
}

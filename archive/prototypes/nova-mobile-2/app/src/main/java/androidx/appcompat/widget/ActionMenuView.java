package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.gms.common.api.Api;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements e.b, androidx.appcompat.view.menu.j {

    /* renamed from: f, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f1145f;

    /* renamed from: g, reason: collision with root package name */
    public Context f1146g;

    /* renamed from: h, reason: collision with root package name */
    public int f1147h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1148i;

    /* renamed from: j, reason: collision with root package name */
    public androidx.appcompat.widget.c f1149j;

    /* renamed from: k, reason: collision with root package name */
    public i.a f1150k;

    /* renamed from: l, reason: collision with root package name */
    public e.a f1151l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1152m;

    /* renamed from: n, reason: collision with root package name */
    public int f1153n;

    /* renamed from: o, reason: collision with root package name */
    public int f1154o;

    /* renamed from: p, reason: collision with root package name */
    public int f1155p;

    /* renamed from: q, reason: collision with root package name */
    public e f1156q;

    /* loaded from: classes.dex */
    public interface a {
        boolean a();

        boolean b();
    }

    /* loaded from: classes.dex */
    public static class b implements i.a {
        @Override // androidx.appcompat.view.menu.i.a
        public boolean a(androidx.appcompat.view.menu.e eVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
        }
    }

    /* loaded from: classes.dex */
    public static class c extends LinearLayoutCompat.a {

        /* renamed from: a, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1157a;

        /* renamed from: b, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1158b;

        /* renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f1159c;

        /* renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1160d;

        /* renamed from: e, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f1161e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f1162f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.f1157a = cVar.f1157a;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f1157a = false;
        }
    }

    /* loaded from: classes.dex */
    public class d implements e.a {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            e eVar2 = ActionMenuView.this.f1156q;
            return eVar2 != null && eVar2.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
            e.a aVar = ActionMenuView.this.f1151l;
            if (aVar != null) {
                aVar.onMenuModeChange(eVar);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public static int n(View view, int i10, int i11, int i12, int i13) {
        c cVar = (c) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i12) - i13, View.MeasureSpec.getMode(i12));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z10 = actionMenuItemView != null && actionMenuItemView.c();
        int i14 = 2;
        if (i11 <= 0 || (z10 && i11 < 2)) {
            i14 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i11 * i10, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i15 = measuredWidth / i10;
            if (measuredWidth % i10 != 0) {
                i15++;
            }
            if (!z10 || i15 >= 2) {
                i14 = i15;
            }
        }
        cVar.f1160d = !cVar.f1157a && z10;
        cVar.f1158b = i14;
        view.measure(View.MeasureSpec.makeMeasureSpec(i10 * i14, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), makeMeasureSpec);
        return i14;
    }

    @Override // androidx.appcompat.view.menu.e.b
    public boolean a(androidx.appcompat.view.menu.g gVar) {
        return this.f1145f.performItemAction(gVar, 0);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    public void d() {
        androidx.appcompat.widget.c cVar = this.f1149j;
        if (cVar != null) {
            cVar.q();
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        c cVar;
        if (layoutParams != null) {
            if (layoutParams instanceof c) {
                cVar = new c((c) layoutParams);
            } else {
                cVar = new c(layoutParams);
            }
            if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
                ((LinearLayout.LayoutParams) cVar).gravity = 16;
            }
            return cVar;
        }
        return generateDefaultLayoutParams();
    }

    public Menu getMenu() {
        if (this.f1145f == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
            this.f1145f = eVar;
            eVar.setCallback(new d());
            androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(context);
            this.f1149j = cVar;
            cVar.B(true);
            androidx.appcompat.widget.c cVar2 = this.f1149j;
            i.a aVar = this.f1150k;
            if (aVar == null) {
                aVar = new b();
            }
            cVar2.setCallback(aVar);
            this.f1145f.addMenuPresenter(this.f1149j, this.f1146g);
            this.f1149j.z(this);
        }
        return this.f1145f;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f1149j.s();
    }

    public int getPopupTheme() {
        return this.f1147h;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public c h() {
        c generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f1157a = true;
        return generateDefaultLayoutParams;
    }

    public boolean i(int i10) {
        boolean z10 = false;
        if (i10 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i10 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof a)) {
            z10 = false | ((a) childAt).a();
        }
        return (i10 <= 0 || !(childAt2 instanceof a)) ? z10 : z10 | ((a) childAt2).b();
    }

    @Override // androidx.appcompat.view.menu.j
    public void initialize(androidx.appcompat.view.menu.e eVar) {
        this.f1145f = eVar;
    }

    public boolean j() {
        androidx.appcompat.widget.c cVar = this.f1149j;
        return cVar != null && cVar.t();
    }

    public boolean k() {
        androidx.appcompat.widget.c cVar = this.f1149j;
        return cVar != null && cVar.v();
    }

    public boolean l() {
        androidx.appcompat.widget.c cVar = this.f1149j;
        return cVar != null && cVar.w();
    }

    public boolean m() {
        return this.f1148i;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [boolean, int] */
    public final void o(int i10, int i11) {
        int i12;
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        boolean z12;
        int i15;
        int r14;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingTop, -2);
        int i16 = size - paddingLeft;
        int i17 = this.f1154o;
        int i18 = i16 / i17;
        int i19 = i16 % i17;
        if (i18 == 0) {
            setMeasuredDimension(i16, 0);
            return;
        }
        int i20 = i17 + (i19 / i18);
        int childCount = getChildCount();
        int i21 = 0;
        int i22 = 0;
        boolean z13 = false;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        long j10 = 0;
        while (i22 < childCount) {
            View childAt = getChildAt(i22);
            int i26 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z14 = childAt instanceof ActionMenuItemView;
                int i27 = i23 + 1;
                if (z14) {
                    int i28 = this.f1155p;
                    i15 = i27;
                    r14 = 0;
                    childAt.setPadding(i28, 0, i28, 0);
                } else {
                    i15 = i27;
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f1162f = r14;
                cVar.f1159c = r14;
                cVar.f1158b = r14;
                cVar.f1160d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                cVar.f1161e = z14 && ((ActionMenuItemView) childAt).c();
                int n10 = n(childAt, i20, cVar.f1157a ? 1 : i18, childMeasureSpec, paddingTop);
                i24 = Math.max(i24, n10);
                if (cVar.f1160d) {
                    i25++;
                }
                if (cVar.f1157a) {
                    z13 = true;
                }
                i18 -= n10;
                i21 = Math.max(i21, childAt.getMeasuredHeight());
                if (n10 == 1) {
                    j10 |= 1 << i22;
                    i21 = i21;
                }
                i23 = i15;
            }
            i22++;
            size2 = i26;
        }
        int i29 = size2;
        boolean z15 = z13 && i23 == 2;
        boolean z16 = false;
        while (i25 > 0 && i18 > 0) {
            int i30 = 0;
            int i31 = 0;
            int i32 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            long j11 = 0;
            while (i31 < childCount) {
                boolean z17 = z16;
                c cVar2 = (c) getChildAt(i31).getLayoutParams();
                int i33 = i21;
                if (cVar2.f1160d) {
                    int i34 = cVar2.f1158b;
                    if (i34 < i32) {
                        j11 = 1 << i31;
                        i32 = i34;
                        i30 = 1;
                    } else if (i34 == i32) {
                        i30++;
                        j11 |= 1 << i31;
                    }
                }
                i31++;
                i21 = i33;
                z16 = z17;
            }
            z10 = z16;
            i14 = i21;
            j10 |= j11;
            if (i30 > i18) {
                i12 = mode;
                i13 = i16;
                break;
            }
            int i35 = i32 + 1;
            int i36 = 0;
            while (i36 < childCount) {
                View childAt2 = getChildAt(i36);
                c cVar3 = (c) childAt2.getLayoutParams();
                int i37 = i16;
                int i38 = mode;
                long j12 = 1 << i36;
                if ((j11 & j12) == 0) {
                    if (cVar3.f1158b == i35) {
                        j10 |= j12;
                    }
                    z12 = z15;
                } else {
                    if (z15 && cVar3.f1161e && i18 == 1) {
                        int i39 = this.f1155p;
                        z12 = z15;
                        childAt2.setPadding(i39 + i20, 0, i39, 0);
                    } else {
                        z12 = z15;
                    }
                    cVar3.f1158b++;
                    cVar3.f1162f = true;
                    i18--;
                }
                i36++;
                mode = i38;
                i16 = i37;
                z15 = z12;
            }
            i21 = i14;
            z16 = true;
        }
        i12 = mode;
        i13 = i16;
        z10 = z16;
        i14 = i21;
        boolean z18 = !z13 && i23 == 1;
        if (i18 <= 0 || j10 == 0 || (i18 >= i23 - 1 && !z18 && i24 <= 1)) {
            z11 = z10;
        } else {
            float bitCount = Long.bitCount(j10);
            if (!z18) {
                if ((j10 & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).f1161e) {
                    bitCount -= 0.5f;
                }
                int i40 = childCount - 1;
                if ((j10 & (1 << i40)) != 0 && !((c) getChildAt(i40).getLayoutParams()).f1161e) {
                    bitCount -= 0.5f;
                }
            }
            int i41 = bitCount > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? (int) ((i18 * i20) / bitCount) : 0;
            z11 = z10;
            for (int i42 = 0; i42 < childCount; i42++) {
                if ((j10 & (1 << i42)) != 0) {
                    View childAt3 = getChildAt(i42);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f1159c = i41;
                        cVar4.f1162f = true;
                        if (i42 == 0 && !cVar4.f1161e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i41) / 2;
                        }
                    } else if (cVar4.f1157a) {
                        cVar4.f1159c = i41;
                        cVar4.f1162f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i41) / 2;
                    } else {
                        if (i42 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i41 / 2;
                        }
                        if (i42 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i41 / 2;
                        }
                    }
                    z11 = true;
                }
            }
        }
        if (z11) {
            for (int i43 = 0; i43 < childCount; i43++) {
                View childAt4 = getChildAt(i43);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f1162f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f1158b * i20) + cVar5.f1159c, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i13, i12 != 1073741824 ? i14 : i29);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.f1149j;
        if (cVar != null) {
            cVar.updateMenuView(false);
            if (this.f1149j.w()) {
                this.f1149j.t();
                this.f1149j.C();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int width;
        int i14;
        if (!this.f1152m) {
            super.onLayout(z10, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i15 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i16 = i12 - i10;
        int paddingRight = (i16 - getPaddingRight()) - getPaddingLeft();
        boolean b10 = c1.b(this);
        int i17 = 0;
        int i18 = 0;
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.f1157a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (i(i19)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b10) {
                        i14 = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = i14 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        i14 = width - measuredWidth;
                    }
                    int i20 = i15 - (measuredHeight / 2);
                    childAt.layout(i14, i20, width, measuredHeight + i20);
                    paddingRight -= measuredWidth;
                    i17 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    i(i19);
                    i18++;
                }
            }
        }
        if (childCount == 1 && i17 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i21 = (i16 / 2) - (measuredWidth2 / 2);
            int i22 = i15 - (measuredHeight2 / 2);
            childAt2.layout(i21, i22, measuredWidth2 + i21, measuredHeight2 + i22);
            return;
        }
        int i23 = i18 - (i17 ^ 1);
        int max = Math.max(0, i23 > 0 ? paddingRight / i23 : 0);
        if (b10) {
            int width2 = getWidth() - getPaddingRight();
            for (int i24 = 0; i24 < childCount; i24++) {
                View childAt3 = getChildAt(i24);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f1157a) {
                    int i25 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i26 = i15 - (measuredHeight3 / 2);
                    childAt3.layout(i25 - measuredWidth3, i26, i25, measuredHeight3 + i26);
                    width2 = i25 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i27 = 0; i27 < childCount; i27++) {
            View childAt4 = getChildAt(i27);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f1157a) {
                int i28 = paddingLeft + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i29 = i15 - (measuredHeight4 / 2);
                childAt4.layout(i28, i29, i28 + measuredWidth4, measuredHeight4 + i29);
                paddingLeft = i28 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + max;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i10, int i11) {
        androidx.appcompat.view.menu.e eVar;
        boolean z10 = this.f1152m;
        boolean z11 = View.MeasureSpec.getMode(i10) == 1073741824;
        this.f1152m = z11;
        if (z10 != z11) {
            this.f1153n = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.f1152m && (eVar = this.f1145f) != null && size != this.f1153n) {
            this.f1153n = size;
            eVar.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.f1152m && childCount > 0) {
            o(i10, i11);
            return;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            c cVar = (c) getChildAt(i12).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i10, i11);
    }

    public androidx.appcompat.view.menu.e p() {
        return this.f1145f;
    }

    public void q(i.a aVar, e.a aVar2) {
        this.f1150k = aVar;
        this.f1151l = aVar2;
    }

    public boolean r() {
        androidx.appcompat.widget.c cVar = this.f1149j;
        return cVar != null && cVar.C();
    }

    public void setExpandedActionViewsExclusive(boolean z10) {
        this.f1149j.y(z10);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.f1156q = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f1149j.A(drawable);
    }

    public void setOverflowReserved(boolean z10) {
        this.f1148i = z10;
    }

    public void setPopupTheme(int i10) {
        if (this.f1147h != i10) {
            this.f1147h = i10;
            if (i10 == 0) {
                this.f1146g = getContext();
            } else {
                this.f1146g = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.f1149j = cVar;
        cVar.z(this);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f1154o = (int) (56.0f * f10);
        this.f1155p = (int) (f10 * 4.0f);
        this.f1146g = context;
        this.f1147h = 0;
    }
}

package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* renamed from: n, reason: collision with root package name */
    public CharSequence f1107n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f1108o;

    /* renamed from: p, reason: collision with root package name */
    public View f1109p;

    /* renamed from: q, reason: collision with root package name */
    public View f1110q;

    /* renamed from: r, reason: collision with root package name */
    public View f1111r;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f1112s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f1113t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f1114u;

    /* renamed from: v, reason: collision with root package name */
    public int f1115v;

    /* renamed from: w, reason: collision with root package name */
    public int f1116w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1117x;

    /* renamed from: y, reason: collision with root package name */
    public int f1118y;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ j.b f1119f;

        public a(j.b bVar) {
            this.f1119f = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f1119f.a();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ q0.g0 f(int i10, long j10) {
        return super.f(i10, j10);
    }

    public void g() {
        if (this.f1109p == null) {
            k();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f1108o;
    }

    public CharSequence getTitle() {
        return this.f1107n;
    }

    public void h(j.b bVar) {
        View view = this.f1109p;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f1118y, (ViewGroup) this, false);
            this.f1109p = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f1109p);
        }
        View findViewById = this.f1109p.findViewById(d.f.f5266i);
        this.f1110q = findViewById;
        findViewById.setOnClickListener(new a(bVar));
        androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) bVar.c();
        c cVar = this.f1249i;
        if (cVar != null) {
            cVar.q();
        }
        c cVar2 = new c(getContext());
        this.f1249i = cVar2;
        cVar2.B(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        eVar.addMenuPresenter(this.f1249i, this.f1247g);
        ActionMenuView actionMenuView = (ActionMenuView) this.f1249i.g(this);
        this.f1248h = actionMenuView;
        q0.b0.x0(actionMenuView, null);
        addView(this.f1248h, layoutParams);
    }

    public final void i() {
        if (this.f1112s == null) {
            LayoutInflater.from(getContext()).inflate(d.g.f5284a, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1112s = linearLayout;
            this.f1113t = (TextView) linearLayout.findViewById(d.f.f5262e);
            this.f1114u = (TextView) this.f1112s.findViewById(d.f.f5261d);
            if (this.f1115v != 0) {
                this.f1113t.setTextAppearance(getContext(), this.f1115v);
            }
            if (this.f1116w != 0) {
                this.f1114u.setTextAppearance(getContext(), this.f1116w);
            }
        }
        this.f1113t.setText(this.f1107n);
        this.f1114u.setText(this.f1108o);
        boolean z10 = !TextUtils.isEmpty(this.f1107n);
        boolean z11 = !TextUtils.isEmpty(this.f1108o);
        int i10 = 0;
        this.f1114u.setVisibility(z11 ? 0 : 8);
        LinearLayout linearLayout2 = this.f1112s;
        if (!z10 && !z11) {
            i10 = 8;
        }
        linearLayout2.setVisibility(i10);
        if (this.f1112s.getParent() == null) {
            addView(this.f1112s);
        }
    }

    public boolean j() {
        return this.f1117x;
    }

    public void k() {
        removeAllViews();
        this.f1111r = null;
        this.f1248h = null;
        this.f1249i = null;
        View view = this.f1110q;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public boolean l() {
        c cVar = this.f1249i;
        if (cVar != null) {
            return cVar.C();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f1249i;
        if (cVar != null) {
            cVar.t();
            this.f1249i.u();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean b10 = c1.b(this);
        int paddingRight = b10 ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1109p;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1109p.getLayoutParams();
            int i14 = b10 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = b10 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int d10 = androidx.appcompat.widget.a.d(paddingRight, i14, b10);
            paddingRight = androidx.appcompat.widget.a.d(d10 + e(this.f1109p, d10, paddingTop, paddingTop2, b10), i15, b10);
        }
        int i16 = paddingRight;
        LinearLayout linearLayout = this.f1112s;
        if (linearLayout != null && this.f1111r == null && linearLayout.getVisibility() != 8) {
            i16 += e(this.f1112s, i16, paddingTop, paddingTop2, b10);
        }
        int i17 = i16;
        View view2 = this.f1111r;
        if (view2 != null) {
            e(view2, i17, paddingTop, paddingTop2, b10);
        }
        int paddingLeft = b10 ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f1248h;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !b10);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int i12 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
        if (mode == 1073741824) {
            if (View.MeasureSpec.getMode(i11) != 0) {
                int size = View.MeasureSpec.getSize(i10);
                int i13 = this.f1250j;
                if (i13 <= 0) {
                    i13 = View.MeasureSpec.getSize(i11);
                }
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int i14 = i13 - paddingTop;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, Integer.MIN_VALUE);
                View view = this.f1109p;
                if (view != null) {
                    int c10 = c(view, paddingLeft, makeMeasureSpec, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1109p.getLayoutParams();
                    paddingLeft = c10 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
                }
                ActionMenuView actionMenuView = this.f1248h;
                if (actionMenuView != null && actionMenuView.getParent() == this) {
                    paddingLeft = c(this.f1248h, paddingLeft, makeMeasureSpec, 0);
                }
                LinearLayout linearLayout = this.f1112s;
                if (linearLayout != null && this.f1111r == null) {
                    if (this.f1117x) {
                        this.f1112s.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f1112s.getMeasuredWidth();
                        boolean z10 = measuredWidth <= paddingLeft;
                        if (z10) {
                            paddingLeft -= measuredWidth;
                        }
                        this.f1112s.setVisibility(z10 ? 0 : 8);
                    } else {
                        paddingLeft = c(linearLayout, paddingLeft, makeMeasureSpec, 0);
                    }
                }
                View view2 = this.f1111r;
                if (view2 != null) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    int i15 = layoutParams.width;
                    int i16 = i15 != -2 ? NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH : Integer.MIN_VALUE;
                    if (i15 >= 0) {
                        paddingLeft = Math.min(i15, paddingLeft);
                    }
                    int i17 = layoutParams.height;
                    if (i17 == -2) {
                        i12 = Integer.MIN_VALUE;
                    }
                    if (i17 >= 0) {
                        i14 = Math.min(i17, i14);
                    }
                    this.f1111r.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i16), View.MeasureSpec.makeMeasureSpec(i14, i12));
                }
                if (this.f1250j <= 0) {
                    int childCount = getChildCount();
                    int i18 = 0;
                    for (int i19 = 0; i19 < childCount; i19++) {
                        int measuredHeight = getChildAt(i19).getMeasuredHeight() + paddingTop;
                        if (measuredHeight > i18) {
                            i18 = measuredHeight;
                        }
                    }
                    setMeasuredDimension(size, i18);
                    return;
                }
                setMeasuredDimension(size, i13);
                return;
            }
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i10) {
        this.f1250j = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1111r;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1111r = view;
        if (view != null && (linearLayout = this.f1112s) != null) {
            removeView(linearLayout);
            this.f1112s = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1108o = charSequence;
        i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1107n = charSequence;
        i();
        q0.b0.w0(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.f1117x) {
            requestLayout();
        }
        this.f1117x = z10;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.f5191j);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        v0 v10 = v0.v(context, attributeSet, d.j.f5446y, i10, 0);
        q0.b0.x0(this, v10.g(d.j.f5451z));
        this.f1115v = v10.n(d.j.D, 0);
        this.f1116w = v10.n(d.j.C, 0);
        this.f1250j = v10.m(d.j.B, 0);
        this.f1118y = v10.n(d.j.A, d.g.f5287d);
        v10.w();
    }
}

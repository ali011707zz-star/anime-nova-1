package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public boolean f1097f;

    /* renamed from: g, reason: collision with root package name */
    public View f1098g;

    /* renamed from: h, reason: collision with root package name */
    public View f1099h;

    /* renamed from: i, reason: collision with root package name */
    public View f1100i;

    /* renamed from: j, reason: collision with root package name */
    public Drawable f1101j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f1102k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f1103l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1104m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1105n;

    /* renamed from: o, reason: collision with root package name */
    public int f1106o;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        q0.b0.x0(this, new b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.f5324a);
        this.f1101j = obtainStyledAttributes.getDrawable(d.j.f5330b);
        this.f1102k = obtainStyledAttributes.getDrawable(d.j.f5341d);
        this.f1106o = obtainStyledAttributes.getDimensionPixelSize(d.j.f5371j, -1);
        boolean z10 = true;
        if (getId() == d.f.H) {
            this.f1104m = true;
            this.f1103l = obtainStyledAttributes.getDrawable(d.j.f5336c);
        }
        obtainStyledAttributes.recycle();
        if (!this.f1104m ? this.f1101j != null || this.f1102k != null : this.f1103l != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    public final int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1101j;
        if (drawable != null && drawable.isStateful()) {
            this.f1101j.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1102k;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1102k.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1103l;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f1103l.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f1098g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1101j;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1102k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1103l;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1099h = findViewById(d.f.f5258a);
        this.f1100i = findViewById(d.f.f5263f);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1097f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        View view = this.f1098g;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i14 = layoutParams.bottomMargin;
            view.layout(i10, measuredHeight2 - i14, i12, measuredHeight - i14);
        }
        if (this.f1104m) {
            Drawable drawable2 = this.f1103l;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z11 = false;
            }
        } else {
            if (this.f1101j != null) {
                if (this.f1099h.getVisibility() == 0) {
                    this.f1101j.setBounds(this.f1099h.getLeft(), this.f1099h.getTop(), this.f1099h.getRight(), this.f1099h.getBottom());
                } else {
                    View view2 = this.f1100i;
                    if (view2 != null && view2.getVisibility() == 0) {
                        this.f1101j.setBounds(this.f1100i.getLeft(), this.f1100i.getTop(), this.f1100i.getRight(), this.f1100i.getBottom());
                    } else {
                        this.f1101j.setBounds(0, 0, 0, 0);
                    }
                }
                z12 = true;
            }
            this.f1105n = z13;
            if (!z13 || (drawable = this.f1102k) == null) {
                z11 = z12;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z11) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int a10;
        int i12;
        if (this.f1099h == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f1106o) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f1099h == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.f1098g;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        if (!b(this.f1099h)) {
            a10 = a(this.f1099h);
        } else {
            a10 = !b(this.f1100i) ? a(this.f1100i) : 0;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min(a10 + a(this.f1098g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i11) : Api.BaseClientBuilder.API_PRIORITY_OTHER));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1101j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1101j);
        }
        this.f1101j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1099h;
            if (view != null) {
                this.f1101j.setBounds(view.getLeft(), this.f1099h.getTop(), this.f1099h.getRight(), this.f1099h.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f1104m ? this.f1101j != null || this.f1102k != null : this.f1103l != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1103l;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1103l);
        }
        this.f1103l = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1104m && (drawable2 = this.f1103l) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1104m ? !(this.f1101j != null || this.f1102k != null) : this.f1103l == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1102k;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1102k);
        }
        this.f1102k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1105n && (drawable2 = this.f1102k) != null) {
                drawable2.setBounds(this.f1098g.getLeft(), this.f1098g.getTop(), this.f1098g.getRight(), this.f1098g.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f1104m ? this.f1101j != null || this.f1102k != null : this.f1103l != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(o0 o0Var) {
        View view = this.f1098g;
        if (view != null) {
            removeView(view);
        }
        this.f1098g = o0Var;
        if (o0Var != null) {
            addView(o0Var);
            ViewGroup.LayoutParams layoutParams = o0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            o0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f1097f = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f1101j;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f1102k;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f1103l;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f1101j && !this.f1104m) || (drawable == this.f1102k && this.f1105n) || ((drawable == this.f1103l && this.f1104m) || super.verifyDrawable(drawable));
    }
}

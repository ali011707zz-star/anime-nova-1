package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import java.util.ArrayList;
import q0.m0;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<View> f2050f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList<View> f2051g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f2052h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2053i;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(View view) {
        ArrayList<View> arrayList = this.f2051g;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f2050f == null) {
            this.f2050f = new ArrayList<>();
        }
        this.f2050f.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.A0(view) != null) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        if (FragmentManager.A0(view) != null) {
            return super.addViewInLayout(view, i10, layoutParams, z10);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        m0 f02;
        m0 w10 = m0.w(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f2052h;
        if (onApplyWindowInsetsListener != null) {
            f02 = m0.w(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets));
        } else {
            f02 = q0.b0.f0(this, w10);
        }
        if (!f02.p()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                q0.b0.i(getChildAt(i10), f02);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f2053i && this.f2050f != null) {
            for (int i10 = 0; i10 < this.f2050f.size(); i10++) {
                super.drawChild(canvas, this.f2050f.get(i10), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        ArrayList<View> arrayList;
        if (!this.f2053i || (arrayList = this.f2050f) == null || arrayList.size() <= 0 || !this.f2050f.contains(view)) {
            return super.drawChild(canvas, view, j10);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f2051g;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f2050f;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f2053i = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z10) {
        if (z10) {
            a(view);
        }
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        a(getChildAt(i10));
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            a(getChildAt(i12));
        }
        super.removeViewsInLayout(i10, i11);
    }

    public void setDrawDisappearingViewsLast(boolean z10) {
        this.f2053i = z10;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f2052h = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f2051g == null) {
                this.f2051g = new ArrayList<>();
            }
            this.f2051g.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        String str;
        this.f2053i = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c1.c.f3644h);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(c1.c.f3645i);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + "\"");
        }
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, FragmentManager fragmentManager) {
        super(context, attributeSet);
        String str;
        this.f2053i = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c1.c.f3644h);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(c1.c.f3645i) : classAttribute;
        String string = obtainStyledAttributes.getString(c1.c.f3646j);
        obtainStyledAttributes.recycle();
        int id2 = getId();
        Fragment h02 = fragmentManager.h0(id2);
        if (classAttribute != null && h02 == null) {
            if (id2 <= 0) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment a10 = fragmentManager.r0().a(context.getClassLoader(), classAttribute);
            a10.onInflate(context, attributeSet, (Bundle) null);
            fragmentManager.m().u(true).e(this, a10, string).l();
        }
        fragmentManager.V0(this);
    }
}

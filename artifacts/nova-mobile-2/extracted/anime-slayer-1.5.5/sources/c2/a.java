package c2;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.t;
import com.google.android.material.badge.BadgeDrawable;

/* compiled from: ViewPager2.java */
/* loaded from: classes.dex */
public final class a extends ViewGroup {

    /* renamed from: f, reason: collision with root package name */
    public final Rect f3649f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f3650g;

    /* renamed from: h, reason: collision with root package name */
    public int f3651h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3652i;

    /* renamed from: j, reason: collision with root package name */
    public LinearLayoutManager f3653j;

    /* renamed from: k, reason: collision with root package name */
    public int f3654k;

    /* renamed from: l, reason: collision with root package name */
    public Parcelable f3655l;

    /* renamed from: m, reason: collision with root package name */
    public RecyclerView f3656m;

    /* renamed from: n, reason: collision with root package name */
    public t f3657n;

    /* renamed from: o, reason: collision with root package name */
    public RecyclerView.m f3658o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3659p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3660q;

    /* renamed from: r, reason: collision with root package name */
    public int f3661r;

    /* compiled from: ViewPager2.java */
    /* renamed from: c2.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0073a {
        public void onPageScrollStateChanged(int i10) {
        }

        public void onPageScrolled(int i10, float f10, int i11) {
        }

        public void onPageSelected(int i10) {
        }
    }

    /* compiled from: ViewPager2.java */
    /* loaded from: classes.dex */
    public interface b {
    }

    public boolean a() {
        throw null;
    }

    public void b(AbstractC0073a abstractC0073a) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        RecyclerView.h adapter;
        if (this.f3654k == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f3655l;
        if (parcelable != null) {
            if (adapter instanceof androidx.viewpager2.adapter.a) {
                ((androidx.viewpager2.adapter.a) adapter).b(parcelable);
            }
            this.f3655l = null;
        }
        int max = Math.max(0, Math.min(this.f3654k, adapter.getItemCount() - 1));
        this.f3651h = max;
        this.f3654k = -1;
        this.f3656m.scrollToPosition(max);
        throw null;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.f3656m.canScrollHorizontally(i10);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.f3656m.canScrollVertically(i10);
    }

    public void d(int i10, boolean z10) {
        if (!a()) {
            e(i10, z10);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof c) {
            int i10 = ((c) parcelable).f3662f;
            sparseArray.put(this.f3656m.getId(), sparseArray.get(i10));
            sparseArray.remove(i10);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        c();
    }

    public void e(int i10, boolean z10) {
        RecyclerView.h adapter = getAdapter();
        if (adapter == null) {
            if (this.f3654k != -1) {
                this.f3654k = Math.max(i10, 0);
            }
        } else {
            if (adapter.getItemCount() <= 0) {
                return;
            }
            int min = Math.min(Math.max(i10, 0), adapter.getItemCount() - 1);
            int i11 = this.f3651h;
            if (min == i11) {
                throw null;
            }
            if (min == i11 && z10) {
                return;
            }
            this.f3651h = min;
            throw null;
        }
    }

    public void f(AbstractC0073a abstractC0073a) {
        throw null;
    }

    public void g() {
        t tVar = this.f3657n;
        if (tVar != null) {
            View findSnapView = tVar.findSnapView(this.f3653j);
            if (findSnapView == null) {
                return;
            }
            if (this.f3653j.getPosition(findSnapView) != this.f3651h && getScrollState() == 0) {
                throw null;
            }
            this.f3652i = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        throw null;
    }

    public RecyclerView.h getAdapter() {
        return this.f3656m.getAdapter();
    }

    public int getCurrentItem() {
        return this.f3651h;
    }

    public int getItemDecorationCount() {
        return this.f3656m.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f3661r;
    }

    public int getOrientation() {
        return this.f3653j.getOrientation();
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f3656m;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        throw null;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int measuredWidth = this.f3656m.getMeasuredWidth();
        int measuredHeight = this.f3656m.getMeasuredHeight();
        this.f3649f.left = getPaddingLeft();
        this.f3649f.right = (i12 - i10) - getPaddingRight();
        this.f3649f.top = getPaddingTop();
        this.f3649f.bottom = (i13 - i11) - getPaddingBottom();
        Gravity.apply(BadgeDrawable.TOP_START, measuredWidth, measuredHeight, this.f3649f, this.f3650g);
        RecyclerView recyclerView = this.f3656m;
        Rect rect = this.f3650g;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f3652i) {
            g();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        measureChild(this.f3656m, i10, i11);
        int measuredWidth = this.f3656m.getMeasuredWidth();
        int measuredHeight = this.f3656m.getMeasuredHeight();
        int measuredState = this.f3656m.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, measuredState), ViewGroup.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.f3654k = cVar.f3663g;
        this.f3655l = cVar.f3664h;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.f3662f = this.f3656m.getId();
        int i10 = this.f3654k;
        if (i10 == -1) {
            i10 = this.f3651h;
        }
        cVar.f3663g = i10;
        Parcelable parcelable = this.f3655l;
        if (parcelable != null) {
            cVar.f3664h = parcelable;
        } else {
            Object adapter = this.f3656m.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.a) {
                cVar.f3664h = ((androidx.viewpager2.adapter.a) adapter).a();
            }
        }
        return cVar;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(a.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i10, Bundle bundle) {
        throw null;
    }

    public void setAdapter(RecyclerView.h hVar) {
        this.f3656m.getAdapter();
        throw null;
    }

    public void setCurrentItem(int i10) {
        d(i10, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        super.setLayoutDirection(i10);
        throw null;
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1 && i10 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f3661r = i10;
        this.f3656m.requestLayout();
    }

    public void setOrientation(int i10) {
        this.f3653j.setOrientation(i10);
        throw null;
    }

    public void setPageTransformer(b bVar) {
        if (bVar != null) {
            if (!this.f3659p) {
                this.f3658o = this.f3656m.getItemAnimator();
                this.f3659p = true;
            }
            this.f3656m.setItemAnimator(null);
            throw null;
        }
        if (this.f3659p) {
            this.f3656m.setItemAnimator(this.f3658o);
            this.f3658o = null;
            this.f3659p = false;
            throw null;
        }
        throw null;
    }

    public void setUserInputEnabled(boolean z10) {
        this.f3660q = z10;
        throw null;
    }

    /* compiled from: ViewPager2.java */
    /* loaded from: classes.dex */
    public static class c extends View.BaseSavedState {
        public static final Parcelable.Creator<c> CREATOR = new C0074a();

        /* renamed from: f, reason: collision with root package name */
        public int f3662f;

        /* renamed from: g, reason: collision with root package name */
        public int f3663g;

        /* renamed from: h, reason: collision with root package name */
        public Parcelable f3664h;

        /* compiled from: ViewPager2.java */
        /* renamed from: c2.a$c$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0074a implements Parcelable.ClassLoaderCreator<c> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new c(parcel, classLoader) : new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        public final void a(Parcel parcel, ClassLoader classLoader) {
            this.f3662f = parcel.readInt();
            this.f3663g = parcel.readInt();
            this.f3664h = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f3662f);
            parcel.writeInt(this.f3663g);
            parcel.writeParcelable(this.f3664h, i10);
        }

        public c(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }
    }
}

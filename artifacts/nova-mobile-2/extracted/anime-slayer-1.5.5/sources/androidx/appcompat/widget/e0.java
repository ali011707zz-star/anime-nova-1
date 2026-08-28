package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: DropDownListView.java */
/* loaded from: classes.dex */
public class e0 extends ListView {

    /* renamed from: f, reason: collision with root package name */
    public final Rect f1307f;

    /* renamed from: g, reason: collision with root package name */
    public int f1308g;

    /* renamed from: h, reason: collision with root package name */
    public int f1309h;

    /* renamed from: i, reason: collision with root package name */
    public int f1310i;

    /* renamed from: j, reason: collision with root package name */
    public int f1311j;

    /* renamed from: k, reason: collision with root package name */
    public int f1312k;

    /* renamed from: l, reason: collision with root package name */
    public Field f1313l;

    /* renamed from: m, reason: collision with root package name */
    public a f1314m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1315n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1316o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1317p;

    /* renamed from: q, reason: collision with root package name */
    public q0.g0 f1318q;

    /* renamed from: r, reason: collision with root package name */
    public u0.g f1319r;

    /* renamed from: s, reason: collision with root package name */
    public b f1320s;

    /* compiled from: DropDownListView.java */
    /* loaded from: classes.dex */
    public static class a extends g.c {

        /* renamed from: f, reason: collision with root package name */
        public boolean f1321f;

        public a(Drawable drawable) {
            super(drawable);
            this.f1321f = true;
        }

        public void a(boolean z10) {
            this.f1321f = z10;
        }

        @Override // g.c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1321f) {
                super.draw(canvas);
            }
        }

        @Override // g.c, android.graphics.drawable.Drawable
        public void setHotspot(float f10, float f11) {
            if (this.f1321f) {
                super.setHotspot(f10, f11);
            }
        }

        @Override // g.c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i10, int i11, int i12, int i13) {
            if (this.f1321f) {
                super.setHotspotBounds(i10, i11, i12, i13);
            }
        }

        @Override // g.c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1321f) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // g.c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z10, boolean z11) {
            if (this.f1321f) {
                return super.setVisible(z10, z11);
            }
            return false;
        }
    }

    /* compiled from: DropDownListView.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        public void a() {
            e0 e0Var = e0.this;
            e0Var.f1320s = null;
            e0Var.removeCallbacks(this);
        }

        public void b() {
            e0.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            e0 e0Var = e0.this;
            e0Var.f1320s = null;
            e0Var.drawableStateChanged();
        }
    }

    public e0(Context context, boolean z10) {
        super(context, null, d.a.C);
        this.f1307f = new Rect();
        this.f1308g = 0;
        this.f1309h = 0;
        this.f1310i = 0;
        this.f1311j = 0;
        this.f1316o = z10;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1313l = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e10) {
            e10.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z10) {
        a aVar = this.f1314m;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    public final void a() {
        this.f1317p = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1312k - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        q0.g0 g0Var = this.f1318q;
        if (g0Var != null) {
            g0Var.b();
            this.f1318q = null;
        }
    }

    public final void b(View view, int i10) {
        performItemClick(view, i10, getItemIdAtPosition(i10));
    }

    public final void c(Canvas canvas) {
        Drawable selector;
        if (this.f1307f.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1307f);
        selector.draw(canvas);
    }

    public int d(int i10, int i11, int i12, int i13, int i14) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i15 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < count) {
            int itemViewType = adapter.getItemViewType(i16);
            if (itemViewType != i17) {
                view = null;
                i17 = itemViewType;
            }
            view = adapter.getView(i16, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i19 = layoutParams.height;
            if (i19 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i10, makeMeasureSpec);
            view.forceLayout();
            if (i16 > 0) {
                i15 += dividerHeight;
            }
            i15 += view.getMeasuredHeight();
            if (i15 >= i13) {
                return (i14 < 0 || i16 <= i14 || i18 <= 0 || i15 == i13) ? i13 : i18;
            }
            if (i14 >= 0 && i16 >= i14) {
                i18 = i15;
            }
            i16++;
        }
        return i15;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f1320s != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
    
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean e(MotionEvent motionEvent, int i10) {
        boolean z10;
        boolean z11;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            z10 = false;
        } else if (actionMasked == 2) {
            z10 = true;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i10);
        if (findPointerIndex >= 0) {
            int x10 = (int) motionEvent.getX(findPointerIndex);
            int y10 = (int) motionEvent.getY(findPointerIndex);
            int pointToPosition = pointToPosition(x10, y10);
            if (pointToPosition != -1) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                i(childAt, pointToPosition, x10, y10);
                if (actionMasked == 1) {
                    b(childAt, pointToPosition);
                }
                z11 = false;
                z10 = true;
                if (z10) {
                }
                a();
                if (z10) {
                }
                return z10;
            }
            z11 = true;
            if (z10 || z11) {
                a();
            }
            if (z10) {
                if (this.f1319r == null) {
                    this.f1319r = new u0.g(this);
                }
                this.f1319r.m(true);
                this.f1319r.onTouch(this, motionEvent);
            } else {
                u0.g gVar = this.f1319r;
                if (gVar != null) {
                    gVar.m(false);
                }
            }
            return z10;
        }
        z11 = false;
        z10 = false;
        if (z10) {
        }
        a();
        if (z10) {
        }
        return z10;
    }

    public final void f(int i10, View view) {
        Rect rect = this.f1307f;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1308g;
        rect.top -= this.f1309h;
        rect.right += this.f1310i;
        rect.bottom += this.f1311j;
        try {
            boolean z10 = this.f1313l.getBoolean(this);
            if (view.isEnabled() != z10) {
                this.f1313l.set(this, Boolean.valueOf(!z10));
                if (i10 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
        }
    }

    public final void g(int i10, View view) {
        Drawable selector = getSelector();
        boolean z10 = (selector == null || i10 == -1) ? false : true;
        if (z10) {
            selector.setVisible(false, false);
        }
        f(i10, view);
        if (z10) {
            Rect rect = this.f1307f;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            i0.a.k(selector, exactCenterX, exactCenterY);
        }
    }

    public final void h(int i10, View view, float f10, float f11) {
        g(i10, view);
        Drawable selector = getSelector();
        if (selector == null || i10 == -1) {
            return;
        }
        i0.a.k(selector, f10, f11);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1316o || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1316o || super.hasWindowFocus();
    }

    public final void i(View view, int i10, float f10, float f11) {
        View childAt;
        this.f1317p = true;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 21) {
            drawableHotspotChanged(f10, f11);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i12 = this.f1312k;
        if (i12 != -1 && (childAt = getChildAt(i12 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1312k = i10;
        float left = f10 - view.getLeft();
        float top = f11 - view.getTop();
        if (i11 >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        h(i10, view, f10, f11);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1316o || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1316o && this.f1315n) || super.isInTouchMode();
    }

    public final boolean j() {
        return this.f1317p;
    }

    public final void k() {
        Drawable selector = getSelector();
        if (selector != null && j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f1320s = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1320s == null) {
            b bVar = new b();
            this.f1320s = bVar;
            bVar.b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                k();
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1312k = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.f1320s;
        if (bVar != null) {
            bVar.a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z10) {
        this.f1315n = z10;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.f1314m = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1308g = rect.left;
        this.f1309h = rect.top;
        this.f1310i = rect.right;
        this.f1311j = rect.bottom;
    }
}

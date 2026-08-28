package androidx.drawerlayout.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpStatus;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;
import r0.c;
import x0.c;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    public static final int[] Q = {R.attr.colorPrimaryDark};
    public static final int[] R = {R.attr.layout_gravity};
    public static final boolean S;
    public static final boolean T;
    public float A;
    public float B;
    public Drawable C;
    public Drawable D;
    public Drawable E;
    public CharSequence F;
    public CharSequence G;
    public Object H;
    public boolean I;
    public Drawable J;
    public Drawable K;
    public Drawable L;
    public Drawable M;
    public final ArrayList<View> N;
    public Rect O;
    public Matrix P;

    /* renamed from: f, reason: collision with root package name */
    public final c f1876f;

    /* renamed from: g, reason: collision with root package name */
    public float f1877g;

    /* renamed from: h, reason: collision with root package name */
    public int f1878h;

    /* renamed from: i, reason: collision with root package name */
    public int f1879i;

    /* renamed from: j, reason: collision with root package name */
    public float f1880j;

    /* renamed from: k, reason: collision with root package name */
    public Paint f1881k;

    /* renamed from: l, reason: collision with root package name */
    public final x0.c f1882l;

    /* renamed from: m, reason: collision with root package name */
    public final x0.c f1883m;

    /* renamed from: n, reason: collision with root package name */
    public final g f1884n;

    /* renamed from: o, reason: collision with root package name */
    public final g f1885o;

    /* renamed from: p, reason: collision with root package name */
    public int f1886p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1887q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1888r;

    /* renamed from: s, reason: collision with root package name */
    public int f1889s;

    /* renamed from: t, reason: collision with root package name */
    public int f1890t;

    /* renamed from: u, reason: collision with root package name */
    public int f1891u;

    /* renamed from: v, reason: collision with root package name */
    public int f1892v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1893w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1894x;

    /* renamed from: y, reason: collision with root package name */
    public d f1895y;

    /* renamed from: z, reason: collision with root package name */
    public List<d> f1896z;

    /* loaded from: classes.dex */
    public class a implements View.OnApplyWindowInsetsListener {
        public a() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).S(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* loaded from: classes.dex */
    public class b extends q0.a {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f1898a = new Rect();

        public b() {
        }

        public final void a(r0.c cVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (DrawerLayout.A(childAt)) {
                    cVar.c(childAt);
                }
            }
        }

        public final void b(r0.c cVar, r0.c cVar2) {
            Rect rect = this.f1898a;
            cVar2.m(rect);
            cVar.X(rect);
            cVar2.n(rect);
            cVar.Y(rect);
            cVar.E0(cVar2.N());
            cVar.p0(cVar2.v());
            cVar.b0(cVar2.p());
            cVar.f0(cVar2.s());
            cVar.h0(cVar2.F());
            cVar.c0(cVar2.E());
            cVar.j0(cVar2.G());
            cVar.k0(cVar2.H());
            cVar.V(cVar2.B());
            cVar.x0(cVar2.L());
            cVar.n0(cVar2.I());
            cVar.a(cVar2.k());
        }

        @Override // q0.a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View p10 = DrawerLayout.this.p();
                if (p10 == null) {
                    return true;
                }
                CharSequence s10 = DrawerLayout.this.s(DrawerLayout.this.t(p10));
                if (s10 == null) {
                    return true;
                }
                text.add(s10);
                return true;
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // q0.a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            if (DrawerLayout.S) {
                super.onInitializeAccessibilityNodeInfo(view, cVar);
            } else {
                r0.c Q = r0.c.Q(cVar);
                super.onInitializeAccessibilityNodeInfo(view, Q);
                cVar.z0(view);
                Object K = b0.K(view);
                if (K instanceof View) {
                    cVar.r0((View) K);
                }
                b(cVar, Q);
                Q.S();
                a(cVar, (ViewGroup) view);
            }
            cVar.b0(DrawerLayout.class.getName());
            cVar.j0(false);
            cVar.k0(false);
            cVar.T(c.a.f12759e);
            cVar.T(c.a.f12760f);
        }

        @Override // q0.a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.S || DrawerLayout.A(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends q0.a {
        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            if (DrawerLayout.A(view)) {
                return;
            }
            cVar.r0(null);
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(int i10);

        void b(View view, float f10);

        void c(View view);

        void d(View view);
    }

    /* loaded from: classes.dex */
    public class g extends c.AbstractC0405c {

        /* renamed from: a, reason: collision with root package name */
        public final int f1909a;

        /* renamed from: b, reason: collision with root package name */
        public x0.c f1910b;

        /* renamed from: c, reason: collision with root package name */
        public final Runnable f1911c = new a();

        /* loaded from: classes.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.b();
            }
        }

        public g(int i10) {
            this.f1909a = i10;
        }

        public final void a() {
            View n10 = DrawerLayout.this.n(this.f1909a == 3 ? 5 : 3);
            if (n10 != null) {
                DrawerLayout.this.f(n10);
            }
        }

        public void b() {
            View n10;
            int width;
            int w10 = this.f1910b.w();
            boolean z10 = this.f1909a == 3;
            if (z10) {
                n10 = DrawerLayout.this.n(3);
                width = (n10 != null ? -n10.getWidth() : 0) + w10;
            } else {
                n10 = DrawerLayout.this.n(5);
                width = DrawerLayout.this.getWidth() - w10;
            }
            if (n10 != null) {
                if (((!z10 || n10.getLeft() >= width) && (z10 || n10.getLeft() <= width)) || DrawerLayout.this.r(n10) != 0) {
                    return;
                }
                e eVar = (e) n10.getLayoutParams();
                this.f1910b.O(n10, width, n10.getTop());
                eVar.f1902c = true;
                DrawerLayout.this.invalidate();
                a();
                DrawerLayout.this.b();
            }
        }

        public void c() {
            DrawerLayout.this.removeCallbacks(this.f1911c);
        }

        @Override // x0.c.AbstractC0405c
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            if (DrawerLayout.this.c(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i10, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i10, width));
        }

        @Override // x0.c.AbstractC0405c
        public int clampViewPositionVertical(View view, int i10, int i11) {
            return view.getTop();
        }

        public void d(x0.c cVar) {
            this.f1910b = cVar;
        }

        @Override // x0.c.AbstractC0405c
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.E(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // x0.c.AbstractC0405c
        public void onEdgeDragStarted(int i10, int i11) {
            View n10;
            if ((i10 & 1) == 1) {
                n10 = DrawerLayout.this.n(3);
            } else {
                n10 = DrawerLayout.this.n(5);
            }
            if (n10 == null || DrawerLayout.this.r(n10) != 0) {
                return;
            }
            this.f1910b.b(n10, i11);
        }

        @Override // x0.c.AbstractC0405c
        public boolean onEdgeLock(int i10) {
            return false;
        }

        @Override // x0.c.AbstractC0405c
        public void onEdgeTouched(int i10, int i11) {
            DrawerLayout.this.postDelayed(this.f1911c, 160L);
        }

        @Override // x0.c.AbstractC0405c
        public void onViewCaptured(View view, int i10) {
            ((e) view.getLayoutParams()).f1902c = false;
            a();
        }

        @Override // x0.c.AbstractC0405c
        public void onViewDragStateChanged(int i10) {
            DrawerLayout.this.W(this.f1909a, i10, this.f1910b.v());
        }

        @Override // x0.c.AbstractC0405c
        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
            float width = (DrawerLayout.this.c(view, 3) ? i10 + r3 : DrawerLayout.this.getWidth() - i10) / view.getWidth();
            DrawerLayout.this.U(view, width);
            view.setVisibility(width == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // x0.c.AbstractC0405c
        public void onViewReleased(View view, float f10, float f11) {
            int i10;
            float u10 = DrawerLayout.this.u(view);
            int width = view.getWidth();
            if (DrawerLayout.this.c(view, 3)) {
                i10 = (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && u10 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && u10 > 0.5f)) {
                    width2 -= width;
                }
                i10 = width2;
            }
            this.f1910b.M(i10, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // x0.c.AbstractC0405c
        public boolean tryCaptureView(View view, int i10) {
            return DrawerLayout.this.E(view) && DrawerLayout.this.c(view, this.f1909a) && DrawerLayout.this.r(view) == 0;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        S = i10 >= 19;
        T = i10 >= 21;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static boolean A(View view) {
        return (b0.C(view) == 4 || b0.C(view) == 2) ? false : true;
    }

    public static String w(int i10) {
        return (i10 & 3) == 3 ? "LEFT" : (i10 & 5) == 5 ? "RIGHT" : Integer.toHexString(i10);
    }

    public static boolean x(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public boolean B(View view) {
        return ((e) view.getLayoutParams()).f1900a == 0;
    }

    public boolean C(int i10) {
        View n10 = n(i10);
        if (n10 != null) {
            return D(n10);
        }
        return false;
    }

    public boolean D(View view) {
        if (E(view)) {
            return (((e) view.getLayoutParams()).f1903d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean E(View view) {
        int b10 = q0.e.b(((e) view.getLayoutParams()).f1900a, b0.E(view));
        return ((b10 & 3) == 0 && (b10 & 5) == 0) ? false : true;
    }

    public boolean F(int i10) {
        View n10 = n(i10);
        if (n10 != null) {
            return G(n10);
        }
        return false;
    }

    public boolean G(View view) {
        if (E(view)) {
            return ((e) view.getLayoutParams()).f1901b > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final boolean H(float f10, float f11, View view) {
        if (this.O == null) {
            this.O = new Rect();
        }
        view.getHitRect(this.O);
        return this.O.contains((int) f10, (int) f11);
    }

    public final boolean I(Drawable drawable, int i10) {
        if (drawable == null || !i0.a.h(drawable)) {
            return false;
        }
        i0.a.m(drawable, i10);
        return true;
    }

    public void J(View view, float f10) {
        float u10 = u(view);
        float width = view.getWidth();
        int i10 = ((int) (width * f10)) - ((int) (u10 * width));
        if (!c(view, 3)) {
            i10 = -i10;
        }
        view.offsetLeftAndRight(i10);
        U(view, f10);
    }

    public void K(int i10) {
        L(i10, true);
    }

    public void L(int i10, boolean z10) {
        View n10 = n(i10);
        if (n10 != null) {
            N(n10, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + w(i10));
    }

    public void M(View view) {
        N(view, true);
    }

    public void N(View view, boolean z10) {
        if (E(view)) {
            e eVar = (e) view.getLayoutParams();
            if (this.f1888r) {
                eVar.f1901b = 1.0f;
                eVar.f1903d = 1;
                V(view, true);
            } else if (z10) {
                eVar.f1903d |= 2;
                if (c(view, 3)) {
                    this.f1882l.O(view, 0, view.getTop());
                } else {
                    this.f1883m.O(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                J(view, 1.0f);
                W(eVar.f1900a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void O(d dVar) {
        List<d> list;
        if (dVar == null || (list = this.f1896z) == null) {
            return;
        }
        list.remove(dVar);
    }

    public final Drawable P() {
        int E = b0.E(this);
        if (E == 0) {
            Drawable drawable = this.J;
            if (drawable != null) {
                I(drawable, E);
                return this.J;
            }
        } else {
            Drawable drawable2 = this.K;
            if (drawable2 != null) {
                I(drawable2, E);
                return this.K;
            }
        }
        return this.L;
    }

    public final Drawable Q() {
        int E = b0.E(this);
        if (E == 0) {
            Drawable drawable = this.K;
            if (drawable != null) {
                I(drawable, E);
                return this.K;
            }
        } else {
            Drawable drawable2 = this.J;
            if (drawable2 != null) {
                I(drawable2, E);
                return this.J;
            }
        }
        return this.M;
    }

    public final void R() {
        if (T) {
            return;
        }
        this.D = P();
        this.E = Q();
    }

    public void S(Object obj, boolean z10) {
        this.H = obj;
        this.I = z10;
        setWillNotDraw(!z10 && getBackground() == null);
        requestLayout();
    }

    public void T(int i10, int i11) {
        View n10;
        int b10 = q0.e.b(i11, b0.E(this));
        if (i11 == 3) {
            this.f1889s = i10;
        } else if (i11 == 5) {
            this.f1890t = i10;
        } else if (i11 == 8388611) {
            this.f1891u = i10;
        } else if (i11 == 8388613) {
            this.f1892v = i10;
        }
        if (i10 != 0) {
            (b10 == 3 ? this.f1882l : this.f1883m).a();
        }
        if (i10 != 1) {
            if (i10 == 2 && (n10 = n(b10)) != null) {
                M(n10);
                return;
            }
            return;
        }
        View n11 = n(b10);
        if (n11 != null) {
            f(n11);
        }
    }

    public void U(View view, float f10) {
        e eVar = (e) view.getLayoutParams();
        if (f10 == eVar.f1901b) {
            return;
        }
        eVar.f1901b = f10;
        l(view, f10);
    }

    public final void V(View view, boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((!z10 && !E(childAt)) || (z10 && childAt == view)) {
                b0.E0(childAt, 1);
            } else {
                b0.E0(childAt, 4);
            }
        }
    }

    public void W(int i10, int i11, View view) {
        int z10 = this.f1882l.z();
        int z11 = this.f1883m.z();
        int i12 = 2;
        if (z10 == 1 || z11 == 1) {
            i12 = 1;
        } else if (z10 != 2 && z11 != 2) {
            i12 = 0;
        }
        if (view != null && i11 == 0) {
            float f10 = ((e) view.getLayoutParams()).f1901b;
            if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                j(view);
            } else if (f10 == 1.0f) {
                k(view);
            }
        }
        if (i12 != this.f1886p) {
            this.f1886p = i12;
            List<d> list = this.f1896z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1896z.get(size).a(i12);
                }
            }
        }
    }

    public void a(d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.f1896z == null) {
            this.f1896z = new ArrayList();
        }
        this.f1896z.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (E(childAt)) {
                if (D(childAt)) {
                    childAt.addFocusables(arrayList, i10, i11);
                    z10 = true;
                }
            } else {
                this.N.add(childAt);
            }
        }
        if (!z10) {
            int size = this.N.size();
            for (int i13 = 0; i13 < size; i13++) {
                View view = this.N.get(i13);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i10, i11);
                }
            }
        }
        this.N.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (o() == null && !E(view)) {
            b0.E0(view, 1);
        } else {
            b0.E0(view, 4);
        }
        if (S) {
            return;
        }
        b0.t0(view, this.f1876f);
    }

    public void b() {
        if (this.f1894x) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.f1894x = true;
    }

    public boolean c(View view, int i10) {
        return (t(view) & i10) == i10;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        for (int i10 = 0; i10 < childCount; i10++) {
            f10 = Math.max(f10, ((e) getChildAt(i10).getLayoutParams()).f1901b);
        }
        this.f1880j = f10;
        boolean m10 = this.f1882l.m(true);
        boolean m11 = this.f1883m.m(true);
        if (m10 || m11) {
            b0.k0(this);
        }
    }

    public void d(int i10) {
        e(i10, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() != 10 && this.f1880j > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            int childCount = getChildCount();
            if (childCount == 0) {
                return false;
            }
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            for (int i10 = childCount - 1; i10 >= 0; i10--) {
                View childAt = getChildAt(i10);
                if (H(x10, y10, childAt) && !B(childAt) && m(motionEvent, childAt)) {
                    return true;
                }
            }
            return false;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        int height = getHeight();
        boolean B = B(view);
        int width = getWidth();
        int save = canvas.save();
        int i10 = 0;
        if (B) {
            int childCount = getChildCount();
            int i11 = 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (childAt != view && childAt.getVisibility() == 0 && x(childAt) && E(childAt) && childAt.getHeight() >= height) {
                    if (c(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i11) {
                            i11 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i11, 0, width, getHeight());
            i10 = i11;
        }
        boolean drawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(save);
        float f10 = this.f1880j;
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && B) {
            this.f1881k.setColor((this.f1879i & 16777215) | (((int) ((((-16777216) & r2) >>> 24) * f10)) << 24));
            canvas.drawRect(i10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, width, getHeight(), this.f1881k);
        } else if (this.D != null && c(view, 3)) {
            int intrinsicWidth = this.D.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min(right2 / this.f1882l.w(), 1.0f));
            this.D.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.D.setAlpha((int) (max * 255.0f));
            this.D.draw(canvas);
        } else if (this.E != null && c(view, 5)) {
            int intrinsicWidth2 = this.E.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Math.min((getWidth() - left2) / this.f1883m.w(), 1.0f));
            this.E.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.E.setAlpha((int) (max2 * 255.0f));
            this.E.draw(canvas);
        }
        return drawChild;
    }

    public void e(int i10, boolean z10) {
        View n10 = n(i10);
        if (n10 != null) {
            g(n10, z10);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + w(i10));
    }

    public void f(View view) {
        g(view, true);
    }

    public void g(View view, boolean z10) {
        if (E(view)) {
            e eVar = (e) view.getLayoutParams();
            if (this.f1888r) {
                eVar.f1901b = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                eVar.f1903d = 0;
            } else if (z10) {
                eVar.f1903d |= 4;
                if (c(view, 3)) {
                    this.f1882l.O(view, -view.getWidth(), view.getTop());
                } else {
                    this.f1883m.O(view, getWidth(), view.getTop());
                }
            } else {
                J(view, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                W(eVar.f1900a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public float getDrawerElevation() {
        return T ? this.f1877g : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.C;
    }

    public void h() {
        i(false);
    }

    public void i(boolean z10) {
        boolean O;
        int childCount = getChildCount();
        boolean z11 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            e eVar = (e) childAt.getLayoutParams();
            if (E(childAt) && (!z10 || eVar.f1902c)) {
                int width = childAt.getWidth();
                if (c(childAt, 3)) {
                    O = this.f1882l.O(childAt, -width, childAt.getTop());
                } else {
                    O = this.f1883m.O(childAt, getWidth(), childAt.getTop());
                }
                z11 |= O;
                eVar.f1902c = false;
            }
        }
        this.f1884n.c();
        this.f1885o.c();
        if (z11) {
            invalidate();
        }
    }

    public void j(View view) {
        View rootView;
        e eVar = (e) view.getLayoutParams();
        if ((eVar.f1903d & 1) == 1) {
            eVar.f1903d = 0;
            List<d> list = this.f1896z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1896z.get(size).d(view);
                }
            }
            V(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    public void k(View view) {
        e eVar = (e) view.getLayoutParams();
        if ((eVar.f1903d & 1) == 0) {
            eVar.f1903d = 1;
            List<d> list = this.f1896z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1896z.get(size).c(view);
                }
            }
            V(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    public void l(View view, float f10) {
        List<d> list = this.f1896z;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1896z.get(size).b(view, f10);
            }
        }
    }

    public final boolean m(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent v10 = v(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(v10);
            v10.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    public View n(int i10) {
        int b10 = q0.e.b(i10, b0.E(this)) & 7;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if ((t(childAt) & 7) == b10) {
                return childAt;
            }
        }
        return null;
    }

    public View o() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((((e) childAt.getLayoutParams()).f1903d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1888r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1888r = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.I || this.C == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.H) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop > 0) {
            this.C.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.C.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View t10;
        int actionMasked = motionEvent.getActionMasked();
        boolean N = this.f1882l.N(motionEvent) | this.f1883m.N(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f1882l.d(3)) {
                        this.f1884n.c();
                        this.f1885o.c();
                    }
                }
                z10 = false;
            }
            i(true);
            this.f1893w = false;
            this.f1894x = false;
            z10 = false;
        } else {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.A = x10;
            this.B = y10;
            z10 = this.f1880j > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && (t10 = this.f1882l.t((int) x10, (int) y10)) != null && B(t10);
            this.f1893w = false;
            this.f1894x = false;
        }
        return N || z10 || y() || this.f1894x;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 == 4 && z()) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            View p10 = p();
            if (p10 != null && r(p10) == 0) {
                h();
            }
            return p10 != null;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        float f10;
        int i14;
        this.f1887q = true;
        int i15 = i12 - i10;
        int childCount = getChildCount();
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (B(childAt)) {
                    int i17 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
                    childAt.layout(i17, ((ViewGroup.MarginLayoutParams) eVar).topMargin, childAt.getMeasuredWidth() + i17, ((ViewGroup.MarginLayoutParams) eVar).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (c(childAt, 3)) {
                        float f11 = measuredWidth;
                        i14 = (-measuredWidth) + ((int) (eVar.f1901b * f11));
                        f10 = (measuredWidth + i14) / f11;
                    } else {
                        float f12 = measuredWidth;
                        f10 = (i15 - r11) / f12;
                        i14 = i15 - ((int) (eVar.f1901b * f12));
                    }
                    boolean z11 = f10 != eVar.f1901b;
                    int i18 = eVar.f1900a & 112;
                    if (i18 == 16) {
                        int i19 = i13 - i11;
                        int i20 = (i19 - measuredHeight) / 2;
                        int i21 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                        if (i20 < i21) {
                            i20 = i21;
                        } else {
                            int i22 = i20 + measuredHeight;
                            int i23 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                            if (i22 > i19 - i23) {
                                i20 = (i19 - i23) - measuredHeight;
                            }
                        }
                        childAt.layout(i14, i20, measuredWidth + i14, measuredHeight + i20);
                    } else if (i18 != 80) {
                        int i24 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                        childAt.layout(i14, i24, measuredWidth + i14, measuredHeight + i24);
                    } else {
                        int i25 = i13 - i11;
                        childAt.layout(i14, (i25 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i14, i25 - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
                    }
                    if (z11) {
                        U(childAt, f10);
                    }
                    int i26 = eVar.f1901b > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? 0 : 4;
                    if (childAt.getVisibility() != i26) {
                        childAt.setVisibility(i26);
                    }
                }
            }
        }
        this.f1887q = false;
        this.f1888r = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = HttpStatus.SC_MULTIPLE_CHOICES;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = HttpStatus.SC_MULTIPLE_CHOICES;
            }
        }
        setMeasuredDimension(size, size2);
        int i12 = 0;
        boolean z10 = this.H != null && b0.B(this);
        int E = b0.E(this);
        int childCount = getChildCount();
        int i13 = 0;
        boolean z11 = false;
        boolean z12 = false;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                if (z10) {
                    int b10 = q0.e.b(eVar.f1900a, E);
                    if (b0.B(childAt)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            WindowInsets windowInsets = (WindowInsets) this.H;
                            if (b10 == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i12, windowInsets.getSystemWindowInsetBottom());
                            } else if (b10 == 5) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(i12, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsets);
                        }
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        WindowInsets windowInsets2 = (WindowInsets) this.H;
                        if (b10 == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), i12, windowInsets2.getSystemWindowInsetBottom());
                        } else if (b10 == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(i12, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) eVar).topMargin = windowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = windowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (B(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) eVar).leftMargin) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) eVar).topMargin) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                } else if (E(childAt)) {
                    if (T) {
                        float y10 = b0.y(childAt);
                        float f10 = this.f1877g;
                        if (y10 != f10) {
                            b0.B0(childAt, f10);
                        }
                    }
                    int t10 = t(childAt) & 7;
                    boolean z13 = t10 == 3;
                    if ((z13 && z11) || (!z13 && z12)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + w(t10) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (z13) {
                        z11 = true;
                    } else {
                        z12 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i10, this.f1878h + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin, ((ViewGroup.MarginLayoutParams) eVar).width), ViewGroup.getChildMeasureSpec(i11, ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, ((ViewGroup.MarginLayoutParams) eVar).height));
                    i13++;
                    i12 = 0;
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i13 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
            i13++;
            i12 = 0;
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View n10;
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.getSuperState());
        int i10 = fVar.f1904f;
        if (i10 != 0 && (n10 = n(i10)) != null) {
            M(n10);
        }
        int i11 = fVar.f1905g;
        if (i11 != 3) {
            T(i11, 3);
        }
        int i12 = fVar.f1906h;
        if (i12 != 3) {
            T(i12, 5);
        }
        int i13 = fVar.f1907i;
        if (i13 != 3) {
            T(i13, 8388611);
        }
        int i14 = fVar.f1908j;
        if (i14 != 3) {
            T(i14, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        R();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            e eVar = (e) getChildAt(i10).getLayoutParams();
            int i11 = eVar.f1903d;
            boolean z10 = i11 == 1;
            boolean z11 = i11 == 2;
            if (z10 || z11) {
                fVar.f1904f = eVar.f1900a;
                break;
            }
        }
        fVar.f1905g = this.f1889s;
        fVar.f1906h = this.f1890t;
        fVar.f1907i = this.f1891u;
        fVar.f1908j = this.f1892v;
        return fVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        View o10;
        this.f1882l.E(motionEvent);
        this.f1883m.E(motionEvent);
        int action = motionEvent.getAction() & BaseProgressIndicator.MAX_ALPHA;
        if (action == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            this.A = x10;
            this.B = y10;
            this.f1893w = false;
            this.f1894x = false;
        } else if (action == 1) {
            float x11 = motionEvent.getX();
            float y11 = motionEvent.getY();
            View t10 = this.f1882l.t((int) x11, (int) y11);
            if (t10 != null && B(t10)) {
                float f10 = x11 - this.A;
                float f11 = y11 - this.B;
                int y12 = this.f1882l.y();
                if ((f10 * f10) + (f11 * f11) < y12 * y12 && (o10 = o()) != null && r(o10) != 2) {
                    z10 = false;
                    i(z10);
                    this.f1893w = false;
                }
            }
            z10 = true;
            i(z10);
            this.f1893w = false;
        } else if (action == 3) {
            i(true);
            this.f1893w = false;
            this.f1894x = false;
        }
        return true;
    }

    public View p() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (E(childAt) && G(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public int q(int i10) {
        int E = b0.E(this);
        if (i10 == 3) {
            int i11 = this.f1889s;
            if (i11 != 3) {
                return i11;
            }
            int i12 = E == 0 ? this.f1891u : this.f1892v;
            if (i12 != 3) {
                return i12;
            }
            return 0;
        }
        if (i10 == 5) {
            int i13 = this.f1890t;
            if (i13 != 3) {
                return i13;
            }
            int i14 = E == 0 ? this.f1892v : this.f1891u;
            if (i14 != 3) {
                return i14;
            }
            return 0;
        }
        if (i10 == 8388611) {
            int i15 = this.f1891u;
            if (i15 != 3) {
                return i15;
            }
            int i16 = E == 0 ? this.f1889s : this.f1890t;
            if (i16 != 3) {
                return i16;
            }
            return 0;
        }
        if (i10 != 8388613) {
            return 0;
        }
        int i17 = this.f1892v;
        if (i17 != 3) {
            return i17;
        }
        int i18 = E == 0 ? this.f1890t : this.f1889s;
        if (i18 != 3) {
            return i18;
        }
        return 0;
    }

    public int r(View view) {
        if (E(view)) {
            return q(((e) view.getLayoutParams()).f1900a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        this.f1893w = z10;
        if (z10) {
            i(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f1887q) {
            return;
        }
        super.requestLayout();
    }

    public CharSequence s(int i10) {
        int b10 = q0.e.b(i10, b0.E(this));
        if (b10 == 3) {
            return this.F;
        }
        if (b10 == 5) {
            return this.G;
        }
        return null;
    }

    public void setDrawerElevation(float f10) {
        this.f1877g = f10;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (E(childAt)) {
                b0.B0(childAt, this.f1877g);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(d dVar) {
        d dVar2 = this.f1895y;
        if (dVar2 != null) {
            O(dVar2);
        }
        if (dVar != null) {
            a(dVar);
        }
        this.f1895y = dVar;
    }

    public void setDrawerLockMode(int i10) {
        T(i10, 3);
        T(i10, 5);
    }

    public void setScrimColor(int i10) {
        this.f1879i = i10;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.C = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i10) {
        this.C = new ColorDrawable(i10);
        invalidate();
    }

    public int t(View view) {
        return q0.e.b(((e) view.getLayoutParams()).f1900a, b0.E(this));
    }

    public float u(View view) {
        return ((e) view.getLayoutParams()).f1901b;
    }

    public final MotionEvent v(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.P == null) {
                this.P = new Matrix();
            }
            matrix.invert(this.P);
            obtain.transform(this.P);
        }
        return obtain;
    }

    public final boolean y() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((e) getChildAt(i10).getLayoutParams()).f1902c) {
                return true;
            }
        }
        return false;
    }

    public final boolean z() {
        return p() != null;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1876f = new c();
        this.f1879i = -1728053248;
        this.f1881k = new Paint();
        this.f1888r = true;
        this.f1889s = 3;
        this.f1890t = 3;
        this.f1891u = 3;
        this.f1892v = 3;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        setDescendantFocusability(262144);
        float f10 = getResources().getDisplayMetrics().density;
        this.f1878h = (int) ((64.0f * f10) + 0.5f);
        float f11 = 400.0f * f10;
        g gVar = new g(3);
        this.f1884n = gVar;
        g gVar2 = new g(5);
        this.f1885o = gVar2;
        x0.c n10 = x0.c.n(this, 1.0f, gVar);
        this.f1882l = n10;
        n10.K(1);
        n10.L(f11);
        gVar.d(n10);
        x0.c n11 = x0.c.n(this, 1.0f, gVar2);
        this.f1883m = n11;
        n11.K(2);
        n11.L(f11);
        gVar2.d(n11);
        setFocusableInTouchMode(true);
        b0.E0(this, 1);
        b0.t0(this, new b());
        setMotionEventSplittingEnabled(false);
        if (b0.B(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new a());
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Q);
                try {
                    this.C = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.C = null;
            }
        }
        this.f1877g = f10 * 10.0f;
        this.N = new ArrayList<>();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setStatusBarBackground(int i10) {
        this.C = i10 != 0 ? f0.a.f(getContext(), i10) : null;
        invalidate();
    }

    /* loaded from: classes.dex */
    public static class e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f1900a;

        /* renamed from: b, reason: collision with root package name */
        public float f1901b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1902c;

        /* renamed from: d, reason: collision with root package name */
        public int f1903d;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1900a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.R);
            this.f1900a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public e(int i10, int i11) {
            super(i10, i11);
            this.f1900a = 0;
        }

        public e(e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.f1900a = 0;
            this.f1900a = eVar.f1900a;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1900a = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1900a = 0;
        }
    }

    /* loaded from: classes.dex */
    public static class f extends w0.a {
        public static final Parcelable.Creator<f> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f1904f;

        /* renamed from: g, reason: collision with root package name */
        public int f1905g;

        /* renamed from: h, reason: collision with root package name */
        public int f1906h;

        /* renamed from: i, reason: collision with root package name */
        public int f1907i;

        /* renamed from: j, reason: collision with root package name */
        public int f1908j;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.ClassLoaderCreator<f> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel) {
                return new f(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public f[] newArray(int i10) {
                return new f[i10];
            }
        }

        public f(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1904f = 0;
            this.f1904f = parcel.readInt();
            this.f1905g = parcel.readInt();
            this.f1906h = parcel.readInt();
            this.f1907i = parcel.readInt();
            this.f1908j = parcel.readInt();
        }

        @Override // w0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f1904f);
            parcel.writeInt(this.f1905g);
            parcel.writeInt(this.f1906h);
            parcel.writeInt(this.f1907i);
            parcel.writeInt(this.f1908j);
        }

        public f(Parcelable parcelable) {
            super(parcelable);
            this.f1904f = 0;
        }
    }
}

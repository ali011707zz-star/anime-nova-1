package x0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import java.util.Arrays;
import q0.b0;

/* compiled from: ViewDragHelper.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: w, reason: collision with root package name */
    public static final Interpolator f15649w = new a();

    /* renamed from: a, reason: collision with root package name */
    public int f15650a;

    /* renamed from: b, reason: collision with root package name */
    public int f15651b;

    /* renamed from: d, reason: collision with root package name */
    public float[] f15653d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f15654e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f15655f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f15656g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f15657h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f15658i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f15659j;

    /* renamed from: k, reason: collision with root package name */
    public int f15660k;

    /* renamed from: l, reason: collision with root package name */
    public VelocityTracker f15661l;

    /* renamed from: m, reason: collision with root package name */
    public float f15662m;

    /* renamed from: n, reason: collision with root package name */
    public float f15663n;

    /* renamed from: o, reason: collision with root package name */
    public int f15664o;

    /* renamed from: p, reason: collision with root package name */
    public int f15665p;

    /* renamed from: q, reason: collision with root package name */
    public OverScroller f15666q;

    /* renamed from: r, reason: collision with root package name */
    public final AbstractC0405c f15667r;

    /* renamed from: s, reason: collision with root package name */
    public View f15668s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f15669t;

    /* renamed from: u, reason: collision with root package name */
    public final ViewGroup f15670u;

    /* renamed from: c, reason: collision with root package name */
    public int f15652c = -1;

    /* renamed from: v, reason: collision with root package name */
    public final Runnable f15671v = new b();

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes.dex */
    public static class a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.J(0);
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* renamed from: x0.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0405c {
        public int clampViewPositionHorizontal(View view, int i10, int i11) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i10, int i11) {
            return 0;
        }

        public int getOrderedChildIndex(int i10) {
            return i10;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i10, int i11) {
        }

        public boolean onEdgeLock(int i10) {
            return false;
        }

        public void onEdgeTouched(int i10, int i11) {
        }

        public void onViewCaptured(View view, int i10) {
        }

        public void onViewDragStateChanged(int i10) {
        }

        public void onViewPositionChanged(View view, int i10, int i11, int i12, int i13) {
        }

        public void onViewReleased(View view, float f10, float f11) {
        }

        public abstract boolean tryCaptureView(View view, int i10);
    }

    public c(Context context, ViewGroup viewGroup, AbstractC0405c abstractC0405c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0405c != null) {
            this.f15670u = viewGroup;
            this.f15667r = abstractC0405c;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f15664o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f15651b = viewConfiguration.getScaledTouchSlop();
            this.f15662m = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f15663n = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f15666q = new OverScroller(context, f15649w);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    public static c n(ViewGroup viewGroup, float f10, AbstractC0405c abstractC0405c) {
        c o10 = o(viewGroup, abstractC0405c);
        o10.f15651b = (int) (o10.f15651b * (1.0f / f10));
        return o10;
    }

    public static c o(ViewGroup viewGroup, AbstractC0405c abstractC0405c) {
        return new c(viewGroup.getContext(), viewGroup, abstractC0405c);
    }

    public boolean A(int i10, int i11) {
        return D(this.f15668s, i10, i11);
    }

    public boolean B(int i10) {
        return ((1 << i10) & this.f15660k) != 0;
    }

    public final boolean C(int i10) {
        if (B(i10)) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Ignoring pointerId=");
        sb2.append(i10);
        sb2.append(" because ACTION_DOWN was not received ");
        sb2.append("for this pointer before ACTION_MOVE. It likely happened because ");
        sb2.append(" ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public boolean D(View view, int i10, int i11) {
        return view != null && i10 >= view.getLeft() && i10 < view.getRight() && i11 >= view.getTop() && i11 < view.getBottom();
    }

    public void E(MotionEvent motionEvent) {
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f15661l == null) {
            this.f15661l = VelocityTracker.obtain();
        }
        this.f15661l.addMovement(motionEvent);
        int i11 = 0;
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View t10 = t((int) x10, (int) y10);
            H(x10, y10, pointerId);
            P(t10, pointerId);
            int i12 = this.f15657h[pointerId];
            int i13 = this.f15665p;
            if ((i12 & i13) != 0) {
                this.f15667r.onEdgeTouched(i12 & i13, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f15650a == 1) {
                F();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f15650a == 1) {
                if (C(this.f15652c)) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f15652c);
                    float x11 = motionEvent.getX(findPointerIndex);
                    float y11 = motionEvent.getY(findPointerIndex);
                    float[] fArr = this.f15655f;
                    int i14 = this.f15652c;
                    int i15 = (int) (x11 - fArr[i14]);
                    int i16 = (int) (y11 - this.f15656g[i14]);
                    r(this.f15668s.getLeft() + i15, this.f15668s.getTop() + i16, i15, i16);
                    I(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i11 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i11);
                if (C(pointerId2)) {
                    float x12 = motionEvent.getX(i11);
                    float y12 = motionEvent.getY(i11);
                    float f10 = x12 - this.f15653d[pointerId2];
                    float f11 = y12 - this.f15654e[pointerId2];
                    G(f10, f11, pointerId2);
                    if (this.f15650a != 1) {
                        View t11 = t((int) x12, (int) y12);
                        if (f(t11, f10, f11) && P(t11, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i11++;
            }
            I(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f15650a == 1) {
                p(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            a();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x13 = motionEvent.getX(actionIndex);
            float y13 = motionEvent.getY(actionIndex);
            H(x13, y13, pointerId3);
            if (this.f15650a == 0) {
                P(t((int) x13, (int) y13), pointerId3);
                int i17 = this.f15657h[pointerId3];
                int i18 = this.f15665p;
                if ((i17 & i18) != 0) {
                    this.f15667r.onEdgeTouched(i17 & i18, pointerId3);
                    return;
                }
                return;
            }
            if (A((int) x13, (int) y13)) {
                P(this.f15668s, pointerId3);
                return;
            }
            return;
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f15650a == 1 && pointerId4 == this.f15652c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i11 >= pointerCount2) {
                    i10 = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i11);
                if (pointerId5 != this.f15652c) {
                    View t12 = t((int) motionEvent.getX(i11), (int) motionEvent.getY(i11));
                    View view = this.f15668s;
                    if (t12 == view && P(view, pointerId5)) {
                        i10 = this.f15652c;
                        break;
                    }
                }
                i11++;
            }
            if (i10 == -1) {
                F();
            }
        }
        j(pointerId4);
    }

    public final void F() {
        this.f15661l.computeCurrentVelocity(1000, this.f15662m);
        p(g(this.f15661l.getXVelocity(this.f15652c), this.f15663n, this.f15662m), g(this.f15661l.getYVelocity(this.f15652c), this.f15663n, this.f15662m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v3, types: [x0.c$c] */
    public final void G(float f10, float f11, int i10) {
        boolean c10 = c(f10, f11, i10, 1);
        boolean z10 = c10;
        if (c(f11, f10, i10, 4)) {
            z10 = (c10 ? 1 : 0) | 4;
        }
        boolean z11 = z10;
        if (c(f10, f11, i10, 2)) {
            z11 = (z10 ? 1 : 0) | 2;
        }
        int r02 = z11 ? 1 : 0;
        if (c(f11, f10, i10, 8)) {
            r02 = (z11 ? 1 : 0) | 8;
        }
        if (r02 != 0) {
            int[] iArr = this.f15658i;
            iArr[i10] = iArr[i10] | r02;
            this.f15667r.onEdgeDragStarted(r02, i10);
        }
    }

    public final void H(float f10, float f11, int i10) {
        s(i10);
        float[] fArr = this.f15653d;
        this.f15655f[i10] = f10;
        fArr[i10] = f10;
        float[] fArr2 = this.f15654e;
        this.f15656g[i10] = f11;
        fArr2[i10] = f11;
        this.f15657h[i10] = x((int) f10, (int) f11);
        this.f15660k |= 1 << i10;
    }

    public final void I(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if (C(pointerId)) {
                float x10 = motionEvent.getX(i10);
                float y10 = motionEvent.getY(i10);
                this.f15655f[pointerId] = x10;
                this.f15656g[pointerId] = y10;
            }
        }
    }

    public void J(int i10) {
        this.f15670u.removeCallbacks(this.f15671v);
        if (this.f15650a != i10) {
            this.f15650a = i10;
            this.f15667r.onViewDragStateChanged(i10);
            if (this.f15650a == 0) {
                this.f15668s = null;
            }
        }
    }

    public void K(int i10) {
        this.f15665p = i10;
    }

    public void L(float f10) {
        this.f15663n = f10;
    }

    public boolean M(int i10, int i11) {
        if (this.f15669t) {
            return u(i10, i11, (int) this.f15661l.getXVelocity(this.f15652c), (int) this.f15661l.getYVelocity(this.f15652c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dd, code lost:
    
        if (r12 != r11) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean N(MotionEvent motionEvent) {
        boolean z10;
        View t10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f15661l == null) {
            this.f15661l = VelocityTracker.obtain();
        }
        this.f15661l.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                        if (actionMasked == 5) {
                            int pointerId = motionEvent.getPointerId(actionIndex);
                            float x10 = motionEvent.getX(actionIndex);
                            float y10 = motionEvent.getY(actionIndex);
                            H(x10, y10, pointerId);
                            int i10 = this.f15650a;
                            if (i10 == 0) {
                                int i11 = this.f15657h[pointerId];
                                int i12 = this.f15665p;
                                if ((i11 & i12) != 0) {
                                    this.f15667r.onEdgeTouched(i11 & i12, pointerId);
                                }
                            } else if (i10 == 2 && (t10 = t((int) x10, (int) y10)) == this.f15668s) {
                                P(t10, pointerId);
                            }
                        } else if (actionMasked == 6) {
                            j(motionEvent.getPointerId(actionIndex));
                        }
                    }
                } else if (this.f15653d != null && this.f15654e != null) {
                    int pointerCount = motionEvent.getPointerCount();
                    for (int i13 = 0; i13 < pointerCount; i13++) {
                        int pointerId2 = motionEvent.getPointerId(i13);
                        if (C(pointerId2)) {
                            float x11 = motionEvent.getX(i13);
                            float y11 = motionEvent.getY(i13);
                            float f10 = x11 - this.f15653d[pointerId2];
                            float f11 = y11 - this.f15654e[pointerId2];
                            View t11 = t((int) x11, (int) y11);
                            boolean z11 = t11 != null && f(t11, f10, f11);
                            if (z11) {
                                int left = t11.getLeft();
                                int i14 = (int) f10;
                                int clampViewPositionHorizontal = this.f15667r.clampViewPositionHorizontal(t11, left + i14, i14);
                                int top = t11.getTop();
                                int i15 = (int) f11;
                                int clampViewPositionVertical = this.f15667r.clampViewPositionVertical(t11, top + i15, i15);
                                int viewHorizontalDragRange = this.f15667r.getViewHorizontalDragRange(t11);
                                int viewVerticalDragRange = this.f15667r.getViewVerticalDragRange(t11);
                                if (viewHorizontalDragRange != 0) {
                                    if (viewHorizontalDragRange > 0) {
                                    }
                                }
                                if (viewVerticalDragRange == 0) {
                                    break;
                                }
                                if (viewVerticalDragRange > 0 && clampViewPositionVertical == top) {
                                    break;
                                }
                            }
                            G(f10, f11, pointerId2);
                            if (this.f15650a == 1) {
                                break;
                            }
                            if (z11 && P(t11, pointerId2)) {
                                break;
                            }
                        }
                    }
                    I(motionEvent);
                }
                z10 = false;
            }
            a();
            z10 = false;
        } else {
            float x12 = motionEvent.getX();
            float y12 = motionEvent.getY();
            z10 = false;
            int pointerId3 = motionEvent.getPointerId(0);
            H(x12, y12, pointerId3);
            View t12 = t((int) x12, (int) y12);
            if (t12 == this.f15668s && this.f15650a == 2) {
                P(t12, pointerId3);
            }
            int i16 = this.f15657h[pointerId3];
            int i17 = this.f15665p;
            if ((i16 & i17) != 0) {
                this.f15667r.onEdgeTouched(i16 & i17, pointerId3);
            }
        }
        if (this.f15650a == 1) {
            return true;
        }
        return z10;
    }

    public boolean O(View view, int i10, int i11) {
        this.f15668s = view;
        this.f15652c = -1;
        boolean u10 = u(i10, i11, 0, 0);
        if (!u10 && this.f15650a == 0 && this.f15668s != null) {
            this.f15668s = null;
        }
        return u10;
    }

    public boolean P(View view, int i10) {
        if (view == this.f15668s && this.f15652c == i10) {
            return true;
        }
        if (view == null || !this.f15667r.tryCaptureView(view, i10)) {
            return false;
        }
        this.f15652c = i10;
        b(view, i10);
        return true;
    }

    public void a() {
        this.f15652c = -1;
        i();
        VelocityTracker velocityTracker = this.f15661l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f15661l = null;
        }
    }

    public void b(View view, int i10) {
        if (view.getParent() == this.f15670u) {
            this.f15668s = view;
            this.f15652c = i10;
            this.f15667r.onViewCaptured(view, i10);
            J(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f15670u + ")");
    }

    public final boolean c(float f10, float f11, int i10, int i11) {
        float abs = Math.abs(f10);
        float abs2 = Math.abs(f11);
        if ((this.f15657h[i10] & i11) != i11 || (this.f15665p & i11) == 0 || (this.f15659j[i10] & i11) == i11 || (this.f15658i[i10] & i11) == i11) {
            return false;
        }
        int i12 = this.f15651b;
        if (abs <= i12 && abs2 <= i12) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.f15667r.onEdgeLock(i11)) {
            return (this.f15658i[i10] & i11) == 0 && abs > ((float) this.f15651b);
        }
        int[] iArr = this.f15659j;
        iArr[i10] = iArr[i10] | i11;
        return false;
    }

    public boolean d(int i10) {
        int length = this.f15653d.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (e(i10, i11)) {
                return true;
            }
        }
        return false;
    }

    public boolean e(int i10, int i11) {
        if (!B(i11)) {
            return false;
        }
        boolean z10 = (i10 & 1) == 1;
        boolean z11 = (i10 & 2) == 2;
        float f10 = this.f15655f[i11] - this.f15653d[i11];
        float f11 = this.f15656g[i11] - this.f15654e[i11];
        if (!z10 || !z11) {
            return z10 ? Math.abs(f10) > ((float) this.f15651b) : z11 && Math.abs(f11) > ((float) this.f15651b);
        }
        float f12 = (f10 * f10) + (f11 * f11);
        int i12 = this.f15651b;
        return f12 > ((float) (i12 * i12));
    }

    public final boolean f(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        boolean z10 = this.f15667r.getViewHorizontalDragRange(view) > 0;
        boolean z11 = this.f15667r.getViewVerticalDragRange(view) > 0;
        if (!z10 || !z11) {
            return z10 ? Math.abs(f10) > ((float) this.f15651b) : z11 && Math.abs(f11) > ((float) this.f15651b);
        }
        float f12 = (f10 * f10) + (f11 * f11);
        int i10 = this.f15651b;
        return f12 > ((float) (i10 * i10));
    }

    public final float g(float f10, float f11, float f12) {
        float abs = Math.abs(f10);
        return abs < f11 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : abs > f12 ? f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? f12 : -f12 : f10;
    }

    public final int h(int i10, int i11, int i12) {
        int abs = Math.abs(i10);
        if (abs < i11) {
            return 0;
        }
        return abs > i12 ? i10 > 0 ? i12 : -i12 : i10;
    }

    public final void i() {
        float[] fArr = this.f15653d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Arrays.fill(this.f15654e, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Arrays.fill(this.f15655f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Arrays.fill(this.f15656g, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        Arrays.fill(this.f15657h, 0);
        Arrays.fill(this.f15658i, 0);
        Arrays.fill(this.f15659j, 0);
        this.f15660k = 0;
    }

    public final void j(int i10) {
        if (this.f15653d == null || !B(i10)) {
            return;
        }
        this.f15653d[i10] = 0.0f;
        this.f15654e[i10] = 0.0f;
        this.f15655f[i10] = 0.0f;
        this.f15656g[i10] = 0.0f;
        this.f15657h[i10] = 0;
        this.f15658i[i10] = 0;
        this.f15659j[i10] = 0;
        this.f15660k = ((1 << i10) ^ (-1)) & this.f15660k;
    }

    public final int k(int i10, int i11, int i12) {
        int abs;
        if (i10 == 0) {
            return 0;
        }
        int width = this.f15670u.getWidth();
        float f10 = width / 2;
        float q10 = f10 + (q(Math.min(1.0f, Math.abs(i10) / width)) * f10);
        int abs2 = Math.abs(i11);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(q10 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f);
        }
        return Math.min(abs, ScribeConfig.DEFAULT_SEND_INTERVAL_SECONDS);
    }

    public final int l(View view, int i10, int i11, int i12, int i13) {
        float f10;
        float f11;
        float f12;
        float f13;
        int h10 = h(i12, (int) this.f15663n, (int) this.f15662m);
        int h11 = h(i13, (int) this.f15663n, (int) this.f15662m);
        int abs = Math.abs(i10);
        int abs2 = Math.abs(i11);
        int abs3 = Math.abs(h10);
        int abs4 = Math.abs(h11);
        int i14 = abs3 + abs4;
        int i15 = abs + abs2;
        if (h10 != 0) {
            f10 = abs3;
            f11 = i14;
        } else {
            f10 = abs;
            f11 = i15;
        }
        float f14 = f10 / f11;
        if (h11 != 0) {
            f12 = abs4;
            f13 = i14;
        } else {
            f12 = abs2;
            f13 = i15;
        }
        return (int) ((k(i10, h10, this.f15667r.getViewHorizontalDragRange(view)) * f14) + (k(i11, h11, this.f15667r.getViewVerticalDragRange(view)) * (f12 / f13)));
    }

    public boolean m(boolean z10) {
        if (this.f15650a == 2) {
            boolean computeScrollOffset = this.f15666q.computeScrollOffset();
            int currX = this.f15666q.getCurrX();
            int currY = this.f15666q.getCurrY();
            int left = currX - this.f15668s.getLeft();
            int top = currY - this.f15668s.getTop();
            if (left != 0) {
                b0.d0(this.f15668s, left);
            }
            if (top != 0) {
                b0.e0(this.f15668s, top);
            }
            if (left != 0 || top != 0) {
                this.f15667r.onViewPositionChanged(this.f15668s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f15666q.getFinalX() && currY == this.f15666q.getFinalY()) {
                this.f15666q.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z10) {
                    this.f15670u.post(this.f15671v);
                } else {
                    J(0);
                }
            }
        }
        return this.f15650a == 2;
    }

    public final void p(float f10, float f11) {
        this.f15669t = true;
        this.f15667r.onViewReleased(this.f15668s, f10, f11);
        this.f15669t = false;
        if (this.f15650a == 1) {
            J(0);
        }
    }

    public final float q(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    public final void r(int i10, int i11, int i12, int i13) {
        int left = this.f15668s.getLeft();
        int top = this.f15668s.getTop();
        if (i12 != 0) {
            i10 = this.f15667r.clampViewPositionHorizontal(this.f15668s, i10, i12);
            b0.d0(this.f15668s, i10 - left);
        }
        int i14 = i10;
        if (i13 != 0) {
            i11 = this.f15667r.clampViewPositionVertical(this.f15668s, i11, i13);
            b0.e0(this.f15668s, i11 - top);
        }
        int i15 = i11;
        if (i12 == 0 && i13 == 0) {
            return;
        }
        this.f15667r.onViewPositionChanged(this.f15668s, i14, i15, i14 - left, i15 - top);
    }

    public final void s(int i10) {
        float[] fArr = this.f15653d;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f15654e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f15655f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f15656g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f15657h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f15658i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f15659j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f15653d = fArr2;
            this.f15654e = fArr3;
            this.f15655f = fArr4;
            this.f15656g = fArr5;
            this.f15657h = iArr;
            this.f15658i = iArr2;
            this.f15659j = iArr3;
        }
    }

    public View t(int i10, int i11) {
        for (int childCount = this.f15670u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f15670u.getChildAt(this.f15667r.getOrderedChildIndex(childCount));
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean u(int i10, int i11, int i12, int i13) {
        int left = this.f15668s.getLeft();
        int top = this.f15668s.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        if (i14 == 0 && i15 == 0) {
            this.f15666q.abortAnimation();
            J(0);
            return false;
        }
        this.f15666q.startScroll(left, top, i14, i15, l(this.f15668s, i14, i15, i12, i13));
        J(2);
        return true;
    }

    public View v() {
        return this.f15668s;
    }

    public int w() {
        return this.f15664o;
    }

    public final int x(int i10, int i11) {
        int i12 = i10 < this.f15670u.getLeft() + this.f15664o ? 1 : 0;
        if (i11 < this.f15670u.getTop() + this.f15664o) {
            i12 |= 4;
        }
        if (i10 > this.f15670u.getRight() - this.f15664o) {
            i12 |= 2;
        }
        return i11 > this.f15670u.getBottom() - this.f15664o ? i12 | 8 : i12;
    }

    public int y() {
        return this.f15651b;
    }

    public int z() {
        return this.f15650a;
    }
}

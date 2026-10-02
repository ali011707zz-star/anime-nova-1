package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: ForwardingListener.java */
/* loaded from: classes.dex */
public abstract class g0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: f, reason: collision with root package name */
    public final float f1327f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1328g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1329h;

    /* renamed from: i, reason: collision with root package name */
    public final View f1330i;

    /* renamed from: j, reason: collision with root package name */
    public Runnable f1331j;

    /* renamed from: k, reason: collision with root package name */
    public Runnable f1332k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1333l;

    /* renamed from: m, reason: collision with root package name */
    public int f1334m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f1335n = new int[2];

    /* compiled from: ForwardingListener.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = g0.this.f1330i.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* compiled from: ForwardingListener.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.this.e();
        }
    }

    public g0(View view) {
        this.f1330i = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1327f = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1328g = tapTimeout;
        this.f1329h = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    public static boolean h(View view, float f10, float f11, float f12) {
        float f13 = -f12;
        return f10 >= f13 && f11 >= f13 && f10 < ((float) (view.getRight() - view.getLeft())) + f12 && f11 < ((float) (view.getBottom() - view.getTop())) + f12;
    }

    public final void a() {
        Runnable runnable = this.f1332k;
        if (runnable != null) {
            this.f1330i.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1331j;
        if (runnable2 != null) {
            this.f1330i.removeCallbacks(runnable2);
        }
    }

    public abstract k.f b();

    public abstract boolean c();

    public boolean d() {
        k.f b10 = b();
        if (b10 == null || !b10.a()) {
            return true;
        }
        b10.dismiss();
        return true;
    }

    public void e() {
        a();
        View view = this.f1330i;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f1333l = true;
        }
    }

    public final boolean f(MotionEvent motionEvent) {
        e0 e0Var;
        View view = this.f1330i;
        k.f b10 = b();
        if (b10 == null || !b10.a() || (e0Var = (e0) b10.f()) == null || !e0Var.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        i(view, obtainNoHistory);
        j(e0Var, obtainNoHistory);
        boolean e10 = e0Var.e(obtainNoHistory, this.f1334m);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return e10 && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        if (r1 != 3) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(MotionEvent motionEvent) {
        View view = this.f1330i;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f1334m);
                    if (findPointerIndex >= 0 && !h(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f1327f)) {
                        a();
                        view.getParent().requestDisallowInterceptTouchEvent(true);
                        return true;
                    }
                }
            }
            a();
        } else {
            this.f1334m = motionEvent.getPointerId(0);
            if (this.f1331j == null) {
                this.f1331j = new a();
            }
            view.postDelayed(this.f1331j, this.f1328g);
            if (this.f1332k == null) {
                this.f1332k = new b();
            }
            view.postDelayed(this.f1332k, this.f1329h);
        }
        return false;
    }

    public final boolean i(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1335n);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    public final boolean j(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1335n);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = this.f1333l;
        if (z11) {
            z10 = f(motionEvent) || !d();
        } else {
            z10 = g(motionEvent) && c();
            if (z10) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 0);
                this.f1330i.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f1333l = z10;
        return z10 || z11;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1333l = false;
        this.f1334m = -1;
        Runnable runnable = this.f1331j;
        if (runnable != null) {
            this.f1330i.removeCallbacks(runnable);
        }
    }
}

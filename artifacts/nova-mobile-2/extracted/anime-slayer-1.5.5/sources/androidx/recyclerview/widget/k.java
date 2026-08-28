package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: FastScroller.java */
/* loaded from: classes.dex */
public class k extends RecyclerView.o implements RecyclerView.t {
    public static final int[] D = {R.attr.state_pressed};
    public static final int[] E = new int[0];
    public int A;
    public final Runnable B;
    public final RecyclerView.u C;

    /* renamed from: a, reason: collision with root package name */
    public final int f3013a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3014b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f3015c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f3016d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3017e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3018f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f3019g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f3020h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3021i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3022j;

    /* renamed from: k, reason: collision with root package name */
    public int f3023k;

    /* renamed from: l, reason: collision with root package name */
    public int f3024l;

    /* renamed from: m, reason: collision with root package name */
    public float f3025m;

    /* renamed from: n, reason: collision with root package name */
    public int f3026n;

    /* renamed from: o, reason: collision with root package name */
    public int f3027o;

    /* renamed from: p, reason: collision with root package name */
    public float f3028p;

    /* renamed from: s, reason: collision with root package name */
    public RecyclerView f3031s;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator f3038z;

    /* renamed from: q, reason: collision with root package name */
    public int f3029q = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f3030r = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3032t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3033u = false;

    /* renamed from: v, reason: collision with root package name */
    public int f3034v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f3035w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f3036x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public final int[] f3037y = new int[2];

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k.this.k(500);
        }
    }

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    public class b extends RecyclerView.u {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            k.this.v(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f3041a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3041a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3041a) {
                this.f3041a = false;
                return;
            }
            if (((Float) k.this.f3038z.getAnimatedValue()).floatValue() == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                k kVar = k.this;
                kVar.A = 0;
                kVar.s(0);
            } else {
                k kVar2 = k.this;
                kVar2.A = 2;
                kVar2.p();
            }
        }
    }

    /* compiled from: FastScroller.java */
    /* loaded from: classes.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            k.this.f3015c.setAlpha(floatValue);
            k.this.f3016d.setAlpha(floatValue);
            k.this.p();
        }
    }

    public k(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f);
        this.f3038z = ofFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.f3015c = stateListDrawable;
        this.f3016d = drawable;
        this.f3019g = stateListDrawable2;
        this.f3020h = drawable2;
        this.f3017e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f3018f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f3021i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f3022j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f3013a = i11;
        this.f3014b = i12;
        stateListDrawable.setAlpha(BaseProgressIndicator.MAX_ALPHA);
        drawable.setAlpha(BaseProgressIndicator.MAX_ALPHA);
        ofFloat.addListener(new c());
        ofFloat.addUpdateListener(new d());
        d(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public boolean a(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i10 = this.f3034v;
        if (i10 == 1) {
            boolean o10 = o(motionEvent.getX(), motionEvent.getY());
            boolean n10 = n(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!o10 && !n10) {
                return false;
            }
            if (n10) {
                this.f3035w = 1;
                this.f3028p = (int) motionEvent.getX();
            } else if (o10) {
                this.f3035w = 2;
                this.f3025m = (int) motionEvent.getY();
            }
            s(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3034v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean o10 = o(motionEvent.getX(), motionEvent.getY());
            boolean n10 = n(motionEvent.getX(), motionEvent.getY());
            if (o10 || n10) {
                if (n10) {
                    this.f3035w = 1;
                    this.f3028p = (int) motionEvent.getX();
                } else if (o10) {
                    this.f3035w = 2;
                    this.f3025m = (int) motionEvent.getY();
                }
                s(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f3034v == 2) {
            this.f3025m = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f3028p = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            s(1);
            this.f3035w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f3034v == 2) {
            u();
            if (this.f3035w == 1) {
                l(motionEvent.getX());
            }
            if (this.f3035w == 2) {
                w(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void c(boolean z10) {
    }

    public void d(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3031s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            f();
        }
        this.f3031s = recyclerView;
        if (recyclerView != null) {
            t();
        }
    }

    public final void e() {
        this.f3031s.removeCallbacks(this.B);
    }

    public final void f() {
        this.f3031s.removeItemDecoration(this);
        this.f3031s.removeOnItemTouchListener(this);
        this.f3031s.removeOnScrollListener(this.C);
        e();
    }

    public final void g(Canvas canvas) {
        int i10 = this.f3030r;
        int i11 = this.f3021i;
        int i12 = this.f3027o;
        int i13 = this.f3026n;
        this.f3019g.setBounds(0, 0, i13, i11);
        this.f3020h.setBounds(0, 0, this.f3029q, this.f3022j);
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i10 - i11);
        this.f3020h.draw(canvas);
        canvas.translate(i12 - (i13 / 2), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f3019g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    public final void h(Canvas canvas) {
        int i10 = this.f3029q;
        int i11 = this.f3017e;
        int i12 = i10 - i11;
        int i13 = this.f3024l;
        int i14 = this.f3023k;
        int i15 = i13 - (i14 / 2);
        this.f3015c.setBounds(0, 0, i11, i14);
        this.f3016d.setBounds(0, 0, this.f3018f, this.f3030r);
        if (m()) {
            this.f3016d.draw(canvas);
            canvas.translate(this.f3017e, i15);
            canvas.scale(-1.0f, 1.0f);
            this.f3015c.draw(canvas);
            canvas.scale(-1.0f, 1.0f);
            canvas.translate(-this.f3017e, -i15);
            return;
        }
        canvas.translate(i12, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f3016d.draw(canvas);
        canvas.translate(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i15);
        this.f3015c.draw(canvas);
        canvas.translate(-i12, -i15);
    }

    public final int[] i() {
        int[] iArr = this.f3037y;
        int i10 = this.f3014b;
        iArr[0] = i10;
        iArr[1] = this.f3029q - i10;
        return iArr;
    }

    public final int[] j() {
        int[] iArr = this.f3036x;
        int i10 = this.f3014b;
        iArr[0] = i10;
        iArr[1] = this.f3030r - i10;
        return iArr;
    }

    public void k(int i10) {
        int i11 = this.A;
        if (i11 == 1) {
            this.f3038z.cancel();
        } else if (i11 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f3038z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.f3038z.setDuration(i10);
        this.f3038z.start();
    }

    public final void l(float f10) {
        int[] i10 = i();
        float max = Math.max(i10[0], Math.min(i10[1], f10));
        if (Math.abs(this.f3027o - max) < 2.0f) {
            return;
        }
        int r10 = r(this.f3028p, max, i10, this.f3031s.computeHorizontalScrollRange(), this.f3031s.computeHorizontalScrollOffset(), this.f3029q);
        if (r10 != 0) {
            this.f3031s.scrollBy(r10, 0);
        }
        this.f3028p = max;
    }

    public final boolean m() {
        return q0.b0.E(this.f3031s) == 1;
    }

    public boolean n(float f10, float f11) {
        if (f11 >= this.f3030r - this.f3021i) {
            int i10 = this.f3027o;
            int i11 = this.f3026n;
            if (f10 >= i10 - (i11 / 2) && f10 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    public boolean o(float f10, float f11) {
        if (!m() ? f10 >= this.f3029q - this.f3017e : f10 <= this.f3017e) {
            int i10 = this.f3024l;
            int i11 = this.f3023k;
            if (f11 >= i10 - (i11 / 2) && f11 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
        if (this.f3029q == this.f3031s.getWidth() && this.f3030r == this.f3031s.getHeight()) {
            if (this.A != 0) {
                if (this.f3032t) {
                    h(canvas);
                }
                if (this.f3033u) {
                    g(canvas);
                    return;
                }
                return;
            }
            return;
        }
        this.f3029q = this.f3031s.getWidth();
        this.f3030r = this.f3031s.getHeight();
        s(0);
    }

    public void p() {
        this.f3031s.invalidate();
    }

    public final void q(int i10) {
        e();
        this.f3031s.postDelayed(this.B, i10);
    }

    public final int r(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    public void s(int i10) {
        if (i10 == 2 && this.f3034v != 2) {
            this.f3015c.setState(D);
            e();
        }
        if (i10 == 0) {
            p();
        } else {
            u();
        }
        if (this.f3034v == 2 && i10 != 2) {
            this.f3015c.setState(E);
            q(1200);
        } else if (i10 == 1) {
            q(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f3034v = i10;
    }

    public final void t() {
        this.f3031s.addItemDecoration(this);
        this.f3031s.addOnItemTouchListener(this);
        this.f3031s.addOnScrollListener(this.C);
    }

    public void u() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                this.f3038z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f3038z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f3038z.setDuration(500L);
        this.f3038z.setStartDelay(0L);
        this.f3038z.start();
    }

    public void v(int i10, int i11) {
        int computeVerticalScrollRange = this.f3031s.computeVerticalScrollRange();
        int i12 = this.f3030r;
        this.f3032t = computeVerticalScrollRange - i12 > 0 && i12 >= this.f3013a;
        int computeHorizontalScrollRange = this.f3031s.computeHorizontalScrollRange();
        int i13 = this.f3029q;
        boolean z10 = computeHorizontalScrollRange - i13 > 0 && i13 >= this.f3013a;
        this.f3033u = z10;
        boolean z11 = this.f3032t;
        if (!z11 && !z10) {
            if (this.f3034v != 0) {
                s(0);
                return;
            }
            return;
        }
        if (z11) {
            float f10 = i12;
            this.f3024l = (int) ((f10 * (i11 + (f10 / 2.0f))) / computeVerticalScrollRange);
            this.f3023k = Math.min(i12, (i12 * i12) / computeVerticalScrollRange);
        }
        if (this.f3033u) {
            float f11 = i13;
            this.f3027o = (int) ((f11 * (i10 + (f11 / 2.0f))) / computeHorizontalScrollRange);
            this.f3026n = Math.min(i13, (i13 * i13) / computeHorizontalScrollRange);
        }
        int i14 = this.f3034v;
        if (i14 == 0 || i14 == 1) {
            s(1);
        }
    }

    public final void w(float f10) {
        int[] j10 = j();
        float max = Math.max(j10[0], Math.min(j10[1], f10));
        if (Math.abs(this.f3024l - max) < 2.0f) {
            return;
        }
        int r10 = r(this.f3025m, max, j10, this.f3031s.computeVerticalScrollRange(), this.f3031s.computeVerticalScrollOffset(), this.f3030r);
        if (r10 != 0) {
            this.f3031s.scrollBy(0, r10);
        }
        this.f3025m = max;
    }
}

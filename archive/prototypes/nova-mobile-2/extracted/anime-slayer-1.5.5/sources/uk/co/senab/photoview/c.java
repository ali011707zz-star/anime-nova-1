package uk.co.senab.photoview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.lang.ref.WeakReference;
import org.apache.http.HttpStatus;

/* compiled from: PhotoViewAttacher.java */
/* loaded from: classes2.dex */
public class c implements uk.co.senab.photoview.b, View.OnTouchListener, vd.e, ViewTreeObserver.OnGlobalLayoutListener {
    public static final boolean G = Log.isLoggable("PhotoViewAttacher", 3);
    public static final Interpolator H = new AccelerateDecelerateInterpolator();
    public int A;
    public int B;
    public d C;
    public int D;
    public boolean E;
    public ImageView.ScaleType F;

    /* renamed from: f, reason: collision with root package name */
    public int f14681f;

    /* renamed from: g, reason: collision with root package name */
    public float f14682g;

    /* renamed from: h, reason: collision with root package name */
    public float f14683h;

    /* renamed from: i, reason: collision with root package name */
    public float f14684i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14685j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14686k;

    /* renamed from: l, reason: collision with root package name */
    public WeakReference<ImageView> f14687l;

    /* renamed from: m, reason: collision with root package name */
    public GestureDetector f14688m;

    /* renamed from: n, reason: collision with root package name */
    public vd.d f14689n;

    /* renamed from: o, reason: collision with root package name */
    public final Matrix f14690o;

    /* renamed from: p, reason: collision with root package name */
    public final Matrix f14691p;

    /* renamed from: q, reason: collision with root package name */
    public final Matrix f14692q;

    /* renamed from: r, reason: collision with root package name */
    public final RectF f14693r;

    /* renamed from: s, reason: collision with root package name */
    public final float[] f14694s;

    /* renamed from: t, reason: collision with root package name */
    public e f14695t;

    /* renamed from: u, reason: collision with root package name */
    public f f14696u;

    /* renamed from: v, reason: collision with root package name */
    public h f14697v;

    /* renamed from: w, reason: collision with root package name */
    public View.OnLongClickListener f14698w;

    /* renamed from: x, reason: collision with root package name */
    public g f14699x;

    /* renamed from: y, reason: collision with root package name */
    public int f14700y;

    /* renamed from: z, reason: collision with root package name */
    public int f14701z;

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (c.this.f14698w != null) {
                c.this.f14698w.onLongClick(c.this.r());
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14703a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f14703a = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14703a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14703a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14703a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14703a[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: uk.co.senab.photoview.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0380c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final float f14704f;

        /* renamed from: g, reason: collision with root package name */
        public final float f14705g;

        /* renamed from: h, reason: collision with root package name */
        public final long f14706h = System.currentTimeMillis();

        /* renamed from: i, reason: collision with root package name */
        public final float f14707i;

        /* renamed from: j, reason: collision with root package name */
        public final float f14708j;

        public RunnableC0380c(float f10, float f11, float f12, float f13) {
            this.f14704f = f12;
            this.f14705g = f13;
            this.f14707i = f10;
            this.f14708j = f11;
        }

        public final float a() {
            return c.H.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f14706h)) * 1.0f) / c.this.f14681f));
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView r10 = c.this.r();
            if (r10 == null) {
                return;
            }
            float a10 = a();
            float f10 = this.f14707i;
            c.this.a((f10 + ((this.f14708j - f10) * a10)) / c.this.z(), this.f14704f, this.f14705g);
            if (a10 < 1.0f) {
                ud.a.d(r10, this);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final xd.d f14710f;

        /* renamed from: g, reason: collision with root package name */
        public int f14711g;

        /* renamed from: h, reason: collision with root package name */
        public int f14712h;

        public d(Context context) {
            this.f14710f = xd.d.f(context);
        }

        public void a() {
            if (c.G) {
                wd.a.a().d("PhotoViewAttacher", "Cancel Fling");
            }
            this.f14710f.c(true);
        }

        public void b(int i10, int i11, int i12, int i13) {
            int i14;
            int i15;
            int i16;
            int i17;
            RectF o10 = c.this.o();
            if (o10 == null) {
                return;
            }
            int round = Math.round(-o10.left);
            float f10 = i10;
            if (f10 < o10.width()) {
                i15 = Math.round(o10.width() - f10);
                i14 = 0;
            } else {
                i14 = round;
                i15 = i14;
            }
            int round2 = Math.round(-o10.top);
            float f11 = i11;
            if (f11 < o10.height()) {
                i17 = Math.round(o10.height() - f11);
                i16 = 0;
            } else {
                i16 = round2;
                i17 = i16;
            }
            this.f14711g = round;
            this.f14712h = round2;
            if (c.G) {
                wd.a.a().d("PhotoViewAttacher", "fling. StartX:" + round + " StartY:" + round2 + " MaxX:" + i15 + " MaxY:" + i17);
            }
            if (round == i15 && round2 == i17) {
                return;
            }
            this.f14710f.b(round, round2, i12, i13, i14, i15, i16, i17, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView r10;
            if (this.f14710f.g() || (r10 = c.this.r()) == null || !this.f14710f.a()) {
                return;
            }
            int d10 = this.f14710f.d();
            int e10 = this.f14710f.e();
            if (c.G) {
                wd.a.a().d("PhotoViewAttacher", "fling run(). CurrentX:" + this.f14711g + " CurrentY:" + this.f14712h + " NewX:" + d10 + " NewY:" + e10);
            }
            c.this.f14692q.postTranslate(this.f14711g - d10, this.f14712h - e10);
            c cVar = c.this;
            cVar.H(cVar.q());
            this.f14711g = d10;
            this.f14712h = e10;
            ud.a.d(r10, this);
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public interface e {
        void a(RectF rectF);
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public interface f {
        void a(View view, float f10, float f11);
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public interface g {
        void a(float f10, float f11, float f12);
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public interface h {
        void a(View view, float f10, float f11);
    }

    public c(ImageView imageView) {
        this(imageView, true);
    }

    public static boolean D(ImageView imageView) {
        return (imageView == null || imageView.getDrawable() == null) ? false : true;
    }

    public static boolean E(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (b.f14703a[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalArgumentException(scaleType.name() + " is not supported in PhotoView");
    }

    public static void I(ImageView imageView) {
        if (imageView == null || (imageView instanceof uk.co.senab.photoview.b) || ImageView.ScaleType.MATRIX.equals(imageView.getScaleType())) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
    }

    public static void l(float f10, float f11, float f12) {
        if (f10 >= f11) {
            throw new IllegalArgumentException("MinZoom has to be less than MidZoom");
        }
        if (f11 >= f12) {
            throw new IllegalArgumentException("MidZoom has to be less than MaxZoom");
        }
    }

    public ImageView.ScaleType A() {
        return this.F;
    }

    public final float B(Matrix matrix, int i10) {
        matrix.getValues(this.f14694s);
        return this.f14694s[i10];
    }

    public Bitmap C() {
        ImageView r10 = r();
        if (r10 == null) {
            return null;
        }
        return r10.getDrawingCache();
    }

    public final void F() {
        this.f14692q.reset();
        H(q());
        k();
    }

    public void G(boolean z10) {
        this.f14685j = z10;
    }

    public final void H(Matrix matrix) {
        RectF p10;
        ImageView r10 = r();
        if (r10 != null) {
            j();
            r10.setImageMatrix(matrix);
            if (this.f14695t == null || (p10 = p(matrix)) == null) {
                return;
            }
            this.f14695t.a(p10);
        }
    }

    public void J(float f10) {
        l(this.f14682g, this.f14683h, f10);
        this.f14684i = f10;
    }

    public void K(float f10) {
        l(this.f14682g, f10, this.f14684i);
        this.f14683h = f10;
    }

    public void L(float f10) {
        l(f10, this.f14683h, this.f14684i);
        this.f14682g = f10;
    }

    public void M(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        if (onDoubleTapListener != null) {
            this.f14688m.setOnDoubleTapListener(onDoubleTapListener);
        } else {
            this.f14688m.setOnDoubleTapListener(new uk.co.senab.photoview.a(this));
        }
    }

    public void N(View.OnLongClickListener onLongClickListener) {
        this.f14698w = onLongClickListener;
    }

    public void O(e eVar) {
        this.f14695t = eVar;
    }

    public void P(f fVar) {
        this.f14696u = fVar;
    }

    public void Q(g gVar) {
        this.f14699x = gVar;
    }

    public void R(h hVar) {
        this.f14697v = hVar;
    }

    public void S(float f10) {
        this.f14692q.postRotate(f10 % 360.0f);
        i();
    }

    public void T(float f10) {
        this.f14692q.setRotate(f10 % 360.0f);
        i();
    }

    public void U(float f10) {
        W(f10, false);
    }

    public void V(float f10, float f11, float f12, boolean z10) {
        ImageView r10 = r();
        if (r10 != null) {
            if (f10 < this.f14682g || f10 > this.f14684i) {
                wd.a.a().i("PhotoViewAttacher", "Scale must be within the range of minScale and maxScale");
            } else if (z10) {
                r10.post(new RunnableC0380c(z(), f10, f11, f12));
            } else {
                this.f14692q.setScale(f10, f10, f11, f12);
                i();
            }
        }
    }

    public void W(float f10, boolean z10) {
        if (r() != null) {
            V(f10, r0.getRight() / 2, r0.getBottom() / 2, z10);
        }
    }

    public void X(ImageView.ScaleType scaleType) {
        if (!E(scaleType) || scaleType == this.F) {
            return;
        }
        this.F = scaleType;
        a0();
    }

    public void Y(int i10) {
        if (i10 < 0) {
            i10 = HttpStatus.SC_OK;
        }
        this.f14681f = i10;
    }

    public void Z(boolean z10) {
        this.E = z10;
        a0();
    }

    @Override // vd.e
    public void a(float f10, float f11, float f12) {
        if (G) {
            wd.a.a().d("PhotoViewAttacher", String.format("onScale: scale: %.2f. fX: %.2f. fY: %.2f", Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12)));
        }
        if (z() < this.f14684i || f10 < 1.0f) {
            g gVar = this.f14699x;
            if (gVar != null) {
                gVar.a(f10, f11, f12);
            }
            this.f14692q.postScale(f10, f10, f11, f12);
            i();
        }
    }

    public void a0() {
        ImageView r10 = r();
        if (r10 != null) {
            if (this.E) {
                I(r10);
                b0(r10.getDrawable());
            } else {
                F();
            }
        }
    }

    @Override // vd.e
    public void b(float f10, float f11) {
        if (this.f14689n.c()) {
            return;
        }
        if (G) {
            wd.a.a().d("PhotoViewAttacher", String.format("onDrag: dx: %.2f. dy: %.2f", Float.valueOf(f10), Float.valueOf(f11)));
        }
        ImageView r10 = r();
        this.f14692q.postTranslate(f10, f11);
        i();
        ViewParent parent = r10.getParent();
        if (!this.f14685j || this.f14689n.c() || this.f14686k) {
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
                return;
            }
            return;
        }
        int i10 = this.D;
        if ((i10 == 2 || ((i10 == 0 && f10 >= 1.0f) || (i10 == 1 && f10 <= -1.0f))) && parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    public final void b0(Drawable drawable) {
        ImageView r10 = r();
        if (r10 == null || drawable == null) {
            return;
        }
        float t10 = t(r10);
        float s10 = s(r10);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f14690o.reset();
        float f10 = intrinsicWidth;
        float f11 = t10 / f10;
        float f12 = intrinsicHeight;
        float f13 = s10 / f12;
        ImageView.ScaleType scaleType = this.F;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f14690o.postTranslate((t10 - f10) / 2.0f, (s10 - f12) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f11, f13);
            this.f14690o.postScale(max, max);
            this.f14690o.postTranslate((t10 - (f10 * max)) / 2.0f, (s10 - (f12 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f11, f13));
            this.f14690o.postScale(min, min);
            this.f14690o.postTranslate((t10 - (f10 * min)) / 2.0f, (s10 - (f12 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10, f12);
            RectF rectF2 = new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, t10, s10);
            int i10 = b.f14703a[this.F.ordinal()];
            if (i10 == 2) {
                this.f14690o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i10 == 3) {
                this.f14690o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i10 == 4) {
                this.f14690o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i10 == 5) {
                this.f14690o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        F();
    }

    @Override // vd.e
    public void c(float f10, float f11, float f12, float f13) {
        if (G) {
            wd.a.a().d("PhotoViewAttacher", "onFling. sX: " + f10 + " sY: " + f11 + " Vx: " + f12 + " Vy: " + f13);
        }
        ImageView r10 = r();
        d dVar = new d(r10.getContext());
        this.C = dVar;
        dVar.b(t(r10), s(r10), (int) f12, (int) f13);
        r10.post(this.C);
    }

    public final void h() {
        d dVar = this.C;
        if (dVar != null) {
            dVar.a();
            this.C = null;
        }
    }

    public final void i() {
        if (k()) {
            H(q());
        }
    }

    public final void j() {
        ImageView r10 = r();
        if (r10 != null && !(r10 instanceof uk.co.senab.photoview.b) && !ImageView.ScaleType.MATRIX.equals(r10.getScaleType())) {
            throw new IllegalStateException("The ImageView's ScaleType has been changed since attaching a PhotoViewAttacher");
        }
    }

    public final boolean k() {
        RectF p10;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        ImageView r10 = r();
        if (r10 == null || (p10 = p(q())) == null) {
            return false;
        }
        float height = p10.height();
        float width = p10.width();
        float s10 = s(r10);
        float f16 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (height <= s10) {
            int i10 = b.f14703a[this.F.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    s10 = (s10 - height) / 2.0f;
                    f11 = p10.top;
                } else {
                    s10 -= height;
                    f11 = p10.top;
                }
                f12 = s10 - f11;
            } else {
                f10 = p10.top;
                f12 = -f10;
            }
        } else {
            f10 = p10.top;
            if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f11 = p10.bottom;
                if (f11 >= s10) {
                    f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                f12 = s10 - f11;
            }
            f12 = -f10;
        }
        float t10 = t(r10);
        if (width <= t10) {
            int i11 = b.f14703a[this.F.ordinal()];
            if (i11 != 2) {
                if (i11 != 3) {
                    f14 = (t10 - width) / 2.0f;
                    f15 = p10.left;
                } else {
                    f14 = t10 - width;
                    f15 = p10.left;
                }
                f13 = f14 - f15;
            } else {
                f13 = -p10.left;
            }
            f16 = f13;
            this.D = 2;
        } else {
            float f17 = p10.left;
            if (f17 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.D = 0;
                f16 = -f17;
            } else {
                float f18 = p10.right;
                if (f18 < t10) {
                    f16 = t10 - f18;
                    this.D = 1;
                } else {
                    this.D = -1;
                }
            }
        }
        this.f14692q.postTranslate(f16, f12);
        return true;
    }

    public void m() {
        WeakReference<ImageView> weakReference = this.f14687l;
        if (weakReference == null) {
            return;
        }
        ImageView imageView = weakReference.get();
        if (imageView != null) {
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
            imageView.setOnTouchListener(null);
            h();
        }
        GestureDetector gestureDetector = this.f14688m;
        if (gestureDetector != null) {
            gestureDetector.setOnDoubleTapListener(null);
        }
        this.f14695t = null;
        this.f14696u = null;
        this.f14697v = null;
        this.f14687l = null;
    }

    public Matrix n() {
        return new Matrix(q());
    }

    public RectF o() {
        k();
        return p(q());
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ImageView r10 = r();
        if (r10 != null) {
            if (this.E) {
                int top = r10.getTop();
                int right = r10.getRight();
                int bottom = r10.getBottom();
                int left = r10.getLeft();
                if (top == this.f14700y && bottom == this.A && left == this.B && right == this.f14701z) {
                    return;
                }
                b0(r10.getDrawable());
                this.f14700y = top;
                this.f14701z = right;
                this.A = bottom;
                this.B = left;
                return;
            }
            b0(r10.getDrawable());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        vd.d dVar;
        boolean z11;
        GestureDetector gestureDetector;
        RectF o10;
        boolean z12 = false;
        if (!this.E || !D((ImageView) view)) {
            return false;
        }
        ViewParent parent = view.getParent();
        int action = motionEvent.getAction();
        if (action == 0) {
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            } else {
                wd.a.a().i("PhotoViewAttacher", "onTouch getParent() returned null");
            }
            h();
        } else if ((action == 1 || action == 3) && z() < this.f14682g && (o10 = o()) != null) {
            view.post(new RunnableC0380c(z(), this.f14682g, o10.centerX(), o10.centerY()));
            z10 = true;
            dVar = this.f14689n;
            if (dVar == null) {
                boolean c10 = dVar.c();
                boolean d10 = this.f14689n.d();
                boolean a10 = this.f14689n.a(motionEvent);
                boolean z13 = (c10 || this.f14689n.c()) ? false : true;
                boolean z14 = (d10 || this.f14689n.d()) ? false : true;
                if (z13 && z14) {
                    z12 = true;
                }
                this.f14686k = z12;
                z11 = a10;
            } else {
                z11 = z10;
            }
            gestureDetector = this.f14688m;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        z10 = false;
        dVar = this.f14689n;
        if (dVar == null) {
        }
        gestureDetector = this.f14688m;
        return gestureDetector == null ? z11 : z11;
    }

    public final RectF p(Matrix matrix) {
        Drawable drawable;
        ImageView r10 = r();
        if (r10 == null || (drawable = r10.getDrawable()) == null) {
            return null;
        }
        this.f14693r.set(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.f14693r);
        return this.f14693r;
    }

    public Matrix q() {
        this.f14691p.set(this.f14690o);
        this.f14691p.postConcat(this.f14692q);
        return this.f14691p;
    }

    public ImageView r() {
        WeakReference<ImageView> weakReference = this.f14687l;
        ImageView imageView = weakReference != null ? weakReference.get() : null;
        if (imageView == null) {
            m();
            wd.a.a().i("PhotoViewAttacher", "ImageView no longer exists. You should not use this PhotoViewAttacher any more.");
        }
        return imageView;
    }

    public final int s(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    public final int t(ImageView imageView) {
        if (imageView == null) {
            return 0;
        }
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    public float u() {
        return this.f14684i;
    }

    public float v() {
        return this.f14683h;
    }

    public float w() {
        return this.f14682g;
    }

    public f x() {
        return this.f14696u;
    }

    public h y() {
        return this.f14697v;
    }

    public float z() {
        return (float) Math.sqrt(((float) Math.pow(B(this.f14692q, 0), 2.0d)) + ((float) Math.pow(B(this.f14692q, 3), 2.0d)));
    }

    public c(ImageView imageView, boolean z10) {
        this.f14681f = HttpStatus.SC_OK;
        this.f14682g = 1.0f;
        this.f14683h = 1.75f;
        this.f14684i = 3.0f;
        this.f14685j = true;
        this.f14686k = false;
        this.f14690o = new Matrix();
        this.f14691p = new Matrix();
        this.f14692q = new Matrix();
        this.f14693r = new RectF();
        this.f14694s = new float[9];
        this.D = 2;
        this.F = ImageView.ScaleType.FIT_CENTER;
        this.f14687l = new WeakReference<>(imageView);
        imageView.setDrawingCacheEnabled(true);
        imageView.setOnTouchListener(this);
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        I(imageView);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f14689n = vd.f.a(imageView.getContext(), this);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new a());
        this.f14688m = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new uk.co.senab.photoview.a(this));
        Z(z10);
    }
}

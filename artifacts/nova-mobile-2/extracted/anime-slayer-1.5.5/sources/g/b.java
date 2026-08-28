package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.material.progressindicator.BaseProgressIndicator;

/* compiled from: DrawableContainer.java */
/* loaded from: classes.dex */
public class b extends Drawable implements Drawable.Callback {

    /* renamed from: f, reason: collision with root package name */
    public d f6650f;

    /* renamed from: g, reason: collision with root package name */
    public Rect f6651g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f6652h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f6653i;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6655k;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6657m;

    /* renamed from: n, reason: collision with root package name */
    public Runnable f6658n;

    /* renamed from: o, reason: collision with root package name */
    public long f6659o;

    /* renamed from: p, reason: collision with root package name */
    public long f6660p;

    /* renamed from: q, reason: collision with root package name */
    public c f6661q;

    /* renamed from: j, reason: collision with root package name */
    public int f6654j = BaseProgressIndicator.MAX_ALPHA;

    /* renamed from: l, reason: collision with root package name */
    public int f6656l = -1;

    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(true);
            b.this.invalidateSelf();
        }
    }

    /* compiled from: DrawableContainer.java */
    /* renamed from: g.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0125b {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    public static class c implements Drawable.Callback {

        /* renamed from: f, reason: collision with root package name */
        public Drawable.Callback f6663f;

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f6663f;
            this.f6663f = null;
            return callback;
        }

        public c b(Drawable.Callback callback) {
            this.f6663f = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            Drawable.Callback callback = this.f6663f;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j10);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f6663f;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    public static abstract class d extends Drawable.ConstantState {
        public int A;
        public int B;
        public boolean C;
        public ColorFilter D;
        public boolean E;
        public ColorStateList F;
        public PorterDuff.Mode G;
        public boolean H;
        public boolean I;

        /* renamed from: a, reason: collision with root package name */
        public final b f6664a;

        /* renamed from: b, reason: collision with root package name */
        public Resources f6665b;

        /* renamed from: c, reason: collision with root package name */
        public int f6666c;

        /* renamed from: d, reason: collision with root package name */
        public int f6667d;

        /* renamed from: e, reason: collision with root package name */
        public int f6668e;

        /* renamed from: f, reason: collision with root package name */
        public SparseArray<Drawable.ConstantState> f6669f;

        /* renamed from: g, reason: collision with root package name */
        public Drawable[] f6670g;

        /* renamed from: h, reason: collision with root package name */
        public int f6671h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f6672i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f6673j;

        /* renamed from: k, reason: collision with root package name */
        public Rect f6674k;

        /* renamed from: l, reason: collision with root package name */
        public boolean f6675l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f6676m;

        /* renamed from: n, reason: collision with root package name */
        public int f6677n;

        /* renamed from: o, reason: collision with root package name */
        public int f6678o;

        /* renamed from: p, reason: collision with root package name */
        public int f6679p;

        /* renamed from: q, reason: collision with root package name */
        public int f6680q;

        /* renamed from: r, reason: collision with root package name */
        public boolean f6681r;

        /* renamed from: s, reason: collision with root package name */
        public int f6682s;

        /* renamed from: t, reason: collision with root package name */
        public boolean f6683t;

        /* renamed from: u, reason: collision with root package name */
        public boolean f6684u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f6685v;

        /* renamed from: w, reason: collision with root package name */
        public boolean f6686w;

        /* renamed from: x, reason: collision with root package name */
        public boolean f6687x;

        /* renamed from: y, reason: collision with root package name */
        public boolean f6688y;

        /* renamed from: z, reason: collision with root package name */
        public int f6689z;

        public d(d dVar, b bVar, Resources resources) {
            Resources resources2;
            this.f6672i = false;
            this.f6675l = false;
            this.f6687x = true;
            this.A = 0;
            this.B = 0;
            this.f6664a = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = dVar != null ? dVar.f6665b : null;
            }
            this.f6665b = resources2;
            int f10 = b.f(resources, dVar != null ? dVar.f6666c : 0);
            this.f6666c = f10;
            if (dVar != null) {
                this.f6667d = dVar.f6667d;
                this.f6668e = dVar.f6668e;
                this.f6685v = true;
                this.f6686w = true;
                this.f6672i = dVar.f6672i;
                this.f6675l = dVar.f6675l;
                this.f6687x = dVar.f6687x;
                this.f6688y = dVar.f6688y;
                this.f6689z = dVar.f6689z;
                this.A = dVar.A;
                this.B = dVar.B;
                this.C = dVar.C;
                this.D = dVar.D;
                this.E = dVar.E;
                this.F = dVar.F;
                this.G = dVar.G;
                this.H = dVar.H;
                this.I = dVar.I;
                if (dVar.f6666c == f10) {
                    if (dVar.f6673j) {
                        this.f6674k = dVar.f6674k != null ? new Rect(dVar.f6674k) : null;
                        this.f6673j = true;
                    }
                    if (dVar.f6676m) {
                        this.f6677n = dVar.f6677n;
                        this.f6678o = dVar.f6678o;
                        this.f6679p = dVar.f6679p;
                        this.f6680q = dVar.f6680q;
                        this.f6676m = true;
                    }
                }
                if (dVar.f6681r) {
                    this.f6682s = dVar.f6682s;
                    this.f6681r = true;
                }
                if (dVar.f6683t) {
                    this.f6684u = dVar.f6684u;
                    this.f6683t = true;
                }
                Drawable[] drawableArr = dVar.f6670g;
                this.f6670g = new Drawable[drawableArr.length];
                this.f6671h = dVar.f6671h;
                SparseArray<Drawable.ConstantState> sparseArray = dVar.f6669f;
                if (sparseArray != null) {
                    this.f6669f = sparseArray.clone();
                } else {
                    this.f6669f = new SparseArray<>(this.f6671h);
                }
                int i10 = this.f6671h;
                for (int i11 = 0; i11 < i10; i11++) {
                    if (drawableArr[i11] != null) {
                        Drawable.ConstantState constantState = drawableArr[i11].getConstantState();
                        if (constantState != null) {
                            this.f6669f.put(i11, constantState);
                        } else {
                            this.f6670g[i11] = drawableArr[i11];
                        }
                    }
                }
                return;
            }
            this.f6670g = new Drawable[10];
            this.f6671h = 0;
        }

        public final int a(Drawable drawable) {
            int i10 = this.f6671h;
            if (i10 >= this.f6670g.length) {
                o(i10, i10 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f6664a);
            this.f6670g[i10] = drawable;
            this.f6671h++;
            this.f6668e = drawable.getChangingConfigurations() | this.f6668e;
            p();
            this.f6674k = null;
            this.f6673j = false;
            this.f6676m = false;
            this.f6685v = false;
            return i10;
        }

        public final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i10 = this.f6671h;
                Drawable[] drawableArr = this.f6670g;
                for (int i11 = 0; i11 < i10; i11++) {
                    if (drawableArr[i11] != null && i0.a.b(drawableArr[i11])) {
                        i0.a.a(drawableArr[i11], theme);
                        this.f6668e |= drawableArr[i11].getChangingConfigurations();
                    }
                }
                y(C0125b.c(theme));
            }
        }

        public boolean c() {
            if (this.f6685v) {
                return this.f6686w;
            }
            e();
            this.f6685v = true;
            int i10 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getConstantState() == null) {
                    this.f6686w = false;
                    return false;
                }
            }
            this.f6686w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i10 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null) {
                    if (i0.a.b(drawable)) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.f6669f.get(i11);
                    if (constantState != null && C0125b.a(constantState)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void d() {
            this.f6676m = true;
            e();
            int i10 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            this.f6678o = -1;
            this.f6677n = -1;
            this.f6680q = 0;
            this.f6679p = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f6677n) {
                    this.f6677n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f6678o) {
                    this.f6678o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f6679p) {
                    this.f6679p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f6680q) {
                    this.f6680q = minimumHeight;
                }
            }
        }

        public final void e() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f6669f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.f6670g[this.f6669f.keyAt(i10)] = s(this.f6669f.valueAt(i10).newDrawable(this.f6665b));
                }
                this.f6669f = null;
            }
        }

        public final int f() {
            return this.f6670g.length;
        }

        public final Drawable g(int i10) {
            int indexOfKey;
            Drawable drawable = this.f6670g[i10];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f6669f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i10)) < 0) {
                return null;
            }
            Drawable s10 = s(this.f6669f.valueAt(indexOfKey).newDrawable(this.f6665b));
            this.f6670g[i10] = s10;
            this.f6669f.removeAt(indexOfKey);
            if (this.f6669f.size() == 0) {
                this.f6669f = null;
            }
            return s10;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f6667d | this.f6668e;
        }

        public final int h() {
            return this.f6671h;
        }

        public final int i() {
            if (!this.f6676m) {
                d();
            }
            return this.f6678o;
        }

        public final int j() {
            if (!this.f6676m) {
                d();
            }
            return this.f6680q;
        }

        public final int k() {
            if (!this.f6676m) {
                d();
            }
            return this.f6679p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.f6672i) {
                return null;
            }
            Rect rect2 = this.f6674k;
            if (rect2 != null || this.f6673j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i10 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i12 = rect3.left;
                    if (i12 > rect.left) {
                        rect.left = i12;
                    }
                    int i13 = rect3.top;
                    if (i13 > rect.top) {
                        rect.top = i13;
                    }
                    int i14 = rect3.right;
                    if (i14 > rect.right) {
                        rect.right = i14;
                    }
                    int i15 = rect3.bottom;
                    if (i15 > rect.bottom) {
                        rect.bottom = i15;
                    }
                }
            }
            this.f6673j = true;
            this.f6674k = rect;
            return rect;
        }

        public final int m() {
            if (!this.f6676m) {
                d();
            }
            return this.f6677n;
        }

        public final int n() {
            if (this.f6681r) {
                return this.f6682s;
            }
            e();
            int i10 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            int opacity = i10 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i11 = 1; i11 < i10; i11++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i11].getOpacity());
            }
            this.f6682s = opacity;
            this.f6681r = true;
            return opacity;
        }

        public void o(int i10, int i11) {
            Drawable[] drawableArr = new Drawable[i11];
            Drawable[] drawableArr2 = this.f6670g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i10);
            }
            this.f6670g = drawableArr;
        }

        public void p() {
            this.f6681r = false;
            this.f6683t = false;
        }

        public final boolean q() {
            return this.f6675l;
        }

        public abstract void r();

        public final Drawable s(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                i0.a.m(drawable, this.f6689z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f6664a);
            return mutate;
        }

        public final void t(boolean z10) {
            this.f6675l = z10;
        }

        public final void u(int i10) {
            this.A = i10;
        }

        public final void v(int i10) {
            this.B = i10;
        }

        public final boolean w(int i10, int i11) {
            int i12 = this.f6671h;
            Drawable[] drawableArr = this.f6670g;
            boolean z10 = false;
            for (int i13 = 0; i13 < i12; i13++) {
                if (drawableArr[i13] != null) {
                    boolean m10 = Build.VERSION.SDK_INT >= 23 ? i0.a.m(drawableArr[i13], i10) : false;
                    if (i13 == i11) {
                        z10 = m10;
                    }
                }
            }
            this.f6689z = i10;
            return z10;
        }

        public final void x(boolean z10) {
            this.f6672i = z10;
        }

        public final void y(Resources resources) {
            if (resources != null) {
                this.f6665b = resources;
                int f10 = b.f(resources, this.f6666c);
                int i10 = this.f6666c;
                this.f6666c = f10;
                if (i10 != f10) {
                    this.f6676m = false;
                    this.f6673j = false;
                }
            }
        }
    }

    public static int f(Resources resources, int i10) {
        if (resources != null) {
            i10 = resources.getDisplayMetrics().densityDpi;
        }
        if (i10 == 0) {
            return 160;
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z10) {
        boolean z11;
        Drawable drawable;
        boolean z12 = true;
        this.f6655k = true;
        long uptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            long j10 = this.f6659o;
            if (j10 != 0) {
                if (j10 <= uptimeMillis) {
                    drawable2.setAlpha(this.f6654j);
                    this.f6659o = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j10 - uptimeMillis) * 255)) / this.f6650f.A)) * this.f6654j) / BaseProgressIndicator.MAX_ALPHA);
                    z11 = true;
                    drawable = this.f6653i;
                    if (drawable == null) {
                        long j11 = this.f6660p;
                        if (j11 != 0) {
                            if (j11 <= uptimeMillis) {
                                drawable.setVisible(false, false);
                                this.f6653i = null;
                                this.f6660p = 0L;
                            } else {
                                drawable.setAlpha(((((int) ((j11 - uptimeMillis) * 255)) / this.f6650f.B) * this.f6654j) / BaseProgressIndicator.MAX_ALPHA);
                                if (z10 && z12) {
                                    scheduleSelf(this.f6658n, uptimeMillis + 16);
                                    return;
                                }
                                return;
                            }
                        }
                    } else {
                        this.f6660p = 0L;
                    }
                    z12 = z11;
                    if (z10) {
                        return;
                    } else {
                        return;
                    }
                }
            }
        } else {
            this.f6659o = 0L;
        }
        z11 = false;
        drawable = this.f6653i;
        if (drawable == null) {
        }
        z12 = z11;
        if (z10) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.f6650f.b(theme);
    }

    public d b() {
        throw null;
    }

    public int c() {
        return this.f6656l;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.f6650f.canApplyTheme();
    }

    public final void d(Drawable drawable) {
        if (this.f6661q == null) {
            this.f6661q = new c();
        }
        drawable.setCallback(this.f6661q.b(drawable.getCallback()));
        try {
            if (this.f6650f.A <= 0 && this.f6655k) {
                drawable.setAlpha(this.f6654j);
            }
            d dVar = this.f6650f;
            if (dVar.E) {
                drawable.setColorFilter(dVar.D);
            } else {
                if (dVar.H) {
                    i0.a.o(drawable, dVar.F);
                }
                d dVar2 = this.f6650f;
                if (dVar2.I) {
                    i0.a.p(drawable, dVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f6650f.f6687x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                i0.a.m(drawable, i0.a.f(this));
            }
            if (i10 >= 19) {
                i0.a.j(drawable, this.f6650f.C);
            }
            Rect rect = this.f6651g;
            if (i10 >= 21 && rect != null) {
                i0.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f6661q.a());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f6653i;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public final boolean e() {
        return isAutoMirrored() && i0.a.f(this) == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean g(int i10) {
        Runnable runnable;
        if (i10 == this.f6656l) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f6650f.B > 0) {
            Drawable drawable = this.f6653i;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f6652h;
            if (drawable2 != null) {
                this.f6653i = drawable2;
                this.f6660p = this.f6650f.B + uptimeMillis;
            } else {
                this.f6653i = null;
                this.f6660p = 0L;
            }
        } else {
            Drawable drawable3 = this.f6652h;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i10 >= 0) {
            d dVar = this.f6650f;
            if (i10 < dVar.f6671h) {
                Drawable g10 = dVar.g(i10);
                this.f6652h = g10;
                this.f6656l = i10;
                if (g10 != null) {
                    int i11 = this.f6650f.A;
                    if (i11 > 0) {
                        this.f6659o = uptimeMillis + i11;
                    }
                    d(g10);
                }
                if (this.f6659o == 0 || this.f6660p != 0) {
                    runnable = this.f6658n;
                    if (runnable != null) {
                        this.f6658n = new a();
                    } else {
                        unscheduleSelf(runnable);
                    }
                    a(true);
                }
                invalidateSelf();
                return true;
            }
        }
        this.f6652h = null;
        this.f6656l = -1;
        if (this.f6659o == 0) {
        }
        runnable = this.f6658n;
        if (runnable != null) {
        }
        a(true);
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f6654j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f6650f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f6650f.c()) {
            return null;
        }
        this.f6650f.f6667d = getChangingConfigurations();
        return this.f6650f;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f6652h;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f6651g;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f6650f.q()) {
            return this.f6650f.i();
        }
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f6650f.q()) {
            return this.f6650f.m();
        }
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f6650f.q()) {
            return this.f6650f.j();
        }
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f6650f.q()) {
            return this.f6650f.k();
        }
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f6652h;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f6650f.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            C0125b.b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect l10 = this.f6650f.l();
        if (l10 != null) {
            rect.set(l10);
            padding = (l10.right | ((l10.left | l10.top) | l10.bottom)) != 0;
        } else {
            Drawable drawable = this.f6652h;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (e()) {
            int i10 = rect.left;
            rect.left = rect.right;
            rect.right = i10;
        }
        return padding;
    }

    public void h(d dVar) {
        this.f6650f = dVar;
        int i10 = this.f6656l;
        if (i10 >= 0) {
            Drawable g10 = dVar.g(i10);
            this.f6652h = g10;
            if (g10 != null) {
                d(g10);
            }
        }
        this.f6653i = null;
    }

    public final void i(Resources resources) {
        this.f6650f.y(resources);
    }

    public void invalidateDrawable(Drawable drawable) {
        d dVar = this.f6650f;
        if (dVar != null) {
            dVar.p();
        }
        if (drawable != this.f6652h || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f6650f.C;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z10;
        Drawable drawable = this.f6653i;
        boolean z11 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f6653i = null;
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f6655k) {
                this.f6652h.setAlpha(this.f6654j);
            }
        }
        if (this.f6660p != 0) {
            this.f6660p = 0L;
            z10 = true;
        }
        if (this.f6659o != 0) {
            this.f6659o = 0L;
        } else {
            z11 = z10;
        }
        if (z11) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f6657m && super.mutate() == this) {
            d b10 = b();
            b10.r();
            h(b10);
            this.f6657m = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f6653i;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        return this.f6650f.w(i10, c());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i10) {
        Drawable drawable = this.f6653i;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            return drawable2.setLevel(i10);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f6653i;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        if (drawable != this.f6652h || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f6655k && this.f6654j == i10) {
            return;
        }
        this.f6655k = true;
        this.f6654j = i10;
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            if (this.f6659o == 0) {
                drawable.setAlpha(i10);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        d dVar = this.f6650f;
        if (dVar.C != z10) {
            dVar.C = z10;
            Drawable drawable = this.f6652h;
            if (drawable != null) {
                i0.a.j(drawable, z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        d dVar = this.f6650f;
        dVar.E = true;
        if (dVar.D != colorFilter) {
            dVar.D = colorFilter;
            Drawable drawable = this.f6652h;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        d dVar = this.f6650f;
        if (dVar.f6687x != z10) {
            dVar.f6687x = z10;
            Drawable drawable = this.f6652h;
            if (drawable != null) {
                drawable.setDither(z10);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f10, float f11) {
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            i0.a.k(drawable, f10, f11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Rect rect = this.f6651g;
        if (rect == null) {
            this.f6651g = new Rect(i10, i11, i12, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
        Drawable drawable = this.f6652h;
        if (drawable != null) {
            i0.a.l(drawable, i10, i11, i12, i13);
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintList(ColorStateList colorStateList) {
        d dVar = this.f6650f;
        dVar.H = true;
        if (dVar.F != colorStateList) {
            dVar.F = colorStateList;
            i0.a.o(this.f6652h, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, i0.b
    public void setTintMode(PorterDuff.Mode mode) {
        d dVar = this.f6650f;
        dVar.I = true;
        if (dVar.G != mode) {
            dVar.G = mode;
            i0.a.p(this.f6652h, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.f6653i;
        if (drawable != null) {
            drawable.setVisible(z10, z11);
        }
        Drawable drawable2 = this.f6652h;
        if (drawable2 != null) {
            drawable2.setVisible(z10, z11);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f6652h || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}

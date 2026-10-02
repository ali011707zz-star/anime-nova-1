package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.widget.l0;

/* compiled from: AppCompatDrawableManager.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f1378b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static j f1379c;

    /* renamed from: a, reason: collision with root package name */
    public l0 f1380a;

    /* compiled from: AppCompatDrawableManager.java */
    /* loaded from: classes.dex */
    public class a implements l0.f {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f1381a = {d.e.R, d.e.P, d.e.f5232a};

        /* renamed from: b, reason: collision with root package name */
        public final int[] f1382b = {d.e.f5246o, d.e.B, d.e.f5251t, d.e.f5247p, d.e.f5248q, d.e.f5250s, d.e.f5249r};

        /* renamed from: c, reason: collision with root package name */
        public final int[] f1383c = {d.e.O, d.e.Q, d.e.f5242k, d.e.K, d.e.L, d.e.M, d.e.N};

        /* renamed from: d, reason: collision with root package name */
        public final int[] f1384d = {d.e.f5254w, d.e.f5240i, d.e.f5253v};

        /* renamed from: e, reason: collision with root package name */
        public final int[] f1385e = {d.e.J, d.e.S};

        /* renamed from: f, reason: collision with root package name */
        public final int[] f1386f = {d.e.f5234c, d.e.f5238g, d.e.f5235d, d.e.f5239h};

        /* JADX WARN: Removed duplicated region for block: B:15:0x0061 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0046  */
        @Override // androidx.appcompat.widget.l0.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean a(Context context, int i10, Drawable drawable) {
            int i11;
            boolean z10;
            PorterDuff.Mode mode = j.f1378b;
            boolean f10 = f(this.f1381a, i10);
            int i12 = R.attr.colorBackground;
            if (f10) {
                i12 = d.a.f5205x;
            } else if (f(this.f1383c, i10)) {
                i12 = d.a.f5203v;
            } else if (f(this.f1384d, i10)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (i10 == d.e.f5252u) {
                    i12 = R.attr.colorForeground;
                    i11 = Math.round(40.8f);
                    z10 = true;
                    if (!z10) {
                        return false;
                    }
                    if (d0.a(drawable)) {
                        drawable = drawable.mutate();
                    }
                    drawable.setColorFilter(j.e(q0.c(context, i12), mode));
                    if (i11 != -1) {
                        drawable.setAlpha(i11);
                    }
                    return true;
                }
                if (i10 != d.e.f5243l) {
                    i11 = -1;
                    z10 = false;
                    i12 = 0;
                    if (!z10) {
                    }
                }
            }
            i11 = -1;
            z10 = true;
            if (!z10) {
            }
        }

        @Override // androidx.appcompat.widget.l0.f
        public PorterDuff.Mode b(int i10) {
            if (i10 == d.e.H) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        @Override // androidx.appcompat.widget.l0.f
        public Drawable c(l0 l0Var, Context context, int i10) {
            if (i10 == d.e.f5241j) {
                return new LayerDrawable(new Drawable[]{l0Var.j(context, d.e.f5240i), l0Var.j(context, d.e.f5242k)});
            }
            if (i10 == d.e.f5256y) {
                return l(l0Var, context, d.d.f5225i);
            }
            if (i10 == d.e.f5255x) {
                return l(l0Var, context, d.d.f5226j);
            }
            if (i10 == d.e.f5257z) {
                return l(l0Var, context, d.d.f5227k);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.l0.f
        public ColorStateList d(Context context, int i10) {
            if (i10 == d.e.f5244m) {
                return f.a.a(context, d.c.f5213e);
            }
            if (i10 == d.e.I) {
                return f.a.a(context, d.c.f5216h);
            }
            if (i10 == d.e.H) {
                return k(context);
            }
            if (i10 == d.e.f5237f) {
                return j(context);
            }
            if (i10 == d.e.f5233b) {
                return g(context);
            }
            if (i10 == d.e.f5236e) {
                return i(context);
            }
            if (i10 != d.e.D && i10 != d.e.E) {
                if (f(this.f1382b, i10)) {
                    return q0.e(context, d.a.f5205x);
                }
                if (f(this.f1385e, i10)) {
                    return f.a.a(context, d.c.f5212d);
                }
                if (f(this.f1386f, i10)) {
                    return f.a.a(context, d.c.f5211c);
                }
                if (i10 == d.e.A) {
                    return f.a.a(context, d.c.f5214f);
                }
                return null;
            }
            return f.a.a(context, d.c.f5215g);
        }

        @Override // androidx.appcompat.widget.l0.f
        public boolean e(Context context, int i10, Drawable drawable) {
            if (i10 == d.e.C) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.background);
                int i11 = d.a.f5205x;
                m(findDrawableByLayerId, q0.c(context, i11), j.f1378b);
                m(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), q0.c(context, i11), j.f1378b);
                m(layerDrawable.findDrawableByLayerId(R.id.progress), q0.c(context, d.a.f5203v), j.f1378b);
                return true;
            }
            if (i10 != d.e.f5256y && i10 != d.e.f5255x && i10 != d.e.f5257z) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m(layerDrawable2.findDrawableByLayerId(R.id.background), q0.b(context, d.a.f5205x), j.f1378b);
            Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress);
            int i12 = d.a.f5203v;
            m(findDrawableByLayerId2, q0.c(context, i12), j.f1378b);
            m(layerDrawable2.findDrawableByLayerId(R.id.progress), q0.c(context, i12), j.f1378b);
            return true;
        }

        public final boolean f(int[] iArr, int i10) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
            return false;
        }

        public final ColorStateList g(Context context) {
            return h(context, 0);
        }

        public final ColorStateList h(Context context, int i10) {
            int c10 = q0.c(context, d.a.f5204w);
            return new ColorStateList(new int[][]{q0.f1469b, q0.f1472e, q0.f1470c, q0.f1476i}, new int[]{q0.b(context, d.a.f5202u), h0.d.f(c10, i10), h0.d.f(c10, i10), i10});
        }

        public final ColorStateList i(Context context) {
            return h(context, q0.c(context, d.a.f5201t));
        }

        public final ColorStateList j(Context context) {
            return h(context, q0.c(context, d.a.f5202u));
        }

        public final ColorStateList k(Context context) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            int i10 = d.a.f5207z;
            ColorStateList e10 = q0.e(context, i10);
            if (e10 != null && e10.isStateful()) {
                iArr[0] = q0.f1469b;
                iArr2[0] = e10.getColorForState(iArr[0], 0);
                iArr[1] = q0.f1473f;
                iArr2[1] = q0.c(context, d.a.f5203v);
                iArr[2] = q0.f1476i;
                iArr2[2] = e10.getDefaultColor();
            } else {
                iArr[0] = q0.f1469b;
                iArr2[0] = q0.b(context, i10);
                iArr[1] = q0.f1473f;
                iArr2[1] = q0.c(context, d.a.f5203v);
                iArr[2] = q0.f1476i;
                iArr2[2] = q0.c(context, i10);
            }
            return new ColorStateList(iArr, iArr2);
        }

        public final LayerDrawable l(l0 l0Var, Context context, int i10) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
            Drawable j10 = l0Var.j(context, d.e.F);
            Drawable j11 = l0Var.j(context, d.e.G);
            if ((j10 instanceof BitmapDrawable) && j10.getIntrinsicWidth() == dimensionPixelSize && j10.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) j10;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                j10.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                j10.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((j11 instanceof BitmapDrawable) && j11.getIntrinsicWidth() == dimensionPixelSize && j11.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) j11;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                j11.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                j11.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        public final void m(Drawable drawable, int i10, PorterDuff.Mode mode) {
            if (d0.a(drawable)) {
                drawable = drawable.mutate();
            }
            if (mode == null) {
                mode = j.f1378b;
            }
            drawable.setColorFilter(j.e(i10, mode));
        }
    }

    public static synchronized j b() {
        j jVar;
        synchronized (j.class) {
            if (f1379c == null) {
                h();
            }
            jVar = f1379c;
        }
        return jVar;
    }

    public static synchronized PorterDuffColorFilter e(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter l10;
        synchronized (j.class) {
            l10 = l0.l(i10, mode);
        }
        return l10;
    }

    public static synchronized void h() {
        synchronized (j.class) {
            if (f1379c == null) {
                j jVar = new j();
                f1379c = jVar;
                jVar.f1380a = l0.h();
                f1379c.f1380a.u(new a());
            }
        }
    }

    public static void i(Drawable drawable, t0 t0Var, int[] iArr) {
        l0.w(drawable, t0Var, iArr);
    }

    public synchronized Drawable c(Context context, int i10) {
        return this.f1380a.j(context, i10);
    }

    public synchronized Drawable d(Context context, int i10, boolean z10) {
        return this.f1380a.k(context, i10, z10);
    }

    public synchronized ColorStateList f(Context context, int i10) {
        return this.f1380a.m(context, i10);
    }

    public synchronized void g(Context context) {
        this.f1380a.s(context);
    }
}

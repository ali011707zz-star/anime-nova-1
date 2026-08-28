package z;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import z.r;

/* compiled from: MotionLayout.java */
/* loaded from: classes.dex */
public class p extends ConstraintLayout implements q0.r {

    /* renamed from: z0, reason: collision with root package name */
    public static boolean f17015z0;
    public float A;
    public int B;
    public e C;
    public boolean D;
    public y.a E;
    public z.b F;
    public int G;
    public int H;
    public int I;
    public int J;
    public boolean K;
    public float L;
    public float M;
    public long N;
    public float O;
    public boolean P;
    public ArrayList<n> Q;
    public ArrayList<n> R;
    public ArrayList<n> S;
    public CopyOnWriteArrayList<i> T;
    public int U;
    public long V;
    public float W;

    /* renamed from: a0, reason: collision with root package name */
    public int f17016a0;

    /* renamed from: b0, reason: collision with root package name */
    public float f17017b0;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f17018c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f17019d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f17020e0;

    /* renamed from: f, reason: collision with root package name */
    public r f17021f;

    /* renamed from: f0, reason: collision with root package name */
    public int f17022f0;

    /* renamed from: g, reason: collision with root package name */
    public Interpolator f17023g;

    /* renamed from: g0, reason: collision with root package name */
    public int f17024g0;

    /* renamed from: h, reason: collision with root package name */
    public Interpolator f17025h;

    /* renamed from: h0, reason: collision with root package name */
    public int f17026h0;

    /* renamed from: i, reason: collision with root package name */
    public float f17027i;

    /* renamed from: i0, reason: collision with root package name */
    public int f17028i0;

    /* renamed from: j, reason: collision with root package name */
    public int f17029j;

    /* renamed from: j0, reason: collision with root package name */
    public int f17030j0;

    /* renamed from: k, reason: collision with root package name */
    public int f17031k;

    /* renamed from: k0, reason: collision with root package name */
    public float f17032k0;

    /* renamed from: l, reason: collision with root package name */
    public int f17033l;

    /* renamed from: l0, reason: collision with root package name */
    public u.d f17034l0;

    /* renamed from: m, reason: collision with root package name */
    public int f17035m;

    /* renamed from: m0, reason: collision with root package name */
    public boolean f17036m0;

    /* renamed from: n, reason: collision with root package name */
    public int f17037n;

    /* renamed from: n0, reason: collision with root package name */
    public h f17038n0;

    /* renamed from: o, reason: collision with root package name */
    public boolean f17039o;

    /* renamed from: o0, reason: collision with root package name */
    public Runnable f17040o0;

    /* renamed from: p, reason: collision with root package name */
    public HashMap<View, m> f17041p;

    /* renamed from: p0, reason: collision with root package name */
    public int[] f17042p0;

    /* renamed from: q, reason: collision with root package name */
    public long f17043q;

    /* renamed from: q0, reason: collision with root package name */
    public int f17044q0;

    /* renamed from: r, reason: collision with root package name */
    public float f17045r;

    /* renamed from: r0, reason: collision with root package name */
    public int f17046r0;

    /* renamed from: s, reason: collision with root package name */
    public float f17047s;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f17048s0;

    /* renamed from: t, reason: collision with root package name */
    public float f17049t;

    /* renamed from: t0, reason: collision with root package name */
    public j f17050t0;

    /* renamed from: u, reason: collision with root package name */
    public long f17051u;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f17052u0;

    /* renamed from: v, reason: collision with root package name */
    public float f17053v;

    /* renamed from: v0, reason: collision with root package name */
    public RectF f17054v0;

    /* renamed from: w, reason: collision with root package name */
    public boolean f17055w;

    /* renamed from: w0, reason: collision with root package name */
    public View f17056w0;

    /* renamed from: x, reason: collision with root package name */
    public boolean f17057x;

    /* renamed from: x0, reason: collision with root package name */
    public Matrix f17058x0;

    /* renamed from: y, reason: collision with root package name */
    public i f17059y;

    /* renamed from: y0, reason: collision with root package name */
    public ArrayList<Integer> f17060y0;

    /* renamed from: z, reason: collision with root package name */
    public float f17061z;

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f17038n0.a();
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f17063f;

        public b(View view) {
            this.f17063f = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17063f.setNestedScrollingEnabled(true);
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.f17038n0.a();
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class d {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f17066a;

        static {
            int[] iArr = new int[j.values().length];
            f17066a = iArr;
            try {
                iArr[j.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17066a[j.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17066a[j.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17066a[j.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public class e {

        /* renamed from: a, reason: collision with root package name */
        public float[] f17067a;

        /* renamed from: b, reason: collision with root package name */
        public int[] f17068b;

        /* renamed from: c, reason: collision with root package name */
        public float[] f17069c;

        /* renamed from: d, reason: collision with root package name */
        public Path f17070d;

        /* renamed from: e, reason: collision with root package name */
        public Paint f17071e;

        /* renamed from: f, reason: collision with root package name */
        public Paint f17072f;

        /* renamed from: g, reason: collision with root package name */
        public Paint f17073g;

        /* renamed from: h, reason: collision with root package name */
        public Paint f17074h;

        /* renamed from: i, reason: collision with root package name */
        public Paint f17075i;

        /* renamed from: j, reason: collision with root package name */
        public float[] f17076j;

        /* renamed from: p, reason: collision with root package name */
        public DashPathEffect f17082p;

        /* renamed from: q, reason: collision with root package name */
        public int f17083q;

        /* renamed from: t, reason: collision with root package name */
        public int f17086t;

        /* renamed from: k, reason: collision with root package name */
        public final int f17077k = -21965;

        /* renamed from: l, reason: collision with root package name */
        public final int f17078l = -2067046;

        /* renamed from: m, reason: collision with root package name */
        public final int f17079m = -13391360;

        /* renamed from: n, reason: collision with root package name */
        public final int f17080n = 1996488704;

        /* renamed from: o, reason: collision with root package name */
        public final int f17081o = 10;

        /* renamed from: r, reason: collision with root package name */
        public Rect f17084r = new Rect();

        /* renamed from: s, reason: collision with root package name */
        public boolean f17085s = false;

        public e() {
            this.f17086t = 1;
            Paint paint = new Paint();
            this.f17071e = paint;
            paint.setAntiAlias(true);
            this.f17071e.setColor(-21965);
            this.f17071e.setStrokeWidth(2.0f);
            this.f17071e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f17072f = paint2;
            paint2.setAntiAlias(true);
            this.f17072f.setColor(-2067046);
            this.f17072f.setStrokeWidth(2.0f);
            this.f17072f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f17073g = paint3;
            paint3.setAntiAlias(true);
            this.f17073g.setColor(-13391360);
            this.f17073g.setStrokeWidth(2.0f);
            this.f17073g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f17074h = paint4;
            paint4.setAntiAlias(true);
            this.f17074h.setColor(-13391360);
            this.f17074h.setTextSize(p.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f17076j = new float[8];
            Paint paint5 = new Paint();
            this.f17075i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            this.f17082p = dashPathEffect;
            this.f17073g.setPathEffect(dashPathEffect);
            this.f17069c = new float[100];
            this.f17068b = new int[50];
            if (this.f17085s) {
                this.f17071e.setStrokeWidth(8.0f);
                this.f17075i.setStrokeWidth(8.0f);
                this.f17072f.setStrokeWidth(8.0f);
                this.f17086t = 4;
            }
        }

        public void a(Canvas canvas, HashMap<View, m> hashMap, int i10, int i11) {
            if (hashMap == null || hashMap.size() == 0) {
                return;
            }
            canvas.save();
            if (!p.this.isInEditMode() && (i11 & 1) == 2) {
                String str = p.this.getContext().getResources().getResourceName(p.this.f17033l) + ":" + p.this.getProgress();
                canvas.drawText(str, 10.0f, p.this.getHeight() - 30, this.f17074h);
                canvas.drawText(str, 11.0f, p.this.getHeight() - 29, this.f17071e);
            }
            for (m mVar : hashMap.values()) {
                int l10 = mVar.l();
                if (i11 > 0 && l10 == 0) {
                    l10 = 1;
                }
                if (l10 != 0) {
                    this.f17083q = mVar.b(this.f17069c, this.f17068b);
                    if (l10 >= 1) {
                        int i12 = i10 / 16;
                        float[] fArr = this.f17067a;
                        if (fArr == null || fArr.length != i12 * 2) {
                            this.f17067a = new float[i12 * 2];
                            this.f17070d = new Path();
                        }
                        int i13 = this.f17086t;
                        canvas.translate(i13, i13);
                        this.f17071e.setColor(1996488704);
                        this.f17075i.setColor(1996488704);
                        this.f17072f.setColor(1996488704);
                        this.f17073g.setColor(1996488704);
                        mVar.c(this.f17067a, i12);
                        b(canvas, l10, this.f17083q, mVar);
                        this.f17071e.setColor(-21965);
                        this.f17072f.setColor(-2067046);
                        this.f17075i.setColor(-2067046);
                        this.f17073g.setColor(-13391360);
                        int i14 = this.f17086t;
                        canvas.translate(-i14, -i14);
                        b(canvas, l10, this.f17083q, mVar);
                        if (l10 == 5) {
                            j(canvas, mVar);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void b(Canvas canvas, int i10, int i11, m mVar) {
            if (i10 == 4) {
                d(canvas);
            }
            if (i10 == 2) {
                g(canvas);
            }
            if (i10 == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, i10, i11, mVar);
        }

        public final void c(Canvas canvas) {
            canvas.drawLines(this.f17067a, this.f17071e);
        }

        public final void d(Canvas canvas) {
            boolean z10 = false;
            boolean z11 = false;
            for (int i10 = 0; i10 < this.f17083q; i10++) {
                int[] iArr = this.f17068b;
                if (iArr[i10] == 1) {
                    z10 = true;
                }
                if (iArr[i10] == 0) {
                    z11 = true;
                }
            }
            if (z10) {
                g(canvas);
            }
            if (z11) {
                e(canvas);
            }
        }

        public final void e(Canvas canvas) {
            float[] fArr = this.f17067a;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f10, f12), Math.max(f11, f13), Math.max(f10, f12), Math.max(f11, f13), this.f17073g);
            canvas.drawLine(Math.min(f10, f12), Math.min(f11, f13), Math.min(f10, f12), Math.max(f11, f13), this.f17073g);
        }

        public final void f(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f17067a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float min = Math.min(f12, f14);
            float max = Math.max(f13, f15);
            float min2 = f10 - Math.min(f12, f14);
            float max2 = Math.max(f13, f15) - f11;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            Double.isNaN((min2 * 100.0f) / Math.abs(f14 - f12));
            sb2.append(((int) (r14 + 0.5d)) / 100.0f);
            String sb3 = sb2.toString();
            l(sb3, this.f17074h);
            canvas.drawText(sb3, ((min2 / 2.0f) - (this.f17084r.width() / 2)) + min, f11 - 20.0f, this.f17074h);
            canvas.drawLine(f10, f11, Math.min(f12, f14), f11, this.f17073g);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("");
            Double.isNaN((max2 * 100.0f) / Math.abs(f15 - f13));
            sb4.append(((int) (r2 + 0.5d)) / 100.0f);
            String sb5 = sb4.toString();
            l(sb5, this.f17074h);
            canvas.drawText(sb5, f10 + 5.0f, max - ((max2 / 2.0f) - (this.f17084r.height() / 2)), this.f17074h);
            canvas.drawLine(f10, f11, f10, Math.max(f13, f15), this.f17073g);
        }

        public final void g(Canvas canvas) {
            float[] fArr = this.f17067a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f17073g);
        }

        public final void h(Canvas canvas, float f10, float f11) {
            float[] fArr = this.f17067a;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f12 - f14, f13 - f15);
            float f16 = f14 - f12;
            float f17 = f15 - f13;
            float f18 = (((f10 - f12) * f16) + ((f11 - f13) * f17)) / (hypot * hypot);
            float f19 = f12 + (f16 * f18);
            float f20 = f13 + (f18 * f17);
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f19, f20);
            float hypot2 = (float) Math.hypot(f19 - f10, f20 - f11);
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            l(str, this.f17074h);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f17084r.width() / 2), -20.0f, this.f17074h);
            canvas.drawLine(f10, f11, f19, f20, this.f17073g);
        }

        public final void i(Canvas canvas, float f10, float f11, int i10, int i11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            Double.isNaN(((f10 - (i10 / 2)) * 100.0f) / (p.this.getWidth() - i10));
            sb2.append(((int) (r2 + 0.5d)) / 100.0f);
            String sb3 = sb2.toString();
            l(sb3, this.f17074h);
            canvas.drawText(sb3, ((f10 / 2.0f) - (this.f17084r.width() / 2)) + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f11 - 20.0f, this.f17074h);
            canvas.drawLine(f10, f11, Math.min(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f), f11, this.f17073g);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("");
            Double.isNaN(((f11 - (i11 / 2)) * 100.0f) / (p.this.getHeight() - i11));
            sb4.append(((int) (r2 + 0.5d)) / 100.0f);
            String sb5 = sb4.toString();
            l(sb5, this.f17074h);
            canvas.drawText(sb5, f10 + 5.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD - ((f11 / 2.0f) - (this.f17084r.height() / 2)), this.f17074h);
            canvas.drawLine(f10, f11, f10, Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f), this.f17073g);
        }

        public final void j(Canvas canvas, m mVar) {
            this.f17070d.reset();
            for (int i10 = 0; i10 <= 50; i10++) {
                mVar.d(i10 / 50, this.f17076j, 0);
                Path path = this.f17070d;
                float[] fArr = this.f17076j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f17070d;
                float[] fArr2 = this.f17076j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f17070d;
                float[] fArr3 = this.f17076j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f17070d;
                float[] fArr4 = this.f17076j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f17070d.close();
            }
            this.f17071e.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f17070d, this.f17071e);
            canvas.translate(-2.0f, -2.0f);
            this.f17071e.setColor(-65536);
            canvas.drawPath(this.f17070d, this.f17071e);
        }

        public final void k(Canvas canvas, int i10, int i11, m mVar) {
            int i12;
            int i13;
            float f10;
            float f11;
            View view = mVar.f16986b;
            if (view != null) {
                i12 = view.getWidth();
                i13 = mVar.f16986b.getHeight();
            } else {
                i12 = 0;
                i13 = 0;
            }
            for (int i14 = 1; i14 < i11 - 1; i14++) {
                if (i10 != 4 || this.f17068b[i14 - 1] != 0) {
                    float[] fArr = this.f17069c;
                    int i15 = i14 * 2;
                    float f12 = fArr[i15];
                    float f13 = fArr[i15 + 1];
                    this.f17070d.reset();
                    this.f17070d.moveTo(f12, f13 + 10.0f);
                    this.f17070d.lineTo(f12 + 10.0f, f13);
                    this.f17070d.lineTo(f12, f13 - 10.0f);
                    this.f17070d.lineTo(f12 - 10.0f, f13);
                    this.f17070d.close();
                    int i16 = i14 - 1;
                    mVar.m(i16);
                    if (i10 == 4) {
                        int[] iArr = this.f17068b;
                        if (iArr[i16] == 1) {
                            h(canvas, f12 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                        } else if (iArr[i16] == 0) {
                            f(canvas, f12 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                        } else if (iArr[i16] == 2) {
                            f10 = f13;
                            f11 = f12;
                            i(canvas, f12 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f13 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i12, i13);
                            canvas.drawPath(this.f17070d, this.f17075i);
                        }
                        f10 = f13;
                        f11 = f12;
                        canvas.drawPath(this.f17070d, this.f17075i);
                    } else {
                        f10 = f13;
                        f11 = f12;
                    }
                    if (i10 == 2) {
                        h(canvas, f11 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    }
                    if (i10 == 3) {
                        f(canvas, f11 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                    }
                    if (i10 == 6) {
                        i(canvas, f11 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10 - StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i12, i13);
                    }
                    canvas.drawPath(this.f17070d, this.f17075i);
                }
            }
            float[] fArr2 = this.f17067a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f17072f);
                float[] fArr3 = this.f17067a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f17072f);
            }
        }

        public void l(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.f17084r);
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public interface f {
        void a(MotionEvent motionEvent);

        void b();

        float c();

        float d();

        void e(int i10);
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public static class g implements f {

        /* renamed from: b, reason: collision with root package name */
        public static g f17088b = new g();

        /* renamed from: a, reason: collision with root package name */
        public VelocityTracker f17089a;

        public static g f() {
            f17088b.f17089a = VelocityTracker.obtain();
            return f17088b;
        }

        @Override // z.p.f
        public void a(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.f17089a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // z.p.f
        public void b() {
            VelocityTracker velocityTracker = this.f17089a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f17089a = null;
            }
        }

        @Override // z.p.f
        public float c() {
            VelocityTracker velocityTracker = this.f17089a;
            return velocityTracker != null ? velocityTracker.getYVelocity() : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        @Override // z.p.f
        public float d() {
            VelocityTracker velocityTracker = this.f17089a;
            return velocityTracker != null ? velocityTracker.getXVelocity() : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }

        @Override // z.p.f
        public void e(int i10) {
            VelocityTracker velocityTracker = this.f17089a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i10);
            }
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public class h {

        /* renamed from: a, reason: collision with root package name */
        public float f17090a = Float.NaN;

        /* renamed from: b, reason: collision with root package name */
        public float f17091b = Float.NaN;

        /* renamed from: c, reason: collision with root package name */
        public int f17092c = -1;

        /* renamed from: d, reason: collision with root package name */
        public int f17093d = -1;

        /* renamed from: e, reason: collision with root package name */
        public final String f17094e = "motion.progress";

        /* renamed from: f, reason: collision with root package name */
        public final String f17095f = "motion.velocity";

        /* renamed from: g, reason: collision with root package name */
        public final String f17096g = "motion.StartState";

        /* renamed from: h, reason: collision with root package name */
        public final String f17097h = "motion.EndState";

        public h() {
        }

        public void a() {
            int i10 = this.f17092c;
            if (i10 != -1 || this.f17093d != -1) {
                if (i10 == -1) {
                    p.this.B(this.f17093d);
                } else {
                    int i11 = this.f17093d;
                    if (i11 == -1) {
                        p.this.setState(i10, -1, -1);
                    } else {
                        p.this.w(i10, i11);
                    }
                }
                p.this.setState(j.SETUP);
            }
            if (Float.isNaN(this.f17091b)) {
                if (Float.isNaN(this.f17090a)) {
                    return;
                }
                p.this.setProgress(this.f17090a);
            } else {
                p.this.v(this.f17090a, this.f17091b);
                this.f17090a = Float.NaN;
                this.f17091b = Float.NaN;
                this.f17092c = -1;
                this.f17093d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f17090a);
            bundle.putFloat("motion.velocity", this.f17091b);
            bundle.putInt("motion.StartState", this.f17092c);
            bundle.putInt("motion.EndState", this.f17093d);
            return bundle;
        }

        public void c() {
            this.f17093d = p.this.f17033l;
            this.f17092c = p.this.f17029j;
            this.f17091b = p.this.getVelocity();
            this.f17090a = p.this.getProgress();
        }

        public void d(int i10) {
            this.f17093d = i10;
        }

        public void e(float f10) {
            this.f17090a = f10;
        }

        public void f(int i10) {
            this.f17092c = i10;
        }

        public void g(Bundle bundle) {
            this.f17090a = bundle.getFloat("motion.progress");
            this.f17091b = bundle.getFloat("motion.velocity");
            this.f17092c = bundle.getInt("motion.StartState");
            this.f17093d = bundle.getInt("motion.EndState");
        }

        public void h(float f10) {
            this.f17091b = f10;
        }
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public interface i {
        void a(p pVar, int i10, int i11);

        void b(p pVar, int i10, boolean z10, float f10);

        void c(p pVar, int i10);

        void d(p pVar, int i10, int i11, float f10);
    }

    /* compiled from: MotionLayout.java */
    /* loaded from: classes.dex */
    public enum j {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public static boolean H(float f10, float f11, float f12) {
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            float f13 = f10 / f12;
            return f11 + ((f10 * f13) - (((f12 * f13) * f13) / 2.0f)) > 1.0f;
        }
        float f14 = (-f10) / f12;
        return f11 + ((f10 * f14) + (((f12 * f14) * f14) / 2.0f)) < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public void A() {
        d(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public void B(int i10) {
        if (!isAttachedToWindow()) {
            if (this.f17038n0 == null) {
                this.f17038n0 = new h();
            }
            this.f17038n0.d(i10);
            return;
        }
        C(i10, -1, -1);
    }

    public void C(int i10, int i11, int i12) {
        D(i10, i11, i12, -1);
    }

    public void D(int i10, int i11, int i12, int i13) {
        a0.f fVar;
        int a10;
        r rVar = this.f17021f;
        if (rVar != null && (fVar = rVar.f17124b) != null && (a10 = fVar.a(this.f17031k, i10, i11, i12)) != -1) {
            i10 = a10;
        }
        int i14 = this.f17031k;
        if (i14 == i10) {
            return;
        }
        if (this.f17029j == i10) {
            d(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            if (i13 > 0) {
                this.f17045r = i13 / 1000.0f;
                return;
            }
            return;
        }
        if (this.f17033l == i10) {
            d(1.0f);
            if (i13 > 0) {
                this.f17045r = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.f17033l = i10;
        if (i14 != -1) {
            w(i14, i10);
            d(1.0f);
            this.f17049t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            y();
            if (i13 > 0) {
                this.f17045r = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.D = false;
        this.f17053v = 1.0f;
        this.f17047s = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f17049t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f17051u = getNanoTime();
        this.f17043q = getNanoTime();
        this.f17055w = false;
        this.f17023g = null;
        if (i13 == -1) {
            this.f17045r = this.f17021f.n() / 1000.0f;
        }
        this.f17029j = -1;
        this.f17021f.T(-1, this.f17033l);
        SparseArray sparseArray = new SparseArray();
        if (i13 == 0) {
            this.f17045r = this.f17021f.n() / 1000.0f;
        } else if (i13 > 0) {
            this.f17045r = i13 / 1000.0f;
        }
        int childCount = getChildCount();
        this.f17041p.clear();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            this.f17041p.put(childAt, new m(childAt));
            sparseArray.put(childAt.getId(), this.f17041p.get(childAt));
        }
        this.f17057x = true;
        this.f17021f.j(i10);
        throw null;
    }

    public void E() {
        this.f17021f.j(this.f17029j);
        this.f17021f.j(this.f17033l);
        throw null;
    }

    public void F(int i10, androidx.constraintlayout.widget.c cVar) {
        r rVar = this.f17021f;
        if (rVar != null) {
            rVar.Q(i10, cVar);
        }
        E();
        if (this.f17031k == i10) {
            cVar.i(this);
        }
    }

    public void G(int i10, View... viewArr) {
        r rVar = this.f17021f;
        if (rVar != null) {
            rVar.Y(i10, viewArr);
        }
    }

    public void d(float f10) {
        if (this.f17021f == null) {
            return;
        }
        float f11 = this.f17049t;
        float f12 = this.f17047s;
        if (f11 != f12 && this.f17055w) {
            this.f17049t = f12;
        }
        float f13 = this.f17049t;
        if (f13 == f10) {
            return;
        }
        this.D = false;
        this.f17053v = f10;
        this.f17045r = r0.n() / 1000.0f;
        setProgress(this.f17053v);
        this.f17023g = null;
        this.f17025h = this.f17021f.q();
        this.f17055w = false;
        this.f17043q = getNanoTime();
        this.f17057x = true;
        this.f17047s = f13;
        this.f17049t = f13;
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        v vVar;
        ArrayList<n> arrayList = this.S;
        if (arrayList != null) {
            Iterator<n> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().z(canvas);
            }
        }
        g(false);
        r rVar = this.f17021f;
        if (rVar != null && (vVar = rVar.f17141s) != null) {
            vVar.c();
        }
        super.dispatchDraw(canvas);
        if (this.f17021f == null) {
            return;
        }
        if ((this.B & 1) == 1 && !isInEditMode()) {
            this.U++;
            long nanoTime = getNanoTime();
            long j10 = this.V;
            if (j10 != -1) {
                if (nanoTime - j10 > 200000000) {
                    this.W = ((int) ((this.U / (((float) r5) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.U = 0;
                    this.V = nanoTime;
                }
            } else {
                this.V = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            String str = this.W + " fps " + z.a.d(this, this.f17029j) + " -> ";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(z.a.d(this, this.f17033l));
            sb2.append(" (progress: ");
            sb2.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb2.append(" ) state=");
            int i10 = this.f17031k;
            sb2.append(i10 == -1 ? "undefined" : z.a.d(this, i10));
            String sb3 = sb2.toString();
            paint.setColor(-16777216);
            canvas.drawText(sb3, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb3, 10.0f, getHeight() - 30, paint);
        }
        if (this.B > 1) {
            if (this.C == null) {
                this.C = new e();
            }
            this.C.a(canvas, this.f17041p, this.f17021f.n(), this.B);
        }
        ArrayList<n> arrayList2 = this.S;
        if (arrayList2 != null) {
            Iterator<n> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                it3.next().y(canvas);
            }
        }
    }

    public final boolean e(View view, MotionEvent motionEvent, float f10, float f11) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f10, f11);
            boolean onTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f10, -f11);
            return onTouchEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(f10, f11);
        if (this.f17058x0 == null) {
            this.f17058x0 = new Matrix();
        }
        matrix.invert(this.f17058x0);
        obtain.transform(this.f17058x0);
        boolean onTouchEvent2 = view.onTouchEvent(obtain);
        obtain.recycle();
        return onTouchEvent2;
    }

    public void f(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            m mVar = this.f17041p.get(getChildAt(i10));
            if (mVar != null) {
                mVar.e(z10);
            }
        }
    }

    public void g(boolean z10) {
        boolean z11;
        int i10;
        float interpolation;
        boolean z12;
        if (this.f17051u == -1) {
            this.f17051u = getNanoTime();
        }
        float f10 = this.f17049t;
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f10 < 1.0f) {
            this.f17031k = -1;
        }
        boolean z13 = false;
        if (this.P || (this.f17057x && (z10 || this.f17053v != f10))) {
            float signum = Math.signum(this.f17053v - f10);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.f17023g;
            float f11 = !(interpolator instanceof o) ? ((((float) (nanoTime - this.f17051u)) * signum) * 1.0E-9f) / this.f17045r : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f12 = this.f17049t + f11;
            if (this.f17055w) {
                f12 = this.f17053v;
            }
            if ((signum <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f12 < this.f17053v) && (signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f12 > this.f17053v)) {
                z11 = false;
            } else {
                f12 = this.f17053v;
                this.f17057x = false;
                z11 = true;
            }
            this.f17049t = f12;
            this.f17047s = f12;
            this.f17051u = nanoTime;
            if (interpolator != null && !z11) {
                if (this.D) {
                    interpolation = interpolator.getInterpolation(((float) (nanoTime - this.f17043q)) * 1.0E-9f);
                    Interpolator interpolator2 = this.f17023g;
                    if (interpolator2 != this.E) {
                        this.f17049t = interpolation;
                        this.f17051u = nanoTime;
                        if (interpolator2 instanceof o) {
                            float a10 = ((o) interpolator2).a();
                            this.f17027i = a10;
                            int i11 = ((Math.abs(a10) * this.f17045r) > 1.0E-5f ? 1 : ((Math.abs(a10) * this.f17045r) == 1.0E-5f ? 0 : -1));
                            if (a10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && interpolation >= 1.0f) {
                                this.f17049t = 1.0f;
                                this.f17057x = false;
                                interpolation = 1.0f;
                            }
                            if (a10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && interpolation <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                this.f17049t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                this.f17057x = false;
                                f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            }
                        }
                    } else {
                        throw null;
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f12);
                    Interpolator interpolator3 = this.f17023g;
                    if (interpolator3 instanceof o) {
                        this.f17027i = ((o) interpolator3).a();
                    } else {
                        this.f17027i = ((interpolator3.getInterpolation(f12 + f11) - interpolation) * signum) / f11;
                    }
                }
                f12 = interpolation;
            } else {
                this.f17027i = f11;
            }
            if (Math.abs(this.f17027i) > 1.0E-5f) {
                setState(j.MOVING);
            }
            if ((signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 >= this.f17053v) || (signum <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 <= this.f17053v)) {
                f12 = this.f17053v;
                this.f17057x = false;
            }
            if (f12 >= 1.0f || f12 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                this.f17057x = false;
                setState(j.FINISHED);
            }
            int childCount = getChildCount();
            this.P = false;
            long nanoTime2 = getNanoTime();
            this.f17032k0 = f12;
            Interpolator interpolator4 = this.f17025h;
            float interpolation2 = interpolator4 == null ? f12 : interpolator4.getInterpolation(f12);
            Interpolator interpolator5 = this.f17025h;
            if (interpolator5 != null) {
                float interpolation3 = interpolator5.getInterpolation((signum / this.f17045r) + f12);
                this.f17027i = interpolation3;
                this.f17027i = interpolation3 - this.f17025h.getInterpolation(f12);
            }
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                m mVar = this.f17041p.get(childAt);
                if (mVar != null) {
                    this.P |= mVar.q(childAt, interpolation2, nanoTime2, this.f17034l0);
                }
            }
            boolean z14 = (signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 >= this.f17053v) || (signum <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 <= this.f17053v);
            if (!this.P && !this.f17057x && z14) {
                setState(j.FINISHED);
            }
            if (this.f17019d0) {
                requestLayout();
            }
            this.P = (!z14) | this.P;
            if (f12 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || (i10 = this.f17029j) == -1 || this.f17031k == i10) {
                z13 = false;
            } else {
                this.f17031k = i10;
                this.f17021f.j(i10).g(this);
                setState(j.FINISHED);
                z13 = true;
            }
            if (f12 >= 1.0d) {
                int i13 = this.f17031k;
                int i14 = this.f17033l;
                if (i13 != i14) {
                    this.f17031k = i14;
                    this.f17021f.j(i14).g(this);
                    setState(j.FINISHED);
                    z13 = true;
                }
            }
            if (this.P || this.f17057x) {
                invalidate();
            } else if ((signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 == 1.0f) || (signum < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                setState(j.FINISHED);
            }
            if (!this.P && !this.f17057x && ((signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 == 1.0f) || (signum < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f12 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD))) {
                s();
            }
        }
        float f13 = this.f17049t;
        if (f13 >= 1.0f) {
            int i15 = this.f17031k;
            int i16 = this.f17033l;
            z12 = i15 == i16 ? z13 : true;
            this.f17031k = i16;
        } else {
            if (f13 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                int i17 = this.f17031k;
                int i18 = this.f17029j;
                z12 = i17 == i18 ? z13 : true;
                this.f17031k = i18;
            }
            this.f17052u0 |= z13;
            if (z13 && !this.f17036m0) {
                requestLayout();
            }
            this.f17047s = this.f17049t;
        }
        z13 = z12;
        this.f17052u0 |= z13;
        if (z13) {
            requestLayout();
        }
        this.f17047s = this.f17049t;
    }

    public int[] getConstraintSetIds() {
        r rVar = this.f17021f;
        if (rVar == null) {
            return null;
        }
        return rVar.l();
    }

    public int getCurrentState() {
        return this.f17031k;
    }

    public ArrayList<r.b> getDefinedTransitions() {
        r rVar = this.f17021f;
        if (rVar == null) {
            return null;
        }
        return rVar.m();
    }

    public z.b getDesignTool() {
        if (this.F == null) {
            this.F = new z.b(this);
        }
        return this.F;
    }

    public int getEndState() {
        return this.f17033l;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f17049t;
    }

    public r getScene() {
        return this.f17021f;
    }

    public int getStartState() {
        return this.f17029j;
    }

    public float getTargetPosition() {
        return this.f17053v;
    }

    public Bundle getTransitionState() {
        if (this.f17038n0 == null) {
            this.f17038n0 = new h();
        }
        this.f17038n0.c();
        return this.f17038n0.b();
    }

    public long getTransitionTimeMs() {
        if (this.f17021f != null) {
            this.f17045r = r0.n() / 1000.0f;
        }
        return this.f17045r * 1000.0f;
    }

    public float getVelocity() {
        return this.f17027i;
    }

    public final void h() {
        boolean z10;
        float signum = Math.signum(this.f17053v - this.f17049t);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f17023g;
        float f10 = this.f17049t + (((((float) (nanoTime - this.f17051u)) * signum) * 1.0E-9f) / this.f17045r);
        if (this.f17055w) {
            f10 = this.f17053v;
        }
        if ((signum <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 < this.f17053v) && (signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD || f10 > this.f17053v)) {
            z10 = false;
        } else {
            f10 = this.f17053v;
            z10 = true;
        }
        if (interpolator != null && !z10) {
            if (this.D) {
                f10 = interpolator.getInterpolation(((float) (nanoTime - this.f17043q)) * 1.0E-9f);
            } else {
                f10 = interpolator.getInterpolation(f10);
            }
        }
        if ((signum > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f10 >= this.f17053v) || (signum <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f10 <= this.f17053v)) {
            f10 = this.f17053v;
        }
        this.f17032k0 = f10;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.f17025h;
        if (interpolator2 != null) {
            f10 = interpolator2.getInterpolation(f10);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            m mVar = this.f17041p.get(childAt);
            if (mVar != null) {
                mVar.q(childAt, f10, nanoTime2, this.f17034l0);
            }
        }
        if (this.f17019d0) {
            requestLayout();
        }
    }

    public final void i() {
        CopyOnWriteArrayList<i> copyOnWriteArrayList;
        if ((this.f17059y == null && ((copyOnWriteArrayList = this.T) == null || copyOnWriteArrayList.isEmpty())) || this.f17017b0 == this.f17047s) {
            return;
        }
        if (this.f17016a0 != -1) {
            i iVar = this.f17059y;
            if (iVar != null) {
                iVar.a(this, this.f17029j, this.f17033l);
            }
            CopyOnWriteArrayList<i> copyOnWriteArrayList2 = this.T;
            if (copyOnWriteArrayList2 != null) {
                Iterator<i> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().a(this, this.f17029j, this.f17033l);
                }
            }
            this.f17018c0 = true;
        }
        this.f17016a0 = -1;
        float f10 = this.f17047s;
        this.f17017b0 = f10;
        i iVar2 = this.f17059y;
        if (iVar2 != null) {
            iVar2.d(this, this.f17029j, this.f17033l, f10);
        }
        CopyOnWriteArrayList<i> copyOnWriteArrayList3 = this.T;
        if (copyOnWriteArrayList3 != null) {
            Iterator<i> it3 = copyOnWriteArrayList3.iterator();
            while (it3.hasNext()) {
                it3.next().d(this, this.f17029j, this.f17033l, this.f17047s);
            }
        }
        this.f17018c0 = true;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        if (Build.VERSION.SDK_INT >= 19) {
            return super.isAttachedToWindow();
        }
        return getWindowToken() != null;
    }

    public void j() {
        int i10;
        CopyOnWriteArrayList<i> copyOnWriteArrayList;
        if ((this.f17059y != null || ((copyOnWriteArrayList = this.T) != null && !copyOnWriteArrayList.isEmpty())) && this.f17016a0 == -1) {
            this.f17016a0 = this.f17031k;
            if (this.f17060y0.isEmpty()) {
                i10 = -1;
            } else {
                ArrayList<Integer> arrayList = this.f17060y0;
                i10 = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i11 = this.f17031k;
            if (i10 != i11 && i11 != -1) {
                this.f17060y0.add(Integer.valueOf(i11));
            }
        }
        t();
        Runnable runnable = this.f17040o0;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.f17042p0;
        if (iArr == null || this.f17044q0 <= 0) {
            return;
        }
        B(iArr[0]);
        int[] iArr2 = this.f17042p0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f17044q0--;
    }

    public void k(int i10, boolean z10, float f10) {
        i iVar = this.f17059y;
        if (iVar != null) {
            iVar.b(this, i10, z10, f10);
        }
        CopyOnWriteArrayList<i> copyOnWriteArrayList = this.T;
        if (copyOnWriteArrayList != null) {
            Iterator<i> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                it2.next().b(this, i10, z10, f10);
            }
        }
    }

    public void l(int i10, float f10, float f11, float f12, float[] fArr) {
        String resourceName;
        HashMap<View, m> hashMap = this.f17041p;
        View viewById = getViewById(i10);
        m mVar = hashMap.get(viewById);
        if (mVar != null) {
            mVar.k(f10, f11, f12, fArr);
            float y10 = viewById.getY();
            this.f17061z = f10;
            this.A = y10;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i10;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i10);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("WARNING could not find view id ");
        sb2.append(resourceName);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i10) {
        r.b bVar;
        if (i10 != 0) {
            try {
                r rVar = new r(getContext(), this, i10);
                this.f17021f = rVar;
                if (this.f17031k == -1) {
                    this.f17031k = rVar.B();
                    this.f17029j = this.f17021f.B();
                    this.f17033l = this.f17021f.o();
                }
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 19 && !isAttachedToWindow()) {
                    this.f17021f = null;
                    return;
                }
                if (i11 >= 17) {
                    try {
                        Display display = getDisplay();
                        this.f17046r0 = display == null ? 0 : display.getRotation();
                    } catch (Exception e10) {
                        throw new IllegalArgumentException("unable to parse MotionScene file", e10);
                    }
                }
                r rVar2 = this.f17021f;
                if (rVar2 != null) {
                    androidx.constraintlayout.widget.c j10 = rVar2.j(this.f17031k);
                    this.f17021f.P(this);
                    ArrayList<n> arrayList = this.S;
                    if (arrayList != null) {
                        Iterator<n> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            it2.next().x(this);
                        }
                    }
                    if (j10 != null) {
                        j10.i(this);
                    }
                    this.f17029j = this.f17031k;
                }
                s();
                h hVar = this.f17038n0;
                if (hVar != null) {
                    if (this.f17048s0) {
                        post(new a());
                        return;
                    } else {
                        hVar.a();
                        return;
                    }
                }
                r rVar3 = this.f17021f;
                if (rVar3 == null || (bVar = rVar3.f17125c) == null || bVar.v() != 4) {
                    return;
                }
                y();
                setState(j.SETUP);
                setState(j.MOVING);
                return;
            } catch (Exception e11) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e11);
            }
        }
        this.f17021f = null;
    }

    public androidx.constraintlayout.widget.c m(int i10) {
        r rVar = this.f17021f;
        if (rVar == null) {
            return null;
        }
        return rVar.j(i10);
    }

    public m n(int i10) {
        return this.f17041p.get(findViewById(i10));
    }

    public r.b o(int i10) {
        return this.f17021f.C(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        r.b bVar;
        int i10;
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            this.f17046r0 = display.getRotation();
        }
        r rVar = this.f17021f;
        if (rVar != null && (i10 = this.f17031k) != -1) {
            androidx.constraintlayout.widget.c j10 = rVar.j(i10);
            this.f17021f.P(this);
            ArrayList<n> arrayList = this.S;
            if (arrayList != null) {
                Iterator<n> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().x(this);
                }
            }
            if (j10 != null) {
                j10.i(this);
            }
            this.f17029j = this.f17031k;
        }
        s();
        h hVar = this.f17038n0;
        if (hVar != null) {
            if (this.f17048s0) {
                post(new c());
                return;
            } else {
                hVar.a();
                return;
            }
        }
        r rVar2 = this.f17021f;
        if (rVar2 == null || (bVar = rVar2.f17125c) == null || bVar.v() != 4) {
            return;
        }
        y();
        setState(j.SETUP);
        setState(j.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        s z10;
        int q10;
        RectF p10;
        r rVar = this.f17021f;
        if (rVar != null && this.f17039o) {
            v vVar = rVar.f17141s;
            if (vVar != null) {
                vVar.g(motionEvent);
            }
            r.b bVar = this.f17021f.f17125c;
            if (bVar != null && bVar.A() && (z10 = bVar.z()) != null && ((motionEvent.getAction() != 0 || (p10 = z10.p(this, new RectF())) == null || p10.contains(motionEvent.getX(), motionEvent.getY())) && (q10 = z10.q()) != -1)) {
                View view = this.f17056w0;
                if (view == null || view.getId() != q10) {
                    this.f17056w0 = findViewById(q10);
                }
                if (this.f17056w0 != null) {
                    this.f17054v0.set(r0.getLeft(), this.f17056w0.getTop(), this.f17056w0.getRight(), this.f17056w0.getBottom());
                    if (this.f17054v0.contains(motionEvent.getX(), motionEvent.getY()) && !p(this.f17056w0.getLeft(), this.f17056w0.getTop(), this.f17056w0, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.f17036m0 = true;
        try {
            if (this.f17021f == null) {
                super.onLayout(z10, i10, i11, i12, i13);
                return;
            }
            int i14 = i12 - i10;
            int i15 = i13 - i11;
            if (this.I != i14 || this.J != i15) {
                u();
                g(true);
            }
            this.I = i14;
            this.J = i15;
            this.G = i14;
            this.H = i15;
        } finally {
            this.f17036m0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.f17021f == null) {
            super.onMeasure(i10, i11);
            return;
        }
        boolean z10 = (this.f17035m == i10 && this.f17037n == i11) ? false : true;
        if (this.f17052u0) {
            this.f17052u0 = false;
            s();
            t();
            z10 = true;
        }
        boolean z11 = this.mDirtyHierarchy ? true : z10;
        this.f17035m = i10;
        this.f17037n = i11;
        int B = this.f17021f.B();
        int o10 = this.f17021f.o();
        if (z11) {
            if (this.f17029j == -1) {
                if (z11) {
                    super.onMeasure(i10, i11);
                }
                boolean z12 = this.f17019d0;
                int paddingTop = getPaddingTop() + getPaddingBottom();
                int R = this.mLayoutWidget.R() + getPaddingLeft() + getPaddingRight();
                int v10 = this.mLayoutWidget.v() + paddingTop;
                int i12 = this.f17028i0;
                if (i12 == Integer.MIN_VALUE || i12 == 0) {
                    R = (int) (this.f17020e0 + (this.f17032k0 * (this.f17024g0 - r7)));
                    requestLayout();
                }
                int i13 = this.f17030j0;
                if (i13 == Integer.MIN_VALUE || i13 == 0) {
                    v10 = (int) (this.f17022f0 + (this.f17032k0 * (this.f17026h0 - r7)));
                    requestLayout();
                }
                setMeasuredDimension(R, v10);
                h();
                return;
            }
            super.onMeasure(i10, i11);
            this.f17021f.j(B);
            this.f17021f.j(o10);
            throw null;
        }
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, q0.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // q0.q
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr, int i12) {
        r.b bVar;
        s z10;
        int q10;
        r rVar = this.f17021f;
        if (rVar == null || (bVar = rVar.f17125c) == null || !bVar.A()) {
            return;
        }
        int i13 = -1;
        if (!bVar.A() || (z10 = bVar.z()) == null || (q10 = z10.q()) == -1 || view.getId() == q10) {
            if (rVar.t()) {
                s z11 = bVar.z();
                if (z11 != null && (z11.e() & 4) != 0) {
                    i13 = i11;
                }
                float f10 = this.f17047s;
                if ((f10 == 1.0f || f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) && view.canScrollVertically(i13)) {
                    return;
                }
            }
            if (bVar.z() != null && (bVar.z().e() & 1) != 0) {
                float u10 = rVar.u(i10, i11);
                float f11 = this.f17049t;
                if ((f11 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && u10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) || (f11 >= 1.0f && u10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new b(view));
                        return;
                    }
                    return;
                }
            }
            float f12 = this.f17047s;
            long nanoTime = getNanoTime();
            float f13 = i10;
            this.L = f13;
            float f14 = i11;
            this.M = f14;
            double d10 = nanoTime - this.N;
            Double.isNaN(d10);
            this.O = (float) (d10 * 1.0E-9d);
            this.N = nanoTime;
            rVar.L(f13, f14);
            if (f12 != this.f17047s) {
                iArr[0] = i10;
                iArr[1] = i11;
            }
            g(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.K = true;
        }
    }

    @Override // q0.q
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14) {
    }

    @Override // q0.r
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (this.K || i10 != 0 || i11 != 0) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
        }
        this.K = false;
    }

    @Override // q0.q
    public void onNestedScrollAccepted(View view, View view2, int i10, int i11) {
        this.N = getNanoTime();
        this.O = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.L = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.M = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        r rVar = this.f17021f;
        if (rVar != null) {
            rVar.S(isRtl());
        }
    }

    @Override // q0.q
    public boolean onStartNestedScroll(View view, View view2, int i10, int i11) {
        r.b bVar;
        r rVar = this.f17021f;
        return (rVar == null || (bVar = rVar.f17125c) == null || bVar.z() == null || (this.f17021f.f17125c.z().e() & 2) != 0) ? false : true;
    }

    @Override // q0.q
    public void onStopNestedScroll(View view, int i10) {
        r rVar = this.f17021f;
        if (rVar != null) {
            float f10 = this.O;
            if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                return;
            }
            rVar.M(this.L / f10, this.M / f10);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        r rVar = this.f17021f;
        if (rVar != null && this.f17039o && rVar.X()) {
            r.b bVar = this.f17021f.f17125c;
            if (bVar != null && !bVar.A()) {
                return super.onTouchEvent(motionEvent);
            }
            this.f17021f.N(motionEvent, getCurrentState(), this);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof n) {
            n nVar = (n) view;
            if (this.T == null) {
                this.T = new CopyOnWriteArrayList<>();
            }
            this.T.add(nVar);
            if (nVar.w()) {
                if (this.Q == null) {
                    this.Q = new ArrayList<>();
                }
                this.Q.add(nVar);
            }
            if (nVar.v()) {
                if (this.R == null) {
                    this.R = new ArrayList<>();
                }
                this.R.add(nVar);
            }
            if (nVar.u()) {
                if (this.S == null) {
                    this.S = new ArrayList<>();
                }
                this.S.add(nVar);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<n> arrayList = this.Q;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<n> arrayList2 = this.R;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    public final boolean p(float f10, float f11, View view, MotionEvent motionEvent) {
        boolean z10;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (p((r3.getLeft() + f10) - view.getScrollX(), (r3.getTop() + f11) - view.getScrollY(), viewGroup.getChildAt(childCount), motionEvent)) {
                    z10 = true;
                    break;
                }
            }
        }
        z10 = false;
        if (!z10) {
            this.f17054v0.set(f10, f11, (view.getRight() + f10) - view.getLeft(), (view.getBottom() + f11) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.f17054v0.contains(motionEvent.getX(), motionEvent.getY())) && e(view, motionEvent, -f10, -f11)) {
                return true;
            }
        }
        return z10;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int i10) {
        this.mConstraintLayoutSpec = null;
    }

    public boolean q() {
        return this.f17039o;
    }

    public f r() {
        return g.f();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        r rVar;
        r.b bVar;
        if (this.f17019d0 || this.f17031k != -1 || (rVar = this.f17021f) == null || (bVar = rVar.f17125c) == null || bVar.x() != 0) {
            super.requestLayout();
        }
    }

    public void s() {
        r rVar = this.f17021f;
        if (rVar == null) {
            return;
        }
        if (rVar.g(this, this.f17031k)) {
            requestLayout();
            return;
        }
        int i10 = this.f17031k;
        if (i10 != -1) {
            this.f17021f.f(this, i10);
        }
        if (this.f17021f.X()) {
            this.f17021f.V();
        }
    }

    public void setDebugMode(int i10) {
        this.B = i10;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.f17048s0 = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.f17039o = z10;
    }

    public void setInterpolatedProgress(float f10) {
        if (this.f17021f != null) {
            setState(j.MOVING);
            Interpolator q10 = this.f17021f.q();
            if (q10 != null) {
                setProgress(q10.getInterpolation(f10));
                return;
            }
        }
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList<n> arrayList = this.R;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.R.get(i10).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList<n> arrayList = this.Q;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.Q.get(i10).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10) {
        if (f10 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            int i10 = (f10 > 1.0f ? 1 : (f10 == 1.0f ? 0 : -1));
        }
        if (!isAttachedToWindow()) {
            if (this.f17038n0 == null) {
                this.f17038n0 = new h();
            }
            this.f17038n0.e(f10);
            return;
        }
        if (f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            if (this.f17049t == 1.0f && this.f17031k == this.f17033l) {
                setState(j.MOVING);
            }
            this.f17031k = this.f17029j;
            if (this.f17049t == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                setState(j.FINISHED);
            }
        } else if (f10 >= 1.0f) {
            if (this.f17049t == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && this.f17031k == this.f17029j) {
                setState(j.MOVING);
            }
            this.f17031k = this.f17033l;
            if (this.f17049t == 1.0f) {
                setState(j.FINISHED);
            }
        } else {
            this.f17031k = -1;
            setState(j.MOVING);
        }
        if (this.f17021f == null) {
            return;
        }
        this.f17055w = true;
        this.f17053v = f10;
        this.f17047s = f10;
        this.f17051u = -1L;
        this.f17043q = -1L;
        this.f17023g = null;
        this.f17057x = true;
        invalidate();
    }

    public void setScene(r rVar) {
        this.f17021f = rVar;
        rVar.S(isRtl());
        u();
    }

    public void setStartState(int i10) {
        if (!isAttachedToWindow()) {
            if (this.f17038n0 == null) {
                this.f17038n0 = new h();
            }
            this.f17038n0.f(i10);
            this.f17038n0.d(i10);
            return;
        }
        this.f17031k = i10;
    }

    public void setState(j jVar) {
        j jVar2 = j.FINISHED;
        if (jVar == jVar2 && this.f17031k == -1) {
            return;
        }
        j jVar3 = this.f17050t0;
        this.f17050t0 = jVar;
        j jVar4 = j.MOVING;
        if (jVar3 == jVar4 && jVar == jVar4) {
            i();
        }
        int i10 = d.f17066a[jVar3.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 && jVar == jVar2) {
                j();
                return;
            }
            return;
        }
        if (jVar == jVar4) {
            i();
        }
        if (jVar == jVar2) {
            j();
        }
    }

    public void setTransition(int i10) {
        if (this.f17021f != null) {
            r.b o10 = o(i10);
            this.f17029j = o10.y();
            this.f17033l = o10.w();
            if (!isAttachedToWindow()) {
                if (this.f17038n0 == null) {
                    this.f17038n0 = new h();
                }
                this.f17038n0.f(this.f17029j);
                this.f17038n0.d(this.f17033l);
                return;
            }
            int i11 = this.f17031k;
            int i12 = this.f17029j;
            this.f17021f.U(o10);
            this.f17021f.j(this.f17029j);
            this.f17021f.j(this.f17033l);
            throw null;
        }
    }

    public void setTransitionDuration(int i10) {
        r rVar = this.f17021f;
        if (rVar == null) {
            return;
        }
        rVar.R(i10);
    }

    public void setTransitionListener(i iVar) {
        this.f17059y = iVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f17038n0 == null) {
            this.f17038n0 = new h();
        }
        this.f17038n0.g(bundle);
        if (isAttachedToWindow()) {
            this.f17038n0.a();
        }
    }

    public final void t() {
        CopyOnWriteArrayList<i> copyOnWriteArrayList;
        if (this.f17059y == null && ((copyOnWriteArrayList = this.T) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f17018c0 = false;
        Iterator<Integer> it2 = this.f17060y0.iterator();
        while (it2.hasNext()) {
            Integer next = it2.next();
            i iVar = this.f17059y;
            if (iVar != null) {
                iVar.c(this, next.intValue());
            }
            CopyOnWriteArrayList<i> copyOnWriteArrayList2 = this.T;
            if (copyOnWriteArrayList2 != null) {
                Iterator<i> it3 = copyOnWriteArrayList2.iterator();
                while (it3.hasNext()) {
                    it3.next().c(this, next.intValue());
                }
            }
        }
        this.f17060y0.clear();
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return z.a.b(context, this.f17029j) + "->" + z.a.b(context, this.f17033l) + " (pos:" + this.f17049t + " Dpos/Dt:" + this.f17027i;
    }

    public void u() {
        throw null;
    }

    public void v(float f10, float f11) {
        if (!isAttachedToWindow()) {
            if (this.f17038n0 == null) {
                this.f17038n0 = new h();
            }
            this.f17038n0.e(f10);
            this.f17038n0.h(f11);
            return;
        }
        setProgress(f10);
        setState(j.MOVING);
        this.f17027i = f11;
        d(1.0f);
    }

    public void w(int i10, int i11) {
        if (!isAttachedToWindow()) {
            if (this.f17038n0 == null) {
                this.f17038n0 = new h();
            }
            this.f17038n0.f(i10);
            this.f17038n0.d(i11);
            return;
        }
        r rVar = this.f17021f;
        if (rVar == null) {
            return;
        }
        this.f17029j = i10;
        this.f17033l = i11;
        rVar.T(i10, i11);
        this.f17021f.j(i10);
        this.f17021f.j(i11);
        throw null;
    }

    public void x(int i10, float f10, float f11) {
        if (this.f17021f == null || this.f17049t == f10) {
            return;
        }
        this.D = true;
        this.f17043q = getNanoTime();
        this.f17045r = this.f17021f.n() / 1000.0f;
        this.f17053v = f10;
        this.f17057x = true;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            if (i10 == 4) {
                this.f17021f.r();
                throw null;
            }
            if (i10 == 5) {
                if (H(f11, this.f17049t, this.f17021f.r())) {
                    this.f17021f.r();
                    throw null;
                }
                this.f17021f.r();
                this.f17021f.s();
                throw null;
            }
            if (i10 != 6 && i10 != 7) {
                this.f17055w = false;
                this.f17043q = getNanoTime();
                invalidate();
                return;
            }
        }
        if (this.f17021f.i() == 0) {
            this.f17021f.r();
            this.f17021f.s();
            throw null;
        }
        this.f17021f.y();
        this.f17021f.z();
        this.f17021f.x();
        this.f17021f.A();
        this.f17021f.w();
        throw null;
    }

    public void y() {
        d(1.0f);
        this.f17040o0 = null;
    }

    public void z(Runnable runnable) {
        d(1.0f);
        this.f17040o0 = runnable;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i10, int i11, int i12) {
        setState(j.SETUP);
        this.f17031k = i10;
        this.f17029j = -1;
        this.f17033l = -1;
        a0.a aVar = this.mConstraintLayoutSpec;
        if (aVar != null) {
            aVar.d(i10, i11, i12);
            return;
        }
        r rVar = this.f17021f;
        if (rVar != null) {
            rVar.j(i10).i(this);
        }
    }

    public void setTransition(r.b bVar) {
        this.f17021f.U(bVar);
        setState(j.SETUP);
        if (this.f17031k == this.f17021f.o()) {
            this.f17049t = 1.0f;
            this.f17047s = 1.0f;
            this.f17053v = 1.0f;
        } else {
            this.f17049t = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f17047s = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            this.f17053v = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f17051u = bVar.B(1) ? -1L : getNanoTime();
        int B = this.f17021f.B();
        int o10 = this.f17021f.o();
        if (B == this.f17029j && o10 == this.f17033l) {
            return;
        }
        this.f17029j = B;
        this.f17033l = o10;
        this.f17021f.T(B, o10);
        this.f17021f.j(this.f17029j);
        this.f17021f.j(this.f17033l);
        throw null;
    }
}

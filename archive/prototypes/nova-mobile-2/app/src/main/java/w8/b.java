package w8;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import f9.f;
import g9.i;
import java.util.ArrayList;
import java.util.Iterator;
import y8.h;
import y8.j;

/* compiled from: Chart.java */
/* loaded from: classes.dex */
public abstract class b<T extends h<? extends c9.d<? extends j>>> extends ViewGroup implements b9.c {
    public float A;
    public float B;
    public float C;
    public float D;
    public boolean E;
    public a9.c[] F;
    public float G;
    public boolean H;
    public x8.d I;
    public ArrayList<Runnable> J;
    public boolean K;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15386f;

    /* renamed from: g, reason: collision with root package name */
    public T f15387g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f15388h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f15389i;

    /* renamed from: j, reason: collision with root package name */
    public float f15390j;

    /* renamed from: k, reason: collision with root package name */
    public z8.b f15391k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f15392l;

    /* renamed from: m, reason: collision with root package name */
    public Paint f15393m;

    /* renamed from: n, reason: collision with root package name */
    public x8.h f15394n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f15395o;

    /* renamed from: p, reason: collision with root package name */
    public x8.c f15396p;

    /* renamed from: q, reason: collision with root package name */
    public x8.e f15397q;

    /* renamed from: r, reason: collision with root package name */
    public d9.d f15398r;

    /* renamed from: s, reason: collision with root package name */
    public d9.b f15399s;

    /* renamed from: t, reason: collision with root package name */
    public String f15400t;

    /* renamed from: u, reason: collision with root package name */
    public d9.c f15401u;

    /* renamed from: v, reason: collision with root package name */
    public f f15402v;

    /* renamed from: w, reason: collision with root package name */
    public f9.d f15403w;

    /* renamed from: x, reason: collision with root package name */
    public a9.e f15404x;

    /* renamed from: y, reason: collision with root package name */
    public g9.j f15405y;

    /* renamed from: z, reason: collision with root package name */
    public u8.a f15406z;

    /* compiled from: Chart.java */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.postInvalidate();
        }
    }

    public b(Context context) {
        super(context);
        this.f15386f = false;
        this.f15387g = null;
        this.f15388h = true;
        this.f15389i = true;
        this.f15390j = 0.9f;
        this.f15391k = new z8.b(0);
        this.f15395o = true;
        this.f15400t = "No chart data available.";
        this.f15405y = new g9.j();
        this.A = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.B = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.C = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.D = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.E = false;
        this.G = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.H = true;
        this.J = new ArrayList<>();
        this.K = false;
        n();
    }

    public abstract void f();

    public void g() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public u8.a getAnimator() {
        return this.f15406z;
    }

    public g9.e getCenter() {
        return g9.e.c(getWidth() / 2.0f, getHeight() / 2.0f);
    }

    public g9.e getCenterOfView() {
        return getCenter();
    }

    public g9.e getCenterOffsets() {
        return this.f15405y.n();
    }

    public Bitmap getChartBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Drawable background = getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        draw(canvas);
        return createBitmap;
    }

    public RectF getContentRect() {
        return this.f15405y.o();
    }

    public T getData() {
        return this.f15387g;
    }

    public z8.c getDefaultValueFormatter() {
        return this.f15391k;
    }

    public x8.c getDescription() {
        return this.f15396p;
    }

    public float getDragDecelerationFrictionCoef() {
        return this.f15390j;
    }

    public float getExtraBottomOffset() {
        return this.C;
    }

    public float getExtraLeftOffset() {
        return this.D;
    }

    public float getExtraRightOffset() {
        return this.B;
    }

    public float getExtraTopOffset() {
        return this.A;
    }

    public a9.c[] getHighlighted() {
        return this.F;
    }

    public a9.e getHighlighter() {
        return this.f15404x;
    }

    public ArrayList<Runnable> getJobs() {
        return this.J;
    }

    public x8.e getLegend() {
        return this.f15397q;
    }

    public f getLegendRenderer() {
        return this.f15402v;
    }

    public x8.d getMarker() {
        return this.I;
    }

    @Deprecated
    public x8.d getMarkerView() {
        return getMarker();
    }

    @Override // b9.c
    public float getMaxHighlightDistance() {
        return this.G;
    }

    public abstract /* synthetic */ int getMaxVisibleCount();

    public d9.c getOnChartGestureListener() {
        return this.f15401u;
    }

    public d9.b getOnTouchListener() {
        return this.f15399s;
    }

    public f9.d getRenderer() {
        return this.f15403w;
    }

    public g9.j getViewPortHandler() {
        return this.f15405y;
    }

    public x8.h getXAxis() {
        return this.f15394n;
    }

    public float getXChartMax() {
        return this.f15394n.G;
    }

    public float getXChartMin() {
        return this.f15394n.H;
    }

    public float getXRange() {
        return this.f15394n.I;
    }

    public abstract /* synthetic */ float getYChartMax();

    public abstract /* synthetic */ float getYChartMin();

    public float getYMax() {
        return this.f15387g.o();
    }

    public float getYMin() {
        return this.f15387g.q();
    }

    public void h(Canvas canvas) {
        float f10;
        float f11;
        x8.c cVar = this.f15396p;
        if (cVar == null || !cVar.f()) {
            return;
        }
        g9.e k10 = this.f15396p.k();
        this.f15392l.setTypeface(this.f15396p.c());
        this.f15392l.setTextSize(this.f15396p.b());
        this.f15392l.setColor(this.f15396p.a());
        this.f15392l.setTextAlign(this.f15396p.m());
        if (k10 == null) {
            f11 = (getWidth() - this.f15405y.H()) - this.f15396p.d();
            f10 = (getHeight() - this.f15405y.F()) - this.f15396p.e();
        } else {
            float f12 = k10.f7055c;
            f10 = k10.f7056d;
            f11 = f12;
        }
        canvas.drawText(this.f15396p.l(), f11, f10, this.f15392l);
    }

    public void i(Canvas canvas) {
        if (this.I == null || !p() || !w()) {
            return;
        }
        int i10 = 0;
        while (true) {
            a9.c[] cVarArr = this.F;
            if (i10 >= cVarArr.length) {
                return;
            }
            a9.c cVar = cVarArr[i10];
            c9.d e10 = this.f15387g.e(cVar.c());
            j i11 = this.f15387g.i(this.F[i10]);
            int s02 = e10.s0(i11);
            if (i11 != null && s02 <= e10.e0() * this.f15406z.a()) {
                float[] l10 = l(cVar);
                if (this.f15405y.x(l10[0], l10[1])) {
                    this.I.b(i11, cVar);
                    this.I.a(canvas, l10[0], l10[1]);
                }
            }
            i10++;
        }
    }

    public void j() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    public a9.c k(float f10, float f11) {
        if (this.f15387g == null) {
            return null;
        }
        return getHighlighter().a(f10, f11);
    }

    public float[] l(a9.c cVar) {
        return new float[]{cVar.d(), cVar.e()};
    }

    public void m(a9.c cVar, boolean z10) {
        j jVar = null;
        if (cVar == null) {
            this.F = null;
        } else {
            if (this.f15386f) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Highlighted: ");
                sb2.append(cVar.toString());
            }
            j i10 = this.f15387g.i(cVar);
            if (i10 == null) {
                this.F = null;
                cVar = null;
            } else {
                this.F = new a9.c[]{cVar};
            }
            jVar = i10;
        }
        setLastHighlighted(this.F);
        if (z10 && this.f15398r != null) {
            if (!w()) {
                this.f15398r.a();
            } else {
                this.f15398r.b(jVar, cVar);
            }
        }
        invalidate();
    }

    public void n() {
        setWillNotDraw(false);
        this.f15406z = new u8.a(new a());
        i.v(getContext());
        this.G = i.e(500.0f);
        this.f15396p = new x8.c();
        x8.e eVar = new x8.e();
        this.f15397q = eVar;
        this.f15402v = new f(this.f15405y, eVar);
        this.f15394n = new x8.h();
        this.f15392l = new Paint(1);
        Paint paint = new Paint(1);
        this.f15393m = paint;
        paint.setColor(Color.rgb(247, 189, 51));
        this.f15393m.setTextAlign(Paint.Align.CENTER);
        this.f15393m.setTextSize(i.e(12.0f));
    }

    public boolean o() {
        return this.f15389i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.K) {
            v(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f15387g == null) {
            if (!TextUtils.isEmpty(this.f15400t)) {
                g9.e center = getCenter();
                canvas.drawText(this.f15400t, center.f7055c, center.f7056d, this.f15393m);
                return;
            }
            return;
        }
        if (this.E) {
            return;
        }
        f();
        this.E = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        for (int i14 = 0; i14 < getChildCount(); i14++) {
            getChildAt(i14).layout(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int e10 = (int) i.e(50.0f);
        setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), ViewGroup.resolveSize(e10, i10)), Math.max(getSuggestedMinimumHeight(), ViewGroup.resolveSize(e10, i11)));
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (i10 > 0 && i11 > 0 && i10 < 10000 && i11 < 10000) {
            if (this.f15386f) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Setting chart dimens, width: ");
                sb2.append(i10);
                sb2.append(", height: ");
                sb2.append(i11);
            }
            this.f15405y.L(i10, i11);
        } else if (this.f15386f) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("*Avoiding* setting chart dimens! width: ");
            sb3.append(i10);
            sb3.append(", height: ");
            sb3.append(i11);
        }
        s();
        Iterator<Runnable> it2 = this.J.iterator();
        while (it2.hasNext()) {
            post(it2.next());
        }
        this.J.clear();
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public boolean p() {
        return this.H;
    }

    public boolean q() {
        return this.f15388h;
    }

    public boolean r() {
        return this.f15386f;
    }

    public abstract void s();

    public void setData(T t10) {
        this.f15387g = t10;
        this.E = false;
        if (t10 == null) {
            return;
        }
        u(t10.q(), t10.o());
        for (c9.d dVar : this.f15387g.g()) {
            if (dVar.h() || dVar.d0() == this.f15391k) {
                dVar.e(this.f15391k);
            }
        }
        s();
    }

    public void setDescription(x8.c cVar) {
        this.f15396p = cVar;
    }

    public void setDragDecelerationEnabled(boolean z10) {
        this.f15389i = z10;
    }

    public void setDragDecelerationFrictionCoef(float f10) {
        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        if (f10 >= 1.0f) {
            f10 = 0.999f;
        }
        this.f15390j = f10;
    }

    @Deprecated
    public void setDrawMarkerViews(boolean z10) {
        setDrawMarkers(z10);
    }

    public void setDrawMarkers(boolean z10) {
        this.H = z10;
    }

    public void setExtraBottomOffset(float f10) {
        this.C = i.e(f10);
    }

    public void setExtraLeftOffset(float f10) {
        this.D = i.e(f10);
    }

    public void setExtraRightOffset(float f10) {
        this.B = i.e(f10);
    }

    public void setExtraTopOffset(float f10) {
        this.A = i.e(f10);
    }

    public void setHardwareAccelerationEnabled(boolean z10) {
        if (z10) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
    }

    public void setHighlightPerTapEnabled(boolean z10) {
        this.f15388h = z10;
    }

    public void setHighlighter(a9.b bVar) {
        this.f15404x = bVar;
    }

    public void setLastHighlighted(a9.c[] cVarArr) {
        if (cVarArr != null && cVarArr.length > 0 && cVarArr[0] != null) {
            this.f15399s.d(cVarArr[0]);
        } else {
            this.f15399s.d(null);
        }
    }

    public void setLogEnabled(boolean z10) {
        this.f15386f = z10;
    }

    public void setMarker(x8.d dVar) {
        this.I = dVar;
    }

    @Deprecated
    public void setMarkerView(x8.d dVar) {
        setMarker(dVar);
    }

    public void setMaxHighlightDistance(float f10) {
        this.G = i.e(f10);
    }

    public void setNoDataText(String str) {
        this.f15400t = str;
    }

    public void setNoDataTextColor(int i10) {
        this.f15393m.setColor(i10);
    }

    public void setNoDataTextTypeface(Typeface typeface) {
        this.f15393m.setTypeface(typeface);
    }

    public void setOnChartGestureListener(d9.c cVar) {
        this.f15401u = cVar;
    }

    public void setOnChartValueSelectedListener(d9.d dVar) {
        this.f15398r = dVar;
    }

    public void setOnTouchListener(d9.b bVar) {
        this.f15399s = bVar;
    }

    public void setRenderer(f9.d dVar) {
        if (dVar != null) {
            this.f15403w = dVar;
        }
    }

    public void setTouchEnabled(boolean z10) {
        this.f15395o = z10;
    }

    public void setUnbindEnabled(boolean z10) {
        this.K = z10;
    }

    public void t(float f10, float f11, float f12, float f13) {
        setExtraLeftOffset(f10);
        setExtraTopOffset(f11);
        setExtraRightOffset(f12);
        setExtraBottomOffset(f13);
    }

    public void u(float f10, float f11) {
        float max;
        T t10 = this.f15387g;
        if (t10 != null && t10.h() >= 2) {
            max = Math.abs(f11 - f10);
        } else {
            max = Math.max(Math.abs(f10), Math.abs(f11));
        }
        this.f15391k.g(i.i(max));
    }

    public final void v(View view) {
        if (view.getBackground() != null) {
            view.getBackground().setCallback(null);
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i10 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 < viewGroup.getChildCount()) {
                v(viewGroup.getChildAt(i10));
                i10++;
            } else {
                viewGroup.removeAllViews();
                return;
            }
        }
    }

    public boolean w() {
        a9.c[] cVarArr = this.F;
        return (cVarArr == null || cVarArr.length <= 0 || cVarArr[0] == null) ? false : true;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15386f = false;
        this.f15387g = null;
        this.f15388h = true;
        this.f15389i = true;
        this.f15390j = 0.9f;
        this.f15391k = new z8.b(0);
        this.f15395o = true;
        this.f15400t = "No chart data available.";
        this.f15405y = new g9.j();
        this.A = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.B = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.C = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.D = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.E = false;
        this.G = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.H = true;
        this.J = new ArrayList<>();
        this.K = false;
        n();
    }
}

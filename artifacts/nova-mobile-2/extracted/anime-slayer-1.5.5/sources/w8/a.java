package w8;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import f9.l;
import f9.o;
import g9.g;
import x8.e;
import x8.h;
import x8.i;
import y8.d;
import y8.j;

/* compiled from: BarLineChartBase.java */
@SuppressLint({"RtlHardcoded"})
/* loaded from: classes.dex */
public abstract class a<T extends y8.d<? extends c9.b<? extends j>>> extends b<T> implements b9.b {
    public int L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public Paint U;
    public Paint V;
    public boolean W;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f15361a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f15362b0;

    /* renamed from: c0, reason: collision with root package name */
    public float f15363c0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f15364d0;

    /* renamed from: e0, reason: collision with root package name */
    public d9.e f15365e0;

    /* renamed from: f0, reason: collision with root package name */
    public i f15366f0;

    /* renamed from: g0, reason: collision with root package name */
    public i f15367g0;

    /* renamed from: h0, reason: collision with root package name */
    public o f15368h0;

    /* renamed from: i0, reason: collision with root package name */
    public o f15369i0;

    /* renamed from: j0, reason: collision with root package name */
    public g f15370j0;

    /* renamed from: k0, reason: collision with root package name */
    public g f15371k0;

    /* renamed from: l0, reason: collision with root package name */
    public l f15372l0;

    /* renamed from: m0, reason: collision with root package name */
    public long f15373m0;

    /* renamed from: n0, reason: collision with root package name */
    public long f15374n0;

    /* renamed from: o0, reason: collision with root package name */
    public RectF f15375o0;

    /* renamed from: p0, reason: collision with root package name */
    public Matrix f15376p0;

    /* renamed from: q0, reason: collision with root package name */
    public Matrix f15377q0;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f15378r0;

    /* renamed from: s0, reason: collision with root package name */
    public float[] f15379s0;

    /* renamed from: t0, reason: collision with root package name */
    public g9.d f15380t0;

    /* renamed from: u0, reason: collision with root package name */
    public g9.d f15381u0;

    /* renamed from: v0, reason: collision with root package name */
    public float[] f15382v0;

    /* compiled from: BarLineChartBase.java */
    /* renamed from: w8.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0399a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15383a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f15384b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f15385c;

        static {
            int[] iArr = new int[e.EnumC0417e.values().length];
            f15385c = iArr;
            try {
                iArr[e.EnumC0417e.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15385c[e.EnumC0417e.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[e.d.values().length];
            f15384b = iArr2;
            try {
                iArr2[e.d.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15384b[e.d.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15384b[e.d.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[e.f.values().length];
            f15383a = iArr3;
            try {
                iArr3[e.f.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15383a[e.f.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.L = 100;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = true;
        this.T = true;
        this.W = false;
        this.f15361a0 = false;
        this.f15362b0 = false;
        this.f15363c0 = 15.0f;
        this.f15364d0 = false;
        this.f15373m0 = 0L;
        this.f15374n0 = 0L;
        this.f15375o0 = new RectF();
        this.f15376p0 = new Matrix();
        this.f15377q0 = new Matrix();
        this.f15378r0 = false;
        this.f15379s0 = new float[2];
        this.f15380t0 = g9.d.b(ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45);
        this.f15381u0 = g9.d.b(ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45);
        this.f15382v0 = new float[2];
    }

    public void A(Canvas canvas) {
        if (this.W) {
            canvas.drawRect(this.f15405y.o(), this.U);
        }
        if (this.f15361a0) {
            canvas.drawRect(this.f15405y.o(), this.V);
        }
    }

    public i B(i.a aVar) {
        if (aVar == i.a.LEFT) {
            return this.f15366f0;
        }
        return this.f15367g0;
    }

    public c9.b C(float f10, float f11) {
        a9.c k10 = k(f10, f11);
        if (k10 != null) {
            return (c9.b) ((y8.d) this.f15387g).e(k10.c());
        }
        return null;
    }

    public boolean D() {
        return this.f15405y.t();
    }

    public boolean E() {
        return this.f15366f0.c0() || this.f15367g0.c0();
    }

    public boolean F() {
        return this.f15362b0;
    }

    public boolean G() {
        return this.O;
    }

    public boolean H() {
        return this.Q || this.R;
    }

    public boolean I() {
        return this.Q;
    }

    public boolean J() {
        return this.R;
    }

    public boolean K() {
        return this.f15405y.u();
    }

    public boolean L() {
        return this.P;
    }

    public boolean M() {
        return this.N;
    }

    public boolean N() {
        return this.S;
    }

    public boolean O() {
        return this.T;
    }

    public void P() {
        this.f15371k0.f(this.f15367g0.c0());
        this.f15370j0.f(this.f15366f0.c0());
    }

    public void Q() {
        if (this.f15386f) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Preparing Value-Px Matrix, xmin: ");
            sb2.append(this.f15394n.H);
            sb2.append(", xmax: ");
            sb2.append(this.f15394n.G);
            sb2.append(", xdelta: ");
            sb2.append(this.f15394n.I);
        }
        g gVar = this.f15371k0;
        h hVar = this.f15394n;
        float f10 = hVar.H;
        float f11 = hVar.I;
        i iVar = this.f15367g0;
        gVar.g(f10, f11, iVar.I, iVar.H);
        g gVar2 = this.f15370j0;
        h hVar2 = this.f15394n;
        float f12 = hVar2.H;
        float f13 = hVar2.I;
        i iVar2 = this.f15366f0;
        gVar2.g(f12, f13, iVar2.I, iVar2.H);
    }

    public void R(float f10, float f11, float f12, float f13) {
        this.f15405y.S(f10, f11, f12, -f13, this.f15376p0);
        this.f15405y.J(this.f15376p0, this, false);
        f();
        postInvalidate();
    }

    @Override // b9.b
    public boolean a(i.a aVar) {
        return B(aVar).c0();
    }

    @Override // b9.b
    public g b(i.a aVar) {
        if (aVar == i.a.LEFT) {
            return this.f15370j0;
        }
        return this.f15371k0;
    }

    @Override // android.view.View
    public void computeScroll() {
        d9.b bVar = this.f15399s;
        if (bVar instanceof d9.a) {
            ((d9.a) bVar).f();
        }
    }

    @Override // w8.b
    public void f() {
        if (!this.f15378r0) {
            z(this.f15375o0);
            RectF rectF = this.f15375o0;
            float f10 = rectF.left + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f11 = rectF.top + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f12 = rectF.right + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f13 = rectF.bottom + StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            if (this.f15366f0.d0()) {
                f10 += this.f15366f0.U(this.f15368h0.c());
            }
            if (this.f15367g0.d0()) {
                f12 += this.f15367g0.U(this.f15369i0.c());
            }
            if (this.f15394n.f() && this.f15394n.D()) {
                float e10 = r2.M + this.f15394n.e();
                if (this.f15394n.Q() == h.a.BOTTOM) {
                    f13 += e10;
                } else {
                    if (this.f15394n.Q() != h.a.TOP) {
                        if (this.f15394n.Q() == h.a.BOTH_SIDED) {
                            f13 += e10;
                        }
                    }
                    f11 += e10;
                }
            }
            float extraTopOffset = f11 + getExtraTopOffset();
            float extraRightOffset = f12 + getExtraRightOffset();
            float extraBottomOffset = f13 + getExtraBottomOffset();
            float extraLeftOffset = f10 + getExtraLeftOffset();
            float e11 = g9.i.e(this.f15363c0);
            this.f15405y.K(Math.max(e11, extraLeftOffset), Math.max(e11, extraTopOffset), Math.max(e11, extraRightOffset), Math.max(e11, extraBottomOffset));
            if (this.f15386f) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("offsetLeft: ");
                sb2.append(extraLeftOffset);
                sb2.append(", offsetTop: ");
                sb2.append(extraTopOffset);
                sb2.append(", offsetRight: ");
                sb2.append(extraRightOffset);
                sb2.append(", offsetBottom: ");
                sb2.append(extraBottomOffset);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Content: ");
                sb3.append(this.f15405y.o().toString());
            }
        }
        P();
        Q();
    }

    public i getAxisLeft() {
        return this.f15366f0;
    }

    public i getAxisRight() {
        return this.f15367g0;
    }

    @Override // w8.b, b9.c
    public /* bridge */ /* synthetic */ y8.d getData() {
        return (y8.d) super.getData();
    }

    public d9.e getDrawListener() {
        return this.f15365e0;
    }

    public float getHighestVisibleX() {
        b(i.a.LEFT).c(this.f15405y.i(), this.f15405y.f(), this.f15381u0);
        return (float) Math.min(this.f15394n.G, this.f15381u0.f7051c);
    }

    public float getLowestVisibleX() {
        b(i.a.LEFT).c(this.f15405y.h(), this.f15405y.f(), this.f15380t0);
        return (float) Math.max(this.f15394n.H, this.f15380t0.f7051c);
    }

    @Override // w8.b, b9.c
    public int getMaxVisibleCount() {
        return this.L;
    }

    public float getMinOffset() {
        return this.f15363c0;
    }

    public o getRendererLeftYAxis() {
        return this.f15368h0;
    }

    public o getRendererRightYAxis() {
        return this.f15369i0;
    }

    public l getRendererXAxis() {
        return this.f15372l0;
    }

    @Override // android.view.View
    public float getScaleX() {
        g9.j jVar = this.f15405y;
        if (jVar == null) {
            return 1.0f;
        }
        return jVar.q();
    }

    @Override // android.view.View
    public float getScaleY() {
        g9.j jVar = this.f15405y;
        if (jVar == null) {
            return 1.0f;
        }
        return jVar.r();
    }

    public float getVisibleXRange() {
        return Math.abs(getHighestVisibleX() - getLowestVisibleX());
    }

    @Override // w8.b
    public float getYChartMax() {
        return Math.max(this.f15366f0.G, this.f15367g0.G);
    }

    @Override // w8.b
    public float getYChartMin() {
        return Math.min(this.f15366f0.H, this.f15367g0.H);
    }

    @Override // w8.b
    public void n() {
        super.n();
        this.f15366f0 = new i(i.a.LEFT);
        this.f15367g0 = new i(i.a.RIGHT);
        this.f15370j0 = new g(this.f15405y);
        this.f15371k0 = new g(this.f15405y);
        this.f15368h0 = new o(this.f15405y, this.f15366f0, this.f15370j0);
        this.f15369i0 = new o(this.f15405y, this.f15367g0, this.f15371k0);
        this.f15372l0 = new l(this.f15405y, this.f15394n, this.f15370j0);
        setHighlighter(new a9.b(this));
        this.f15399s = new d9.a(this, this.f15405y.p(), 3.0f);
        Paint paint = new Paint();
        this.U = paint;
        paint.setStyle(Paint.Style.FILL);
        this.U.setColor(Color.rgb(240, 240, 240));
        Paint paint2 = new Paint();
        this.V = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.V.setColor(-16777216);
        this.V.setStrokeWidth(g9.i.e(1.0f));
    }

    @Override // w8.b, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f15387g == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        A(canvas);
        if (this.M) {
            x();
        }
        if (this.f15366f0.f()) {
            o oVar = this.f15368h0;
            i iVar = this.f15366f0;
            oVar.a(iVar.H, iVar.G, iVar.c0());
        }
        if (this.f15367g0.f()) {
            o oVar2 = this.f15369i0;
            i iVar2 = this.f15367g0;
            oVar2.a(iVar2.H, iVar2.G, iVar2.c0());
        }
        if (this.f15394n.f()) {
            l lVar = this.f15372l0;
            h hVar = this.f15394n;
            lVar.a(hVar.H, hVar.G, false);
        }
        this.f15372l0.j(canvas);
        this.f15368h0.j(canvas);
        this.f15369i0.j(canvas);
        if (this.f15394n.B()) {
            this.f15372l0.k(canvas);
        }
        if (this.f15366f0.B()) {
            this.f15368h0.k(canvas);
        }
        if (this.f15367g0.B()) {
            this.f15369i0.k(canvas);
        }
        if (this.f15394n.f() && this.f15394n.E()) {
            this.f15372l0.n(canvas);
        }
        if (this.f15366f0.f() && this.f15366f0.E()) {
            this.f15368h0.l(canvas);
        }
        if (this.f15367g0.f() && this.f15367g0.E()) {
            this.f15369i0.l(canvas);
        }
        int save = canvas.save();
        canvas.clipRect(this.f15405y.o());
        this.f15403w.b(canvas);
        if (!this.f15394n.B()) {
            this.f15372l0.k(canvas);
        }
        if (!this.f15366f0.B()) {
            this.f15368h0.k(canvas);
        }
        if (!this.f15367g0.B()) {
            this.f15369i0.k(canvas);
        }
        if (w()) {
            this.f15403w.d(canvas, this.F);
        }
        canvas.restoreToCount(save);
        this.f15403w.c(canvas);
        if (this.f15394n.f() && !this.f15394n.E()) {
            this.f15372l0.n(canvas);
        }
        if (this.f15366f0.f() && !this.f15366f0.E()) {
            this.f15368h0.l(canvas);
        }
        if (this.f15367g0.f() && !this.f15367g0.E()) {
            this.f15369i0.l(canvas);
        }
        this.f15372l0.i(canvas);
        this.f15368h0.i(canvas);
        this.f15369i0.i(canvas);
        if (F()) {
            int save2 = canvas.save();
            canvas.clipRect(this.f15405y.o());
            this.f15403w.e(canvas);
            canvas.restoreToCount(save2);
        } else {
            this.f15403w.e(canvas);
        }
        this.f15402v.e(canvas);
        h(canvas);
        i(canvas);
        if (this.f15386f) {
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            long j10 = this.f15373m0 + currentTimeMillis2;
            this.f15373m0 = j10;
            long j11 = this.f15374n0 + 1;
            this.f15374n0 = j11;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Drawtime: ");
            sb2.append(currentTimeMillis2);
            sb2.append(" ms, average: ");
            sb2.append(j10 / j11);
            sb2.append(" ms, cycles: ");
            sb2.append(this.f15374n0);
        }
    }

    @Override // w8.b, android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        float[] fArr = this.f15382v0;
        fArr[1] = 0.0f;
        fArr[0] = 0.0f;
        if (this.f15364d0) {
            fArr[0] = this.f15405y.h();
            this.f15382v0[1] = this.f15405y.j();
            b(i.a.LEFT).d(this.f15382v0);
        }
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f15364d0) {
            b(i.a.LEFT).e(this.f15382v0);
            this.f15405y.e(this.f15382v0, this);
        } else {
            g9.j jVar = this.f15405y;
            jVar.J(jVar.p(), this, true);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        d9.b bVar = this.f15399s;
        if (bVar == null || this.f15387g == 0 || !this.f15395o) {
            return false;
        }
        return bVar.onTouch(this, motionEvent);
    }

    @Override // w8.b
    public void s() {
        if (this.f15387g == 0) {
            return;
        }
        f9.d dVar = this.f15403w;
        if (dVar != null) {
            dVar.f();
        }
        y();
        o oVar = this.f15368h0;
        i iVar = this.f15366f0;
        oVar.a(iVar.H, iVar.G, iVar.c0());
        o oVar2 = this.f15369i0;
        i iVar2 = this.f15367g0;
        oVar2.a(iVar2.H, iVar2.G, iVar2.c0());
        l lVar = this.f15372l0;
        h hVar = this.f15394n;
        lVar.a(hVar.H, hVar.G, false);
        if (this.f15397q != null) {
            this.f15402v.a(this.f15387g);
        }
        f();
    }

    public void setAutoScaleMinMaxEnabled(boolean z10) {
        this.M = z10;
    }

    public void setBorderColor(int i10) {
        this.V.setColor(i10);
    }

    public void setBorderWidth(float f10) {
        this.V.setStrokeWidth(g9.i.e(f10));
    }

    public void setClipValuesToContent(boolean z10) {
        this.f15362b0 = z10;
    }

    public void setDoubleTapToZoomEnabled(boolean z10) {
        this.O = z10;
    }

    public void setDragEnabled(boolean z10) {
        this.Q = z10;
        this.R = z10;
    }

    public void setDragOffsetX(float f10) {
        this.f15405y.M(f10);
    }

    public void setDragOffsetY(float f10) {
        this.f15405y.N(f10);
    }

    public void setDragXEnabled(boolean z10) {
        this.Q = z10;
    }

    public void setDragYEnabled(boolean z10) {
        this.R = z10;
    }

    public void setDrawBorders(boolean z10) {
        this.f15361a0 = z10;
    }

    public void setDrawGridBackground(boolean z10) {
        this.W = z10;
    }

    public void setGridBackgroundColor(int i10) {
        this.U.setColor(i10);
    }

    public void setHighlightPerDragEnabled(boolean z10) {
        this.P = z10;
    }

    public void setKeepPositionOnRotation(boolean z10) {
        this.f15364d0 = z10;
    }

    public void setMaxVisibleValueCount(int i10) {
        this.L = i10;
    }

    public void setMinOffset(float f10) {
        this.f15363c0 = f10;
    }

    public void setOnDrawListener(d9.e eVar) {
        this.f15365e0 = eVar;
    }

    public void setPinchZoom(boolean z10) {
        this.N = z10;
    }

    public void setRendererLeftYAxis(o oVar) {
        this.f15368h0 = oVar;
    }

    public void setRendererRightYAxis(o oVar) {
        this.f15369i0 = oVar;
    }

    public void setScaleEnabled(boolean z10) {
        this.S = z10;
        this.T = z10;
    }

    public void setScaleXEnabled(boolean z10) {
        this.S = z10;
    }

    public void setScaleYEnabled(boolean z10) {
        this.T = z10;
    }

    public void setVisibleXRangeMaximum(float f10) {
        this.f15405y.Q(this.f15394n.I / f10);
    }

    public void setVisibleXRangeMinimum(float f10) {
        this.f15405y.O(this.f15394n.I / f10);
    }

    public void setXAxisRenderer(l lVar) {
        this.f15372l0 = lVar;
    }

    public void x() {
        ((y8.d) this.f15387g).d(getLowestVisibleX(), getHighestVisibleX());
        this.f15394n.k(((y8.d) this.f15387g).n(), ((y8.d) this.f15387g).m());
        if (this.f15366f0.f()) {
            i iVar = this.f15366f0;
            y8.d dVar = (y8.d) this.f15387g;
            i.a aVar = i.a.LEFT;
            iVar.k(dVar.r(aVar), ((y8.d) this.f15387g).p(aVar));
        }
        if (this.f15367g0.f()) {
            i iVar2 = this.f15367g0;
            y8.d dVar2 = (y8.d) this.f15387g;
            i.a aVar2 = i.a.RIGHT;
            iVar2.k(dVar2.r(aVar2), ((y8.d) this.f15387g).p(aVar2));
        }
        f();
    }

    public void y() {
        this.f15394n.k(((y8.d) this.f15387g).n(), ((y8.d) this.f15387g).m());
        i iVar = this.f15366f0;
        y8.d dVar = (y8.d) this.f15387g;
        i.a aVar = i.a.LEFT;
        iVar.k(dVar.r(aVar), ((y8.d) this.f15387g).p(aVar));
        i iVar2 = this.f15367g0;
        y8.d dVar2 = (y8.d) this.f15387g;
        i.a aVar2 = i.a.RIGHT;
        iVar2.k(dVar2.r(aVar2), ((y8.d) this.f15387g).p(aVar2));
    }

    public void z(RectF rectF) {
        rectF.left = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        rectF.right = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        rectF.top = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        rectF.bottom = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        x8.e eVar = this.f15397q;
        if (eVar == null || !eVar.f() || this.f15397q.F()) {
            return;
        }
        int i10 = C0399a.f15385c[this.f15397q.A().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            int i11 = C0399a.f15383a[this.f15397q.C().ordinal()];
            if (i11 == 1) {
                rectF.top += Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x()) + this.f15397q.e();
                return;
            } else {
                if (i11 != 2) {
                    return;
                }
                rectF.bottom += Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x()) + this.f15397q.e();
                return;
            }
        }
        int i12 = C0399a.f15384b[this.f15397q.w().ordinal()];
        if (i12 == 1) {
            rectF.left += Math.min(this.f15397q.f16180x, this.f15405y.m() * this.f15397q.x()) + this.f15397q.d();
            return;
        }
        if (i12 == 2) {
            rectF.right += Math.min(this.f15397q.f16180x, this.f15405y.m() * this.f15397q.x()) + this.f15397q.d();
            return;
        }
        if (i12 != 3) {
            return;
        }
        int i13 = C0399a.f15383a[this.f15397q.C().ordinal()];
        if (i13 == 1) {
            rectF.top += Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x()) + this.f15397q.e();
        } else {
            if (i13 != 2) {
                return;
            }
            rectF.bottom += Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x()) + this.f15397q.e();
        }
    }
}

package w8;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d9.f;
import g9.i;
import x8.e;
import y8.h;
import y8.j;

/* compiled from: PieRadarChartBase.java */
/* loaded from: classes.dex */
public abstract class d<T extends h<? extends c9.d<? extends j>>> extends b<T> {
    public float L;
    public float M;
    public boolean N;
    public float O;

    /* compiled from: PieRadarChartBase.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15408a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f15409b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f15410c;

        static {
            int[] iArr = new int[e.EnumC0417e.values().length];
            f15410c = iArr;
            try {
                iArr[e.EnumC0417e.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15410c[e.EnumC0417e.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[e.d.values().length];
            f15409b = iArr2;
            try {
                iArr2[e.d.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15409b[e.d.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15409b[e.d.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[e.f.values().length];
            f15408a = iArr3;
            try {
                iArr3[e.f.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15408a[e.f.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public d(Context context) {
        super(context);
        this.L = 270.0f;
        this.M = 270.0f;
        this.N = true;
        this.O = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    public abstract int A(float f10);

    public g9.e B(g9.e eVar, float f10, float f11) {
        g9.e c10 = g9.e.c(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        C(eVar, f10, f11, c10);
        return c10;
    }

    public void C(g9.e eVar, float f10, float f11, g9.e eVar2) {
        double d10 = eVar.f7055c;
        double d11 = f10;
        double d12 = f11;
        double cos = Math.cos(Math.toRadians(d12));
        Double.isNaN(d11);
        Double.isNaN(d10);
        eVar2.f7055c = (float) (d10 + (cos * d11));
        double d13 = eVar.f7056d;
        double sin = Math.sin(Math.toRadians(d12));
        Double.isNaN(d11);
        Double.isNaN(d13);
        eVar2.f7056d = (float) (d13 + (d11 * sin));
    }

    public boolean D() {
        return this.N;
    }

    @Override // android.view.View
    public void computeScroll() {
        d9.b bVar = this.f15399s;
        if (bVar instanceof f) {
            ((f) bVar).g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007d, code lost:
    
        if (r2 != 2) goto L19;
     */
    @Override // w8.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f() {
        float f10;
        float f11;
        float f12;
        float e10;
        float min;
        float f13;
        float f14;
        x8.e eVar = this.f15397q;
        float f15 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        if (eVar == null || !eVar.f() || this.f15397q.F()) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        } else {
            float min2 = Math.min(this.f15397q.f16180x, this.f15405y.m() * this.f15397q.x());
            int i10 = a.f15410c[this.f15397q.A().ordinal()];
            if (i10 != 1) {
                if (i10 == 2 && (this.f15397q.C() == e.f.TOP || this.f15397q.C() == e.f.BOTTOM)) {
                    min = Math.min(this.f15397q.f16181y + getRequiredLegendOffset(), this.f15405y.l() * this.f15397q.x());
                    int i11 = a.f15408a[this.f15397q.C().ordinal()];
                    if (i11 != 1) {
                    }
                    f14 = min;
                    e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                }
                e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            } else {
                if (this.f15397q.w() != e.d.LEFT && this.f15397q.w() != e.d.RIGHT) {
                    e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else if (this.f15397q.C() == e.f.CENTER) {
                    e10 = min2 + i.e(13.0f);
                } else {
                    e10 = min2 + i.e(8.0f);
                    x8.e eVar2 = this.f15397q;
                    float f16 = eVar2.f16181y + eVar2.f16182z;
                    g9.e center = getCenter();
                    float width = this.f15397q.w() == e.d.RIGHT ? (getWidth() - e10) + 15.0f : e10 - 15.0f;
                    float f17 = f16 + 15.0f;
                    float y10 = y(width, f17);
                    g9.e B = B(center, getRadius(), z(width, f17));
                    float y11 = y(B.f7055c, B.f7056d);
                    float e11 = i.e(5.0f);
                    if (f17 < center.f7056d || getHeight() - e10 <= getWidth()) {
                        e10 = y10 < y11 ? e11 + (y11 - y10) : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    }
                    g9.e.f(center);
                    g9.e.f(B);
                }
                int i12 = a.f15409b[this.f15397q.w().ordinal()];
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 == 3) {
                            int i13 = a.f15408a[this.f15397q.C().ordinal()];
                            if (i13 == 1) {
                                min = Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x());
                                f14 = min;
                                e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            } else if (i13 == 2) {
                                min = Math.min(this.f15397q.f16181y, this.f15405y.l() * this.f15397q.x());
                                f13 = min;
                                e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                                f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                            }
                        }
                    }
                    f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                    f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                } else {
                    f15 = e10;
                }
                e10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                f14 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            }
            f15 += getRequiredBaseOffset();
            f10 = e10 + getRequiredBaseOffset();
            f12 = f14 + getRequiredBaseOffset();
            f11 = f13 + getRequiredBaseOffset();
        }
        float e12 = i.e(this.O);
        if (this instanceof e) {
            x8.h xAxis = getXAxis();
            if (xAxis.f() && xAxis.D()) {
                e12 = Math.max(e12, xAxis.L);
            }
        }
        float extraTopOffset = f12 + getExtraTopOffset();
        float extraRightOffset = f10 + getExtraRightOffset();
        float extraBottomOffset = f11 + getExtraBottomOffset();
        float max = Math.max(e12, f15 + getExtraLeftOffset());
        float max2 = Math.max(e12, extraTopOffset);
        float max3 = Math.max(e12, extraRightOffset);
        float max4 = Math.max(e12, Math.max(getRequiredBaseOffset(), extraBottomOffset));
        this.f15405y.K(max, max2, max3, max4);
        if (this.f15386f) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("offsetLeft: ");
            sb2.append(max);
            sb2.append(", offsetTop: ");
            sb2.append(max2);
            sb2.append(", offsetRight: ");
            sb2.append(max3);
            sb2.append(", offsetBottom: ");
            sb2.append(max4);
        }
    }

    public float getDiameter() {
        RectF o10 = this.f15405y.o();
        o10.left += getExtraLeftOffset();
        o10.top += getExtraTopOffset();
        o10.right -= getExtraRightOffset();
        o10.bottom -= getExtraBottomOffset();
        return Math.min(o10.width(), o10.height());
    }

    @Override // w8.b, b9.c
    public int getMaxVisibleCount() {
        return this.f15387g.h();
    }

    public float getMinOffset() {
        return this.O;
    }

    public abstract float getRadius();

    public float getRawRotationAngle() {
        return this.M;
    }

    public abstract float getRequiredBaseOffset();

    public abstract float getRequiredLegendOffset();

    public float getRotationAngle() {
        return this.L;
    }

    @Override // w8.b
    public float getYChartMax() {
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // w8.b
    public float getYChartMin() {
        return StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // w8.b
    public void n() {
        super.n();
        this.f15399s = new f(this);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        d9.b bVar;
        if (this.f15395o && (bVar = this.f15399s) != null) {
            return bVar.onTouch(this, motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // w8.b
    public void s() {
        if (this.f15387g == null) {
            return;
        }
        x();
        if (this.f15397q != null) {
            this.f15402v.a(this.f15387g);
        }
        f();
    }

    public void setMinOffset(float f10) {
        this.O = f10;
    }

    public void setRotationAngle(float f10) {
        this.M = f10;
        this.L = i.q(f10);
    }

    public void setRotationEnabled(boolean z10) {
        this.N = z10;
    }

    public void x() {
    }

    public float y(float f10, float f11) {
        g9.e centerOffsets = getCenterOffsets();
        float f12 = centerOffsets.f7055c;
        float sqrt = (float) Math.sqrt(Math.pow(f10 > f12 ? f10 - f12 : f12 - f10, 2.0d) + Math.pow(f11 > centerOffsets.f7056d ? f11 - r1 : r1 - f11, 2.0d));
        g9.e.f(centerOffsets);
        return sqrt;
    }

    public float z(float f10, float f11) {
        g9.e centerOffsets = getCenterOffsets();
        double d10 = f10 - centerOffsets.f7055c;
        double d11 = f11 - centerOffsets.f7056d;
        Double.isNaN(d10);
        Double.isNaN(d10);
        Double.isNaN(d11);
        Double.isNaN(d11);
        double sqrt = Math.sqrt((d10 * d10) + (d11 * d11));
        Double.isNaN(d11);
        float degrees = (float) Math.toDegrees(Math.acos(d11 / sqrt));
        if (f10 > centerOffsets.f7055c) {
            degrees = 360.0f - degrees;
        }
        float f12 = degrees + 90.0f;
        if (f12 > 360.0f) {
            f12 -= 360.0f;
        }
        g9.e.f(centerOffsets);
        return f12;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.L = 270.0f;
        this.M = 270.0f;
        this.N = true;
        this.O = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }
}

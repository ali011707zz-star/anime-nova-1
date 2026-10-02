package y8;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* compiled from: PieDataSet.java */
/* loaded from: classes.dex */
public class l extends i<m> implements c9.g {
    public a A;
    public a B;
    public boolean C;
    public int D;
    public float E;
    public float F;
    public float G;
    public float H;
    public boolean I;

    /* renamed from: x, reason: collision with root package name */
    public float f16776x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f16777y;

    /* renamed from: z, reason: collision with root package name */
    public float f16778z;

    /* compiled from: PieDataSet.java */
    /* loaded from: classes.dex */
    public enum a {
        INSIDE_SLICE,
        OUTSIDE_SLICE
    }

    public l(List<m> list, String str) {
        super(list, str);
        this.f16776x = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f16778z = 18.0f;
        a aVar = a.INSIDE_SLICE;
        this.A = aVar;
        this.B = aVar;
        this.C = false;
        this.D = -16777216;
        this.E = 1.0f;
        this.F = 75.0f;
        this.G = 0.3f;
        this.H = 0.4f;
        this.I = true;
    }

    @Override // c9.g
    public float C() {
        return this.H;
    }

    @Override // y8.i
    /* renamed from: E0, reason: merged with bridge method [inline-methods] */
    public void z0(m mVar) {
        if (mVar == null) {
            return;
        }
        B0(mVar);
    }

    public void F0(float f10) {
        if (f10 > 20.0f) {
            f10 = 20.0f;
        }
        if (f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        }
        this.f16776x = g9.i.e(f10);
    }

    @Override // c9.g
    public boolean I() {
        return this.C;
    }

    @Override // c9.g
    public float N() {
        return this.f16778z;
    }

    @Override // c9.g
    public float S() {
        return this.F;
    }

    @Override // c9.g
    public float a() {
        return this.E;
    }

    @Override // c9.g
    public float b() {
        return this.G;
    }

    @Override // c9.g
    public a c() {
        return this.A;
    }

    @Override // c9.g
    public boolean g0() {
        return this.f16777y;
    }

    @Override // c9.g
    public float k() {
        return this.f16776x;
    }

    @Override // c9.g
    public int p0() {
        return this.D;
    }

    @Override // c9.g
    public a s() {
        return this.B;
    }

    @Override // c9.g
    public boolean t() {
        return this.I;
    }
}

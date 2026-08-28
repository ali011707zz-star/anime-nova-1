package l3;

/* compiled from: GradientColor.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f10295a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10296b;

    public d(float[] fArr, int[] iArr) {
        this.f10295a = fArr;
        this.f10296b = iArr;
    }

    public int[] a() {
        return this.f10296b;
    }

    public float[] b() {
        return this.f10295a;
    }

    public int c() {
        return this.f10296b.length;
    }

    public void d(d dVar, d dVar2, float f10) {
        if (dVar.f10296b.length == dVar2.f10296b.length) {
            for (int i10 = 0; i10 < dVar.f10296b.length; i10++) {
                this.f10295a[i10] = q3.g.k(dVar.f10295a[i10], dVar2.f10295a[i10], f10);
                this.f10296b[i10] = q3.b.c(f10, dVar.f10296b[i10], dVar2.f10296b[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f10296b.length + " vs " + dVar2.f10296b.length + ")");
    }
}

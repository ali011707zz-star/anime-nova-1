package u;

/* compiled from: CurveFit.java */
/* loaded from: classes.dex */
public abstract class b {

    /* compiled from: CurveFit.java */
    /* loaded from: classes.dex */
    public static class a extends b {

        /* renamed from: a, reason: collision with root package name */
        public double f14198a;

        /* renamed from: b, reason: collision with root package name */
        public double[] f14199b;

        public a(double d10, double[] dArr) {
            this.f14198a = d10;
            this.f14199b = dArr;
        }

        @Override // u.b
        public double c(double d10, int i10) {
            return this.f14199b[i10];
        }

        @Override // u.b
        public void d(double d10, double[] dArr) {
            double[] dArr2 = this.f14199b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // u.b
        public void e(double d10, float[] fArr) {
            int i10 = 0;
            while (true) {
                double[] dArr = this.f14199b;
                if (i10 >= dArr.length) {
                    return;
                }
                fArr[i10] = (float) dArr[i10];
                i10++;
            }
        }

        @Override // u.b
        public void f(double d10, double[] dArr) {
            for (int i10 = 0; i10 < this.f14199b.length; i10++) {
                dArr[i10] = 0.0d;
            }
        }

        @Override // u.b
        public double[] g() {
            return new double[]{this.f14198a};
        }
    }

    public static b a(int i10, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i10 = 2;
        }
        if (i10 == 0) {
            return new h(dArr, dArr2);
        }
        if (i10 != 2) {
            return new g(dArr, dArr2);
        }
        return new a(dArr[0], dArr2[0]);
    }

    public static b b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new u.a(iArr, dArr, dArr2);
    }

    public abstract double c(double d10, int i10);

    public abstract void d(double d10, double[] dArr);

    public abstract void e(double d10, float[] fArr);

    public abstract void f(double d10, double[] dArr);

    public abstract double[] g();
}

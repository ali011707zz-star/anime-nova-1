package u;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* compiled from: KeyCycleOscillator.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public u.b f14210a;

    /* renamed from: b, reason: collision with root package name */
    public b f14211b;

    /* renamed from: c, reason: collision with root package name */
    public String f14212c;

    /* renamed from: d, reason: collision with root package name */
    public int f14213d = 0;

    /* renamed from: e, reason: collision with root package name */
    public String f14214e = null;

    /* renamed from: f, reason: collision with root package name */
    public int f14215f = 0;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList<c> f14216g = new ArrayList<>();

    /* compiled from: KeyCycleOscillator.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<c> {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            return e.a(cVar.f14234a, cVar2.f14234a);
        }
    }

    /* compiled from: KeyCycleOscillator.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f14218a;

        /* renamed from: b, reason: collision with root package name */
        public i f14219b;

        /* renamed from: c, reason: collision with root package name */
        public final int f14220c;

        /* renamed from: d, reason: collision with root package name */
        public final int f14221d;

        /* renamed from: e, reason: collision with root package name */
        public final int f14222e;

        /* renamed from: f, reason: collision with root package name */
        public float[] f14223f;

        /* renamed from: g, reason: collision with root package name */
        public double[] f14224g;

        /* renamed from: h, reason: collision with root package name */
        public float[] f14225h;

        /* renamed from: i, reason: collision with root package name */
        public float[] f14226i;

        /* renamed from: j, reason: collision with root package name */
        public float[] f14227j;

        /* renamed from: k, reason: collision with root package name */
        public float[] f14228k;

        /* renamed from: l, reason: collision with root package name */
        public int f14229l;

        /* renamed from: m, reason: collision with root package name */
        public u.b f14230m;

        /* renamed from: n, reason: collision with root package name */
        public double[] f14231n;

        /* renamed from: o, reason: collision with root package name */
        public double[] f14232o;

        /* renamed from: p, reason: collision with root package name */
        public float f14233p;

        public b(int i10, String str, int i11, int i12) {
            i iVar = new i();
            this.f14219b = iVar;
            this.f14220c = 0;
            this.f14221d = 1;
            this.f14222e = 2;
            this.f14229l = i10;
            this.f14218a = i11;
            iVar.e(i10, str);
            this.f14223f = new float[i12];
            this.f14224g = new double[i12];
            this.f14225h = new float[i12];
            this.f14226i = new float[i12];
            this.f14227j = new float[i12];
            this.f14228k = new float[i12];
        }

        public double a(float f10) {
            u.b bVar = this.f14230m;
            if (bVar != null) {
                bVar.d(f10, this.f14231n);
            } else {
                double[] dArr = this.f14231n;
                dArr[0] = this.f14226i[0];
                dArr[1] = this.f14227j[0];
                dArr[2] = this.f14223f[0];
            }
            double[] dArr2 = this.f14231n;
            return dArr2[0] + (this.f14219b.c(f10, dArr2[1]) * this.f14231n[2]);
        }

        public void b(int i10, int i11, float f10, float f11, float f12, float f13) {
            double[] dArr = this.f14224g;
            double d10 = i11;
            Double.isNaN(d10);
            dArr[i10] = d10 / 100.0d;
            this.f14225h[i10] = f10;
            this.f14226i[i10] = f11;
            this.f14227j[i10] = f12;
            this.f14223f[i10] = f13;
        }

        public void c(float f10) {
            this.f14233p = f10;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, this.f14224g.length, 3);
            float[] fArr = this.f14223f;
            this.f14231n = new double[fArr.length + 2];
            this.f14232o = new double[fArr.length + 2];
            if (this.f14224g[0] > ShadowDrawableWrapper.COS_45) {
                this.f14219b.a(ShadowDrawableWrapper.COS_45, this.f14225h[0]);
            }
            double[] dArr2 = this.f14224g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f14219b.a(1.0d, this.f14225h[length]);
            }
            for (int i10 = 0; i10 < dArr.length; i10++) {
                dArr[i10][0] = this.f14226i[i10];
                dArr[i10][1] = this.f14227j[i10];
                dArr[i10][2] = this.f14223f[i10];
                this.f14219b.a(this.f14224g[i10], this.f14225h[i10]);
            }
            this.f14219b.d();
            double[] dArr3 = this.f14224g;
            if (dArr3.length > 1) {
                this.f14230m = u.b.a(0, dArr3, dArr);
            } else {
                this.f14230m = null;
            }
        }
    }

    /* compiled from: KeyCycleOscillator.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public int f14234a;

        /* renamed from: b, reason: collision with root package name */
        public float f14235b;

        /* renamed from: c, reason: collision with root package name */
        public float f14236c;

        /* renamed from: d, reason: collision with root package name */
        public float f14237d;

        /* renamed from: e, reason: collision with root package name */
        public float f14238e;

        public c(int i10, float f10, float f11, float f12, float f13) {
            this.f14234a = i10;
            this.f14235b = f13;
            this.f14236c = f11;
            this.f14237d = f10;
            this.f14238e = f12;
        }
    }

    public float a(float f10) {
        return (float) this.f14211b.a(f10);
    }

    public void b(Object obj) {
    }

    public void c(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13) {
        this.f14216g.add(new c(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f14215f = i12;
        }
        this.f14213d = i11;
        this.f14214e = str;
    }

    public void d(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13, Object obj) {
        this.f14216g.add(new c(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f14215f = i12;
        }
        this.f14213d = i11;
        b(obj);
        this.f14214e = str;
    }

    public void e(String str) {
        this.f14212c = str;
    }

    public void f(float f10) {
        int size = this.f14216g.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f14216g, new a());
        double[] dArr = new double[size];
        char c10 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, 3);
        this.f14211b = new b(this.f14213d, this.f14214e, this.f14215f, size);
        Iterator<c> it2 = this.f14216g.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            c next = it2.next();
            float f11 = next.f14237d;
            double d10 = f11;
            Double.isNaN(d10);
            dArr[i10] = d10 * 0.01d;
            double[] dArr3 = dArr2[i10];
            float f12 = next.f14235b;
            dArr3[c10] = f12;
            double[] dArr4 = dArr2[i10];
            float f13 = next.f14236c;
            dArr4[1] = f13;
            double[] dArr5 = dArr2[i10];
            float f14 = next.f14238e;
            dArr5[2] = f14;
            this.f14211b.b(i10, next.f14234a, f11, f13, f14, f12);
            i10++;
            c10 = 0;
        }
        this.f14211b.c(f10);
        this.f14210a = u.b.a(0, dArr, dArr2);
    }

    public boolean g() {
        return this.f14215f == 1;
    }

    public String toString() {
        String str = this.f14212c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<c> it2 = this.f14216g.iterator();
        while (it2.hasNext()) {
            str = str + "[" + it2.next().f14234a + " , " + decimalFormat.format(r3.f14235b) + "] ";
        }
        return str;
    }
}

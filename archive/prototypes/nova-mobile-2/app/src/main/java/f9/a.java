package f9;

import android.graphics.Paint;
import com.google.android.material.shadow.ShadowDrawableWrapper;

/* compiled from: AxisRenderer.java */
/* loaded from: classes.dex */
public abstract class a extends k {

    /* renamed from: b, reason: collision with root package name */
    public x8.a f6459b;

    /* renamed from: c, reason: collision with root package name */
    public g9.g f6460c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f6461d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f6462e;

    /* renamed from: f, reason: collision with root package name */
    public Paint f6463f;

    /* renamed from: g, reason: collision with root package name */
    public Paint f6464g;

    public a(g9.j jVar, g9.g gVar, x8.a aVar) {
        super(jVar);
        this.f6460c = gVar;
        this.f6459b = aVar;
        if (this.f6512a != null) {
            this.f6462e = new Paint(1);
            Paint paint = new Paint();
            this.f6461d = paint;
            paint.setColor(-7829368);
            this.f6461d.setStrokeWidth(1.0f);
            this.f6461d.setStyle(Paint.Style.STROKE);
            this.f6461d.setAlpha(90);
            Paint paint2 = new Paint();
            this.f6463f = paint2;
            paint2.setColor(-16777216);
            this.f6463f.setStrokeWidth(1.0f);
            this.f6463f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint(1);
            this.f6464g = paint3;
            paint3.setStyle(Paint.Style.STROKE);
        }
    }

    public void a(float f10, float f11, boolean z10) {
        float f12;
        double d10;
        g9.j jVar = this.f6512a;
        if (jVar != null && jVar.k() > 10.0f && !this.f6512a.w()) {
            g9.d b10 = this.f6460c.b(this.f6512a.h(), this.f6512a.j());
            g9.d b11 = this.f6460c.b(this.f6512a.h(), this.f6512a.f());
            if (!z10) {
                f12 = (float) b11.f7052d;
                d10 = b10.f7052d;
            } else {
                f12 = (float) b10.f7052d;
                d10 = b11.f7052d;
            }
            g9.d.c(b10);
            g9.d.c(b11);
            f10 = f12;
            f11 = (float) d10;
        }
        b(f10, f11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5, types: [int] */
    public void b(float f10, float f11) {
        double ceil;
        double w10;
        float f12 = f10;
        int v10 = this.f6459b.v();
        double abs = Math.abs(f11 - f12);
        if (v10 != 0 && abs > ShadowDrawableWrapper.COS_45 && !Double.isInfinite(abs)) {
            double d10 = v10;
            Double.isNaN(abs);
            Double.isNaN(d10);
            double y10 = g9.i.y(abs / d10);
            if (this.f6459b.G() && y10 < this.f6459b.r()) {
                y10 = this.f6459b.r();
            }
            double y11 = g9.i.y(Math.pow(10.0d, (int) Math.log10(y10)));
            Double.isNaN(y11);
            if (((int) (y10 / y11)) > 5) {
                Double.isNaN(y11);
                y10 = Math.floor(y11 * 10.0d);
            }
            int z10 = this.f6459b.z();
            if (this.f6459b.F()) {
                y10 = ((float) abs) / (v10 - 1);
                x8.a aVar = this.f6459b;
                aVar.f16141n = v10;
                if (aVar.f16139l.length < v10) {
                    aVar.f16139l = new float[v10];
                }
                for (int i10 = 0; i10 < v10; i10++) {
                    this.f6459b.f16139l[i10] = f12;
                    double d11 = f12;
                    Double.isNaN(d11);
                    Double.isNaN(y10);
                    f12 = (float) (d11 + y10);
                }
            } else {
                if (y10 == ShadowDrawableWrapper.COS_45) {
                    ceil = ShadowDrawableWrapper.COS_45;
                } else {
                    double d12 = f12;
                    Double.isNaN(d12);
                    ceil = Math.ceil(d12 / y10) * y10;
                }
                if (this.f6459b.z()) {
                    ceil -= y10;
                }
                if (y10 == ShadowDrawableWrapper.COS_45) {
                    w10 = 0.0d;
                } else {
                    double d13 = f11;
                    Double.isNaN(d13);
                    w10 = g9.i.w(Math.floor(d13 / y10) * y10);
                }
                if (y10 != ShadowDrawableWrapper.COS_45) {
                    double d14 = ceil;
                    z10 = z10;
                    while (d14 <= w10) {
                        d14 += y10;
                        z10++;
                    }
                }
                x8.a aVar2 = this.f6459b;
                aVar2.f16141n = z10;
                if (aVar2.f16139l.length < z10) {
                    aVar2.f16139l = new float[z10];
                }
                for (int i11 = 0; i11 < z10; i11++) {
                    if (ceil == ShadowDrawableWrapper.COS_45) {
                        ceil = 0.0d;
                    }
                    this.f6459b.f16139l[i11] = (float) ceil;
                    ceil += y10;
                }
                v10 = z10;
            }
            if (y10 < 1.0d) {
                this.f6459b.f16142o = (int) Math.ceil(-Math.log10(y10));
            } else {
                this.f6459b.f16142o = 0;
            }
            if (this.f6459b.z()) {
                x8.a aVar3 = this.f6459b;
                if (aVar3.f16140m.length < v10) {
                    aVar3.f16140m = new float[v10];
                }
                float f13 = ((float) y10) / 2.0f;
                for (int i12 = 0; i12 < v10; i12++) {
                    x8.a aVar4 = this.f6459b;
                    aVar4.f16140m[i12] = aVar4.f16139l[i12] + f13;
                }
                return;
            }
            return;
        }
        x8.a aVar5 = this.f6459b;
        aVar5.f16139l = new float[0];
        aVar5.f16140m = new float[0];
        aVar5.f16141n = 0;
    }

    public Paint c() {
        return this.f6462e;
    }
}

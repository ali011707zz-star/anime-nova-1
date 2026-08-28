package u;

/* compiled from: Schlick.java */
/* loaded from: classes.dex */
public class j extends c {

    /* renamed from: d, reason: collision with root package name */
    public double f14257d;

    /* renamed from: e, reason: collision with root package name */
    public double f14258e;

    public j(String str) {
        this.f14202a = str;
        int indexOf = str.indexOf(40);
        int indexOf2 = str.indexOf(44, indexOf);
        this.f14257d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
        int i10 = indexOf2 + 1;
        this.f14258e = Double.parseDouble(str.substring(i10, str.indexOf(44, i10)).trim());
    }

    @Override // u.c
    public double a(double d10) {
        return e(d10);
    }

    @Override // u.c
    public double b(double d10) {
        return d(d10);
    }

    public final double d(double d10) {
        double d11 = this.f14258e;
        if (d10 < d11) {
            double d12 = this.f14257d;
            return ((d12 * d11) * d11) / ((((d11 - d10) * d12) + d10) * ((d12 * (d11 - d10)) + d10));
        }
        double d13 = this.f14257d;
        return (((d11 - 1.0d) * d13) * (d11 - 1.0d)) / (((((-d13) * (d11 - d10)) - d10) + 1.0d) * ((((-d13) * (d11 - d10)) - d10) + 1.0d));
    }

    public final double e(double d10) {
        double d11 = this.f14258e;
        if (d10 < d11) {
            return (d11 * d10) / (d10 + (this.f14257d * (d11 - d10)));
        }
        return ((1.0d - d11) * (d10 - 1.0d)) / ((1.0d - d10) - (this.f14257d * (d11 - d10)));
    }
}

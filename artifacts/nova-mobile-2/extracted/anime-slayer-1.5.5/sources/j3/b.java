package j3;

/* compiled from: DocumentData.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8078a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8079b;

    /* renamed from: c, reason: collision with root package name */
    public final float f8080c;

    /* renamed from: d, reason: collision with root package name */
    public final a f8081d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8082e;

    /* renamed from: f, reason: collision with root package name */
    public final float f8083f;

    /* renamed from: g, reason: collision with root package name */
    public final float f8084g;

    /* renamed from: h, reason: collision with root package name */
    public final int f8085h;

    /* renamed from: i, reason: collision with root package name */
    public final int f8086i;

    /* renamed from: j, reason: collision with root package name */
    public final float f8087j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f8088k;

    /* compiled from: DocumentData.java */
    /* loaded from: classes.dex */
    public enum a {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public b(String str, String str2, float f10, a aVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10) {
        this.f8078a = str;
        this.f8079b = str2;
        this.f8080c = f10;
        this.f8081d = aVar;
        this.f8082e = i10;
        this.f8083f = f11;
        this.f8084g = f12;
        this.f8085h = i11;
        this.f8086i = i12;
        this.f8087j = f13;
        this.f8088k = z10;
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.f8078a.hashCode() * 31) + this.f8079b.hashCode()) * 31) + this.f8080c)) * 31) + this.f8081d.ordinal()) * 31) + this.f8082e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f8083f);
        return (((hashCode * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f8085h;
    }
}

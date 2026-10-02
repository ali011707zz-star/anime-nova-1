package r3;

/* compiled from: ScaleXY.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public float f12855a;

    /* renamed from: b, reason: collision with root package name */
    public float f12856b;

    public d(float f10, float f11) {
        this.f12855a = f10;
        this.f12856b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f12855a == f10 && this.f12856b == f11;
    }

    public float b() {
        return this.f12855a;
    }

    public float c() {
        return this.f12856b;
    }

    public void d(float f10, float f11) {
        this.f12855a = f10;
        this.f12856b = f11;
    }

    public String toString() {
        return b() + "x" + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}

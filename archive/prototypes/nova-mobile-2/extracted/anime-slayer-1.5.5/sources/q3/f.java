package q3;

/* compiled from: MeanCalculator.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public float f12455a;

    /* renamed from: b, reason: collision with root package name */
    public int f12456b;

    public void a(float f10) {
        float f11 = this.f12455a + f10;
        this.f12455a = f11;
        int i10 = this.f12456b + 1;
        this.f12456b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f12455a = f11 / 2.0f;
            this.f12456b = i10 / 2;
        }
    }
}

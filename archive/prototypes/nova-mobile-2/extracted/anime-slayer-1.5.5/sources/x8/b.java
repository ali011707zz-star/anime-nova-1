package x8;

import android.graphics.Typeface;

/* compiled from: ComponentBase.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16154a = true;

    /* renamed from: b, reason: collision with root package name */
    public float f16155b = 5.0f;

    /* renamed from: c, reason: collision with root package name */
    public float f16156c = 5.0f;

    /* renamed from: d, reason: collision with root package name */
    public Typeface f16157d = null;

    /* renamed from: e, reason: collision with root package name */
    public float f16158e = g9.i.e(10.0f);

    /* renamed from: f, reason: collision with root package name */
    public int f16159f = -16777216;

    public int a() {
        return this.f16159f;
    }

    public float b() {
        return this.f16158e;
    }

    public Typeface c() {
        return this.f16157d;
    }

    public float d() {
        return this.f16155b;
    }

    public float e() {
        return this.f16156c;
    }

    public boolean f() {
        return this.f16154a;
    }

    public void g(boolean z10) {
        this.f16154a = z10;
    }

    public void h(int i10) {
        this.f16159f = i10;
    }

    public void i(float f10) {
        if (f10 > 24.0f) {
            f10 = 24.0f;
        }
        if (f10 < 6.0f) {
            f10 = 6.0f;
        }
        this.f16158e = g9.i.e(f10);
    }

    public void j(float f10) {
        this.f16156c = g9.i.e(f10);
    }
}

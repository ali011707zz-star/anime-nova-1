package a9;

import x8.i;

/* compiled from: Highlight.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public float f516a;

    /* renamed from: b, reason: collision with root package name */
    public float f517b;

    /* renamed from: c, reason: collision with root package name */
    public float f518c;

    /* renamed from: d, reason: collision with root package name */
    public float f519d;

    /* renamed from: e, reason: collision with root package name */
    public int f520e;

    /* renamed from: f, reason: collision with root package name */
    public int f521f;

    /* renamed from: g, reason: collision with root package name */
    public int f522g;

    /* renamed from: h, reason: collision with root package name */
    public i.a f523h;

    /* renamed from: i, reason: collision with root package name */
    public float f524i;

    /* renamed from: j, reason: collision with root package name */
    public float f525j;

    public c(float f10, float f11, float f12, float f13, int i10, i.a aVar) {
        this.f516a = Float.NaN;
        this.f517b = Float.NaN;
        this.f520e = -1;
        this.f522g = -1;
        this.f516a = f10;
        this.f517b = f11;
        this.f518c = f12;
        this.f519d = f13;
        this.f521f = i10;
        this.f523h = aVar;
    }

    public boolean a(c cVar) {
        return cVar != null && this.f521f == cVar.f521f && this.f516a == cVar.f516a && this.f522g == cVar.f522g && this.f520e == cVar.f520e;
    }

    public i.a b() {
        return this.f523h;
    }

    public int c() {
        return this.f521f;
    }

    public float d() {
        return this.f524i;
    }

    public float e() {
        return this.f525j;
    }

    public int f() {
        return this.f522g;
    }

    public float g() {
        return this.f516a;
    }

    public float h() {
        return this.f518c;
    }

    public float i() {
        return this.f517b;
    }

    public float j() {
        return this.f519d;
    }

    public void k(float f10, float f11) {
        this.f524i = f10;
        this.f525j = f11;
    }

    public String toString() {
        return "Highlight, x: " + this.f516a + ", y: " + this.f517b + ", dataSetIndex: " + this.f521f + ", stackIndex (only stacked barentry): " + this.f522g;
    }

    public c(float f10, float f11, float f12, float f13, int i10, int i11, i.a aVar) {
        this(f10, f11, f12, f13, i10, aVar);
        this.f522g = i11;
    }
}

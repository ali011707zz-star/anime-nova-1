package g9;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import g9.f;

/* compiled from: MPPointD.java */
/* loaded from: classes.dex */
public class d extends f.a {

    /* renamed from: e, reason: collision with root package name */
    public static f<d> f7050e;

    /* renamed from: c, reason: collision with root package name */
    public double f7051c;

    /* renamed from: d, reason: collision with root package name */
    public double f7052d;

    static {
        f<d> a10 = f.a(64, new d(ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45));
        f7050e = a10;
        a10.g(0.5f);
    }

    public d(double d10, double d11) {
        this.f7051c = d10;
        this.f7052d = d11;
    }

    public static d b(double d10, double d11) {
        d b10 = f7050e.b();
        b10.f7051c = d10;
        b10.f7052d = d11;
        return b10;
    }

    public static void c(d dVar) {
        f7050e.c(dVar);
    }

    @Override // g9.f.a
    public f.a a() {
        return new d(ShadowDrawableWrapper.COS_45, ShadowDrawableWrapper.COS_45);
    }

    public String toString() {
        return "MPPointD, x: " + this.f7051c + ", y: " + this.f7052d;
    }
}

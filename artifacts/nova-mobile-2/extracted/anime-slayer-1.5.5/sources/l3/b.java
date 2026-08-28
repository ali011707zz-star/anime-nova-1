package l3;

import android.graphics.PointF;

/* compiled from: CircleShape.java */
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10290a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.m<PointF, PointF> f10291b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.f f10292c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10293d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10294e;

    public b(String str, k3.m<PointF, PointF> mVar, k3.f fVar, boolean z10, boolean z11) {
        this.f10290a = str;
        this.f10291b = mVar;
        this.f10292c = fVar;
        this.f10293d = z10;
        this.f10294e = z11;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.f(fVar, aVar, this);
    }

    public String b() {
        return this.f10290a;
    }

    public k3.m<PointF, PointF> c() {
        return this.f10291b;
    }

    public k3.f d() {
        return this.f10292c;
    }

    public boolean e() {
        return this.f10294e;
    }

    public boolean f() {
        return this.f10293d;
    }
}

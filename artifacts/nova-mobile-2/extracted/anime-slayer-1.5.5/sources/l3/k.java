package l3;

import android.graphics.PointF;

/* compiled from: RectangleShape.java */
/* loaded from: classes.dex */
public class k implements c {

    /* renamed from: a, reason: collision with root package name */
    public final String f10355a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.m<PointF, PointF> f10356b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.m<PointF, PointF> f10357c;

    /* renamed from: d, reason: collision with root package name */
    public final k3.b f10358d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10359e;

    public k(String str, k3.m<PointF, PointF> mVar, k3.m<PointF, PointF> mVar2, k3.b bVar, boolean z10) {
        this.f10355a = str;
        this.f10356b = mVar;
        this.f10357c = mVar2;
        this.f10358d = bVar;
        this.f10359e = z10;
    }

    @Override // l3.c
    public g3.c a(e3.f fVar, m3.a aVar) {
        return new g3.o(fVar, aVar, this);
    }

    public k3.b b() {
        return this.f10358d;
    }

    public String c() {
        return this.f10355a;
    }

    public k3.m<PointF, PointF> d() {
        return this.f10356b;
    }

    public k3.m<PointF, PointF> e() {
        return this.f10357c;
    }

    public boolean f() {
        return this.f10359e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f10356b + ", size=" + this.f10357c + '}';
    }
}

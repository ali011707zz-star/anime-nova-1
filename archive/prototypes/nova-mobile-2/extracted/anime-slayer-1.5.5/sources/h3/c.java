package h3;

import android.graphics.Color;
import android.graphics.Paint;
import h3.a;

/* compiled from: DropShadowKeyframeAnimation.java */
/* loaded from: classes.dex */
public class c implements a.b {

    /* renamed from: a, reason: collision with root package name */
    public final a.b f7220a;

    /* renamed from: b, reason: collision with root package name */
    public final h3.a<Integer, Integer> f7221b;

    /* renamed from: c, reason: collision with root package name */
    public final h3.a<Float, Float> f7222c;

    /* renamed from: d, reason: collision with root package name */
    public final h3.a<Float, Float> f7223d;

    /* renamed from: e, reason: collision with root package name */
    public final h3.a<Float, Float> f7224e;

    /* renamed from: f, reason: collision with root package name */
    public final h3.a<Float, Float> f7225f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7226g = true;

    /* compiled from: DropShadowKeyframeAnimation.java */
    /* loaded from: classes.dex */
    public class a extends r3.c<Float> {

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ r3.c f7227d;

        public a(r3.c cVar) {
            this.f7227d = cVar;
        }

        @Override // r3.c
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Float a(r3.b<Float> bVar) {
            Float f10 = (Float) this.f7227d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(a.b bVar, m3.a aVar, o3.j jVar) {
        this.f7220a = bVar;
        h3.a<Integer, Integer> a10 = jVar.a().a();
        this.f7221b = a10;
        a10.a(this);
        aVar.i(a10);
        h3.a<Float, Float> a11 = jVar.d().a();
        this.f7222c = a11;
        a11.a(this);
        aVar.i(a11);
        h3.a<Float, Float> a12 = jVar.b().a();
        this.f7223d = a12;
        a12.a(this);
        aVar.i(a12);
        h3.a<Float, Float> a13 = jVar.c().a();
        this.f7224e = a13;
        a13.a(this);
        aVar.i(a13);
        h3.a<Float, Float> a14 = jVar.e().a();
        this.f7225f = a14;
        a14.a(this);
        aVar.i(a14);
    }

    public void a(Paint paint) {
        if (this.f7226g) {
            this.f7226g = false;
            double floatValue = this.f7223d.h().floatValue();
            Double.isNaN(floatValue);
            double d10 = floatValue * 0.017453292519943295d;
            float floatValue2 = this.f7224e.h().floatValue();
            float sin = ((float) Math.sin(d10)) * floatValue2;
            float cos = ((float) Math.cos(d10 + 3.141592653589793d)) * floatValue2;
            int intValue = this.f7221b.h().intValue();
            paint.setShadowLayer(this.f7225f.h().floatValue(), sin, cos, Color.argb(Math.round(this.f7222c.h().floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }

    @Override // h3.a.b
    public void b() {
        this.f7226g = true;
        this.f7220a.b();
    }

    public void c(r3.c<Integer> cVar) {
        this.f7221b.n(cVar);
    }

    public void d(r3.c<Float> cVar) {
        this.f7223d.n(cVar);
    }

    public void e(r3.c<Float> cVar) {
        this.f7224e.n(cVar);
    }

    public void f(r3.c<Float> cVar) {
        if (cVar == null) {
            this.f7222c.n(null);
        } else {
            this.f7222c.n(new a(cVar));
        }
    }

    public void g(r3.c<Float> cVar) {
        this.f7225f.n(cVar);
    }
}

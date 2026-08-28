package h3;

import android.graphics.PointF;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.Collections;

/* compiled from: SplitDimensionPathKeyframeAnimation.java */
/* loaded from: classes.dex */
public class n extends a<PointF, PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f7243i;

    /* renamed from: j, reason: collision with root package name */
    public final PointF f7244j;

    /* renamed from: k, reason: collision with root package name */
    public final a<Float, Float> f7245k;

    /* renamed from: l, reason: collision with root package name */
    public final a<Float, Float> f7246l;

    /* renamed from: m, reason: collision with root package name */
    public r3.c<Float> f7247m;

    /* renamed from: n, reason: collision with root package name */
    public r3.c<Float> f7248n;

    public n(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f7243i = new PointF();
        this.f7244j = new PointF();
        this.f7245k = aVar;
        this.f7246l = aVar2;
        m(f());
    }

    @Override // h3.a
    public void m(float f10) {
        this.f7245k.m(f10);
        this.f7246l.m(f10);
        this.f7243i.set(this.f7245k.h().floatValue(), this.f7246l.h().floatValue());
        for (int i10 = 0; i10 < this.f7206a.size(); i10++) {
            this.f7206a.get(i10).b();
        }
    }

    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF h() {
        return i(null, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    @Override // h3.a
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(r3.a<PointF> aVar, float f10) {
        Float f11;
        r3.a<Float> b10;
        r3.a<Float> b11;
        Float f12 = null;
        if (this.f7247m == null || (b11 = this.f7245k.b()) == null) {
            f11 = null;
        } else {
            float d10 = this.f7245k.d();
            Float f13 = b11.f12836h;
            r3.c<Float> cVar = this.f7247m;
            float f14 = b11.f12835g;
            f11 = cVar.b(f14, f13 == null ? f14 : f13.floatValue(), b11.f12830b, b11.f12831c, f10, f10, d10);
        }
        if (this.f7248n != null && (b10 = this.f7246l.b()) != null) {
            float d11 = this.f7246l.d();
            Float f15 = b10.f12836h;
            r3.c<Float> cVar2 = this.f7248n;
            float f16 = b10.f12835g;
            f12 = cVar2.b(f16, f15 == null ? f16 : f15.floatValue(), b10.f12830b, b10.f12831c, f10, f10, d11);
        }
        if (f11 == null) {
            this.f7244j.set(this.f7243i.x, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        } else {
            this.f7244j.set(f11.floatValue(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        if (f12 == null) {
            PointF pointF = this.f7244j;
            pointF.set(pointF.x, this.f7243i.y);
        } else {
            PointF pointF2 = this.f7244j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f7244j;
    }

    public void r(r3.c<Float> cVar) {
        r3.c<Float> cVar2 = this.f7247m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f7247m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void s(r3.c<Float> cVar) {
        r3.c<Float> cVar2 = this.f7248n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f7248n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}

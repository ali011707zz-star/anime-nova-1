package h3;

import android.graphics.PointF;
import java.util.List;

/* compiled from: PointKeyframeAnimation.java */
/* loaded from: classes.dex */
public class k extends g<PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f7239i;

    public k(List<r3.a<PointF>> list) {
        super(list);
        this.f7239i = new PointF();
    }

    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF i(r3.a<PointF> aVar, float f10) {
        return j(aVar, f10, f10, f10);
    }

    @Override // h3.a
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF j(r3.a<PointF> aVar, float f10, float f11, float f12) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = aVar.f12830b;
        if (pointF3 != null && (pointF = aVar.f12831c) != null) {
            PointF pointF4 = pointF3;
            PointF pointF5 = pointF;
            r3.c<A> cVar = this.f7210e;
            if (cVar != 0 && (pointF2 = (PointF) cVar.b(aVar.f12835g, aVar.f12836h.floatValue(), pointF4, pointF5, f10, e(), f())) != null) {
                return pointF2;
            }
            PointF pointF6 = this.f7239i;
            float f13 = pointF4.x;
            float f14 = f13 + (f11 * (pointF5.x - f13));
            float f15 = pointF4.y;
            pointF6.set(f14, f15 + (f12 * (pointF5.y - f15)));
            return this.f7239i;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}

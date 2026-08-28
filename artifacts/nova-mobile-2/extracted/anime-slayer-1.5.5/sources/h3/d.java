package h3;

import java.util.List;

/* compiled from: FloatKeyframeAnimation.java */
/* loaded from: classes.dex */
public class d extends g<Float> {
    public d(List<r3.a<Float>> list) {
        super(list);
    }

    public float p() {
        return q(b(), d());
    }

    public float q(r3.a<Float> aVar, float f10) {
        Float f11;
        if (aVar.f12830b != null && aVar.f12831c != null) {
            r3.c<A> cVar = this.f7210e;
            if (cVar != 0 && (f11 = (Float) cVar.b(aVar.f12835g, aVar.f12836h.floatValue(), aVar.f12830b, aVar.f12831c, f10, e(), f())) != null) {
                return f11.floatValue();
            }
            return q3.g.k(aVar.f(), aVar.c(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    @Override // h3.a
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public Float i(r3.a<Float> aVar, float f10) {
        return Float.valueOf(q(aVar, f10));
    }
}

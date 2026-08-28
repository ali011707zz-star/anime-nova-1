package h3;

import java.util.List;

/* compiled from: IntegerKeyframeAnimation.java */
/* loaded from: classes.dex */
public class f extends g<Integer> {
    public f(List<r3.a<Integer>> list) {
        super(list);
    }

    public int p() {
        return q(b(), d());
    }

    public int q(r3.a<Integer> aVar, float f10) {
        Integer num;
        if (aVar.f12830b != null && aVar.f12831c != null) {
            r3.c<A> cVar = this.f7210e;
            if (cVar != 0 && (num = (Integer) cVar.b(aVar.f12835g, aVar.f12836h.floatValue(), aVar.f12830b, aVar.f12831c, f10, e(), f())) != null) {
                return num.intValue();
            }
            return q3.g.l(aVar.g(), aVar.d(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    @Override // h3.a
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public Integer i(r3.a<Integer> aVar, float f10) {
        return Integer.valueOf(q(aVar, f10));
    }
}

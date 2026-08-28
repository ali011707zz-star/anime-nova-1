package h3;

import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.util.List;

/* compiled from: ColorKeyframeAnimation.java */
/* loaded from: classes.dex */
public class b extends g<Integer> {
    public b(List<r3.a<Integer>> list) {
        super(list);
    }

    public int p() {
        return q(b(), d());
    }

    public int q(r3.a<Integer> aVar, float f10) {
        Integer num;
        Integer num2 = aVar.f12830b;
        if (num2 != null && aVar.f12831c != null) {
            int intValue = num2.intValue();
            int intValue2 = aVar.f12831c.intValue();
            r3.c<A> cVar = this.f7210e;
            if (cVar != 0 && (num = (Integer) cVar.b(aVar.f12835g, aVar.f12836h.floatValue(), Integer.valueOf(intValue), Integer.valueOf(intValue2), f10, e(), f())) != null) {
                return num.intValue();
            }
            return q3.b.c(q3.g.c(f10, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f), intValue, intValue2);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    @Override // h3.a
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public Integer i(r3.a<Integer> aVar, float f10) {
        return Integer.valueOf(q(aVar, f10));
    }
}

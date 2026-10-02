package h3;

import java.util.List;

/* compiled from: GradientColorKeyframeAnimation.java */
/* loaded from: classes.dex */
public class e extends g<l3.d> {

    /* renamed from: i, reason: collision with root package name */
    public final l3.d f7229i;

    public e(List<r3.a<l3.d>> list) {
        super(list);
        l3.d dVar = list.get(0).f12830b;
        int c10 = dVar != null ? dVar.c() : 0;
        this.f7229i = new l3.d(new float[c10], new int[c10]);
    }

    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public l3.d i(r3.a<l3.d> aVar, float f10) {
        this.f7229i.d(aVar.f12830b, aVar.f12831c, f10);
        return this.f7229i;
    }
}

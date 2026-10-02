package h3;

import java.util.List;

/* compiled from: ScaleKeyframeAnimation.java */
/* loaded from: classes.dex */
public class l extends g<r3.d> {

    /* renamed from: i, reason: collision with root package name */
    public final r3.d f7240i;

    public l(List<r3.a<r3.d>> list) {
        super(list);
        this.f7240i = new r3.d();
    }

    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public r3.d i(r3.a<r3.d> aVar, float f10) {
        r3.d dVar;
        r3.d dVar2;
        r3.d dVar3 = aVar.f12830b;
        if (dVar3 != null && (dVar = aVar.f12831c) != null) {
            r3.d dVar4 = dVar3;
            r3.d dVar5 = dVar;
            r3.c<A> cVar = this.f7210e;
            if (cVar != 0 && (dVar2 = (r3.d) cVar.b(aVar.f12835g, aVar.f12836h.floatValue(), dVar4, dVar5, f10, e(), f())) != null) {
                return dVar2;
            }
            this.f7240i.d(q3.g.k(dVar4.b(), dVar5.b(), f10), q3.g.k(dVar4.c(), dVar5.c(), f10));
            return this.f7240i;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}

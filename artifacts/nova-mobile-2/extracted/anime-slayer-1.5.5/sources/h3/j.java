package h3;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* compiled from: PathKeyframeAnimation.java */
/* loaded from: classes.dex */
public class j extends g<PointF> {

    /* renamed from: i, reason: collision with root package name */
    public final PointF f7235i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f7236j;

    /* renamed from: k, reason: collision with root package name */
    public final PathMeasure f7237k;

    /* renamed from: l, reason: collision with root package name */
    public i f7238l;

    public j(List<? extends r3.a<PointF>> list) {
        super(list);
        this.f7235i = new PointF();
        this.f7236j = new float[2];
        this.f7237k = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF i(r3.a<PointF> aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path j10 = iVar.j();
        if (j10 == null) {
            return aVar.f12830b;
        }
        r3.c<A> cVar = this.f7210e;
        if (cVar != 0 && (pointF = (PointF) cVar.b(iVar.f12835g, iVar.f12836h.floatValue(), iVar.f12830b, iVar.f12831c, e(), f10, f())) != null) {
            return pointF;
        }
        if (this.f7238l != iVar) {
            this.f7237k.setPath(j10, false);
            this.f7238l = iVar;
        }
        PathMeasure pathMeasure = this.f7237k;
        pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f7236j, null);
        PointF pointF2 = this.f7235i;
        float[] fArr = this.f7236j;
        pointF2.set(fArr[0], fArr[1]);
        return this.f7235i;
    }
}

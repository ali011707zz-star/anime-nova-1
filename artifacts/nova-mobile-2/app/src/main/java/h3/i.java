package h3;

import android.graphics.Path;
import android.graphics.PointF;

/* compiled from: PathKeyframe.java */
/* loaded from: classes.dex */
public class i extends r3.a<PointF> {

    /* renamed from: q, reason: collision with root package name */
    public Path f7233q;

    /* renamed from: r, reason: collision with root package name */
    public final r3.a<PointF> f7234r;

    public i(e3.d dVar, r3.a<PointF> aVar) {
        super(dVar, aVar.f12830b, aVar.f12831c, aVar.f12832d, aVar.f12833e, aVar.f12834f, aVar.f12835g, aVar.f12836h);
        this.f7234r = aVar;
        i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void i() {
        T t10;
        T t11;
        T t12 = this.f12831c;
        boolean z10 = (t12 == 0 || (t11 = this.f12830b) == 0 || !((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) ? false : true;
        T t13 = this.f12830b;
        if (t13 == 0 || (t10 = this.f12831c) == 0 || z10) {
            return;
        }
        r3.a<PointF> aVar = this.f7234r;
        this.f7233q = q3.h.d((PointF) t13, (PointF) t10, aVar.f12843o, aVar.f12844p);
    }

    public Path j() {
        return this.f7233q;
    }
}

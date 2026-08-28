package k3;

import android.graphics.PointF;
import java.util.List;

/* compiled from: AnimatablePathValue.java */
/* loaded from: classes.dex */
public class e implements m<PointF, PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final List<r3.a<PointF>> f9886a;

    public e(List<r3.a<PointF>> list) {
        this.f9886a = list;
    }

    @Override // k3.m
    public h3.a<PointF, PointF> a() {
        if (this.f9886a.get(0).h()) {
            return new h3.k(this.f9886a);
        }
        return new h3.j(this.f9886a);
    }

    @Override // k3.m
    public List<r3.a<PointF>> b() {
        return this.f9886a;
    }

    @Override // k3.m
    public boolean c() {
        return this.f9886a.size() == 1 && this.f9886a.get(0).h();
    }
}

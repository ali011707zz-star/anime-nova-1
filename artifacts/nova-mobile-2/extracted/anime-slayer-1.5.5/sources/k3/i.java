package k3;

import android.graphics.PointF;
import java.util.List;

/* compiled from: AnimatableSplitDimensionPathValue.java */
/* loaded from: classes.dex */
public class i implements m<PointF, PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final b f9887a;

    /* renamed from: b, reason: collision with root package name */
    public final b f9888b;

    public i(b bVar, b bVar2) {
        this.f9887a = bVar;
        this.f9888b = bVar2;
    }

    @Override // k3.m
    public h3.a<PointF, PointF> a() {
        return new h3.n(this.f9887a.a(), this.f9888b.a());
    }

    @Override // k3.m
    public List<r3.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // k3.m
    public boolean c() {
        return this.f9887a.c() && this.f9888b.c();
    }
}

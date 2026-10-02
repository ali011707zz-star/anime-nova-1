package vc;

import tc.x;

/* compiled from: SendingCollector.kt */
/* loaded from: classes2.dex */
public final class s<T> implements uc.g<T> {

    /* renamed from: f, reason: collision with root package name */
    public final x<T> f15095f;

    /* JADX WARN: Multi-variable type inference failed */
    public s(x<? super T> xVar) {
        this.f15095f = xVar;
    }

    @Override // uc.g
    public Object a(T t10, ac.d<? super vb.p> dVar) {
        Object p10 = this.f15095f.p(t10, dVar);
        return p10 == bc.c.d() ? p10 : vb.p.f15031a;
    }
}

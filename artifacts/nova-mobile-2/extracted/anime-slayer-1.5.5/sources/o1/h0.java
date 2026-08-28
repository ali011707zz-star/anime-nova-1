package o1;

import java.util.concurrent.Executor;
import o1.p0;
import r1.h;

/* compiled from: QueryInterceptorOpenHelperFactory.java */
/* loaded from: classes.dex */
public final class h0 implements h.c {

    /* renamed from: a, reason: collision with root package name */
    public final h.c f11503a;

    /* renamed from: b, reason: collision with root package name */
    public final p0.f f11504b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f11505c;

    public h0(h.c cVar, p0.f fVar, Executor executor) {
        this.f11503a = cVar;
        this.f11504b = fVar;
        this.f11505c = executor;
    }

    @Override // r1.h.c
    public r1.h a(h.b bVar) {
        return new g0(this.f11503a.a(bVar), this.f11504b, this.f11505c);
    }
}

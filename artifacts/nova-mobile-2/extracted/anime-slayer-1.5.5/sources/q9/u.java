package q9;

import java.util.concurrent.Executor;

/* compiled from: WorkInitializer_Factory.java */
/* loaded from: classes.dex */
public final class u implements m9.b<t> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Executor> f12614a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<r9.c> f12615b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<v> f12616c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<s9.a> f12617d;

    public u(ub.a<Executor> aVar, ub.a<r9.c> aVar2, ub.a<v> aVar3, ub.a<s9.a> aVar4) {
        this.f12614a = aVar;
        this.f12615b = aVar2;
        this.f12616c = aVar3;
        this.f12617d = aVar4;
    }

    public static u a(ub.a<Executor> aVar, ub.a<r9.c> aVar2, ub.a<v> aVar3, ub.a<s9.a> aVar4) {
        return new u(aVar, aVar2, aVar3, aVar4);
    }

    public static t c(Executor executor, r9.c cVar, v vVar, s9.a aVar) {
        return new t(executor, cVar, vVar, aVar);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public t get() {
        return c(this.f12614a.get(), this.f12615b.get(), this.f12616c.get(), this.f12617d.get());
    }
}

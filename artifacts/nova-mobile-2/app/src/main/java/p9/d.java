package p9;

import java.util.concurrent.Executor;
import q9.v;

/* compiled from: DefaultScheduler_Factory.java */
/* loaded from: classes.dex */
public final class d implements m9.b<c> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Executor> f12138a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<l9.e> f12139b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<v> f12140c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<r9.c> f12141d;

    /* renamed from: e, reason: collision with root package name */
    public final ub.a<s9.a> f12142e;

    public d(ub.a<Executor> aVar, ub.a<l9.e> aVar2, ub.a<v> aVar3, ub.a<r9.c> aVar4, ub.a<s9.a> aVar5) {
        this.f12138a = aVar;
        this.f12139b = aVar2;
        this.f12140c = aVar3;
        this.f12141d = aVar4;
        this.f12142e = aVar5;
    }

    public static d a(ub.a<Executor> aVar, ub.a<l9.e> aVar2, ub.a<v> aVar3, ub.a<r9.c> aVar4, ub.a<s9.a> aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c c(Executor executor, l9.e eVar, v vVar, r9.c cVar, s9.a aVar) {
        return new c(executor, eVar, vVar, cVar, aVar);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public c get() {
        return c(this.f12138a.get(), this.f12139b.get(), this.f12140c.get(), this.f12141d.get(), this.f12142e.get());
    }
}

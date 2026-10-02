package q9;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: Uploader_Factory.java */
/* loaded from: classes.dex */
public final class q implements m9.b<p> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Context> f12601a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<l9.e> f12602b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<r9.c> f12603c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<v> f12604d;

    /* renamed from: e, reason: collision with root package name */
    public final ub.a<Executor> f12605e;

    /* renamed from: f, reason: collision with root package name */
    public final ub.a<s9.a> f12606f;

    /* renamed from: g, reason: collision with root package name */
    public final ub.a<t9.a> f12607g;

    public q(ub.a<Context> aVar, ub.a<l9.e> aVar2, ub.a<r9.c> aVar3, ub.a<v> aVar4, ub.a<Executor> aVar5, ub.a<s9.a> aVar6, ub.a<t9.a> aVar7) {
        this.f12601a = aVar;
        this.f12602b = aVar2;
        this.f12603c = aVar3;
        this.f12604d = aVar4;
        this.f12605e = aVar5;
        this.f12606f = aVar6;
        this.f12607g = aVar7;
    }

    public static q a(ub.a<Context> aVar, ub.a<l9.e> aVar2, ub.a<r9.c> aVar3, ub.a<v> aVar4, ub.a<Executor> aVar5, ub.a<s9.a> aVar6, ub.a<t9.a> aVar7) {
        return new q(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static p c(Context context, l9.e eVar, r9.c cVar, v vVar, Executor executor, s9.a aVar, t9.a aVar2) {
        return new p(context, eVar, cVar, vVar, executor, aVar, aVar2);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public p get() {
        return c(this.f12601a.get(), this.f12602b.get(), this.f12603c.get(), this.f12604d.get(), this.f12605e.get(), this.f12606f.get(), this.f12607g.get());
    }
}

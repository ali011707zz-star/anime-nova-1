package p9;

import android.content.Context;
import q9.v;

/* compiled from: SchedulingModule_WorkSchedulerFactory.java */
/* loaded from: classes.dex */
public final class i implements m9.b<v> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Context> f12144a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<r9.c> f12145b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<q9.g> f12146c;

    /* renamed from: d, reason: collision with root package name */
    public final ub.a<t9.a> f12147d;

    public i(ub.a<Context> aVar, ub.a<r9.c> aVar2, ub.a<q9.g> aVar3, ub.a<t9.a> aVar4) {
        this.f12144a = aVar;
        this.f12145b = aVar2;
        this.f12146c = aVar3;
        this.f12147d = aVar4;
    }

    public static i a(ub.a<Context> aVar, ub.a<r9.c> aVar2, ub.a<q9.g> aVar3, ub.a<t9.a> aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static v c(Context context, r9.c cVar, q9.g gVar, t9.a aVar) {
        return (v) m9.d.c(h.a(context, cVar, gVar, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public v get() {
        return c(this.f12144a.get(), this.f12145b.get(), this.f12146c.get(), this.f12147d.get());
    }
}

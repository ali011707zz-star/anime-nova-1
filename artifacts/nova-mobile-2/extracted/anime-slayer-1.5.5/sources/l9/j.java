package l9;

import android.content.Context;

/* compiled from: CreationContextFactory_Factory.java */
/* loaded from: classes.dex */
public final class j implements m9.b<i> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Context> f10552a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<t9.a> f10553b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<t9.a> f10554c;

    public j(ub.a<Context> aVar, ub.a<t9.a> aVar2, ub.a<t9.a> aVar3) {
        this.f10552a = aVar;
        this.f10553b = aVar2;
        this.f10554c = aVar3;
    }

    public static j a(ub.a<Context> aVar, ub.a<t9.a> aVar2, ub.a<t9.a> aVar3) {
        return new j(aVar, aVar2, aVar3);
    }

    public static i c(Context context, t9.a aVar, t9.a aVar2) {
        return new i(context, aVar, aVar2);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public i get() {
        return c(this.f10552a.get(), this.f10553b.get(), this.f10554c.get());
    }
}

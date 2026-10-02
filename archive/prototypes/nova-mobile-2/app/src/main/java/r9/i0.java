package r9;

import android.content.Context;

/* compiled from: SchemaManager_Factory.java */
/* loaded from: classes.dex */
public final class i0 implements m9.b<h0> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Context> f13129a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<String> f13130b;

    /* renamed from: c, reason: collision with root package name */
    public final ub.a<Integer> f13131c;

    public i0(ub.a<Context> aVar, ub.a<String> aVar2, ub.a<Integer> aVar3) {
        this.f13129a = aVar;
        this.f13130b = aVar2;
        this.f13131c = aVar3;
    }

    public static i0 a(ub.a<Context> aVar, ub.a<String> aVar2, ub.a<Integer> aVar3) {
        return new i0(aVar, aVar2, aVar3);
    }

    public static h0 c(Context context, String str, int i10) {
        return new h0(context, str, i10);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public h0 get() {
        return c(this.f13129a.get(), this.f13130b.get(), this.f13131c.get().intValue());
    }
}

package l9;

import android.content.Context;

/* compiled from: MetadataBackendRegistry_Factory.java */
/* loaded from: classes.dex */
public final class l implements m9.b<k> {

    /* renamed from: a, reason: collision with root package name */
    public final ub.a<Context> f10560a;

    /* renamed from: b, reason: collision with root package name */
    public final ub.a<i> f10561b;

    public l(ub.a<Context> aVar, ub.a<i> aVar2) {
        this.f10560a = aVar;
        this.f10561b = aVar2;
    }

    public static l a(ub.a<Context> aVar, ub.a<i> aVar2) {
        return new l(aVar, aVar2);
    }

    public static k c(Context context, Object obj) {
        return new k(context, (i) obj);
    }

    @Override // ub.a
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public k get() {
        return c(this.f10560a.get(), this.f10561b.get());
    }
}

package k9;

import android.content.Context;
import java.util.Collections;
import java.util.Set;

/* compiled from: TransportRuntime.java */
/* loaded from: classes.dex */
public class r implements q {

    /* renamed from: e, reason: collision with root package name */
    public static volatile s f10116e;

    /* renamed from: a, reason: collision with root package name */
    public final t9.a f10117a;

    /* renamed from: b, reason: collision with root package name */
    public final t9.a f10118b;

    /* renamed from: c, reason: collision with root package name */
    public final p9.e f10119c;

    /* renamed from: d, reason: collision with root package name */
    public final q9.p f10120d;

    public r(t9.a aVar, t9.a aVar2, p9.e eVar, q9.p pVar, q9.t tVar) {
        this.f10117a = aVar;
        this.f10118b = aVar2;
        this.f10119c = eVar;
        this.f10120d = pVar;
        tVar.c();
    }

    public static r c() {
        s sVar = f10116e;
        if (sVar != null) {
            return sVar.d();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static Set<h9.b> d(e eVar) {
        if (eVar instanceof f) {
            return Collections.unmodifiableSet(((f) eVar).a());
        }
        return Collections.singleton(h9.b.b("proto"));
    }

    public static void f(Context context) {
        if (f10116e == null) {
            synchronized (r.class) {
                if (f10116e == null) {
                    f10116e = d.h().a(context).build();
                }
            }
        }
    }

    @Override // k9.q
    public void a(l lVar, h9.h hVar) {
        this.f10119c.a(lVar.f().e(lVar.c().c()), b(lVar), hVar);
    }

    public final h b(l lVar) {
        return h.a().i(this.f10117a.a()).k(this.f10118b.a()).j(lVar.g()).h(new g(lVar.b(), lVar.d())).g(lVar.c().a()).d();
    }

    public q9.p e() {
        return this.f10120d;
    }

    public h9.g g(e eVar) {
        return new n(d(eVar), m.a().b(eVar.getName()).c(eVar.getExtras()).a(), this);
    }
}

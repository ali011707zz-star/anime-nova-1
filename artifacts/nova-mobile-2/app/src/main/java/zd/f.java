package zd;

import java.lang.reflect.Type;
import jc.l;

/* compiled from: Scope.kt */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a, reason: collision with root package name */
    public final d f17473a;

    public f(d dVar) {
        l.g(dVar, "registrar");
        this.f17473a = dVar;
    }

    @Override // zd.b
    public <R> R a(Type type) {
        l.g(type, "forType");
        return (R) this.f17473a.a(type);
    }

    @Override // zd.d
    public void b(c cVar) {
        l.g(cVar, "submodule");
        this.f17473a.b(cVar);
    }

    @Override // zd.e
    public <R> void c(g<R> gVar, ic.a<? extends R> aVar) {
        l.g(gVar, "forType");
        l.g(aVar, "factoryCalledOnce");
        this.f17473a.c(gVar, aVar);
    }

    @Override // zd.e
    public <T> void d(g<T> gVar, T t10) {
        l.g(gVar, "forType");
        l.g(t10, "singleInstance");
        this.f17473a.d(gVar, t10);
    }
}

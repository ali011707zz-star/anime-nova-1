package androidx.lifecycle;

import androidx.lifecycle.k;
import vb.j;

/* compiled from: WithLifecycleState.kt */
/* loaded from: classes.dex */
public final class WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1 implements n {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ k.c f2443f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k f2444g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ rc.o<Object> f2445h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ic.a<Object> f2446i;

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        Object a10;
        jc.l.f(qVar, "source");
        jc.l.f(bVar, "event");
        if (bVar == k.b.d(this.f2443f)) {
            this.f2444g.c(this);
            rc.o<Object> oVar = this.f2445h;
            ic.a<Object> aVar = this.f2446i;
            try {
                j.a aVar2 = vb.j.f15020f;
                a10 = vb.j.a(aVar.invoke());
            } catch (Throwable th) {
                j.a aVar3 = vb.j.f15020f;
                a10 = vb.j.a(vb.k.a(th));
            }
            oVar.resumeWith(a10);
            return;
        }
        if (bVar == k.b.ON_DESTROY) {
            this.f2444g.c(this);
            rc.o<Object> oVar2 = this.f2445h;
            LifecycleDestroyedException lifecycleDestroyedException = new LifecycleDestroyedException();
            j.a aVar4 = vb.j.f15020f;
            oVar2.resumeWith(vb.j.a(vb.k.a(lifecycleDestroyedException)));
        }
    }
}

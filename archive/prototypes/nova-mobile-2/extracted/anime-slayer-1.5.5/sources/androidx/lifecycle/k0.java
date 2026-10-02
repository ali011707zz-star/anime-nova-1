package androidx.lifecycle;

import androidx.lifecycle.i0;
import androidx.lifecycle.l0;

/* compiled from: ViewModelProvider.kt */
/* loaded from: classes.dex */
public final class k0<VM extends i0> implements vb.e<VM> {

    /* renamed from: f, reason: collision with root package name */
    public VM f2511f;

    /* renamed from: g, reason: collision with root package name */
    public final oc.b<VM> f2512g;

    /* renamed from: h, reason: collision with root package name */
    public final ic.a<m0> f2513h;

    /* renamed from: i, reason: collision with root package name */
    public final ic.a<l0.b> f2514i;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(oc.b<VM> bVar, ic.a<? extends m0> aVar, ic.a<? extends l0.b> aVar2) {
        jc.l.f(bVar, "viewModelClass");
        jc.l.f(aVar, "storeProducer");
        jc.l.f(aVar2, "factoryProducer");
        this.f2512g = bVar;
        this.f2513h = aVar;
        this.f2514i = aVar2;
    }

    @Override // vb.e
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public VM getValue() {
        VM vm = this.f2511f;
        if (vm != null) {
            return vm;
        }
        VM vm2 = (VM) new l0(this.f2513h.invoke(), this.f2514i.invoke()).a(hc.a.a(this.f2512g));
        this.f2511f = vm2;
        jc.l.e(vm2, "ViewModelProvider(store,…ed = it\n                }");
        return vm2;
    }
}

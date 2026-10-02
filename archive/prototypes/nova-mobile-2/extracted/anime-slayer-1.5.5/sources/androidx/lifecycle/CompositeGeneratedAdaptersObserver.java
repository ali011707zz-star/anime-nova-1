package androidx.lifecycle;

import androidx.lifecycle.k;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements n {

    /* renamed from: f, reason: collision with root package name */
    public final j[] f2385f;

    public CompositeGeneratedAdaptersObserver(j[] jVarArr) {
        this.f2385f = jVarArr;
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        x xVar = new x();
        for (j jVar : this.f2385f) {
            jVar.a(qVar, bVar, false, xVar);
        }
        for (j jVar2 : this.f2385f) {
            jVar2.a(qVar, bVar, true, xVar);
        }
    }
}

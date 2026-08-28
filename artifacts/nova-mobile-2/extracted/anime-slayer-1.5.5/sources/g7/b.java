package g7;

import androidx.lifecycle.z;
import ic.l;
import vb.p;

/* compiled from: Event.kt */
/* loaded from: classes.dex */
public final class b<T> implements z<a<? extends T>> {

    /* renamed from: f, reason: collision with root package name */
    public final l<T, p> f7020f;

    /* JADX WARN: Multi-variable type inference failed */
    public b(l<? super T, p> lVar) {
        jc.l.f(lVar, "onEventUnhandledContent");
        this.f7020f = lVar;
    }

    @Override // androidx.lifecycle.z
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void B(a<? extends T> aVar) {
        T a10;
        if (aVar == null || (a10 = aVar.a()) == null) {
            return;
        }
        this.f7020f.invoke(a10);
    }
}

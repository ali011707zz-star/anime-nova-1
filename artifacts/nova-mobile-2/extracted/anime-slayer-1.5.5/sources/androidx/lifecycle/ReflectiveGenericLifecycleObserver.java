package androidx.lifecycle;

import androidx.lifecycle.c;
import androidx.lifecycle.k;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements n {

    /* renamed from: f, reason: collision with root package name */
    public final Object f2420f;

    /* renamed from: g, reason: collision with root package name */
    public final c.a f2421g;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2420f = obj;
        this.f2421g = c.f2452c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        this.f2421g.a(qVar, bVar, this.f2420f);
    }
}

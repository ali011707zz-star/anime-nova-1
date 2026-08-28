package wc;

import rc.q0;

/* compiled from: Scopes.kt */
/* loaded from: classes2.dex */
public final class f implements q0 {

    /* renamed from: f, reason: collision with root package name */
    public final ac.g f15486f;

    public f(ac.g gVar) {
        this.f15486f = gVar;
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        return this.f15486f;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}

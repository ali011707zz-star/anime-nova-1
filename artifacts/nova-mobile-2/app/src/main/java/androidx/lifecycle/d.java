package androidx.lifecycle;

import java.io.Closeable;
import rc.h2;
import rc.q0;

/* compiled from: ViewModel.kt */
/* loaded from: classes.dex */
public final class d implements Closeable, q0 {

    /* renamed from: f, reason: collision with root package name */
    public final ac.g f2464f;

    public d(ac.g gVar) {
        jc.l.f(gVar, "context");
        this.f2464f = gVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        h2.d(getCoroutineContext(), null, 1, null);
    }

    @Override // rc.q0
    public ac.g getCoroutineContext() {
        return this.f2464f;
    }
}

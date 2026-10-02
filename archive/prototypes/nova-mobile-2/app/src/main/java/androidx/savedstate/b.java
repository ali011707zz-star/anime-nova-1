package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.k;

/* compiled from: SavedStateRegistryController.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final c f3181a;

    /* renamed from: b, reason: collision with root package name */
    public final SavedStateRegistry f3182b = new SavedStateRegistry();

    public b(c cVar) {
        this.f3181a = cVar;
    }

    public static b a(c cVar) {
        return new b(cVar);
    }

    public SavedStateRegistry b() {
        return this.f3182b;
    }

    public void c(Bundle bundle) {
        k lifecycle = this.f3181a.getLifecycle();
        if (lifecycle.b() == k.c.INITIALIZED) {
            lifecycle.a(new Recreator(this.f3181a));
            this.f3182b.b(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public void d(Bundle bundle) {
        this.f3182b.c(bundle);
    }
}

package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.l0;
import androidx.savedstate.SavedStateRegistry;

/* compiled from: AbstractSavedStateViewModelFactory.java */
/* loaded from: classes.dex */
public abstract class a extends l0.c {

    /* renamed from: a, reason: collision with root package name */
    public final SavedStateRegistry f2447a;

    /* renamed from: b, reason: collision with root package name */
    public final k f2448b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f2449c;

    public a(androidx.savedstate.c cVar, Bundle bundle) {
        this.f2447a = cVar.getSavedStateRegistry();
        this.f2448b = cVar.getLifecycle();
        this.f2449c = bundle;
    }

    @Override // androidx.lifecycle.l0.c, androidx.lifecycle.l0.b
    public final <T extends i0> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.l0.e
    public void b(i0 i0Var) {
        SavedStateHandleController.a(i0Var, this.f2447a, this.f2448b);
    }

    @Override // androidx.lifecycle.l0.c
    public final <T extends i0> T c(String str, Class<T> cls) {
        SavedStateHandleController j10 = SavedStateHandleController.j(this.f2447a, this.f2448b, str, this.f2449c);
        T t10 = (T) d(str, cls, j10.k());
        t10.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", j10);
        return t10;
    }

    public abstract <T extends i0> T d(String str, Class<T> cls, f0 f0Var);
}

package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.savedstate.SavedStateRegistry;

/* compiled from: FragmentViewLifecycleOwner.java */
/* loaded from: classes.dex */
public class b0 implements androidx.savedstate.c, n0 {

    /* renamed from: f, reason: collision with root package name */
    public final Fragment f2139f;

    /* renamed from: g, reason: collision with root package name */
    public final m0 f2140g;

    /* renamed from: h, reason: collision with root package name */
    public androidx.lifecycle.s f2141h = null;

    /* renamed from: i, reason: collision with root package name */
    public androidx.savedstate.b f2142i = null;

    public b0(Fragment fragment, m0 m0Var) {
        this.f2139f = fragment;
        this.f2140g = m0Var;
    }

    public void a(k.b bVar) {
        this.f2141h.h(bVar);
    }

    public void b() {
        if (this.f2141h == null) {
            this.f2141h = new androidx.lifecycle.s(this);
            this.f2142i = androidx.savedstate.b.a(this);
        }
    }

    public boolean c() {
        return this.f2141h != null;
    }

    public void d(Bundle bundle) {
        this.f2142i.c(bundle);
    }

    public void e(Bundle bundle) {
        this.f2142i.d(bundle);
    }

    public void f(k.c cVar) {
        this.f2141h.o(cVar);
    }

    @Override // androidx.lifecycle.q
    public androidx.lifecycle.k getLifecycle() {
        b();
        return this.f2141h;
    }

    @Override // androidx.savedstate.c
    public SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.f2142i.b();
    }

    @Override // androidx.lifecycle.n0
    public m0 getViewModelStore() {
        b();
        return this.f2140g;
    }
}

package com.anslayer.util.system;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.k;
import androidx.lifecycle.q;
import androidx.lifecycle.z;
import com.anslayer.util.system.FragmentExtensionsKt$viewLifecycle$1;
import jc.l;
import kc.a;
import oc.g;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: FragmentExtensions.kt */
/* loaded from: classes.dex */
public final class FragmentExtensionsKt$viewLifecycle$1<T> implements a<Fragment, T>, f {

    /* renamed from: f, reason: collision with root package name */
    public T f4382f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Fragment f4383g;

    public FragmentExtensionsKt$viewLifecycle$1(Fragment fragment) {
        this.f4383g = fragment;
        fragment.getViewLifecycleOwnerLiveData().i(fragment, new z() { // from class: k7.d
            @Override // androidx.lifecycle.z
            public final void B(Object obj) {
                FragmentExtensionsKt$viewLifecycle$1.k(FragmentExtensionsKt$viewLifecycle$1.this, (q) obj);
            }
        });
    }

    public static final void k(FragmentExtensionsKt$viewLifecycle$1 fragmentExtensionsKt$viewLifecycle$1, q qVar) {
        k lifecycle;
        l.f(fragmentExtensionsKt$viewLifecycle$1, "this$0");
        if (qVar == null || (lifecycle = qVar.getLifecycle()) == null) {
            return;
        }
        lifecycle.a(fragmentExtensionsKt$viewLifecycle$1);
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ void b(q qVar) {
        e.d(this, qVar);
    }

    @Override // androidx.lifecycle.i
    public void c(q qVar) {
        l.f(qVar, "owner");
        this.f4382f = null;
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ void d(q qVar) {
        e.a(this, qVar);
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ void g(q qVar) {
        e.c(this, qVar);
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ void h(q qVar) {
        e.e(this, qVar);
    }

    @Override // androidx.lifecycle.i
    public /* synthetic */ void i(q qVar) {
        e.f(this, qVar);
    }

    @Override // kc.a
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public T f(Fragment fragment, g<?> gVar) {
        l.f(fragment, "thisRef");
        l.f(gVar, "property");
        T t10 = this.f4382f;
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException("Called before onCreateView or after onDestroyView.".toString());
    }

    @Override // kc.a
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public void a(Fragment fragment, g<?> gVar, T t10) {
        l.f(fragment, "thisRef");
        l.f(gVar, "property");
        this.f4382f = t10;
    }
}

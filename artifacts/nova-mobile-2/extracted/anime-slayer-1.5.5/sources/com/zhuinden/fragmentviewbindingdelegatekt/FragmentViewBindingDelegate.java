package com.zhuinden.fragmentviewbindingdelegatekt;

import a2.a;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.e;
import androidx.lifecycle.f;
import androidx.lifecycle.k;
import androidx.lifecycle.q;
import androidx.lifecycle.z;
import ic.l;
import oc.g;

/* compiled from: FragmentViewBindingDelegate.kt */
/* loaded from: classes.dex */
public final class FragmentViewBindingDelegate<T extends a> {

    /* renamed from: a, reason: collision with root package name */
    public T f5175a;

    /* renamed from: b, reason: collision with root package name */
    public final Fragment f5176b;

    /* renamed from: c, reason: collision with root package name */
    public final l<View, T> f5177c;

    /* compiled from: FragmentViewBindingDelegate.kt */
    /* renamed from: com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 implements f {

        /* renamed from: f, reason: collision with root package name */
        public final z<q> f5178f = new z<q>() { // from class: com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate$1$viewLifecycleOwnerLiveDataObserver$1
            @Override // androidx.lifecycle.z
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void B(q qVar) {
                if (qVar != null) {
                    qVar.getLifecycle().a(new f() { // from class: com.zhuinden.fragmentviewbindingdelegatekt.FragmentViewBindingDelegate$1$viewLifecycleOwnerLiveDataObserver$1.1
                        @Override // androidx.lifecycle.i
                        public /* synthetic */ void b(q qVar2) {
                            e.d(this, qVar2);
                        }

                        @Override // androidx.lifecycle.i
                        public void c(q qVar2) {
                            jc.l.f(qVar2, "owner");
                            FragmentViewBindingDelegate.this.f5175a = null;
                        }

                        @Override // androidx.lifecycle.i
                        public /* synthetic */ void d(q qVar2) {
                            e.a(this, qVar2);
                        }

                        @Override // androidx.lifecycle.i
                        public /* synthetic */ void g(q qVar2) {
                            e.c(this, qVar2);
                        }

                        @Override // androidx.lifecycle.i
                        public /* synthetic */ void h(q qVar2) {
                            e.e(this, qVar2);
                        }

                        @Override // androidx.lifecycle.i
                        public /* synthetic */ void i(q qVar2) {
                            e.f(this, qVar2);
                        }
                    });
                }
            }
        };

        public AnonymousClass1() {
        }

        @Override // androidx.lifecycle.i
        public /* synthetic */ void b(q qVar) {
            e.d(this, qVar);
        }

        @Override // androidx.lifecycle.i
        public void c(q qVar) {
            jc.l.f(qVar, "owner");
            FragmentViewBindingDelegate.this.b().getViewLifecycleOwnerLiveData().n(this.f5178f);
        }

        @Override // androidx.lifecycle.i
        public void d(q qVar) {
            jc.l.f(qVar, "owner");
            FragmentViewBindingDelegate.this.b().getViewLifecycleOwnerLiveData().j(this.f5178f);
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
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FragmentViewBindingDelegate(Fragment fragment, l<? super View, ? extends T> lVar) {
        jc.l.f(fragment, "fragment");
        jc.l.f(lVar, "viewBindingFactory");
        this.f5176b = fragment;
        this.f5177c = lVar;
        fragment.getLifecycle().a(new AnonymousClass1());
    }

    public final Fragment b() {
        return this.f5176b;
    }

    public T c(Fragment fragment, g<?> gVar) {
        jc.l.f(fragment, "thisRef");
        jc.l.f(gVar, "property");
        T t10 = this.f5175a;
        if (t10 != null) {
            return t10;
        }
        q viewLifecycleOwner = this.f5176b.getViewLifecycleOwner();
        jc.l.e(viewLifecycleOwner, "fragment.viewLifecycleOwner");
        k lifecycle = viewLifecycleOwner.getLifecycle();
        jc.l.e(lifecycle, "fragment.viewLifecycleOwner.lifecycle");
        if (lifecycle.b().a(k.c.INITIALIZED)) {
            l<View, T> lVar = this.f5177c;
            View requireView = fragment.requireView();
            jc.l.e(requireView, "thisRef.requireView()");
            T invoke = lVar.invoke(requireView);
            this.f5175a = invoke;
            return invoke;
        }
        throw new IllegalStateException("Should not attempt to get bindings when Fragment views are destroyed.");
    }
}

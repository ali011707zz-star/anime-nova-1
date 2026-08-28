package androidx.fragment.app;

import androidx.lifecycle.i0;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;

/* compiled from: FragmentViewModelLazy.kt */
/* loaded from: classes.dex */
public final class c0 {

    /* compiled from: FragmentViewModelLazy.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<l0.b> {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Fragment f2185f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Fragment fragment) {
            super(0);
            this.f2185f = fragment;
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l0.b invoke() {
            return this.f2185f.getDefaultViewModelProviderFactory();
        }
    }

    public static final <VM extends i0> vb.e<VM> a(Fragment fragment, oc.b<VM> bVar, ic.a<? extends m0> aVar, ic.a<? extends l0.b> aVar2) {
        jc.l.f(fragment, "$this$createViewModelLazy");
        jc.l.f(bVar, "viewModelClass");
        jc.l.f(aVar, "storeProducer");
        if (aVar2 == null) {
            aVar2 = new a(fragment);
        }
        return new k0(bVar, aVar, aVar2);
    }
}

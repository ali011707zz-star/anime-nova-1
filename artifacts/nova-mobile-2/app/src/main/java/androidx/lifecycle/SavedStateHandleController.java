package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.savedstate.SavedStateRegistry;
import java.util.Iterator;

/* loaded from: classes.dex */
final class SavedStateHandleController implements n {

    /* renamed from: f, reason: collision with root package name */
    public final String f2437f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2438g = false;

    /* renamed from: h, reason: collision with root package name */
    public final f0 f2439h;

    /* loaded from: classes.dex */
    public static final class a implements SavedStateRegistry.a {
        @Override // androidx.savedstate.SavedStateRegistry.a
        public void a(androidx.savedstate.c cVar) {
            if (cVar instanceof n0) {
                m0 viewModelStore = ((n0) cVar).getViewModelStore();
                SavedStateRegistry savedStateRegistry = cVar.getSavedStateRegistry();
                Iterator<String> it2 = viewModelStore.c().iterator();
                while (it2.hasNext()) {
                    SavedStateHandleController.a(viewModelStore.b(it2.next()), savedStateRegistry, cVar.getLifecycle());
                }
                if (viewModelStore.c().isEmpty()) {
                    return;
                }
                savedStateRegistry.e(a.class);
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    public SavedStateHandleController(String str, f0 f0Var) {
        this.f2437f = str;
        this.f2439h = f0Var;
    }

    public static void a(i0 i0Var, SavedStateRegistry savedStateRegistry, k kVar) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) i0Var.getTag("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.l()) {
            return;
        }
        savedStateHandleController.f(savedStateRegistry, kVar);
        m(savedStateRegistry, kVar);
    }

    public static SavedStateHandleController j(SavedStateRegistry savedStateRegistry, k kVar, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, f0.a(savedStateRegistry.a(str), bundle));
        savedStateHandleController.f(savedStateRegistry, kVar);
        m(savedStateRegistry, kVar);
        return savedStateHandleController;
    }

    public static void m(final SavedStateRegistry savedStateRegistry, final k kVar) {
        k.c b10 = kVar.b();
        if (b10 != k.c.INITIALIZED && !b10.a(k.c.STARTED)) {
            kVar.a(new n() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.n
                public void e(q qVar, k.b bVar) {
                    if (bVar == k.b.ON_START) {
                        k.this.c(this);
                        savedStateRegistry.e(a.class);
                    }
                }
            });
        } else {
            savedStateRegistry.e(a.class);
        }
    }

    @Override // androidx.lifecycle.n
    public void e(q qVar, k.b bVar) {
        if (bVar == k.b.ON_DESTROY) {
            this.f2438g = false;
            qVar.getLifecycle().c(this);
        }
    }

    public void f(SavedStateRegistry savedStateRegistry, k kVar) {
        if (!this.f2438g) {
            this.f2438g = true;
            kVar.a(this);
            savedStateRegistry.d(this.f2437f, this.f2439h.c());
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    public f0 k() {
        return this.f2439h;
    }

    public boolean l() {
        return this.f2438g;
    }
}

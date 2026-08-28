package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.k;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import androidx.savedstate.Recreator;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class SavedStateRegistry {

    /* renamed from: b, reason: collision with root package name */
    public Bundle f3175b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3176c;

    /* renamed from: d, reason: collision with root package name */
    public Recreator.a f3177d;

    /* renamed from: a, reason: collision with root package name */
    public m.b<String, b> f3174a = new m.b<>();

    /* renamed from: e, reason: collision with root package name */
    public boolean f3178e = true;

    /* loaded from: classes.dex */
    public interface a {
        void a(c cVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        Bundle a();
    }

    public Bundle a(String str) {
        if (this.f3176c) {
            Bundle bundle = this.f3175b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f3175b.remove(str);
            if (this.f3175b.isEmpty()) {
                this.f3175b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    public void b(k kVar, Bundle bundle) {
        if (!this.f3176c) {
            if (bundle != null) {
                this.f3175b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            kVar.a(new n() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.n
                public void e(q qVar, k.b bVar) {
                    if (bVar == k.b.ON_START) {
                        SavedStateRegistry.this.f3178e = true;
                    } else if (bVar == k.b.ON_STOP) {
                        SavedStateRegistry.this.f3178e = false;
                    }
                }
            });
            this.f3176c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    public void c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f3175b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        m.b<String, b>.d d10 = this.f3174a.d();
        while (d10.hasNext()) {
            Map.Entry next = d10.next();
            bundle2.putBundle((String) next.getKey(), ((b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public void d(String str, b bVar) {
        if (this.f3174a.g(str, bVar) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void e(Class<? extends a> cls) {
        if (this.f3178e) {
            if (this.f3177d == null) {
                this.f3177d = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f3177d.b(cls.getName());
                return;
            } catch (NoSuchMethodException e10) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}

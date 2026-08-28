package androidx.fragment.app;

import androidx.lifecycle.i0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: FragmentManagerViewModel.java */
/* loaded from: classes.dex */
public final class q extends i0 {

    /* renamed from: h, reason: collision with root package name */
    public static final l0.b f2267h = new a();

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2271d;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap<String, Fragment> f2268a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap<String, q> f2269b = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap<String, m0> f2270c = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public boolean f2272e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2273f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2274g = false;

    /* compiled from: FragmentManagerViewModel.java */
    /* loaded from: classes.dex */
    public class a implements l0.b {
        @Override // androidx.lifecycle.l0.b
        public <T extends i0> T a(Class<T> cls) {
            return new q(true);
        }
    }

    public q(boolean z10) {
        this.f2271d = z10;
    }

    public static q e(m0 m0Var) {
        return (q) new l0(m0Var, f2267h).a(q.class);
    }

    public void a(Fragment fragment) {
        if (this.f2274g) {
            FragmentManager.G0(2);
            return;
        }
        if (this.f2268a.containsKey(fragment.mWho)) {
            return;
        }
        this.f2268a.put(fragment.mWho, fragment);
        if (FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Updating retained Fragments: Added ");
            sb2.append(fragment);
        }
    }

    public void b(Fragment fragment) {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Clearing non-config state for ");
            sb2.append(fragment);
        }
        q qVar = this.f2269b.get(fragment.mWho);
        if (qVar != null) {
            qVar.onCleared();
            this.f2269b.remove(fragment.mWho);
        }
        m0 m0Var = this.f2270c.get(fragment.mWho);
        if (m0Var != null) {
            m0Var.a();
            this.f2270c.remove(fragment.mWho);
        }
    }

    public Fragment c(String str) {
        return this.f2268a.get(str);
    }

    public q d(Fragment fragment) {
        q qVar = this.f2269b.get(fragment.mWho);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(this.f2271d);
        this.f2269b.put(fragment.mWho, qVar2);
        return qVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f2268a.equals(qVar.f2268a) && this.f2269b.equals(qVar.f2269b) && this.f2270c.equals(qVar.f2270c);
    }

    public Collection<Fragment> f() {
        return new ArrayList(this.f2268a.values());
    }

    public m0 g(Fragment fragment) {
        m0 m0Var = this.f2270c.get(fragment.mWho);
        if (m0Var != null) {
            return m0Var;
        }
        m0 m0Var2 = new m0();
        this.f2270c.put(fragment.mWho, m0Var2);
        return m0Var2;
    }

    public boolean h() {
        return this.f2272e;
    }

    public int hashCode() {
        return (((this.f2268a.hashCode() * 31) + this.f2269b.hashCode()) * 31) + this.f2270c.hashCode();
    }

    public void i(Fragment fragment) {
        if (this.f2274g) {
            FragmentManager.G0(2);
            return;
        }
        if ((this.f2268a.remove(fragment.mWho) != null) && FragmentManager.G0(2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Updating retained Fragments: Removed ");
            sb2.append(fragment);
        }
    }

    public void j(boolean z10) {
        this.f2274g = z10;
    }

    public boolean k(Fragment fragment) {
        if (!this.f2268a.containsKey(fragment.mWho)) {
            return true;
        }
        if (this.f2271d) {
            return this.f2272e;
        }
        return !this.f2273f;
    }

    @Override // androidx.lifecycle.i0
    public void onCleared() {
        if (FragmentManager.G0(3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onCleared called for ");
            sb2.append(this);
        }
        this.f2272e = true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentManagerViewModel{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} Fragments (");
        Iterator<Fragment> it2 = this.f2268a.values().iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            if (it2.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") Child Non Config (");
        Iterator<String> it3 = this.f2269b.keySet().iterator();
        while (it3.hasNext()) {
            sb2.append(it3.next());
            if (it3.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(") ViewModelStores (");
        Iterator<String> it4 = this.f2270c.keySet().iterator();
        while (it4.hasNext()) {
            sb2.append(it4.next());
            if (it4.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append(')');
        return sb2.toString();
    }
}

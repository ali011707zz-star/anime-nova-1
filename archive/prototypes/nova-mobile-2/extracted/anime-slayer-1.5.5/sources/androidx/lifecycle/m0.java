package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: ViewModelStore.java */
/* loaded from: classes.dex */
public class m0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap<String, i0> f2524a = new HashMap<>();

    public final void a() {
        Iterator<i0> it2 = this.f2524a.values().iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
        this.f2524a.clear();
    }

    public final i0 b(String str) {
        return this.f2524a.get(str);
    }

    public Set<String> c() {
        return new HashSet(this.f2524a.keySet());
    }

    public final void d(String str, i0 i0Var) {
        i0 put = this.f2524a.put(str, i0Var);
        if (put != null) {
            put.onCleared();
        }
    }
}

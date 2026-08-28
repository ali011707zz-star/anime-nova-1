package e8;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: TargetTracker.java */
/* loaded from: classes.dex */
public final class p implements i {

    /* renamed from: f, reason: collision with root package name */
    public final Set<i8.i<?>> f6232f = Collections.newSetFromMap(new WeakHashMap());

    public void a() {
        this.f6232f.clear();
    }

    public List<i8.i<?>> d() {
        return l8.k.j(this.f6232f);
    }

    public void g(i8.i<?> iVar) {
        this.f6232f.add(iVar);
    }

    public void l(i8.i<?> iVar) {
        this.f6232f.remove(iVar);
    }

    @Override // e8.i
    public void onDestroy() {
        Iterator it2 = l8.k.j(this.f6232f).iterator();
        while (it2.hasNext()) {
            ((i8.i) it2.next()).onDestroy();
        }
    }

    @Override // e8.i
    public void onStart() {
        Iterator it2 = l8.k.j(this.f6232f).iterator();
        while (it2.hasNext()) {
            ((i8.i) it2.next()).onStart();
        }
    }

    @Override // e8.i
    public void onStop() {
        Iterator it2 = l8.k.j(this.f6232f).iterator();
        while (it2.hasNext()) {
            ((i8.i) it2.next()).onStop();
        }
    }
}

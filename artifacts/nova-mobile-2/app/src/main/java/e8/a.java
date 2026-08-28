package e8;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle.java */
/* loaded from: classes.dex */
public class a implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Set<i> f6197a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public boolean f6198b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6199c;

    @Override // e8.h
    public void a(i iVar) {
        this.f6197a.remove(iVar);
    }

    @Override // e8.h
    public void b(i iVar) {
        this.f6197a.add(iVar);
        if (this.f6199c) {
            iVar.onDestroy();
        } else if (this.f6198b) {
            iVar.onStart();
        } else {
            iVar.onStop();
        }
    }

    public void c() {
        this.f6199c = true;
        Iterator it2 = l8.k.j(this.f6197a).iterator();
        while (it2.hasNext()) {
            ((i) it2.next()).onDestroy();
        }
    }

    public void d() {
        this.f6198b = true;
        Iterator it2 = l8.k.j(this.f6197a).iterator();
        while (it2.hasNext()) {
            ((i) it2.next()).onStart();
        }
    }

    public void e() {
        this.f6198b = false;
        Iterator it2 = l8.k.j(this.f6197a).iterator();
        while (it2.hasNext()) {
            ((i) it2.next()).onStop();
        }
    }
}

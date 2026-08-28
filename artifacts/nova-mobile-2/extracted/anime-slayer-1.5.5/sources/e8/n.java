package e8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public final Set<h8.d> f6222a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final List<h8.d> f6223b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6224c;

    public boolean a(h8.d dVar) {
        boolean z10 = true;
        if (dVar == null) {
            return true;
        }
        boolean remove = this.f6222a.remove(dVar);
        if (!this.f6223b.remove(dVar) && !remove) {
            z10 = false;
        }
        if (z10) {
            dVar.clear();
        }
        return z10;
    }

    public void b() {
        Iterator it2 = l8.k.j(this.f6222a).iterator();
        while (it2.hasNext()) {
            a((h8.d) it2.next());
        }
        this.f6223b.clear();
    }

    public void c() {
        this.f6224c = true;
        for (h8.d dVar : l8.k.j(this.f6222a)) {
            if (dVar.isRunning() || dVar.isComplete()) {
                dVar.clear();
                this.f6223b.add(dVar);
            }
        }
    }

    public void d() {
        this.f6224c = true;
        for (h8.d dVar : l8.k.j(this.f6222a)) {
            if (dVar.isRunning()) {
                dVar.d();
                this.f6223b.add(dVar);
            }
        }
    }

    public void e() {
        for (h8.d dVar : l8.k.j(this.f6222a)) {
            if (!dVar.isComplete() && !dVar.g()) {
                dVar.clear();
                if (!this.f6224c) {
                    dVar.j();
                } else {
                    this.f6223b.add(dVar);
                }
            }
        }
    }

    public void f() {
        this.f6224c = false;
        for (h8.d dVar : l8.k.j(this.f6222a)) {
            if (!dVar.isComplete() && !dVar.isRunning()) {
                dVar.j();
            }
        }
        this.f6223b.clear();
    }

    public void g(h8.d dVar) {
        this.f6222a.add(dVar);
        if (!this.f6224c) {
            dVar.j();
        } else {
            dVar.clear();
            this.f6223b.add(dVar);
        }
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f6222a.size() + ", isPaused=" + this.f6224c + "}";
    }
}

package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: OnBackPressedCallback.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f676a;

    /* renamed from: b, reason: collision with root package name */
    public CopyOnWriteArrayList<a> f677b = new CopyOnWriteArrayList<>();

    public b(boolean z10) {
        this.f676a = z10;
    }

    public void a(a aVar) {
        this.f677b.add(aVar);
    }

    public abstract void b();

    public final boolean c() {
        return this.f676a;
    }

    public final void d() {
        Iterator<a> it2 = this.f677b.iterator();
        while (it2.hasNext()) {
            it2.next().cancel();
        }
    }

    public void e(a aVar) {
        this.f677b.remove(aVar);
    }

    public final void f(boolean z10) {
        this.f676a = z10;
    }
}

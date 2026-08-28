package q0;

import android.annotation.SuppressLint;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MenuHostHelper.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f12333a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList<m> f12334b = new CopyOnWriteArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final Map<m, a> f12335c = new HashMap();

    /* compiled from: MenuHostHelper.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final androidx.lifecycle.k f12336a;

        /* renamed from: b, reason: collision with root package name */
        public androidx.lifecycle.n f12337b;

        public a(androidx.lifecycle.k kVar, androidx.lifecycle.n nVar) {
            this.f12336a = kVar;
            this.f12337b = nVar;
            kVar.a(nVar);
        }

        public void a() {
            this.f12336a.c(this.f12337b);
            this.f12337b = null;
        }
    }

    public k(Runnable runnable) {
        this.f12333a = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(m mVar, androidx.lifecycle.q qVar, k.b bVar) {
        if (bVar == k.b.ON_DESTROY) {
            j(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(k.c cVar, m mVar, androidx.lifecycle.q qVar, k.b bVar) {
        if (bVar == k.b.d(cVar)) {
            c(mVar);
            return;
        }
        if (bVar == k.b.ON_DESTROY) {
            j(mVar);
        } else if (bVar == k.b.a(cVar)) {
            this.f12334b.remove(mVar);
            this.f12333a.run();
        }
    }

    public void c(m mVar) {
        this.f12334b.add(mVar);
        this.f12333a.run();
    }

    public void d(final m mVar, androidx.lifecycle.q qVar) {
        c(mVar);
        androidx.lifecycle.k lifecycle = qVar.getLifecycle();
        a remove = this.f12335c.remove(mVar);
        if (remove != null) {
            remove.a();
        }
        this.f12335c.put(mVar, new a(lifecycle, new androidx.lifecycle.n() { // from class: q0.j
            @Override // androidx.lifecycle.n
            public final void e(androidx.lifecycle.q qVar2, k.b bVar) {
                k.this.f(mVar, qVar2, bVar);
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void e(final m mVar, androidx.lifecycle.q qVar, final k.c cVar) {
        androidx.lifecycle.k lifecycle = qVar.getLifecycle();
        a remove = this.f12335c.remove(mVar);
        if (remove != null) {
            remove.a();
        }
        this.f12335c.put(mVar, new a(lifecycle, new androidx.lifecycle.n() { // from class: q0.i
            @Override // androidx.lifecycle.n
            public final void e(androidx.lifecycle.q qVar2, k.b bVar) {
                k.this.g(cVar, mVar, qVar2, bVar);
            }
        }));
    }

    public void h(Menu menu, MenuInflater menuInflater) {
        Iterator<m> it2 = this.f12334b.iterator();
        while (it2.hasNext()) {
            it2.next().b(menu, menuInflater);
        }
    }

    public boolean i(MenuItem menuItem) {
        Iterator<m> it2 = this.f12334b.iterator();
        while (it2.hasNext()) {
            if (it2.next().a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void j(m mVar) {
        this.f12334b.remove(mVar);
        a remove = this.f12335c.remove(mVar);
        if (remove != null) {
            remove.a();
        }
        this.f12333a.run();
    }
}

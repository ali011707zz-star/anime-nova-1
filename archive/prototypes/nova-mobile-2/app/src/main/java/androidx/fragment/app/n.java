package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: FragmentLifecycleCallbacksDispatcher.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList<a> f2255a = new CopyOnWriteArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public final FragmentManager f2256b;

    /* compiled from: FragmentLifecycleCallbacksDispatcher.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final FragmentManager.l f2257a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f2258b;
    }

    public n(FragmentManager fragmentManager) {
        this.f2256b = fragmentManager;
    }

    public void a(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().a(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void b(Fragment fragment, boolean z10) {
        this.f2256b.u0().f();
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().b(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void c(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().c(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void d(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().d(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void e(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().e(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void f(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().f(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void g(Fragment fragment, boolean z10) {
        this.f2256b.u0().f();
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().g(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void h(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().h(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void i(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().i(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void j(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().j(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void k(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().k(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void l(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().l(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void m(Fragment fragment, View view, Bundle bundle, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().m(fragment, view, bundle, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }

    public void n(Fragment fragment, boolean z10) {
        Fragment x02 = this.f2256b.x0();
        if (x02 != null) {
            x02.getParentFragmentManager().w0().n(fragment, true);
        }
        Iterator<a> it2 = this.f2255a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z10 || next.f2258b) {
                FragmentManager.l lVar = next.f2257a;
                throw null;
            }
        }
    }
}

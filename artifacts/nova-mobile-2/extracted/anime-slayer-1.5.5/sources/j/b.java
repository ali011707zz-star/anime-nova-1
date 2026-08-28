package j;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* compiled from: ActionMode.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: f, reason: collision with root package name */
    public Object f7987f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7988g;

    /* compiled from: ActionMode.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a(b bVar, MenuItem menuItem);

        boolean b(b bVar, Menu menu);

        void c(b bVar);

        boolean d(b bVar, Menu menu);
    }

    public abstract void a();

    public abstract View b();

    public abstract Menu c();

    public abstract MenuInflater d();

    public abstract CharSequence e();

    public Object f() {
        return this.f7987f;
    }

    public abstract CharSequence g();

    public boolean h() {
        return this.f7988g;
    }

    public abstract void i();

    public abstract boolean j();

    public abstract void k(View view);

    public abstract void l(int i10);

    public abstract void m(CharSequence charSequence);

    public void n(Object obj) {
        this.f7987f = obj;
    }

    public abstract void o(int i10);

    public abstract void p(CharSequence charSequence);

    public void q(boolean z10) {
        this.f7988g = z10;
    }
}

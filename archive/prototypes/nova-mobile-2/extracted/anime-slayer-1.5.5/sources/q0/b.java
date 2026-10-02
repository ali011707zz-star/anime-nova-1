package q0;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: ActionProvider.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: f, reason: collision with root package name */
    public final Context f12264f;

    /* renamed from: g, reason: collision with root package name */
    public a f12265g;

    /* renamed from: h, reason: collision with root package name */
    public InterfaceC0302b f12266h;

    /* compiled from: ActionProvider.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: ActionProvider.java */
    /* renamed from: q0.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0302b {
        void onActionProviderVisibilityChanged(boolean z10);
    }

    public b(Context context) {
        this.f12264f = context;
    }

    public Context a() {
        return this.f12264f;
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return true;
    }

    public abstract View d();

    public View e(MenuItem menuItem) {
        return d();
    }

    public boolean f() {
        return false;
    }

    public void g(SubMenu subMenu) {
    }

    public boolean h() {
        return false;
    }

    public void i() {
        this.f12266h = null;
        this.f12265g = null;
    }

    public void j(a aVar) {
        this.f12265g = aVar;
    }

    public void k(InterfaceC0302b interfaceC0302b) {
        if (this.f12266h != null && interfaceC0302b != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            sb2.append(getClass().getSimpleName());
            sb2.append(" instance while it is still in use somewhere else?");
        }
        this.f12266h = interfaceC0302b;
    }
}

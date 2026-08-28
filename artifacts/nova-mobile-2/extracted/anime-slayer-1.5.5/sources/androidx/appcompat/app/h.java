package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.a;
import androidx.appcompat.app.g;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.x0;
import java.util.ArrayList;
import q0.b0;

/* compiled from: ToolbarActionBar.java */
/* loaded from: classes.dex */
public class h extends androidx.appcompat.app.a {

    /* renamed from: a, reason: collision with root package name */
    public final c0 f892a;

    /* renamed from: b, reason: collision with root package name */
    public final Window.Callback f893b;

    /* renamed from: c, reason: collision with root package name */
    public final g.i f894c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f895d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f896e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f897f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList<a.b> f898g = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    public final Runnable f899h = new a();

    /* renamed from: i, reason: collision with root package name */
    public final Toolbar.f f900i;

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.B();
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public class b implements Toolbar.f {
        public b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return h.this.f893b.onMenuItemSelected(0, menuItem);
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class c implements i.a {

        /* renamed from: f, reason: collision with root package name */
        public boolean f903f;

        public c() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean a(androidx.appcompat.view.menu.e eVar) {
            h.this.f893b.onMenuOpened(108, eVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
            if (this.f903f) {
                return;
            }
            this.f903f = true;
            h.this.f892a.h();
            h.this.f893b.onPanelClosed(108, eVar);
            this.f903f = false;
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class d implements e.a {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
            if (h.this.f892a.b()) {
                h.this.f893b.onPanelClosed(108, eVar);
            } else if (h.this.f893b.onPreparePanel(0, null, eVar)) {
                h.this.f893b.onMenuOpened(108, eVar);
            }
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public class e implements g.i {
        public e() {
        }

        @Override // androidx.appcompat.app.g.i
        public boolean a(int i10) {
            if (i10 != 0) {
                return false;
            }
            h hVar = h.this;
            if (hVar.f895d) {
                return false;
            }
            hVar.f892a.c();
            h.this.f895d = true;
            return false;
        }

        @Override // androidx.appcompat.app.g.i
        public View onCreatePanelView(int i10) {
            if (i10 == 0) {
                return new View(h.this.f892a.getContext());
            }
            return null;
        }
    }

    public h(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        b bVar = new b();
        this.f900i = bVar;
        p0.i.g(toolbar);
        x0 x0Var = new x0(toolbar, false);
        this.f892a = x0Var;
        this.f893b = (Window.Callback) p0.i.g(callback);
        x0Var.setWindowCallback(callback);
        toolbar.setOnMenuItemClickListener(bVar);
        x0Var.setWindowTitle(charSequence);
        this.f894c = new e();
    }

    public final Menu A() {
        if (!this.f896e) {
            this.f892a.i(new c(), new d());
            this.f896e = true;
        }
        return this.f892a.q();
    }

    public void B() {
        Menu A = A();
        androidx.appcompat.view.menu.e eVar = A instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) A : null;
        if (eVar != null) {
            eVar.stopDispatchingItemsChanged();
        }
        try {
            A.clear();
            if (!this.f893b.onCreatePanelMenu(0, A) || !this.f893b.onPreparePanel(0, null, A)) {
                A.clear();
            }
        } finally {
            if (eVar != null) {
                eVar.startDispatchingItemsChanged();
            }
        }
    }

    public void C(int i10, int i11) {
        this.f892a.o((i10 & i11) | ((i11 ^ (-1)) & this.f892a.p()));
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        return this.f892a.e();
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        if (!this.f892a.n()) {
            return false;
        }
        this.f892a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f897f) {
            return;
        }
        this.f897f = z10;
        int size = this.f898g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f898g.get(i10).a(z10);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f892a.p();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        return this.f892a.getContext();
    }

    @Override // androidx.appcompat.app.a
    public boolean l() {
        this.f892a.l().removeCallbacks(this.f899h);
        b0.l0(this.f892a.l(), this.f899h);
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        super.m(configuration);
    }

    @Override // androidx.appcompat.app.a
    public void n() {
        this.f892a.l().removeCallbacks(this.f899h);
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i10, KeyEvent keyEvent) {
        Menu A = A();
        if (A == null) {
            return false;
        }
        A.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return A.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public boolean p(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            q();
        }
        return true;
    }

    @Override // androidx.appcompat.app.a
    public boolean q() {
        return this.f892a.f();
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        C(z10 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
        C(z10 ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public void u(int i10) {
        this.f892a.s(i10);
    }

    @Override // androidx.appcompat.app.a
    public void v(Drawable drawable) {
        this.f892a.x(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void w(boolean z10) {
    }

    @Override // androidx.appcompat.app.a
    public void x(CharSequence charSequence) {
        this.f892a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void y(CharSequence charSequence) {
        this.f892a.setWindowTitle(charSequence);
    }
}

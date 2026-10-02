package androidx.appcompat.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.e;

/* compiled from: PopupMenu.java */
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1393a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.view.menu.e f1394b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1395c;

    /* renamed from: d, reason: collision with root package name */
    public final androidx.appcompat.view.menu.h f1396d;

    /* renamed from: e, reason: collision with root package name */
    public d f1397e;

    /* renamed from: f, reason: collision with root package name */
    public c f1398f;

    /* compiled from: PopupMenu.java */
    /* loaded from: classes.dex */
    public class a implements e.a {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            d dVar = k0.this.f1397e;
            if (dVar != null) {
                return dVar.onMenuItemClick(menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
        }
    }

    /* compiled from: PopupMenu.java */
    /* loaded from: classes.dex */
    public class b implements PopupWindow.OnDismissListener {
        public b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            k0 k0Var = k0.this;
            c cVar = k0Var.f1398f;
            if (cVar != null) {
                cVar.a(k0Var);
            }
        }
    }

    /* compiled from: PopupMenu.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(k0 k0Var);
    }

    /* compiled from: PopupMenu.java */
    /* loaded from: classes.dex */
    public interface d {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public k0(Context context, View view) {
        this(context, view, 0);
    }

    public Menu a() {
        return this.f1394b;
    }

    public MenuInflater b() {
        return new j.g(this.f1393a);
    }

    public void c(d dVar) {
        this.f1397e = dVar;
    }

    public void d() {
        this.f1396d.k();
    }

    public k0(Context context, View view, int i10) {
        this(context, view, i10, d.a.J, 0);
    }

    public k0(Context context, View view, int i10, int i11, int i12) {
        this.f1393a = context;
        this.f1395c = view;
        androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
        this.f1394b = eVar;
        eVar.setCallback(new a());
        androidx.appcompat.view.menu.h hVar = new androidx.appcompat.view.menu.h(context, eVar, view, false, i11, i12);
        this.f1396d = hVar;
        hVar.h(i10);
        hVar.i(new b());
    }
}

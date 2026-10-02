package k;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* compiled from: BaseMenuWrapper.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9229a;

    /* renamed from: b, reason: collision with root package name */
    public s.g<j0.b, MenuItem> f9230b;

    /* renamed from: c, reason: collision with root package name */
    public s.g<j0.c, SubMenu> f9231c;

    public b(Context context) {
        this.f9229a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof j0.b)) {
            return menuItem;
        }
        j0.b bVar = (j0.b) menuItem;
        if (this.f9230b == null) {
            this.f9230b = new s.g<>();
        }
        MenuItem menuItem2 = this.f9230b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        c cVar = new c(this.f9229a, bVar);
        this.f9230b.put(bVar, cVar);
        return cVar;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof j0.c)) {
            return subMenu;
        }
        j0.c cVar = (j0.c) subMenu;
        if (this.f9231c == null) {
            this.f9231c = new s.g<>();
        }
        SubMenu subMenu2 = this.f9231c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        g gVar = new g(this.f9229a, cVar);
        this.f9231c.put(cVar, gVar);
        return gVar;
    }

    public final void e() {
        s.g<j0.b, MenuItem> gVar = this.f9230b;
        if (gVar != null) {
            gVar.clear();
        }
        s.g<j0.c, SubMenu> gVar2 = this.f9231c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    public final void f(int i10) {
        if (this.f9230b == null) {
            return;
        }
        int i11 = 0;
        while (i11 < this.f9230b.size()) {
            if (this.f9230b.i(i11).getGroupId() == i10) {
                this.f9230b.k(i11);
                i11--;
            }
            i11++;
        }
    }

    public final void g(int i10) {
        if (this.f9230b == null) {
            return;
        }
        for (int i11 = 0; i11 < this.f9230b.size(); i11++) {
            if (this.f9230b.i(i11).getItemId() == i10) {
                this.f9230b.k(i11);
                return;
            }
        }
    }
}

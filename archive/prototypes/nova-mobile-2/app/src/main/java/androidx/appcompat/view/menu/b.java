package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.i0;
import androidx.appcompat.widget.j0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.b0;

/* compiled from: CascadingMenuPopup.java */
/* loaded from: classes.dex */
public final class b extends k.d implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int G = d.g.f5288e;
    public boolean B;
    public i.a C;
    public ViewTreeObserver D;
    public PopupWindow.OnDismissListener E;
    public boolean F;

    /* renamed from: g, reason: collision with root package name */
    public final Context f983g;

    /* renamed from: h, reason: collision with root package name */
    public final int f984h;

    /* renamed from: i, reason: collision with root package name */
    public final int f985i;

    /* renamed from: j, reason: collision with root package name */
    public final int f986j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f987k;

    /* renamed from: l, reason: collision with root package name */
    public final Handler f988l;

    /* renamed from: t, reason: collision with root package name */
    public View f996t;

    /* renamed from: u, reason: collision with root package name */
    public View f997u;

    /* renamed from: w, reason: collision with root package name */
    public boolean f999w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1000x;

    /* renamed from: y, reason: collision with root package name */
    public int f1001y;

    /* renamed from: z, reason: collision with root package name */
    public int f1002z;

    /* renamed from: m, reason: collision with root package name */
    public final List<e> f989m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final List<d> f990n = new ArrayList();

    /* renamed from: o, reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f991o = new a();

    /* renamed from: p, reason: collision with root package name */
    public final View.OnAttachStateChangeListener f992p = new ViewOnAttachStateChangeListenerC0028b();

    /* renamed from: q, reason: collision with root package name */
    public final i0 f993q = new c();

    /* renamed from: r, reason: collision with root package name */
    public int f994r = 0;

    /* renamed from: s, reason: collision with root package name */
    public int f995s = 0;
    public boolean A = false;

    /* renamed from: v, reason: collision with root package name */
    public int f998v = u();

    /* compiled from: CascadingMenuPopup.java */
    /* loaded from: classes.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!b.this.a() || b.this.f990n.size() <= 0 || b.this.f990n.get(0).f1010a.z()) {
                return;
            }
            View view = b.this.f997u;
            if (view != null && view.isShown()) {
                Iterator<d> it2 = b.this.f990n.iterator();
                while (it2.hasNext()) {
                    it2.next().f1010a.show();
                }
                return;
            }
            b.this.dismiss();
        }
    }

    /* compiled from: CascadingMenuPopup.java */
    /* renamed from: androidx.appcompat.view.menu.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class ViewOnAttachStateChangeListenerC0028b implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0028b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = b.this.D;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    b.this.D = view.getViewTreeObserver();
                }
                b bVar = b.this;
                bVar.D.removeGlobalOnLayoutListener(bVar.f991o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    /* compiled from: CascadingMenuPopup.java */
    /* loaded from: classes.dex */
    public class c implements i0 {

        /* compiled from: CascadingMenuPopup.java */
        /* loaded from: classes.dex */
        public class a implements Runnable {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ d f1006f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ MenuItem f1007g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ e f1008h;

            public a(d dVar, MenuItem menuItem, e eVar) {
                this.f1006f = dVar;
                this.f1007g = menuItem;
                this.f1008h = eVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.f1006f;
                if (dVar != null) {
                    b.this.F = true;
                    dVar.f1011b.close(false);
                    b.this.F = false;
                }
                if (this.f1007g.isEnabled() && this.f1007g.hasSubMenu()) {
                    this.f1008h.performItemAction(this.f1007g, 4);
                }
            }
        }

        public c() {
        }

        @Override // androidx.appcompat.widget.i0
        public void c(e eVar, MenuItem menuItem) {
            b.this.f988l.removeCallbacksAndMessages(null);
            int size = b.this.f990n.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                } else if (eVar == b.this.f990n.get(i10).f1011b) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 == -1) {
                return;
            }
            int i11 = i10 + 1;
            b.this.f988l.postAtTime(new a(i11 < b.this.f990n.size() ? b.this.f990n.get(i11) : null, menuItem, eVar), eVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.widget.i0
        public void d(e eVar, MenuItem menuItem) {
            b.this.f988l.removeCallbacksAndMessages(eVar);
        }
    }

    /* compiled from: CascadingMenuPopup.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final j0 f1010a;

        /* renamed from: b, reason: collision with root package name */
        public final e f1011b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1012c;

        public d(j0 j0Var, e eVar, int i10) {
            this.f1010a = j0Var;
            this.f1011b = eVar;
            this.f1012c = i10;
        }

        public ListView a() {
            return this.f1010a.f();
        }
    }

    public b(Context context, View view, int i10, int i11, boolean z10) {
        this.f983g = context;
        this.f996t = view;
        this.f985i = i10;
        this.f986j = i11;
        this.f987k = z10;
        Resources resources = context.getResources();
        this.f984h = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.d.f5220d));
        this.f988l = new Handler();
    }

    @Override // k.f
    public boolean a() {
        return this.f990n.size() > 0 && this.f990n.get(0).f1010a.a();
    }

    @Override // k.d
    public void b(e eVar) {
        eVar.addMenuPresenter(this, this.f983g);
        if (a()) {
            w(eVar);
        } else {
            this.f989m.add(eVar);
        }
    }

    @Override // k.d
    public boolean c() {
        return false;
    }

    @Override // k.f
    public void dismiss() {
        int size = this.f990n.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.f990n.toArray(new d[size]);
            for (int i10 = size - 1; i10 >= 0; i10--) {
                d dVar = dVarArr[i10];
                if (dVar.f1010a.a()) {
                    dVar.f1010a.dismiss();
                }
            }
        }
    }

    @Override // k.f
    public ListView f() {
        if (this.f990n.isEmpty()) {
            return null;
        }
        return this.f990n.get(r0.size() - 1).a();
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean flagActionItems() {
        return false;
    }

    @Override // k.d
    public void g(View view) {
        if (this.f996t != view) {
            this.f996t = view;
            this.f995s = q0.e.b(this.f994r, b0.E(view));
        }
    }

    @Override // k.d
    public void i(boolean z10) {
        this.A = z10;
    }

    @Override // k.d
    public void j(int i10) {
        if (this.f994r != i10) {
            this.f994r = i10;
            this.f995s = q0.e.b(i10, b0.E(this.f996t));
        }
    }

    @Override // k.d
    public void k(int i10) {
        this.f999w = true;
        this.f1001y = i10;
    }

    @Override // k.d
    public void l(PopupWindow.OnDismissListener onDismissListener) {
        this.E = onDismissListener;
    }

    @Override // k.d
    public void m(boolean z10) {
        this.B = z10;
    }

    @Override // k.d
    public void n(int i10) {
        this.f1000x = true;
        this.f1002z = i10;
    }

    @Override // androidx.appcompat.view.menu.i
    public void onCloseMenu(e eVar, boolean z10) {
        int r10 = r(eVar);
        if (r10 < 0) {
            return;
        }
        int i10 = r10 + 1;
        if (i10 < this.f990n.size()) {
            this.f990n.get(i10).f1011b.close(false);
        }
        d remove = this.f990n.remove(r10);
        remove.f1011b.removeMenuPresenter(this);
        if (this.F) {
            remove.f1010a.Q(null);
            remove.f1010a.C(0);
        }
        remove.f1010a.dismiss();
        int size = this.f990n.size();
        if (size > 0) {
            this.f998v = this.f990n.get(size - 1).f1012c;
        } else {
            this.f998v = u();
        }
        if (size != 0) {
            if (z10) {
                this.f990n.get(0).f1011b.close(false);
                return;
            }
            return;
        }
        dismiss();
        i.a aVar = this.C;
        if (aVar != null) {
            aVar.onCloseMenu(eVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.D;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.D.removeGlobalOnLayoutListener(this.f991o);
            }
            this.D = null;
        }
        this.f997u.removeOnAttachStateChangeListener(this.f992p);
        this.E.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.f990n.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                dVar = null;
                break;
            }
            dVar = this.f990n.get(i10);
            if (!dVar.f1010a.a()) {
                break;
            } else {
                i10++;
            }
        }
        if (dVar != null) {
            dVar.f1011b.close(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.i
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean onSubMenuSelected(l lVar) {
        for (d dVar : this.f990n) {
            if (lVar == dVar.f1011b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        b(lVar);
        i.a aVar = this.C;
        if (aVar != null) {
            aVar.a(lVar);
        }
        return true;
    }

    public final j0 q() {
        j0 j0Var = new j0(this.f983g, null, this.f985i, this.f986j);
        j0Var.R(this.f993q);
        j0Var.J(this);
        j0Var.I(this);
        j0Var.B(this.f996t);
        j0Var.E(this.f995s);
        j0Var.H(true);
        j0Var.G(2);
        return j0Var;
    }

    public final int r(e eVar) {
        int size = this.f990n.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (eVar == this.f990n.get(i10).f1011b) {
                return i10;
            }
        }
        return -1;
    }

    public final MenuItem s(e eVar, e eVar2) {
        int size = eVar.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = eVar.getItem(i10);
            if (item.hasSubMenu() && eVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.i
    public void setCallback(i.a aVar) {
        this.C = aVar;
    }

    @Override // k.f
    public void show() {
        if (a()) {
            return;
        }
        Iterator<e> it2 = this.f989m.iterator();
        while (it2.hasNext()) {
            w(it2.next());
        }
        this.f989m.clear();
        View view = this.f996t;
        this.f997u = view;
        if (view != null) {
            boolean z10 = this.D == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.D = viewTreeObserver;
            if (z10) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f991o);
            }
            this.f997u.addOnAttachStateChangeListener(this.f992p);
        }
    }

    public final View t(d dVar, e eVar) {
        androidx.appcompat.view.menu.d dVar2;
        int i10;
        int firstVisiblePosition;
        MenuItem s10 = s(dVar.f1011b, eVar);
        if (s10 == null) {
            return null;
        }
        ListView a10 = dVar.a();
        ListAdapter adapter = a10.getAdapter();
        int i11 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i10 = headerViewListAdapter.getHeadersCount();
            dVar2 = (androidx.appcompat.view.menu.d) headerViewListAdapter.getWrappedAdapter();
        } else {
            dVar2 = (androidx.appcompat.view.menu.d) adapter;
            i10 = 0;
        }
        int count = dVar2.getCount();
        while (true) {
            if (i11 >= count) {
                i11 = -1;
                break;
            }
            if (s10 == dVar2.getItem(i11)) {
                break;
            }
            i11++;
        }
        if (i11 != -1 && (firstVisiblePosition = (i11 + i10) - a10.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a10.getChildCount()) {
            return a10.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    public final int u() {
        return b0.E(this.f996t) == 1 ? 0 : 1;
    }

    @Override // androidx.appcompat.view.menu.i
    public void updateMenuView(boolean z10) {
        Iterator<d> it2 = this.f990n.iterator();
        while (it2.hasNext()) {
            k.d.p(it2.next().a().getAdapter()).notifyDataSetChanged();
        }
    }

    public final int v(int i10) {
        List<d> list = this.f990n;
        ListView a10 = list.get(list.size() - 1).a();
        int[] iArr = new int[2];
        a10.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.f997u.getWindowVisibleDisplayFrame(rect);
        return this.f998v == 1 ? (iArr[0] + a10.getWidth()) + i10 > rect.right ? 0 : 1 : iArr[0] - i10 < 0 ? 1 : 0;
    }

    public final void w(e eVar) {
        d dVar;
        View view;
        int i10;
        int i11;
        int i12;
        LayoutInflater from = LayoutInflater.from(this.f983g);
        androidx.appcompat.view.menu.d dVar2 = new androidx.appcompat.view.menu.d(eVar, from, this.f987k, G);
        if (!a() && this.A) {
            dVar2.d(true);
        } else if (a()) {
            dVar2.d(k.d.o(eVar));
        }
        int e10 = k.d.e(dVar2, null, this.f983g, this.f984h);
        j0 q10 = q();
        q10.n(dVar2);
        q10.D(e10);
        q10.E(this.f995s);
        if (this.f990n.size() > 0) {
            List<d> list = this.f990n;
            dVar = list.get(list.size() - 1);
            view = t(dVar, eVar);
        } else {
            dVar = null;
            view = null;
        }
        if (view != null) {
            q10.S(false);
            q10.P(null);
            int v10 = v(e10);
            boolean z10 = v10 == 1;
            this.f998v = v10;
            if (Build.VERSION.SDK_INT >= 26) {
                q10.B(view);
                i11 = 0;
                i10 = 0;
            } else {
                int[] iArr = new int[2];
                this.f996t.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                if ((this.f995s & 7) == 5) {
                    iArr[0] = iArr[0] + this.f996t.getWidth();
                    iArr2[0] = iArr2[0] + view.getWidth();
                }
                i10 = iArr2[0] - iArr[0];
                i11 = iArr2[1] - iArr[1];
            }
            if ((this.f995s & 5) == 5) {
                if (!z10) {
                    e10 = view.getWidth();
                    i12 = i10 - e10;
                }
                i12 = i10 + e10;
            } else {
                if (z10) {
                    e10 = view.getWidth();
                    i12 = i10 + e10;
                }
                i12 = i10 - e10;
            }
            q10.j(i12);
            q10.K(true);
            q10.h(i11);
        } else {
            if (this.f999w) {
                q10.j(this.f1001y);
            }
            if (this.f1000x) {
                q10.h(this.f1002z);
            }
            q10.F(d());
        }
        this.f990n.add(new d(q10, eVar, this.f998v));
        q10.show();
        ListView f10 = q10.f();
        f10.setOnKeyListener(this);
        if (dVar == null && this.B && eVar.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(d.g.f5295l, (ViewGroup) f10, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(eVar.getHeaderTitle());
            f10.addHeaderView(frameLayout, null, false);
            q10.show();
        }
    }
}

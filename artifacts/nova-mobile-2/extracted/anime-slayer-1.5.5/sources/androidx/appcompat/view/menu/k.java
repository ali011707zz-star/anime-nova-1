package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.j0;
import q0.b0;

/* compiled from: StandardMenuPopup.java */
/* loaded from: classes.dex */
public final class k extends k.d implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public static final int A = d.g.f5296m;

    /* renamed from: g, reason: collision with root package name */
    public final Context f1075g;

    /* renamed from: h, reason: collision with root package name */
    public final e f1076h;

    /* renamed from: i, reason: collision with root package name */
    public final d f1077i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f1078j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1079k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1080l;

    /* renamed from: m, reason: collision with root package name */
    public final int f1081m;

    /* renamed from: n, reason: collision with root package name */
    public final j0 f1082n;

    /* renamed from: q, reason: collision with root package name */
    public PopupWindow.OnDismissListener f1085q;

    /* renamed from: r, reason: collision with root package name */
    public View f1086r;

    /* renamed from: s, reason: collision with root package name */
    public View f1087s;

    /* renamed from: t, reason: collision with root package name */
    public i.a f1088t;

    /* renamed from: u, reason: collision with root package name */
    public ViewTreeObserver f1089u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f1090v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1091w;

    /* renamed from: x, reason: collision with root package name */
    public int f1092x;

    /* renamed from: z, reason: collision with root package name */
    public boolean f1094z;

    /* renamed from: o, reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f1083o = new a();

    /* renamed from: p, reason: collision with root package name */
    public final View.OnAttachStateChangeListener f1084p = new b();

    /* renamed from: y, reason: collision with root package name */
    public int f1093y = 0;

    /* compiled from: StandardMenuPopup.java */
    /* loaded from: classes.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!k.this.a() || k.this.f1082n.z()) {
                return;
            }
            View view = k.this.f1087s;
            if (view != null && view.isShown()) {
                k.this.f1082n.show();
            } else {
                k.this.dismiss();
            }
        }
    }

    /* compiled from: StandardMenuPopup.java */
    /* loaded from: classes.dex */
    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = k.this.f1089u;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    k.this.f1089u = view.getViewTreeObserver();
                }
                k kVar = k.this;
                kVar.f1089u.removeGlobalOnLayoutListener(kVar.f1083o);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public k(Context context, e eVar, View view, int i10, int i11, boolean z10) {
        this.f1075g = context;
        this.f1076h = eVar;
        this.f1078j = z10;
        this.f1077i = new d(eVar, LayoutInflater.from(context), z10, A);
        this.f1080l = i10;
        this.f1081m = i11;
        Resources resources = context.getResources();
        this.f1079k = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(d.d.f5220d));
        this.f1086r = view;
        this.f1082n = new j0(context, null, i10, i11);
        eVar.addMenuPresenter(this, context);
    }

    @Override // k.f
    public boolean a() {
        return !this.f1090v && this.f1082n.a();
    }

    @Override // k.d
    public void b(e eVar) {
    }

    @Override // k.f
    public void dismiss() {
        if (a()) {
            this.f1082n.dismiss();
        }
    }

    @Override // k.f
    public ListView f() {
        return this.f1082n.f();
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean flagActionItems() {
        return false;
    }

    @Override // k.d
    public void g(View view) {
        this.f1086r = view;
    }

    @Override // k.d
    public void i(boolean z10) {
        this.f1077i.d(z10);
    }

    @Override // k.d
    public void j(int i10) {
        this.f1093y = i10;
    }

    @Override // k.d
    public void k(int i10) {
        this.f1082n.j(i10);
    }

    @Override // k.d
    public void l(PopupWindow.OnDismissListener onDismissListener) {
        this.f1085q = onDismissListener;
    }

    @Override // k.d
    public void m(boolean z10) {
        this.f1094z = z10;
    }

    @Override // k.d
    public void n(int i10) {
        this.f1082n.h(i10);
    }

    @Override // androidx.appcompat.view.menu.i
    public void onCloseMenu(e eVar, boolean z10) {
        if (eVar != this.f1076h) {
            return;
        }
        dismiss();
        i.a aVar = this.f1088t;
        if (aVar != null) {
            aVar.onCloseMenu(eVar, z10);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f1090v = true;
        this.f1076h.close();
        ViewTreeObserver viewTreeObserver = this.f1089u;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1089u = this.f1087s.getViewTreeObserver();
            }
            this.f1089u.removeGlobalOnLayoutListener(this.f1083o);
            this.f1089u = null;
        }
        this.f1087s.removeOnAttachStateChangeListener(this.f1084p);
        PopupWindow.OnDismissListener onDismissListener = this.f1085q;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        if (lVar.hasVisibleItems()) {
            h hVar = new h(this.f1075g, lVar, this.f1087s, this.f1078j, this.f1080l, this.f1081m);
            hVar.j(this.f1088t);
            hVar.g(k.d.o(lVar));
            hVar.i(this.f1085q);
            this.f1085q = null;
            this.f1076h.close(false);
            int b10 = this.f1082n.b();
            int l10 = this.f1082n.l();
            if ((Gravity.getAbsoluteGravity(this.f1093y, b0.E(this.f1086r)) & 7) == 5) {
                b10 += this.f1086r.getWidth();
            }
            if (hVar.n(b10, l10)) {
                i.a aVar = this.f1088t;
                if (aVar == null) {
                    return true;
                }
                aVar.a(lVar);
                return true;
            }
        }
        return false;
    }

    public final boolean q() {
        View view;
        if (a()) {
            return true;
        }
        if (this.f1090v || (view = this.f1086r) == null) {
            return false;
        }
        this.f1087s = view;
        this.f1082n.I(this);
        this.f1082n.J(this);
        this.f1082n.H(true);
        View view2 = this.f1087s;
        boolean z10 = this.f1089u == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f1089u = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f1083o);
        }
        view2.addOnAttachStateChangeListener(this.f1084p);
        this.f1082n.B(view2);
        this.f1082n.E(this.f1093y);
        if (!this.f1091w) {
            this.f1092x = k.d.e(this.f1077i, null, this.f1075g, this.f1079k);
            this.f1091w = true;
        }
        this.f1082n.D(this.f1092x);
        this.f1082n.G(2);
        this.f1082n.F(d());
        this.f1082n.show();
        ListView f10 = this.f1082n.f();
        f10.setOnKeyListener(this);
        if (this.f1094z && this.f1076h.getHeaderTitle() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f1075g).inflate(d.g.f5295l, (ViewGroup) f10, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f1076h.getHeaderTitle());
            }
            frameLayout.setEnabled(false);
            f10.addHeaderView(frameLayout, null, false);
        }
        this.f1082n.n(this.f1077i);
        this.f1082n.show();
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public void setCallback(i.a aVar) {
        this.f1088t = aVar;
    }

    @Override // k.f
    public void show() {
        if (!q()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public void updateMenuView(boolean z10) {
        this.f1091w = false;
        d dVar = this.f1077i;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
    }
}

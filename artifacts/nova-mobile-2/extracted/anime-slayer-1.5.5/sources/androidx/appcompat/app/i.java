package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.o0;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d.j;
import j.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import q0.b0;
import q0.g0;
import q0.h0;
import q0.i0;
import q0.j0;

/* compiled from: WindowDecorActionBar.java */
/* loaded from: classes.dex */
public class i extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    public static final Interpolator E = new AccelerateInterpolator();
    public static final Interpolator F = new DecelerateInterpolator();
    public boolean A;

    /* renamed from: a, reason: collision with root package name */
    public Context f907a;

    /* renamed from: b, reason: collision with root package name */
    public Context f908b;

    /* renamed from: c, reason: collision with root package name */
    public Activity f909c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarOverlayLayout f910d;

    /* renamed from: e, reason: collision with root package name */
    public ActionBarContainer f911e;

    /* renamed from: f, reason: collision with root package name */
    public c0 f912f;

    /* renamed from: g, reason: collision with root package name */
    public ActionBarContextView f913g;

    /* renamed from: h, reason: collision with root package name */
    public View f914h;

    /* renamed from: i, reason: collision with root package name */
    public o0 f915i;

    /* renamed from: l, reason: collision with root package name */
    public boolean f918l;

    /* renamed from: m, reason: collision with root package name */
    public d f919m;

    /* renamed from: n, reason: collision with root package name */
    public j.b f920n;

    /* renamed from: o, reason: collision with root package name */
    public b.a f921o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f922p;

    /* renamed from: r, reason: collision with root package name */
    public boolean f924r;

    /* renamed from: u, reason: collision with root package name */
    public boolean f927u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f928v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f929w;

    /* renamed from: y, reason: collision with root package name */
    public j.h f931y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f932z;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList<Object> f916j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    public int f917k = -1;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList<a.b> f923q = new ArrayList<>();

    /* renamed from: s, reason: collision with root package name */
    public int f925s = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f926t = true;

    /* renamed from: x, reason: collision with root package name */
    public boolean f930x = true;
    public final h0 B = new a();
    public final h0 C = new b();
    public final j0 D = new c();

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    public class a extends i0 {
        public a() {
        }

        @Override // q0.h0
        public void b(View view) {
            View view2;
            i iVar = i.this;
            if (iVar.f926t && (view2 = iVar.f914h) != null) {
                view2.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
                i.this.f911e.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            i.this.f911e.setVisibility(8);
            i.this.f911e.setTransitioning(false);
            i iVar2 = i.this;
            iVar2.f931y = null;
            iVar2.C();
            ActionBarOverlayLayout actionBarOverlayLayout = i.this.f910d;
            if (actionBarOverlayLayout != null) {
                b0.q0(actionBarOverlayLayout);
            }
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    public class b extends i0 {
        public b() {
        }

        @Override // q0.h0
        public void b(View view) {
            i iVar = i.this;
            iVar.f931y = null;
            iVar.f911e.requestLayout();
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    public class c implements j0 {
        public c() {
        }

        @Override // q0.j0
        public void a(View view) {
            ((View) i.this.f911e.getParent()).invalidate();
        }
    }

    /* compiled from: WindowDecorActionBar.java */
    /* loaded from: classes.dex */
    public class d extends j.b implements e.a {

        /* renamed from: h, reason: collision with root package name */
        public final Context f936h;

        /* renamed from: i, reason: collision with root package name */
        public final androidx.appcompat.view.menu.e f937i;

        /* renamed from: j, reason: collision with root package name */
        public b.a f938j;

        /* renamed from: k, reason: collision with root package name */
        public WeakReference<View> f939k;

        public d(Context context, b.a aVar) {
            this.f936h = context;
            this.f938j = aVar;
            androidx.appcompat.view.menu.e defaultShowAsAction = new androidx.appcompat.view.menu.e(context).setDefaultShowAsAction(1);
            this.f937i = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        @Override // j.b
        public void a() {
            i iVar = i.this;
            if (iVar.f919m != this) {
                return;
            }
            if (!i.B(iVar.f927u, iVar.f928v, false)) {
                i iVar2 = i.this;
                iVar2.f920n = this;
                iVar2.f921o = this.f938j;
            } else {
                this.f938j.c(this);
            }
            this.f938j = null;
            i.this.A(false);
            i.this.f913g.g();
            i iVar3 = i.this;
            iVar3.f910d.setHideOnContentScrollEnabled(iVar3.A);
            i.this.f919m = null;
        }

        @Override // j.b
        public View b() {
            WeakReference<View> weakReference = this.f939k;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // j.b
        public Menu c() {
            return this.f937i;
        }

        @Override // j.b
        public MenuInflater d() {
            return new j.g(this.f936h);
        }

        @Override // j.b
        public CharSequence e() {
            return i.this.f913g.getSubtitle();
        }

        @Override // j.b
        public CharSequence g() {
            return i.this.f913g.getTitle();
        }

        @Override // j.b
        public void i() {
            if (i.this.f919m != this) {
                return;
            }
            this.f937i.stopDispatchingItemsChanged();
            try {
                this.f938j.d(this, this.f937i);
            } finally {
                this.f937i.startDispatchingItemsChanged();
            }
        }

        @Override // j.b
        public boolean j() {
            return i.this.f913g.j();
        }

        @Override // j.b
        public void k(View view) {
            i.this.f913g.setCustomView(view);
            this.f939k = new WeakReference<>(view);
        }

        @Override // j.b
        public void l(int i10) {
            m(i.this.f907a.getResources().getString(i10));
        }

        @Override // j.b
        public void m(CharSequence charSequence) {
            i.this.f913g.setSubtitle(charSequence);
        }

        @Override // j.b
        public void o(int i10) {
            p(i.this.f907a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean onMenuItemSelected(androidx.appcompat.view.menu.e eVar, MenuItem menuItem) {
            b.a aVar = this.f938j;
            if (aVar != null) {
                return aVar.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void onMenuModeChange(androidx.appcompat.view.menu.e eVar) {
            if (this.f938j == null) {
                return;
            }
            i();
            i.this.f913g.l();
        }

        @Override // j.b
        public void p(CharSequence charSequence) {
            i.this.f913g.setTitle(charSequence);
        }

        @Override // j.b
        public void q(boolean z10) {
            super.q(z10);
            i.this.f913g.setTitleOptional(z10);
        }

        public boolean r() {
            this.f937i.stopDispatchingItemsChanged();
            try {
                return this.f938j.b(this, this.f937i);
            } finally {
                this.f937i.startDispatchingItemsChanged();
            }
        }
    }

    public i(Activity activity, boolean z10) {
        this.f909c = activity;
        View decorView = activity.getWindow().getDecorView();
        I(decorView);
        if (z10) {
            return;
        }
        this.f914h = decorView.findViewById(R.id.content);
    }

    public static boolean B(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    public void A(boolean z10) {
        g0 u10;
        g0 f10;
        if (z10) {
            P();
        } else {
            H();
        }
        if (!O()) {
            if (z10) {
                this.f912f.j(4);
                this.f913g.setVisibility(0);
                return;
            } else {
                this.f912f.j(0);
                this.f913g.setVisibility(8);
                return;
            }
        }
        if (z10) {
            f10 = this.f912f.u(4, 100L);
            u10 = this.f913g.f(0, 200L);
        } else {
            u10 = this.f912f.u(0, 200L);
            f10 = this.f913g.f(8, 100L);
        }
        j.h hVar = new j.h();
        hVar.d(f10, u10);
        hVar.h();
    }

    public void C() {
        b.a aVar = this.f921o;
        if (aVar != null) {
            aVar.c(this.f920n);
            this.f920n = null;
            this.f921o = null;
        }
    }

    public void D(boolean z10) {
        View view;
        j.h hVar = this.f931y;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f925s == 0 && (this.f932z || z10)) {
            this.f911e.setAlpha(1.0f);
            this.f911e.setTransitioning(true);
            j.h hVar2 = new j.h();
            float f10 = -this.f911e.getHeight();
            if (z10) {
                this.f911e.getLocationInWindow(new int[]{0, 0});
                f10 -= r5[1];
            }
            g0 k10 = b0.e(this.f911e).k(f10);
            k10.i(this.D);
            hVar2.c(k10);
            if (this.f926t && (view = this.f914h) != null) {
                hVar2.c(b0.e(view).k(f10));
            }
            hVar2.f(E);
            hVar2.e(250L);
            hVar2.g(this.B);
            this.f931y = hVar2;
            hVar2.h();
            return;
        }
        this.B.b(null);
    }

    public void E(boolean z10) {
        View view;
        View view2;
        j.h hVar = this.f931y;
        if (hVar != null) {
            hVar.a();
        }
        this.f911e.setVisibility(0);
        if (this.f925s == 0 && (this.f932z || z10)) {
            this.f911e.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            float f10 = -this.f911e.getHeight();
            if (z10) {
                this.f911e.getLocationInWindow(new int[]{0, 0});
                f10 -= r5[1];
            }
            this.f911e.setTranslationY(f10);
            j.h hVar2 = new j.h();
            g0 k10 = b0.e(this.f911e).k(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            k10.i(this.D);
            hVar2.c(k10);
            if (this.f926t && (view2 = this.f914h) != null) {
                view2.setTranslationY(f10);
                hVar2.c(b0.e(this.f914h).k(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD));
            }
            hVar2.f(F);
            hVar2.e(250L);
            hVar2.g(this.C);
            this.f931y = hVar2;
            hVar2.h();
        } else {
            this.f911e.setAlpha(1.0f);
            this.f911e.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            if (this.f926t && (view = this.f914h) != null) {
                view.setTranslationY(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
            }
            this.C.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f910d;
        if (actionBarOverlayLayout != null) {
            b0.q0(actionBarOverlayLayout);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final c0 F(View view) {
        if (view instanceof c0) {
            return (c0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Can't make a decor toolbar out of ");
        sb2.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb2.toString());
    }

    public int G() {
        return this.f912f.t();
    }

    public final void H() {
        if (this.f929w) {
            this.f929w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f910d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            Q(false);
        }
    }

    public final void I(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(d.f.f5273p);
        this.f910d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f912f = F(view.findViewById(d.f.f5258a));
        this.f913g = (ActionBarContextView) view.findViewById(d.f.f5263f);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(d.f.f5260c);
        this.f911e = actionBarContainer;
        c0 c0Var = this.f912f;
        if (c0Var != null && this.f913g != null && actionBarContainer != null) {
            this.f907a = c0Var.getContext();
            boolean z10 = (this.f912f.p() & 4) != 0;
            if (z10) {
                this.f918l = true;
            }
            j.a b10 = j.a.b(this.f907a);
            N(b10.a() || z10);
            L(b10.g());
            TypedArray obtainStyledAttributes = this.f907a.obtainStyledAttributes(null, j.f5324a, d.a.f5184c, 0);
            if (obtainStyledAttributes.getBoolean(j.f5376k, false)) {
                M(true);
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(j.f5366i, 0);
            if (dimensionPixelSize != 0) {
                K(dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }

    public void J(int i10, int i11) {
        int p10 = this.f912f.p();
        if ((i11 & 4) != 0) {
            this.f918l = true;
        }
        this.f912f.o((i10 & i11) | ((i11 ^ (-1)) & p10));
    }

    public void K(float f10) {
        b0.B0(this.f911e, f10);
    }

    public final void L(boolean z10) {
        this.f924r = z10;
        if (!z10) {
            this.f912f.k(null);
            this.f911e.setTabContainer(this.f915i);
        } else {
            this.f911e.setTabContainer(null);
            this.f912f.k(this.f915i);
        }
        boolean z11 = G() == 2;
        o0 o0Var = this.f915i;
        if (o0Var != null) {
            if (z11) {
                o0Var.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f910d;
                if (actionBarOverlayLayout != null) {
                    b0.q0(actionBarOverlayLayout);
                }
            } else {
                o0Var.setVisibility(8);
            }
        }
        this.f912f.y(!this.f924r && z11);
        this.f910d.setHasNonEmbeddedTabs(!this.f924r && z11);
    }

    public void M(boolean z10) {
        if (z10 && !this.f910d.q()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.A = z10;
        this.f910d.setHideOnContentScrollEnabled(z10);
    }

    public void N(boolean z10) {
        this.f912f.m(z10);
    }

    public final boolean O() {
        return b0.X(this.f911e);
    }

    public final void P() {
        if (this.f929w) {
            return;
        }
        this.f929w = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f910d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        Q(false);
    }

    public final void Q(boolean z10) {
        if (B(this.f927u, this.f928v, this.f929w)) {
            if (this.f930x) {
                return;
            }
            this.f930x = true;
            E(z10);
            return;
        }
        if (this.f930x) {
            this.f930x = false;
            D(z10);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.f928v) {
            this.f928v = false;
            Q(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
        j.h hVar = this.f931y;
        if (hVar != null) {
            hVar.a();
            this.f931y = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c(int i10) {
        this.f925s = i10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e(boolean z10) {
        this.f926t = z10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f() {
        if (this.f928v) {
            return;
        }
        this.f928v = true;
        Q(true);
    }

    @Override // androidx.appcompat.app.a
    public boolean h() {
        c0 c0Var = this.f912f;
        if (c0Var == null || !c0Var.n()) {
            return false;
        }
        this.f912f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void i(boolean z10) {
        if (z10 == this.f922p) {
            return;
        }
        this.f922p = z10;
        int size = this.f923q.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f923q.get(i10).a(z10);
        }
    }

    @Override // androidx.appcompat.app.a
    public int j() {
        return this.f912f.p();
    }

    @Override // androidx.appcompat.app.a
    public Context k() {
        if (this.f908b == null) {
            TypedValue typedValue = new TypedValue();
            this.f907a.getTheme().resolveAttribute(d.a.f5188g, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f908b = new ContextThemeWrapper(this.f907a, i10);
            } else {
                this.f908b = this.f907a;
            }
        }
        return this.f908b;
    }

    @Override // androidx.appcompat.app.a
    public void m(Configuration configuration) {
        L(j.a.b(this.f907a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean o(int i10, KeyEvent keyEvent) {
        Menu c10;
        d dVar = this.f919m;
        if (dVar == null || (c10 = dVar.c()) == null) {
            return false;
        }
        c10.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return c10.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z10) {
        if (this.f918l) {
            return;
        }
        s(z10);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        J(z10 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void t(boolean z10) {
        J(z10 ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.a
    public void u(int i10) {
        this.f912f.s(i10);
    }

    @Override // androidx.appcompat.app.a
    public void v(Drawable drawable) {
        this.f912f.x(drawable);
    }

    @Override // androidx.appcompat.app.a
    public void w(boolean z10) {
        j.h hVar;
        this.f932z = z10;
        if (z10 || (hVar = this.f931y) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void x(CharSequence charSequence) {
        this.f912f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void y(CharSequence charSequence) {
        this.f912f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public j.b z(b.a aVar) {
        d dVar = this.f919m;
        if (dVar != null) {
            dVar.a();
        }
        this.f910d.setHideOnContentScrollEnabled(false);
        this.f913g.k();
        d dVar2 = new d(this.f913g.getContext(), aVar);
        if (!dVar2.r()) {
            return null;
        }
        this.f919m = dVar2;
        dVar2.i();
        this.f913g.h(dVar2);
        A(true);
        return dVar2;
    }

    public i(Dialog dialog) {
        I(dialog.getWindow().getDecorView());
    }
}

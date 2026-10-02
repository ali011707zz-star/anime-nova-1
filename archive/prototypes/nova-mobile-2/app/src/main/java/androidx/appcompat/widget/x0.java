package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: ToolbarWidgetWrapper.java */
/* loaded from: classes.dex */
public class x0 implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public Toolbar f1528a;

    /* renamed from: b, reason: collision with root package name */
    public int f1529b;

    /* renamed from: c, reason: collision with root package name */
    public View f1530c;

    /* renamed from: d, reason: collision with root package name */
    public View f1531d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f1532e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f1533f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f1534g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1535h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f1536i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f1537j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f1538k;

    /* renamed from: l, reason: collision with root package name */
    public Window.Callback f1539l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1540m;

    /* renamed from: n, reason: collision with root package name */
    public c f1541n;

    /* renamed from: o, reason: collision with root package name */
    public int f1542o;

    /* renamed from: p, reason: collision with root package name */
    public int f1543p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f1544q;

    /* compiled from: ToolbarWidgetWrapper.java */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final k.a f1545f;

        public a() {
            this.f1545f = new k.a(x0.this.f1528a.getContext(), 0, R.id.home, 0, 0, x0.this.f1536i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            x0 x0Var = x0.this;
            Window.Callback callback = x0Var.f1539l;
            if (callback == null || !x0Var.f1540m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1545f);
        }
    }

    /* compiled from: ToolbarWidgetWrapper.java */
    /* loaded from: classes.dex */
    public class b extends q0.i0 {

        /* renamed from: a, reason: collision with root package name */
        public boolean f1547a = false;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1548b;

        public b(int i10) {
            this.f1548b = i10;
        }

        @Override // q0.i0, q0.h0
        public void a(View view) {
            this.f1547a = true;
        }

        @Override // q0.h0
        public void b(View view) {
            if (this.f1547a) {
                return;
            }
            x0.this.f1528a.setVisibility(this.f1548b);
        }

        @Override // q0.i0, q0.h0
        public void c(View view) {
            x0.this.f1528a.setVisibility(0);
        }
    }

    public x0(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, d.h.f5304a, d.e.f5245n);
    }

    public void A(View view) {
        View view2 = this.f1531d;
        if (view2 != null && (this.f1529b & 16) != 0) {
            this.f1528a.removeView(view2);
        }
        this.f1531d = view;
        if (view == null || (this.f1529b & 16) == 0) {
            return;
        }
        this.f1528a.addView(view);
    }

    public void B(int i10) {
        if (i10 == this.f1543p) {
            return;
        }
        this.f1543p = i10;
        if (TextUtils.isEmpty(this.f1528a.getNavigationContentDescription())) {
            s(this.f1543p);
        }
    }

    public void C(Drawable drawable) {
        this.f1533f = drawable;
        I();
    }

    public void D(CharSequence charSequence) {
        this.f1538k = charSequence;
        G();
    }

    public void E(CharSequence charSequence) {
        this.f1537j = charSequence;
        if ((this.f1529b & 8) != 0) {
            this.f1528a.setSubtitle(charSequence);
        }
    }

    public final void F(CharSequence charSequence) {
        this.f1536i = charSequence;
        if ((this.f1529b & 8) != 0) {
            this.f1528a.setTitle(charSequence);
            if (this.f1535h) {
                q0.b0.w0(this.f1528a.getRootView(), charSequence);
            }
        }
    }

    public final void G() {
        if ((this.f1529b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1538k)) {
                this.f1528a.setNavigationContentDescription(this.f1543p);
            } else {
                this.f1528a.setNavigationContentDescription(this.f1538k);
            }
        }
    }

    public final void H() {
        if ((this.f1529b & 4) != 0) {
            Toolbar toolbar = this.f1528a;
            Drawable drawable = this.f1534g;
            if (drawable == null) {
                drawable = this.f1544q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        }
        this.f1528a.setNavigationIcon((Drawable) null);
    }

    public final void I() {
        Drawable drawable;
        int i10 = this.f1529b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) != 0) {
            drawable = this.f1533f;
            if (drawable == null) {
                drawable = this.f1532e;
            }
        } else {
            drawable = this.f1532e;
        }
        this.f1528a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.c0
    public void a(Menu menu, i.a aVar) {
        if (this.f1541n == null) {
            c cVar = new c(this.f1528a.getContext());
            this.f1541n = cVar;
            cVar.h(d.f.f5264g);
        }
        this.f1541n.setCallback(aVar);
        this.f1528a.setMenu((androidx.appcompat.view.menu.e) menu, this.f1541n);
    }

    @Override // androidx.appcompat.widget.c0
    public boolean b() {
        return this.f1528a.isOverflowMenuShowing();
    }

    @Override // androidx.appcompat.widget.c0
    public void c() {
        this.f1540m = true;
    }

    @Override // androidx.appcompat.widget.c0
    public void collapseActionView() {
        this.f1528a.collapseActionView();
    }

    @Override // androidx.appcompat.widget.c0
    public boolean d() {
        return this.f1528a.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.c0
    public boolean e() {
        return this.f1528a.hideOverflowMenu();
    }

    @Override // androidx.appcompat.widget.c0
    public boolean f() {
        return this.f1528a.showOverflowMenu();
    }

    @Override // androidx.appcompat.widget.c0
    public boolean g() {
        return this.f1528a.canShowOverflowMenu();
    }

    @Override // androidx.appcompat.widget.c0
    public Context getContext() {
        return this.f1528a.getContext();
    }

    @Override // androidx.appcompat.widget.c0
    public CharSequence getTitle() {
        return this.f1528a.getTitle();
    }

    @Override // androidx.appcompat.widget.c0
    public void h() {
        this.f1528a.dismissPopupMenus();
    }

    @Override // androidx.appcompat.widget.c0
    public void i(i.a aVar, e.a aVar2) {
        this.f1528a.setMenuCallbacks(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.c0
    public void j(int i10) {
        this.f1528a.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.c0
    public void k(o0 o0Var) {
        View view = this.f1530c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1528a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1530c);
            }
        }
        this.f1530c = o0Var;
        if (o0Var == null || this.f1542o != 2) {
            return;
        }
        this.f1528a.addView(o0Var, 0);
        Toolbar.e eVar = (Toolbar.e) this.f1530c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) eVar).width = -2;
        ((ViewGroup.MarginLayoutParams) eVar).height = -2;
        eVar.f792a = BadgeDrawable.BOTTOM_START;
        o0Var.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.c0
    public ViewGroup l() {
        return this.f1528a;
    }

    @Override // androidx.appcompat.widget.c0
    public void m(boolean z10) {
    }

    @Override // androidx.appcompat.widget.c0
    public boolean n() {
        return this.f1528a.hasExpandedActionView();
    }

    @Override // androidx.appcompat.widget.c0
    public void o(int i10) {
        View view;
        int i11 = this.f1529b ^ i10;
        this.f1529b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    G();
                }
                H();
            }
            if ((i11 & 3) != 0) {
                I();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f1528a.setTitle(this.f1536i);
                    this.f1528a.setSubtitle(this.f1537j);
                } else {
                    this.f1528a.setTitle((CharSequence) null);
                    this.f1528a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f1531d) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.f1528a.addView(view);
            } else {
                this.f1528a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.c0
    public int p() {
        return this.f1529b;
    }

    @Override // androidx.appcompat.widget.c0
    public Menu q() {
        return this.f1528a.getMenu();
    }

    @Override // androidx.appcompat.widget.c0
    public void r(int i10) {
        C(i10 != 0 ? f.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.c0
    public void s(int i10) {
        D(i10 == 0 ? null : getContext().getString(i10));
    }

    @Override // androidx.appcompat.widget.c0
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? f.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.c0
    public void setTitle(CharSequence charSequence) {
        this.f1535h = true;
        F(charSequence);
    }

    @Override // androidx.appcompat.widget.c0
    public void setWindowCallback(Window.Callback callback) {
        this.f1539l = callback;
    }

    @Override // androidx.appcompat.widget.c0
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1535h) {
            return;
        }
        F(charSequence);
    }

    @Override // androidx.appcompat.widget.c0
    public int t() {
        return this.f1542o;
    }

    @Override // androidx.appcompat.widget.c0
    public q0.g0 u(int i10, long j10) {
        return q0.b0.e(this.f1528a).a(i10 == 0 ? 1.0f : StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD).d(j10).f(new b(i10));
    }

    @Override // androidx.appcompat.widget.c0
    public void v() {
    }

    @Override // androidx.appcompat.widget.c0
    public void w() {
    }

    @Override // androidx.appcompat.widget.c0
    public void x(Drawable drawable) {
        this.f1534g = drawable;
        H();
    }

    @Override // androidx.appcompat.widget.c0
    public void y(boolean z10) {
        this.f1528a.setCollapsible(z10);
    }

    public final int z() {
        if (this.f1528a.getNavigationIcon() == null) {
            return 11;
        }
        this.f1544q = this.f1528a.getNavigationIcon();
        return 15;
    }

    public x0(Toolbar toolbar, boolean z10, int i10, int i11) {
        Drawable drawable;
        this.f1542o = 0;
        this.f1543p = 0;
        this.f1528a = toolbar;
        this.f1536i = toolbar.getTitle();
        this.f1537j = toolbar.getSubtitle();
        this.f1535h = this.f1536i != null;
        this.f1534g = toolbar.getNavigationIcon();
        v0 v10 = v0.v(toolbar.getContext(), null, d.j.f5324a, d.a.f5184c, 0);
        this.f1544q = v10.g(d.j.f5381l);
        if (z10) {
            CharSequence p10 = v10.p(d.j.f5411r);
            if (!TextUtils.isEmpty(p10)) {
                setTitle(p10);
            }
            CharSequence p11 = v10.p(d.j.f5401p);
            if (!TextUtils.isEmpty(p11)) {
                E(p11);
            }
            Drawable g10 = v10.g(d.j.f5391n);
            if (g10 != null) {
                C(g10);
            }
            Drawable g11 = v10.g(d.j.f5386m);
            if (g11 != null) {
                setIcon(g11);
            }
            if (this.f1534g == null && (drawable = this.f1544q) != null) {
                x(drawable);
            }
            o(v10.k(d.j.f5361h, 0));
            int n10 = v10.n(d.j.f5356g, 0);
            if (n10 != 0) {
                A(LayoutInflater.from(this.f1528a.getContext()).inflate(n10, (ViewGroup) this.f1528a, false));
                o(this.f1529b | 16);
            }
            int m10 = v10.m(d.j.f5371j, 0);
            if (m10 > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1528a.getLayoutParams();
                layoutParams.height = m10;
                this.f1528a.setLayoutParams(layoutParams);
            }
            int e10 = v10.e(d.j.f5351f, -1);
            int e11 = v10.e(d.j.f5346e, -1);
            if (e10 >= 0 || e11 >= 0) {
                this.f1528a.setContentInsetsRelative(Math.max(e10, 0), Math.max(e11, 0));
            }
            int n11 = v10.n(d.j.f5416s, 0);
            if (n11 != 0) {
                Toolbar toolbar2 = this.f1528a;
                toolbar2.setTitleTextAppearance(toolbar2.getContext(), n11);
            }
            int n12 = v10.n(d.j.f5406q, 0);
            if (n12 != 0) {
                Toolbar toolbar3 = this.f1528a;
                toolbar3.setSubtitleTextAppearance(toolbar3.getContext(), n12);
            }
            int n13 = v10.n(d.j.f5396o, 0);
            if (n13 != 0) {
                this.f1528a.setPopupTheme(n13);
            }
        } else {
            this.f1529b = z();
        }
        v10.w();
        B(i10);
        this.f1538k = this.f1528a.getNavigationContentDescription();
        this.f1528a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.c0
    public void setIcon(Drawable drawable) {
        this.f1532e = drawable;
        I();
    }
}

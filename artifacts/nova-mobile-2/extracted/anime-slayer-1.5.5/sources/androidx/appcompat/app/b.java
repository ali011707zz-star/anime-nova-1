package androidx.appcompat.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.appcompat.app.c;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: ActionBarDrawerToggle.java */
/* loaded from: classes.dex */
public class b implements DrawerLayout.d {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0026b f793a;

    /* renamed from: b, reason: collision with root package name */
    public final DrawerLayout f794b;

    /* renamed from: c, reason: collision with root package name */
    public g.d f795c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f796d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f797e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f798f;

    /* renamed from: g, reason: collision with root package name */
    public final int f799g;

    /* renamed from: h, reason: collision with root package name */
    public final int f800h;

    /* renamed from: i, reason: collision with root package name */
    public View.OnClickListener f801i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f802j;

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b bVar = b.this;
            if (bVar.f798f) {
                bVar.j();
                return;
            }
            View.OnClickListener onClickListener = bVar.f801i;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* renamed from: androidx.appcompat.app.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0026b {
        void a(Drawable drawable, int i10);

        boolean b();

        Drawable c();

        void d(int i10);

        Context e();
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    public interface c {
        InterfaceC0026b getDrawerToggleDelegate();
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    public static class d implements InterfaceC0026b {

        /* renamed from: a, reason: collision with root package name */
        public final Activity f804a;

        /* renamed from: b, reason: collision with root package name */
        public c.a f805b;

        public d(Activity activity) {
            this.f804a = activity;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void a(Drawable drawable, int i10) {
            ActionBar actionBar = this.f804a.getActionBar();
            if (actionBar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    actionBar.setHomeAsUpIndicator(drawable);
                    actionBar.setHomeActionContentDescription(i10);
                } else {
                    actionBar.setDisplayShowHomeEnabled(true);
                    this.f805b = androidx.appcompat.app.c.c(this.f804a, drawable, i10);
                    actionBar.setDisplayShowHomeEnabled(false);
                }
            }
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public boolean b() {
            ActionBar actionBar = this.f804a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Drawable c() {
            if (Build.VERSION.SDK_INT >= 18) {
                TypedArray obtainStyledAttributes = e().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
                return drawable;
            }
            return androidx.appcompat.app.c.a(this.f804a);
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void d(int i10) {
            if (Build.VERSION.SDK_INT >= 18) {
                ActionBar actionBar = this.f804a.getActionBar();
                if (actionBar != null) {
                    actionBar.setHomeActionContentDescription(i10);
                    return;
                }
                return;
            }
            this.f805b = androidx.appcompat.app.c.b(this.f805b, this.f804a, i10);
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Context e() {
            ActionBar actionBar = this.f804a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.f804a;
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    public static class e implements InterfaceC0026b {

        /* renamed from: a, reason: collision with root package name */
        public final Toolbar f806a;

        /* renamed from: b, reason: collision with root package name */
        public final Drawable f807b;

        /* renamed from: c, reason: collision with root package name */
        public final CharSequence f808c;

        public e(Toolbar toolbar) {
            this.f806a = toolbar;
            this.f807b = toolbar.getNavigationIcon();
            this.f808c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void a(Drawable drawable, int i10) {
            this.f806a.setNavigationIcon(drawable);
            d(i10);
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public boolean b() {
            return true;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Drawable c() {
            return this.f807b;
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public void d(int i10) {
            if (i10 == 0) {
                this.f806a.setNavigationContentDescription(this.f808c);
            } else {
                this.f806a.setNavigationContentDescription(i10);
            }
        }

        @Override // androidx.appcompat.app.b.InterfaceC0026b
        public Context e() {
            return this.f806a.getContext();
        }
    }

    public b(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i10, int i11) {
        this(activity, toolbar, drawerLayout, null, i10, i11);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.d
    public void a(int i10) {
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.d
    public void b(View view, float f10) {
        if (this.f796d) {
            h(Math.min(1.0f, Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10)));
        } else {
            h(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.d
    public void c(View view) {
        h(1.0f);
        if (this.f798f) {
            f(this.f800h);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.d
    public void d(View view) {
        h(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        if (this.f798f) {
            f(this.f799g);
        }
    }

    public Drawable e() {
        return this.f793a.c();
    }

    public void f(int i10) {
        this.f793a.d(i10);
    }

    public void g(Drawable drawable, int i10) {
        if (!this.f802j && !this.f793a.b()) {
            this.f802j = true;
        }
        this.f793a.a(drawable, i10);
    }

    public final void h(float f10) {
        if (f10 == 1.0f) {
            this.f795c.g(true);
        } else if (f10 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            this.f795c.g(false);
        }
        this.f795c.e(f10);
    }

    public void i() {
        if (this.f794b.C(8388611)) {
            h(1.0f);
        } else {
            h(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        }
        if (this.f798f) {
            g(this.f795c, this.f794b.C(8388611) ? this.f800h : this.f799g);
        }
    }

    public void j() {
        int q10 = this.f794b.q(8388611);
        if (this.f794b.F(8388611) && q10 != 2) {
            this.f794b.d(8388611);
        } else if (q10 != 1) {
            this.f794b.K(8388611);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, g.d dVar, int i10, int i11) {
        this.f796d = true;
        this.f798f = true;
        this.f802j = false;
        if (toolbar != null) {
            this.f793a = new e(toolbar);
            toolbar.setNavigationOnClickListener(new a());
        } else if (activity instanceof c) {
            this.f793a = ((c) activity).getDrawerToggleDelegate();
        } else {
            this.f793a = new d(activity);
        }
        this.f794b = drawerLayout;
        this.f799g = i10;
        this.f800h = i11;
        if (dVar == null) {
            this.f795c = new g.d(this.f793a.e());
        } else {
            this.f795c = dVar;
        }
        this.f797e = e();
    }
}

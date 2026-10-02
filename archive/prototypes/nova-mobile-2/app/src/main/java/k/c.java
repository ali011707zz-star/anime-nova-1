package k;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;
import q0.b;

/* compiled from: MenuItemWrapperICS.java */
/* loaded from: classes.dex */
public class c extends k.b implements MenuItem {

    /* renamed from: d, reason: collision with root package name */
    public final j0.b f9232d;

    /* renamed from: e, reason: collision with root package name */
    public Method f9233e;

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    public class a extends q0.b {

        /* renamed from: i, reason: collision with root package name */
        public final ActionProvider f9234i;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f9234i = actionProvider;
        }

        @Override // q0.b
        public boolean b() {
            return this.f9234i.hasSubMenu();
        }

        @Override // q0.b
        public View d() {
            return this.f9234i.onCreateActionView();
        }

        @Override // q0.b
        public boolean f() {
            return this.f9234i.onPerformDefaultAction();
        }

        @Override // q0.b
        public void g(SubMenu subMenu) {
            this.f9234i.onPrepareSubMenu(c.this.d(subMenu));
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    public class b extends a implements ActionProvider.VisibilityListener {

        /* renamed from: k, reason: collision with root package name */
        public b.InterfaceC0302b f9236k;

        public b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // q0.b
        public boolean c() {
            return this.f9234i.isVisible();
        }

        @Override // q0.b
        public View e(MenuItem menuItem) {
            return this.f9234i.onCreateActionView(menuItem);
        }

        @Override // q0.b
        public boolean h() {
            return this.f9234i.overridesItemVisibility();
        }

        @Override // q0.b
        public void k(b.InterfaceC0302b interfaceC0302b) {
            this.f9236k = interfaceC0302b;
            this.f9234i.setVisibilityListener(interfaceC0302b != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z10) {
            b.InterfaceC0302b interfaceC0302b = this.f9236k;
            if (interfaceC0302b != null) {
                interfaceC0302b.onActionProviderVisibilityChanged(z10);
            }
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* renamed from: k.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0168c extends FrameLayout implements j.c {

        /* renamed from: f, reason: collision with root package name */
        public final CollapsibleActionView f9238f;

        /* JADX WARN: Multi-variable type inference failed */
        public C0168c(View view) {
            super(view.getContext());
            this.f9238f = (CollapsibleActionView) view;
            addView(view);
        }

        public View a() {
            return (View) this.f9238f;
        }

        @Override // j.c
        public void b() {
            this.f9238f.onActionViewExpanded();
        }

        @Override // j.c
        public void c() {
            this.f9238f.onActionViewCollapsed();
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    public class d implements MenuItem.OnActionExpandListener {

        /* renamed from: a, reason: collision with root package name */
        public final MenuItem.OnActionExpandListener f9239a;

        public d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f9239a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f9239a.onMenuItemActionCollapse(c.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f9239a.onMenuItemActionExpand(c.this.c(menuItem));
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    public class e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: f, reason: collision with root package name */
        public final MenuItem.OnMenuItemClickListener f9241f;

        public e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f9241f = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return this.f9241f.onMenuItemClick(c.this.c(menuItem));
        }
    }

    public c(Context context, j0.b bVar) {
        super(context);
        if (bVar != null) {
            this.f9232d = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f9232d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f9232d.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        q0.b a10 = this.f9232d.a();
        if (a10 instanceof a) {
            return ((a) a10).f9234i;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f9232d.getActionView();
        return actionView instanceof C0168c ? ((C0168c) actionView).a() : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f9232d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f9232d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f9232d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f9232d.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f9232d.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f9232d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f9232d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f9232d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f9232d.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f9232d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f9232d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f9232d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f9232d.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return d(this.f9232d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f9232d.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f9232d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f9232d.getTooltipText();
    }

    public void h(boolean z10) {
        try {
            if (this.f9233e == null) {
                this.f9233e = this.f9232d.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f9233e.invoke(this.f9232d, Boolean.valueOf(z10));
        } catch (Exception unused) {
        }
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f9232d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f9232d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f9232d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f9232d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f9232d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f9232d.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        q0.b aVar;
        if (Build.VERSION.SDK_INT >= 16) {
            aVar = new b(this.f9229a, actionProvider);
        } else {
            aVar = new a(this.f9229a, actionProvider);
        }
        j0.b bVar = this.f9232d;
        if (actionProvider == null) {
            aVar = null;
        }
        bVar.b(aVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new C0168c(view);
        }
        this.f9232d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f9232d.setAlphabeticShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f9232d.setCheckable(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f9232d.setChecked(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f9232d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f9232d.setEnabled(z10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f9232d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f9232d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f9232d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f9232d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        this.f9232d.setNumericShortcut(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f9232d.setOnActionExpandListener(onActionExpandListener != null ? new d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f9232d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f9232d.setShortcut(c10, c11);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i10) {
        this.f9232d.setShowAsAction(i10);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i10) {
        this.f9232d.setShowAsActionFlags(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f9232d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f9232d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f9232d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        return this.f9232d.setVisible(z10);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f9232d.setAlphabeticShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f9232d.setIcon(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f9232d.setNumericShortcut(c10, i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f9232d.setShortcut(c10, c11, i10, i11);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.f9232d.setTitle(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i10) {
        this.f9232d.setActionView(i10);
        View actionView = this.f9232d.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f9232d.setActionView(new C0168c(actionView));
        }
        return this;
    }
}

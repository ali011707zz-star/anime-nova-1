package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.j;
import androidx.recyclerview.widget.RecyclerView;
import q0.b;

/* compiled from: MenuItemImpl.java */
/* loaded from: classes.dex */
public final class g implements j0.b {
    public View A;
    public q0.b B;
    public MenuItem.OnActionExpandListener C;
    public ContextMenu.ContextMenuInfo E;

    /* renamed from: a, reason: collision with root package name */
    public final int f1035a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1036b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1037c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1038d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f1039e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f1040f;

    /* renamed from: g, reason: collision with root package name */
    public Intent f1041g;

    /* renamed from: h, reason: collision with root package name */
    public char f1042h;

    /* renamed from: j, reason: collision with root package name */
    public char f1044j;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f1046l;

    /* renamed from: n, reason: collision with root package name */
    public e f1048n;

    /* renamed from: o, reason: collision with root package name */
    public l f1049o;

    /* renamed from: p, reason: collision with root package name */
    public Runnable f1050p;

    /* renamed from: q, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f1051q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f1052r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f1053s;

    /* renamed from: z, reason: collision with root package name */
    public int f1060z;

    /* renamed from: i, reason: collision with root package name */
    public int f1043i = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;

    /* renamed from: k, reason: collision with root package name */
    public int f1045k = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;

    /* renamed from: m, reason: collision with root package name */
    public int f1047m = 0;

    /* renamed from: t, reason: collision with root package name */
    public ColorStateList f1054t = null;

    /* renamed from: u, reason: collision with root package name */
    public PorterDuff.Mode f1055u = null;

    /* renamed from: v, reason: collision with root package name */
    public boolean f1056v = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1057w = false;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1058x = false;

    /* renamed from: y, reason: collision with root package name */
    public int f1059y = 16;
    public boolean D = false;

    /* compiled from: MenuItemImpl.java */
    /* loaded from: classes.dex */
    public class a implements b.InterfaceC0302b {
        public a() {
        }

        @Override // q0.b.InterfaceC0302b
        public void onActionProviderVisibilityChanged(boolean z10) {
            g gVar = g.this;
            gVar.f1048n.onItemVisibleChanged(gVar);
        }
    }

    public g(e eVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f1060z = 0;
        this.f1048n = eVar;
        this.f1035a = i11;
        this.f1036b = i10;
        this.f1037c = i12;
        this.f1038d = i13;
        this.f1039e = charSequence;
        this.f1060z = i14;
    }

    public static void d(StringBuilder sb2, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb2.append(str);
        }
    }

    public boolean A() {
        return this.f1048n.isShortcutsVisible() && g() != 0;
    }

    public boolean B() {
        return (this.f1060z & 4) == 4;
    }

    @Override // j0.b
    public q0.b a() {
        return this.B;
    }

    @Override // j0.b
    public j0.b b(q0.b bVar) {
        q0.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.i();
        }
        this.A = null;
        this.B = bVar;
        this.f1048n.onItemsChanged(true);
        q0.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.k(new a());
        }
        return this;
    }

    public void c() {
        this.f1048n.onItemActionRequestChanged(this);
    }

    @Override // j0.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f1060z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1048n.collapseItemActionView(this);
        }
        return false;
    }

    public final Drawable e(Drawable drawable) {
        if (drawable != null && this.f1058x && (this.f1056v || this.f1057w)) {
            drawable = i0.a.r(drawable).mutate();
            if (this.f1056v) {
                i0.a.o(drawable, this.f1054t);
            }
            if (this.f1057w) {
                i0.a.p(drawable, this.f1055u);
            }
            this.f1058x = false;
        }
        return drawable;
    }

    @Override // j0.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1048n.expandItemActionView(this);
        }
        return false;
    }

    public int f() {
        return this.f1038d;
    }

    public char g() {
        return this.f1048n.isQwertyMode() ? this.f1044j : this.f1042h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // j0.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        q0.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        View e10 = bVar.e(this);
        this.A = e10;
        return e10;
    }

    @Override // j0.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1045k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1044j;
    }

    @Override // j0.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1052r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1036b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1046l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f1047m == 0) {
            return null;
        }
        Drawable b10 = f.a.b(this.f1048n.getContext(), this.f1047m);
        this.f1047m = 0;
        this.f1046l = b10;
        return e(b10);
    }

    @Override // j0.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1054t;
    }

    @Override // j0.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1055u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1041g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1035a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // j0.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1043i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1042h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1037c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f1049o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f1039e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1040f;
        if (charSequence == null) {
            charSequence = this.f1039e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // j0.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1053s;
    }

    public String h() {
        char g10 = g();
        if (g10 == 0) {
            return "";
        }
        Resources resources = this.f1048n.getContext().getResources();
        StringBuilder sb2 = new StringBuilder();
        if (ViewConfiguration.get(this.f1048n.getContext()).hasPermanentMenuKey()) {
            sb2.append(resources.getString(d.h.f5316m));
        }
        int i10 = this.f1048n.isQwertyMode() ? this.f1045k : this.f1043i;
        d(sb2, i10, 65536, resources.getString(d.h.f5312i));
        d(sb2, i10, RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT, resources.getString(d.h.f5308e));
        d(sb2, i10, 2, resources.getString(d.h.f5307d));
        d(sb2, i10, 1, resources.getString(d.h.f5313j));
        d(sb2, i10, 4, resources.getString(d.h.f5315l));
        d(sb2, i10, 8, resources.getString(d.h.f5311h));
        if (g10 == '\b') {
            sb2.append(resources.getString(d.h.f5309f));
        } else if (g10 == '\n') {
            sb2.append(resources.getString(d.h.f5310g));
        } else if (g10 != ' ') {
            sb2.append(g10);
        } else {
            sb2.append(resources.getString(d.h.f5314k));
        }
        return sb2.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1049o != null;
    }

    public CharSequence i(j.a aVar) {
        if (aVar != null && aVar.prefersCondensedTitle()) {
            return getTitleCondensed();
        }
        return getTitle();
    }

    @Override // j0.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1059y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1059y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1059y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        q0.b bVar = this.B;
        return (bVar == null || !bVar.h()) ? (this.f1059y & 8) == 0 : (this.f1059y & 8) == 0 && this.B.c();
    }

    public boolean j() {
        q0.b bVar;
        if ((this.f1060z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.e(this);
        }
        return this.A != null;
    }

    public boolean k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1051q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        e eVar = this.f1048n;
        if (eVar.dispatchMenuItemSelected(eVar, this)) {
            return true;
        }
        Runnable runnable = this.f1050p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1041g != null) {
            try {
                this.f1048n.getContext().startActivity(this.f1041g);
                return true;
            } catch (ActivityNotFoundException unused) {
            }
        }
        q0.b bVar = this.B;
        return bVar != null && bVar.f();
    }

    public boolean l() {
        return (this.f1059y & 32) == 32;
    }

    public boolean m() {
        return (this.f1059y & 4) != 0;
    }

    public boolean n() {
        return (this.f1060z & 1) == 1;
    }

    public boolean o() {
        return (this.f1060z & 2) == 2;
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public j0.b setActionView(int i10) {
        Context context = this.f1048n.getContext();
        setActionView(LayoutInflater.from(context).inflate(i10, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public j0.b setActionView(View view) {
        int i10;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i10 = this.f1035a) > 0) {
            view.setId(i10);
        }
        this.f1048n.onItemActionRequestChanged(this);
        return this;
    }

    public void r(boolean z10) {
        this.D = z10;
        this.f1048n.onItemsChanged(false);
    }

    public void s(boolean z10) {
        int i10 = this.f1059y;
        int i11 = (z10 ? 2 : 0) | (i10 & (-3));
        this.f1059y = i11;
        if (i10 != i11) {
            this.f1048n.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        if (this.f1044j == c10) {
            return this;
        }
        this.f1044j = Character.toLowerCase(c10);
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        int i10 = this.f1059y;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.f1059y = i11;
        if (i10 != i11) {
            this.f1048n.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        if ((this.f1059y & 4) != 0) {
            this.f1048n.setExclusiveItemChecked(this);
        } else {
            s(z10);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f1059y |= 16;
        } else {
            this.f1059y &= -17;
        }
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1047m = 0;
        this.f1046l = drawable;
        this.f1058x = true;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1054t = colorStateList;
        this.f1056v = true;
        this.f1058x = true;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1055u = mode;
        this.f1057w = true;
        this.f1058x = true;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1041g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        if (this.f1042h == c10) {
            return this;
        }
        this.f1042h = c10;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1051q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f1042h = c10;
        this.f1044j = Character.toLowerCase(c11);
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1060z = i10;
        this.f1048n.onItemActionRequestChanged(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1039e = charSequence;
        this.f1048n.onItemsChanged(false);
        l lVar = this.f1049o;
        if (lVar != null) {
            lVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1040f = charSequence;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        if (y(z10)) {
            this.f1048n.onItemVisibleChanged(this);
        }
        return this;
    }

    public void t(boolean z10) {
        this.f1059y = (z10 ? 4 : 0) | (this.f1059y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f1039e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z10) {
        if (z10) {
            this.f1059y |= 32;
        } else {
            this.f1059y &= -33;
        }
    }

    public void v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public j0.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    public void x(l lVar) {
        this.f1049o = lVar;
        lVar.setHeaderTitle(getTitle());
    }

    public boolean y(boolean z10) {
        int i10 = this.f1059y;
        int i11 = (z10 ? 0 : 8) | (i10 & (-9));
        this.f1059y = i11;
        return i10 != i11;
    }

    public boolean z() {
        return this.f1048n.getOptionalIconsVisible();
    }

    @Override // android.view.MenuItem
    public j0.b setContentDescription(CharSequence charSequence) {
        this.f1052r = charSequence;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public j0.b setTooltipText(CharSequence charSequence) {
        this.f1053s = charSequence;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.f1044j == c10 && this.f1045k == i10) {
            return this;
        }
        this.f1044j = Character.toLowerCase(c10);
        this.f1045k = KeyEvent.normalizeMetaState(i10);
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        if (this.f1042h == c10 && this.f1043i == i10) {
            return this;
        }
        this.f1042h = c10;
        this.f1043i = KeyEvent.normalizeMetaState(i10);
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f1042h = c10;
        this.f1043i = KeyEvent.normalizeMetaState(i10);
        this.f1044j = Character.toLowerCase(c11);
        this.f1045k = KeyEvent.normalizeMetaState(i11);
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f1046l = null;
        this.f1047m = i10;
        this.f1058x = true;
        this.f1048n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        return setTitle(this.f1048n.getContext().getString(i10));
    }
}

package k;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ActionMenuItem.java */
/* loaded from: classes.dex */
public class a implements j0.b {

    /* renamed from: a, reason: collision with root package name */
    public final int f9209a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9210b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9211c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f9212d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f9213e;

    /* renamed from: f, reason: collision with root package name */
    public Intent f9214f;

    /* renamed from: g, reason: collision with root package name */
    public char f9215g;

    /* renamed from: i, reason: collision with root package name */
    public char f9217i;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f9219k;

    /* renamed from: l, reason: collision with root package name */
    public Context f9220l;

    /* renamed from: m, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f9221m;

    /* renamed from: n, reason: collision with root package name */
    public CharSequence f9222n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f9223o;

    /* renamed from: h, reason: collision with root package name */
    public int f9216h = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;

    /* renamed from: j, reason: collision with root package name */
    public int f9218j = RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f9224p = null;

    /* renamed from: q, reason: collision with root package name */
    public PorterDuff.Mode f9225q = null;

    /* renamed from: r, reason: collision with root package name */
    public boolean f9226r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9227s = false;

    /* renamed from: t, reason: collision with root package name */
    public int f9228t = 16;

    public a(Context context, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        this.f9220l = context;
        this.f9209a = i11;
        this.f9210b = i10;
        this.f9211c = i13;
        this.f9212d = charSequence;
    }

    @Override // j0.b
    public q0.b a() {
        return null;
    }

    @Override // j0.b
    public j0.b b(q0.b bVar) {
        throw new UnsupportedOperationException();
    }

    public final void c() {
        Drawable drawable = this.f9219k;
        if (drawable != null) {
            if (this.f9226r || this.f9227s) {
                Drawable r10 = i0.a.r(drawable);
                this.f9219k = r10;
                Drawable mutate = r10.mutate();
                this.f9219k = mutate;
                if (this.f9226r) {
                    i0.a.o(mutate, this.f9224p);
                }
                if (this.f9227s) {
                    i0.a.p(this.f9219k, this.f9225q);
                }
            }
        }
    }

    @Override // j0.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public j0.b setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public j0.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // j0.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // j0.b, android.view.MenuItem
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public j0.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // j0.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // j0.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f9218j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f9217i;
    }

    @Override // j0.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f9222n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f9210b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f9219k;
    }

    @Override // j0.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f9224p;
    }

    @Override // j0.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f9225q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f9214f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f9209a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // j0.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f9216h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f9215g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f9211c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f9212d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f9213e;
        return charSequence != null ? charSequence : this.f9212d;
    }

    @Override // j0.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f9223o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // j0.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f9228t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f9228t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f9228t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f9228t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f9217i = Character.toLowerCase(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f9228t = (z10 ? 1 : 0) | (this.f9228t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f9228t = (z10 ? 2 : 0) | (this.f9228t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f9228t = (z10 ? 16 : 0) | (this.f9228t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f9219k = drawable;
        c();
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f9224p = colorStateList;
        this.f9226r = true;
        c();
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f9225q = mode;
        this.f9227s = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f9214f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        this.f9215g = c10;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f9221m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f9215g = c10;
        this.f9217i = Character.toLowerCase(c11);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f9212d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f9213e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        this.f9228t = (this.f9228t & 8) | (z10 ? 0 : 8);
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f9217i = Character.toLowerCase(c10);
        this.f9218j = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public j0.b setContentDescription(CharSequence charSequence) {
        this.f9222n = charSequence;
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f9215g = c10;
        this.f9216h = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.f9212d = this.f9220l.getResources().getString(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public j0.b setTooltipText(CharSequence charSequence) {
        this.f9223o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f9219k = f0.a.f(this.f9220l, i10);
        c();
        return this;
    }

    @Override // j0.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f9215g = c10;
        this.f9216h = KeyEvent.normalizeMetaState(i10);
        this.f9217i = Character.toLowerCase(c11);
        this.f9218j = KeyEvent.normalizeMetaState(i11);
        return this;
    }
}

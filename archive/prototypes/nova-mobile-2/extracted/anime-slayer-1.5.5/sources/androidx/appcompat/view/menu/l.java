package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.e;

/* compiled from: SubMenuBuilder.java */
/* loaded from: classes.dex */
public class l extends e implements SubMenu {
    private g mItem;
    private e mParentMenu;

    public l(Context context, e eVar, g gVar) {
        super(context);
        this.mParentMenu = eVar;
        this.mItem = gVar;
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean collapseItemActionView(g gVar) {
        return this.mParentMenu.collapseItemActionView(gVar);
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean dispatchMenuItemSelected(e eVar, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(eVar, menuItem) || this.mParentMenu.dispatchMenuItemSelected(eVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean expandItemActionView(g gVar) {
        return this.mParentMenu.expandItemActionView(gVar);
    }

    @Override // androidx.appcompat.view.menu.e
    public String getActionViewStatesKey() {
        g gVar = this.mItem;
        int itemId = gVar != null ? gVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.mItem;
    }

    public Menu getParentMenu() {
        return this.mParentMenu;
    }

    @Override // androidx.appcompat.view.menu.e
    public e getRootMenu() {
        return this.mParentMenu.getRootMenu();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean isGroupDividerEnabled() {
        return this.mParentMenu.isGroupDividerEnabled();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean isQwertyMode() {
        return this.mParentMenu.isQwertyMode();
    }

    @Override // androidx.appcompat.view.menu.e
    public boolean isShortcutsVisible() {
        return this.mParentMenu.isShortcutsVisible();
    }

    @Override // androidx.appcompat.view.menu.e
    public void setCallback(e.a aVar) {
        this.mParentMenu.setCallback(aVar);
    }

    @Override // androidx.appcompat.view.menu.e, android.view.Menu
    public void setGroupDividerEnabled(boolean z10) {
        this.mParentMenu.setGroupDividerEnabled(z10);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.setHeaderIconInt(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.setHeaderTitleInt(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.setHeaderViewInt(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.mItem.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.e, android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.mParentMenu.setQwertyMode(z10);
    }

    @Override // androidx.appcompat.view.menu.e
    public void setShortcutsVisible(boolean z10) {
        this.mParentMenu.setShortcutsVisible(z10);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i10) {
        return (SubMenu) super.setHeaderIconInt(i10);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i10) {
        return (SubMenu) super.setHeaderTitleInt(i10);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i10) {
        this.mItem.setIcon(i10);
        return this;
    }
}

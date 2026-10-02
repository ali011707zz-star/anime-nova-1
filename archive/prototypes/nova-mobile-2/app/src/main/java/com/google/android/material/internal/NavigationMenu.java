package com.google.android.material.internal;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.g;

/* loaded from: classes.dex */
public class NavigationMenu extends e {
    public NavigationMenu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.e, android.view.Menu
    public SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        g gVar = (g) addInternal(i10, i11, i12, charSequence);
        NavigationSubMenu navigationSubMenu = new NavigationSubMenu(getContext(), this, gVar);
        gVar.x(navigationSubMenu);
        return navigationSubMenu;
    }
}

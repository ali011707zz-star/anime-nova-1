package com.google.android.material.internal;

import android.content.Context;
import androidx.appcompat.view.menu.e;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.l;

/* loaded from: classes.dex */
public class NavigationSubMenu extends l {
    public NavigationSubMenu(Context context, NavigationMenu navigationMenu, g gVar) {
        super(context, navigationMenu, gVar);
    }

    @Override // androidx.appcompat.view.menu.e
    public void onItemsChanged(boolean z10) {
        super.onItemsChanged(z10);
        ((e) getParentMenu()).onItemsChanged(z10);
    }
}

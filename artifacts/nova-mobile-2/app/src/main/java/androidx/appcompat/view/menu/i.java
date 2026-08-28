package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;

/* compiled from: MenuPresenter.java */
/* loaded from: classes.dex */
public interface i {

    /* compiled from: MenuPresenter.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a(e eVar);

        void onCloseMenu(e eVar, boolean z10);
    }

    boolean collapseItemActionView(e eVar, g gVar);

    boolean expandItemActionView(e eVar, g gVar);

    boolean flagActionItems();

    int getId();

    void initForMenu(Context context, e eVar);

    void onCloseMenu(e eVar, boolean z10);

    void onRestoreInstanceState(Parcelable parcelable);

    Parcelable onSaveInstanceState();

    boolean onSubMenuSelected(l lVar);

    void setCallback(a aVar);

    void updateMenuView(boolean z10);
}

package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import java.util.ArrayList;

/* compiled from: ListMenuPresenter.java */
/* loaded from: classes.dex */
public class c implements i, AdapterView.OnItemClickListener {

    /* renamed from: f, reason: collision with root package name */
    public Context f1013f;

    /* renamed from: g, reason: collision with root package name */
    public LayoutInflater f1014g;

    /* renamed from: h, reason: collision with root package name */
    public e f1015h;

    /* renamed from: i, reason: collision with root package name */
    public ExpandedMenuView f1016i;

    /* renamed from: j, reason: collision with root package name */
    public int f1017j;

    /* renamed from: k, reason: collision with root package name */
    public int f1018k;

    /* renamed from: l, reason: collision with root package name */
    public int f1019l;

    /* renamed from: m, reason: collision with root package name */
    public i.a f1020m;

    /* renamed from: n, reason: collision with root package name */
    public a f1021n;

    /* renamed from: o, reason: collision with root package name */
    public int f1022o;

    /* compiled from: ListMenuPresenter.java */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {

        /* renamed from: f, reason: collision with root package name */
        public int f1023f = -1;

        public a() {
            a();
        }

        public void a() {
            g expandedItem = c.this.f1015h.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<g> nonActionItems = c.this.f1015h.getNonActionItems();
                int size = nonActionItems.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (nonActionItems.get(i10) == expandedItem) {
                        this.f1023f = i10;
                        return;
                    }
                }
            }
            this.f1023f = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public g getItem(int i10) {
            ArrayList<g> nonActionItems = c.this.f1015h.getNonActionItems();
            int i11 = i10 + c.this.f1017j;
            int i12 = this.f1023f;
            if (i12 >= 0 && i11 >= i12) {
                i11++;
            }
            return nonActionItems.get(i11);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = c.this.f1015h.getNonActionItems().size() - c.this.f1017j;
            return this.f1023f < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            if (view == null) {
                c cVar = c.this;
                view = cVar.f1014g.inflate(cVar.f1019l, viewGroup, false);
            }
            ((j.a) view).initialize(getItem(i10), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public c(Context context, int i10) {
        this(i10, 0);
        this.f1013f = context;
        this.f1014g = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.f1021n == null) {
            this.f1021n = new a();
        }
        return this.f1021n;
    }

    public j b(ViewGroup viewGroup) {
        if (this.f1016i == null) {
            this.f1016i = (ExpandedMenuView) this.f1014g.inflate(d.g.f5290g, viewGroup, false);
            if (this.f1021n == null) {
                this.f1021n = new a();
            }
            this.f1016i.setAdapter((ListAdapter) this.f1021n);
            this.f1016i.setOnItemClickListener(this);
        }
        return this.f1016i;
    }

    public void c(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1016i.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean collapseItemActionView(e eVar, g gVar) {
        return false;
    }

    public void d(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f1016i;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean expandItemActionView(e eVar, g gVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.i
    public int getId() {
        return this.f1022o;
    }

    @Override // androidx.appcompat.view.menu.i
    public void initForMenu(Context context, e eVar) {
        if (this.f1018k != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f1018k);
            this.f1013f = contextThemeWrapper;
            this.f1014g = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f1013f != null) {
            this.f1013f = context;
            if (this.f1014g == null) {
                this.f1014g = LayoutInflater.from(context);
            }
        }
        this.f1015h = eVar;
        a aVar = this.f1021n;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public void onCloseMenu(e eVar, boolean z10) {
        i.a aVar = this.f1020m;
        if (aVar != null) {
            aVar.onCloseMenu(eVar, z10);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
        this.f1015h.performItemAction(this.f1021n.getItem(i10), this, 0);
    }

    @Override // androidx.appcompat.view.menu.i
    public void onRestoreInstanceState(Parcelable parcelable) {
        c((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.i
    public Parcelable onSaveInstanceState() {
        if (this.f1016i == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        d(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean onSubMenuSelected(l lVar) {
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        new f(lVar).c(null);
        i.a aVar = this.f1020m;
        if (aVar == null) {
            return true;
        }
        aVar.a(lVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.i
    public void setCallback(i.a aVar) {
        this.f1020m = aVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public void updateMenuView(boolean z10) {
        a aVar = this.f1021n;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public c(int i10, int i11) {
        this.f1019l = i10;
        this.f1018k = i11;
    }
}

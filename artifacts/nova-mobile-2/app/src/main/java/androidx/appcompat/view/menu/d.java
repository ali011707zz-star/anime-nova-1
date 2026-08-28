package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.j;
import java.util.ArrayList;

/* compiled from: MenuAdapter.java */
/* loaded from: classes.dex */
public class d extends BaseAdapter {

    /* renamed from: f, reason: collision with root package name */
    public e f1025f;

    /* renamed from: g, reason: collision with root package name */
    public int f1026g = -1;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1027h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f1028i;

    /* renamed from: j, reason: collision with root package name */
    public final LayoutInflater f1029j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1030k;

    public d(e eVar, LayoutInflater layoutInflater, boolean z10, int i10) {
        this.f1028i = z10;
        this.f1029j = layoutInflater;
        this.f1025f = eVar;
        this.f1030k = i10;
        a();
    }

    public void a() {
        g expandedItem = this.f1025f.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<g> nonActionItems = this.f1025f.getNonActionItems();
            int size = nonActionItems.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (nonActionItems.get(i10) == expandedItem) {
                    this.f1026g = i10;
                    return;
                }
            }
        }
        this.f1026g = -1;
    }

    public e b() {
        return this.f1025f;
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public g getItem(int i10) {
        ArrayList<g> nonActionItems = this.f1028i ? this.f1025f.getNonActionItems() : this.f1025f.getVisibleItems();
        int i11 = this.f1026g;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return nonActionItems.get(i10);
    }

    public void d(boolean z10) {
        this.f1027h = z10;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<g> nonActionItems = this.f1028i ? this.f1025f.getNonActionItems() : this.f1025f.getVisibleItems();
        if (this.f1026g < 0) {
            return nonActionItems.size();
        }
        return nonActionItems.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1029j.inflate(this.f1030k, viewGroup, false);
        }
        int groupId = getItem(i10).getGroupId();
        int i11 = i10 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f1025f.isGroupDividerEnabled() && groupId != (i11 >= 0 ? getItem(i11).getGroupId() : groupId));
        j.a aVar = (j.a) view;
        if (this.f1027h) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i10), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}

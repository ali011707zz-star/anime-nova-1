package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import java.util.ArrayList;

/* compiled from: BaseMenuPresenter.java */
/* loaded from: classes.dex */
public abstract class a implements i {

    /* renamed from: f, reason: collision with root package name */
    public Context f973f;

    /* renamed from: g, reason: collision with root package name */
    public Context f974g;

    /* renamed from: h, reason: collision with root package name */
    public e f975h;

    /* renamed from: i, reason: collision with root package name */
    public LayoutInflater f976i;

    /* renamed from: j, reason: collision with root package name */
    public LayoutInflater f977j;

    /* renamed from: k, reason: collision with root package name */
    public i.a f978k;

    /* renamed from: l, reason: collision with root package name */
    public int f979l;

    /* renamed from: m, reason: collision with root package name */
    public int f980m;

    /* renamed from: n, reason: collision with root package name */
    public j f981n;

    /* renamed from: o, reason: collision with root package name */
    public int f982o;

    public a(Context context, int i10, int i11) {
        this.f973f = context;
        this.f976i = LayoutInflater.from(context);
        this.f979l = i10;
        this.f980m = i11;
    }

    public void a(View view, int i10) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f981n).addView(view, i10);
    }

    public abstract void b(g gVar, j.a aVar);

    public j.a c(ViewGroup viewGroup) {
        return (j.a) this.f976i.inflate(this.f980m, viewGroup, false);
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean collapseItemActionView(e eVar, g gVar) {
        return false;
    }

    public boolean d(ViewGroup viewGroup, int i10) {
        viewGroup.removeViewAt(i10);
        return true;
    }

    public i.a e() {
        return this.f978k;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean expandItemActionView(e eVar, g gVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View f(g gVar, View view, ViewGroup viewGroup) {
        j.a aVar;
        if (view instanceof j.a) {
            aVar = (j.a) view;
        } else {
            aVar = c(viewGroup);
        }
        b(gVar, aVar);
        return (View) aVar;
    }

    public j g(ViewGroup viewGroup) {
        if (this.f981n == null) {
            j jVar = (j) this.f976i.inflate(this.f979l, viewGroup, false);
            this.f981n = jVar;
            jVar.initialize(this.f975h);
            updateMenuView(true);
        }
        return this.f981n;
    }

    @Override // androidx.appcompat.view.menu.i
    public int getId() {
        return this.f982o;
    }

    public void h(int i10) {
        this.f982o = i10;
    }

    public abstract boolean i(int i10, g gVar);

    @Override // androidx.appcompat.view.menu.i
    public void initForMenu(Context context, e eVar) {
        this.f974g = context;
        this.f977j = LayoutInflater.from(context);
        this.f975h = eVar;
    }

    @Override // androidx.appcompat.view.menu.i
    public void onCloseMenu(e eVar, boolean z10) {
        i.a aVar = this.f978k;
        if (aVar != null) {
            aVar.onCloseMenu(eVar, z10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.appcompat.view.menu.e] */
    @Override // androidx.appcompat.view.menu.i
    public boolean onSubMenuSelected(l lVar) {
        i.a aVar = this.f978k;
        l lVar2 = lVar;
        if (aVar == null) {
            return false;
        }
        if (lVar == null) {
            lVar2 = this.f975h;
        }
        return aVar.a(lVar2);
    }

    @Override // androidx.appcompat.view.menu.i
    public void setCallback(i.a aVar) {
        this.f978k = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.i
    public void updateMenuView(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) this.f981n;
        if (viewGroup == null) {
            return;
        }
        e eVar = this.f975h;
        int i10 = 0;
        if (eVar != null) {
            eVar.flagActionItems();
            ArrayList<g> visibleItems = this.f975h.getVisibleItems();
            int size = visibleItems.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                g gVar = visibleItems.get(i12);
                if (i(i11, gVar)) {
                    View childAt = viewGroup.getChildAt(i11);
                    g itemData = childAt instanceof j.a ? ((j.a) childAt).getItemData() : null;
                    View f10 = f(gVar, childAt, viewGroup);
                    if (gVar != itemData) {
                        f10.setPressed(false);
                        f10.jumpDrawablesToCurrentState();
                    }
                    if (f10 != childAt) {
                        a(f10, i11);
                    }
                    i11++;
                }
            }
            i10 = i11;
        }
        while (i10 < viewGroup.getChildCount()) {
            if (!d(viewGroup, i10)) {
                i10++;
            }
        }
    }
}

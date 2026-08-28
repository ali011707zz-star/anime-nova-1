package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import q0.b;

/* compiled from: ActionMenuPresenter.java */
/* loaded from: classes.dex */
public class c extends androidx.appcompat.view.menu.a implements b.a {
    public boolean A;
    public int B;
    public final SparseBooleanArray C;
    public e D;
    public a E;
    public RunnableC0030c F;
    public b G;
    public final f H;
    public int I;

    /* renamed from: p, reason: collision with root package name */
    public d f1270p;

    /* renamed from: q, reason: collision with root package name */
    public Drawable f1271q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1272r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1273s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1274t;

    /* renamed from: u, reason: collision with root package name */
    public int f1275u;

    /* renamed from: v, reason: collision with root package name */
    public int f1276v;

    /* renamed from: w, reason: collision with root package name */
    public int f1277w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1278x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f1279y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f1280z;

    /* compiled from: ActionMenuPresenter.java */
    /* loaded from: classes.dex */
    public class a extends androidx.appcompat.view.menu.h {
        public a(Context context, androidx.appcompat.view.menu.l lVar, View view) {
            super(context, lVar, view, false, d.a.f5193l);
            if (!((androidx.appcompat.view.menu.g) lVar.getItem()).l()) {
                View view2 = c.this.f1270p;
                f(view2 == null ? (View) c.this.f981n : view2);
            }
            j(c.this.H);
        }

        @Override // androidx.appcompat.view.menu.h
        public void e() {
            c cVar = c.this;
            cVar.E = null;
            cVar.I = 0;
            super.e();
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    /* loaded from: classes.dex */
    public class b extends ActionMenuItemView.b {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public k.f a() {
            a aVar = c.this.E;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    /* renamed from: androidx.appcompat.widget.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0030c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public e f1283f;

        public RunnableC0030c(e eVar) {
            this.f1283f = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f975h != null) {
                c.this.f975h.changeMenuMode();
            }
            View view = (View) c.this.f981n;
            if (view != null && view.getWindowToken() != null && this.f1283f.m()) {
                c.this.D = this.f1283f;
            }
            c.this.F = null;
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    /* loaded from: classes.dex */
    public class d extends AppCompatImageView implements ActionMenuView.a {

        /* compiled from: ActionMenuPresenter.java */
        /* loaded from: classes.dex */
        public class a extends g0 {

            /* renamed from: o, reason: collision with root package name */
            public final /* synthetic */ c f1286o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(View view, c cVar) {
                super(view);
                this.f1286o = cVar;
            }

            @Override // androidx.appcompat.widget.g0
            public k.f b() {
                e eVar = c.this.D;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.widget.g0
            public boolean c() {
                c.this.C();
                return true;
            }

            @Override // androidx.appcompat.widget.g0
            public boolean d() {
                c cVar = c.this;
                if (cVar.F != null) {
                    return false;
                }
                cVar.t();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, d.a.f5192k);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            y0.a(this, getContentDescription());
            setOnTouchListener(new a(this, c.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            c.this.C();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i10, int i11, int i12, int i13) {
            boolean frame = super.setFrame(i10, i11, i12, i13);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                i0.a.l(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    /* loaded from: classes.dex */
    public class e extends androidx.appcompat.view.menu.h {
        public e(Context context, androidx.appcompat.view.menu.e eVar, View view, boolean z10) {
            super(context, eVar, view, z10, d.a.f5193l);
            h(8388613);
            j(c.this.H);
        }

        @Override // androidx.appcompat.view.menu.h
        public void e() {
            if (c.this.f975h != null) {
                c.this.f975h.close();
            }
            c.this.D = null;
            super.e();
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    /* loaded from: classes.dex */
    public class f implements i.a {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean a(androidx.appcompat.view.menu.e eVar) {
            if (eVar == c.this.f975h) {
                return false;
            }
            c.this.I = ((androidx.appcompat.view.menu.l) eVar).getItem().getItemId();
            i.a e10 = c.this.e();
            if (e10 != null) {
                return e10.a(eVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
            if (eVar instanceof androidx.appcompat.view.menu.l) {
                eVar.getRootMenu().close(false);
            }
            i.a e10 = c.this.e();
            if (e10 != null) {
                e10.onCloseMenu(eVar, z10);
            }
        }
    }

    /* compiled from: ActionMenuPresenter.java */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public int f1290f;

        /* compiled from: ActionMenuPresenter.java */
        /* loaded from: classes.dex */
        public class a implements Parcelable.Creator<g> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f1290f);
        }

        public g(Parcel parcel) {
            this.f1290f = parcel.readInt();
        }
    }

    public c(Context context) {
        super(context, d.g.f5286c, d.g.f5285b);
        this.C = new SparseBooleanArray();
        this.H = new f();
    }

    public void A(Drawable drawable) {
        d dVar = this.f1270p;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.f1272r = true;
            this.f1271q = drawable;
        }
    }

    public void B(boolean z10) {
        this.f1273s = z10;
        this.f1274t = true;
    }

    public boolean C() {
        androidx.appcompat.view.menu.e eVar;
        if (!this.f1273s || w() || (eVar = this.f975h) == null || this.f981n == null || this.F != null || eVar.getNonActionItems().isEmpty()) {
            return false;
        }
        RunnableC0030c runnableC0030c = new RunnableC0030c(new e(this.f974g, this.f975h, this.f1270p, true));
        this.F = runnableC0030c;
        ((View) this.f981n).post(runnableC0030c);
        return true;
    }

    @Override // androidx.appcompat.view.menu.a
    public void b(androidx.appcompat.view.menu.g gVar, j.a aVar) {
        aVar.initialize(gVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f981n);
        if (this.G == null) {
            this.G = new b();
        }
        actionMenuItemView.setPopupCallback(this.G);
    }

    @Override // androidx.appcompat.view.menu.a
    public boolean d(ViewGroup viewGroup, int i10) {
        if (viewGroup.getChildAt(i10) == this.f1270p) {
            return false;
        }
        return super.d(viewGroup, i10);
    }

    @Override // androidx.appcompat.view.menu.a
    public View f(androidx.appcompat.view.menu.g gVar, View view, ViewGroup viewGroup) {
        View actionView = gVar.getActionView();
        if (actionView == null || gVar.j()) {
            actionView = super.f(gVar, view, viewGroup);
        }
        actionView.setVisibility(gVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.i
    public boolean flagActionItems() {
        ArrayList<androidx.appcompat.view.menu.g> arrayList;
        int i10;
        int i11;
        int i12;
        int i13;
        c cVar = this;
        androidx.appcompat.view.menu.e eVar = cVar.f975h;
        View view = null;
        int i14 = 0;
        if (eVar != null) {
            arrayList = eVar.getVisibleItems();
            i10 = arrayList.size();
        } else {
            arrayList = null;
            i10 = 0;
        }
        int i15 = cVar.f1277w;
        int i16 = cVar.f1276v;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) cVar.f981n;
        boolean z10 = false;
        int i17 = 0;
        int i18 = 0;
        for (int i19 = 0; i19 < i10; i19++) {
            androidx.appcompat.view.menu.g gVar = arrayList.get(i19);
            if (gVar.o()) {
                i17++;
            } else if (gVar.n()) {
                i18++;
            } else {
                z10 = true;
            }
            if (cVar.A && gVar.isActionViewExpanded()) {
                i15 = 0;
            }
        }
        if (cVar.f1273s && (z10 || i18 + i17 > i15)) {
            i15--;
        }
        int i20 = i15 - i17;
        SparseBooleanArray sparseBooleanArray = cVar.C;
        sparseBooleanArray.clear();
        if (cVar.f1279y) {
            int i21 = cVar.B;
            i12 = i16 / i21;
            i11 = i21 + ((i16 % i21) / i12);
        } else {
            i11 = 0;
            i12 = 0;
        }
        int i22 = 0;
        int i23 = 0;
        while (i22 < i10) {
            androidx.appcompat.view.menu.g gVar2 = arrayList.get(i22);
            if (gVar2.o()) {
                View f10 = cVar.f(gVar2, view, viewGroup);
                if (cVar.f1279y) {
                    i12 -= ActionMenuView.n(f10, i11, i12, makeMeasureSpec, i14);
                } else {
                    f10.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = f10.getMeasuredWidth();
                i16 -= measuredWidth;
                if (i23 == 0) {
                    i23 = measuredWidth;
                }
                int groupId = gVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                gVar2.u(true);
                i13 = i10;
            } else if (gVar2.n()) {
                int groupId2 = gVar2.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = (i20 > 0 || z11) && i16 > 0 && (!cVar.f1279y || i12 > 0);
                boolean z13 = z12;
                i13 = i10;
                if (z12) {
                    View f11 = cVar.f(gVar2, null, viewGroup);
                    if (cVar.f1279y) {
                        int n10 = ActionMenuView.n(f11, i11, i12, makeMeasureSpec, 0);
                        i12 -= n10;
                        if (n10 == 0) {
                            z13 = false;
                        }
                    } else {
                        f11.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z14 = z13;
                    int measuredWidth2 = f11.getMeasuredWidth();
                    i16 -= measuredWidth2;
                    if (i23 == 0) {
                        i23 = measuredWidth2;
                    }
                    z12 = z14 & (!cVar.f1279y ? i16 + i23 <= 0 : i16 < 0);
                }
                if (z12 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i24 = 0; i24 < i22; i24++) {
                        androidx.appcompat.view.menu.g gVar3 = arrayList.get(i24);
                        if (gVar3.getGroupId() == groupId2) {
                            if (gVar3.l()) {
                                i20++;
                            }
                            gVar3.u(false);
                        }
                    }
                }
                if (z12) {
                    i20--;
                }
                gVar2.u(z12);
            } else {
                i13 = i10;
                gVar2.u(false);
                i22++;
                view = null;
                cVar = this;
                i10 = i13;
                i14 = 0;
            }
            i22++;
            view = null;
            cVar = this;
            i10 = i13;
            i14 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.a
    public androidx.appcompat.view.menu.j g(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.j jVar = this.f981n;
        androidx.appcompat.view.menu.j g10 = super.g(viewGroup);
        if (jVar != g10) {
            ((ActionMenuView) g10).setPresenter(this);
        }
        return g10;
    }

    @Override // androidx.appcompat.view.menu.a
    public boolean i(int i10, androidx.appcompat.view.menu.g gVar) {
        return gVar.l();
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void initForMenu(Context context, androidx.appcompat.view.menu.e eVar) {
        super.initForMenu(context, eVar);
        Resources resources = context.getResources();
        j.a b10 = j.a.b(context);
        if (!this.f1274t) {
            this.f1273s = b10.h();
        }
        if (!this.f1280z) {
            this.f1275u = b10.c();
        }
        if (!this.f1278x) {
            this.f1277w = b10.d();
        }
        int i10 = this.f1275u;
        if (this.f1273s) {
            if (this.f1270p == null) {
                d dVar = new d(this.f973f);
                this.f1270p = dVar;
                if (this.f1272r) {
                    dVar.setImageDrawable(this.f1271q);
                    this.f1271q = null;
                    this.f1272r = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1270p.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i10 -= this.f1270p.getMeasuredWidth();
        } else {
            this.f1270p = null;
        }
        this.f1276v = i10;
        this.B = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void onCloseMenu(androidx.appcompat.view.menu.e eVar, boolean z10) {
        q();
        super.onCloseMenu(eVar, z10);
    }

    @Override // androidx.appcompat.view.menu.i
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i10;
        MenuItem findItem;
        if ((parcelable instanceof g) && (i10 = ((g) parcelable).f1290f) > 0 && (findItem = this.f975h.findItem(i10)) != null) {
            onSubMenuSelected((androidx.appcompat.view.menu.l) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.i
    public Parcelable onSaveInstanceState() {
        g gVar = new g();
        gVar.f1290f = this.I;
        return gVar;
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public boolean onSubMenuSelected(androidx.appcompat.view.menu.l lVar) {
        boolean z10 = false;
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.l lVar2 = lVar;
        while (lVar2.getParentMenu() != this.f975h) {
            lVar2 = (androidx.appcompat.view.menu.l) lVar2.getParentMenu();
        }
        View r10 = r(lVar2.getItem());
        if (r10 == null) {
            return false;
        }
        this.I = lVar.getItem().getItemId();
        int size = lVar.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            MenuItem item = lVar.getItem(i10);
            if (item.isVisible() && item.getIcon() != null) {
                z10 = true;
                break;
            }
            i10++;
        }
        a aVar = new a(this.f974g, lVar, r10);
        this.E = aVar;
        aVar.g(z10);
        this.E.k();
        super.onSubMenuSelected(lVar);
        return true;
    }

    public boolean q() {
        return t() | u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View r(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f981n;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof j.a) && ((j.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public Drawable s() {
        d dVar = this.f1270p;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f1272r) {
            return this.f1271q;
        }
        return null;
    }

    public boolean t() {
        Object obj;
        RunnableC0030c runnableC0030c = this.F;
        if (runnableC0030c != null && (obj = this.f981n) != null) {
            ((View) obj).removeCallbacks(runnableC0030c);
            this.F = null;
            return true;
        }
        e eVar = this.D;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }

    public boolean u() {
        a aVar = this.E;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void updateMenuView(boolean z10) {
        super.updateMenuView(z10);
        ((View) this.f981n).requestLayout();
        androidx.appcompat.view.menu.e eVar = this.f975h;
        boolean z11 = false;
        if (eVar != null) {
            ArrayList<androidx.appcompat.view.menu.g> actionItems = eVar.getActionItems();
            int size = actionItems.size();
            for (int i10 = 0; i10 < size; i10++) {
                q0.b a10 = actionItems.get(i10).a();
                if (a10 != null) {
                    a10.j(this);
                }
            }
        }
        androidx.appcompat.view.menu.e eVar2 = this.f975h;
        ArrayList<androidx.appcompat.view.menu.g> nonActionItems = eVar2 != null ? eVar2.getNonActionItems() : null;
        if (this.f1273s && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z11 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z11 = true;
            }
        }
        if (z11) {
            if (this.f1270p == null) {
                this.f1270p = new d(this.f973f);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1270p.getParent();
            if (viewGroup != this.f981n) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1270p);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f981n;
                actionMenuView.addView(this.f1270p, actionMenuView.h());
            }
        } else {
            d dVar = this.f1270p;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.f981n;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f1270p);
                }
            }
        }
        ((ActionMenuView) this.f981n).setOverflowReserved(this.f1273s);
    }

    public boolean v() {
        return this.F != null || w();
    }

    public boolean w() {
        e eVar = this.D;
        return eVar != null && eVar.d();
    }

    public void x(Configuration configuration) {
        if (!this.f1278x) {
            this.f1277w = j.a.b(this.f974g).d();
        }
        androidx.appcompat.view.menu.e eVar = this.f975h;
        if (eVar != null) {
            eVar.onItemsChanged(true);
        }
    }

    public void y(boolean z10) {
        this.A = z10;
    }

    public void z(ActionMenuView actionMenuView) {
        this.f981n = actionMenuView;
        actionMenuView.initialize(this.f975h);
    }
}

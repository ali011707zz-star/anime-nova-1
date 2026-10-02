package m7;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: ItemSpacingDecorator.java */
/* loaded from: classes.dex */
public class f extends RecyclerView.o {

    /* renamed from: a, reason: collision with root package name */
    public int f11012a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11013b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11014c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11015d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11016e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f11017f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11018g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f11019h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f11020i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f11021j;

    public f(int i10) {
        g(i10);
    }

    public static boolean e(int i10, GridLayoutManager.c cVar, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 <= i10; i13++) {
            i12 += cVar.f(i13);
            if (i12 > i11) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(int i10, int i11, GridLayoutManager.c cVar, int i12) {
        int i13 = 0;
        for (int i14 = i11 - 1; i14 >= i10; i14--) {
            i13 += cVar.f(i14);
            if (i13 > i12) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(RecyclerView.p pVar, boolean z10) {
        boolean z11 = (pVar instanceof LinearLayoutManager) && ((LinearLayoutManager) pVar).getReverseLayout();
        return (z10 && (pVar.getLayoutDirection() == 1)) ? !z11 : z11;
    }

    public final void d(RecyclerView recyclerView, int i10, RecyclerView.p pVar) {
        int itemCount = recyclerView.getAdapter().getItemCount();
        boolean z10 = false;
        this.f11015d = i10 == 0;
        this.f11016e = i10 == itemCount + (-1);
        this.f11014c = pVar.canScrollHorizontally();
        this.f11013b = pVar.canScrollVertically();
        boolean z11 = pVar instanceof GridLayoutManager;
        this.f11017f = z11;
        if (z11) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) pVar;
            GridLayoutManager.c E = gridLayoutManager.E();
            int f10 = E.f(i10);
            int A = gridLayoutManager.A();
            int e10 = E.e(i10, A);
            this.f11018g = e10 == 0;
            this.f11019h = e10 + f10 == A;
            boolean e11 = e(i10, E, A);
            this.f11020i = e11;
            if (!e11 && f(i10, itemCount, E, A)) {
                z10 = true;
            }
            this.f11021j = z10;
        }
    }

    public void g(int i10) {
        this.f11012a = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
        rect.setEmpty();
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        RecyclerView.p layoutManager = recyclerView.getLayoutManager();
        d(recyclerView, childAdapterPosition, layoutManager);
        boolean j10 = j();
        boolean k10 = k();
        boolean l10 = l();
        boolean i10 = i();
        if (!h(layoutManager, this.f11014c)) {
            k10 = j10;
            j10 = k10;
        } else if (!this.f11014c) {
            k10 = j10;
            j10 = k10;
            i10 = l10;
            l10 = i10;
        }
        int i11 = this.f11012a / 2;
        rect.right = j10 ? i11 : 0;
        rect.left = k10 ? i11 : 0;
        rect.top = l10 ? i11 : 0;
        if (!i10) {
            i11 = 0;
        }
        rect.bottom = i11;
    }

    public final boolean i() {
        if (!this.f11017f) {
            return this.f11013b && !this.f11016e;
        }
        if (!this.f11014c || this.f11019h) {
            return this.f11013b && !this.f11021j;
        }
        return true;
    }

    public final boolean j() {
        if (!this.f11017f) {
            return this.f11014c && !this.f11015d;
        }
        if (!this.f11014c || this.f11020i) {
            return this.f11013b && !this.f11018g;
        }
        return true;
    }

    public final boolean k() {
        if (!this.f11017f) {
            return this.f11014c && !this.f11016e;
        }
        if (!this.f11014c || this.f11021j) {
            return this.f11013b && !this.f11019h;
        }
        return true;
    }

    public final boolean l() {
        if (!this.f11017f) {
            return this.f11013b && !this.f11015d;
        }
        if (!this.f11014c || this.f11018g) {
            return this.f11013b && !this.f11020i;
        }
        return true;
    }
}

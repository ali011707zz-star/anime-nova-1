package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b0;
import androidx.recyclerview.widget.g;
import androidx.recyclerview.widget.q;
import androidx.recyclerview.widget.y;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: ConcatAdapterController.java */
/* loaded from: classes.dex */
public class h implements q.b {

    /* renamed from: a, reason: collision with root package name */
    public final g f2926a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f2927b;

    /* renamed from: c, reason: collision with root package name */
    public List<WeakReference<RecyclerView>> f2928c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final IdentityHashMap<RecyclerView.e0, q> f2929d = new IdentityHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public List<q> f2930e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public a f2931f = new a();

    /* renamed from: g, reason: collision with root package name */
    public final g.a.b f2932g;

    /* renamed from: h, reason: collision with root package name */
    public final y f2933h;

    /* compiled from: ConcatAdapterController.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public q f2934a;

        /* renamed from: b, reason: collision with root package name */
        public int f2935b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2936c;
    }

    public h(g gVar, g.a aVar) {
        this.f2926a = gVar;
        if (aVar.f2918a) {
            this.f2927b = new b0.a();
        } else {
            this.f2927b = new b0.b();
        }
        g.a.b bVar = aVar.f2919b;
        this.f2932g = bVar;
        if (bVar == g.a.b.NO_STABLE_IDS) {
            this.f2933h = new y.b();
        } else if (bVar == g.a.b.ISOLATED_STABLE_IDS) {
            this.f2933h = new y.a();
        } else {
            if (bVar == g.a.b.SHARED_STABLE_IDS) {
                this.f2933h = new y.c();
                return;
            }
            throw new IllegalArgumentException("unknown stable id mode");
        }
    }

    public void A(RecyclerView.e0 e0Var) {
        r(e0Var).f3073c.onViewAttachedToWindow(e0Var);
    }

    public void B(RecyclerView.e0 e0Var) {
        r(e0Var).f3073c.onViewDetachedFromWindow(e0Var);
    }

    public void C(RecyclerView.e0 e0Var) {
        q qVar = this.f2929d.get(e0Var);
        if (qVar != null) {
            qVar.f3073c.onViewRecycled(e0Var);
            this.f2929d.remove(e0Var);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + e0Var + ", seems like it is not bound by this adapter: " + this);
    }

    public final void D(a aVar) {
        aVar.f2936c = false;
        aVar.f2934a = null;
        aVar.f2935b = -1;
        this.f2931f = aVar;
    }

    @Override // androidx.recyclerview.widget.q.b
    public void a(q qVar) {
        i();
    }

    @Override // androidx.recyclerview.widget.q.b
    public void b(q qVar, int i10, int i11) {
        this.f2926a.notifyItemRangeInserted(i10 + k(qVar), i11);
    }

    @Override // androidx.recyclerview.widget.q.b
    public void c(q qVar, int i10, int i11) {
        int k10 = k(qVar);
        this.f2926a.notifyItemMoved(i10 + k10, i11 + k10);
    }

    @Override // androidx.recyclerview.widget.q.b
    public void d(q qVar, int i10, int i11, Object obj) {
        this.f2926a.notifyItemRangeChanged(i10 + k(qVar), i11, obj);
    }

    @Override // androidx.recyclerview.widget.q.b
    public void e(q qVar) {
        this.f2926a.notifyDataSetChanged();
        i();
    }

    @Override // androidx.recyclerview.widget.q.b
    public void f(q qVar, int i10, int i11) {
        this.f2926a.notifyItemRangeRemoved(i10 + k(qVar), i11);
    }

    public boolean g(int i10, RecyclerView.h<RecyclerView.e0> hVar) {
        if (i10 >= 0 && i10 <= this.f2930e.size()) {
            if (s()) {
                p0.i.b(hVar.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
            } else {
                hVar.hasStableIds();
            }
            if (m(hVar) != null) {
                return false;
            }
            q qVar = new q(hVar, this, this.f2927b, this.f2933h.a());
            this.f2930e.add(i10, qVar);
            Iterator<WeakReference<RecyclerView>> it2 = this.f2928c.iterator();
            while (it2.hasNext()) {
                RecyclerView recyclerView = it2.next().get();
                if (recyclerView != null) {
                    hVar.onAttachedToRecyclerView(recyclerView);
                }
            }
            if (qVar.a() > 0) {
                this.f2926a.notifyItemRangeInserted(k(qVar), qVar.a());
            }
            i();
            return true;
        }
        throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f2930e.size() + ". Given:" + i10);
    }

    public boolean h(RecyclerView.h<RecyclerView.e0> hVar) {
        return g(this.f2930e.size(), hVar);
    }

    public final void i() {
        RecyclerView.h.a j10 = j();
        if (j10 != this.f2926a.getStateRestorationPolicy()) {
            this.f2926a.f(j10);
        }
    }

    public final RecyclerView.h.a j() {
        for (q qVar : this.f2930e) {
            RecyclerView.h.a stateRestorationPolicy = qVar.f3073c.getStateRestorationPolicy();
            RecyclerView.h.a aVar = RecyclerView.h.a.PREVENT;
            if (stateRestorationPolicy == aVar) {
                return aVar;
            }
            if (stateRestorationPolicy == RecyclerView.h.a.PREVENT_WHEN_EMPTY && qVar.a() == 0) {
                return aVar;
            }
        }
        return RecyclerView.h.a.ALLOW;
    }

    public final int k(q qVar) {
        q next;
        Iterator<q> it2 = this.f2930e.iterator();
        int i10 = 0;
        while (it2.hasNext() && (next = it2.next()) != qVar) {
            i10 += next.a();
        }
        return i10;
    }

    public final a l(int i10) {
        a aVar = this.f2931f;
        if (aVar.f2936c) {
            aVar = new a();
        } else {
            aVar.f2936c = true;
        }
        Iterator<q> it2 = this.f2930e.iterator();
        int i11 = i10;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            q next = it2.next();
            if (next.a() > i11) {
                aVar.f2934a = next;
                aVar.f2935b = i11;
                break;
            }
            i11 -= next.a();
        }
        if (aVar.f2934a != null) {
            return aVar;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i10);
    }

    public final q m(RecyclerView.h<RecyclerView.e0> hVar) {
        int t10 = t(hVar);
        if (t10 == -1) {
            return null;
        }
        return this.f2930e.get(t10);
    }

    public long n(int i10) {
        a l10 = l(i10);
        long b10 = l10.f2934a.b(l10.f2935b);
        D(l10);
        return b10;
    }

    public int o(int i10) {
        a l10 = l(i10);
        int c10 = l10.f2934a.c(l10.f2935b);
        D(l10);
        return c10;
    }

    public int p(RecyclerView.h<? extends RecyclerView.e0> hVar, RecyclerView.e0 e0Var, int i10) {
        q qVar = this.f2929d.get(e0Var);
        if (qVar == null) {
            return -1;
        }
        int k10 = i10 - k(qVar);
        int itemCount = qVar.f3073c.getItemCount();
        if (k10 >= 0 && k10 < itemCount) {
            return qVar.f3073c.findRelativeAdapterPositionIn(hVar, e0Var, k10);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + k10 + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + e0Var + "adapter:" + hVar);
    }

    public int q() {
        Iterator<q> it2 = this.f2930e.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            i10 += it2.next().a();
        }
        return i10;
    }

    public final q r(RecyclerView.e0 e0Var) {
        q qVar = this.f2929d.get(e0Var);
        if (qVar != null) {
            return qVar;
        }
        throw new IllegalStateException("Cannot find wrapper for " + e0Var + ", seems like it is not bound by this adapter: " + this);
    }

    public boolean s() {
        return this.f2932g != g.a.b.NO_STABLE_IDS;
    }

    public final int t(RecyclerView.h<RecyclerView.e0> hVar) {
        int size = this.f2930e.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f2930e.get(i10).f3073c == hVar) {
                return i10;
            }
        }
        return -1;
    }

    public final boolean u(RecyclerView recyclerView) {
        Iterator<WeakReference<RecyclerView>> it2 = this.f2928c.iterator();
        while (it2.hasNext()) {
            if (it2.next().get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    public void v(RecyclerView recyclerView) {
        if (u(recyclerView)) {
            return;
        }
        this.f2928c.add(new WeakReference<>(recyclerView));
        Iterator<q> it2 = this.f2930e.iterator();
        while (it2.hasNext()) {
            it2.next().f3073c.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void w(RecyclerView.e0 e0Var, int i10) {
        a l10 = l(i10);
        this.f2929d.put(e0Var, l10.f2934a);
        l10.f2934a.d(e0Var, l10.f2935b);
        D(l10);
    }

    public RecyclerView.e0 x(ViewGroup viewGroup, int i10) {
        return this.f2927b.b(i10).e(viewGroup, i10);
    }

    public void y(RecyclerView recyclerView) {
        int size = this.f2928c.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference<RecyclerView> weakReference = this.f2928c.get(size);
            if (weakReference.get() == null) {
                this.f2928c.remove(size);
            } else if (weakReference.get() == recyclerView) {
                this.f2928c.remove(size);
                break;
            }
            size--;
        }
        Iterator<q> it2 = this.f2930e.iterator();
        while (it2.hasNext()) {
            it2.next().f3073c.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean z(RecyclerView.e0 e0Var) {
        q qVar = this.f2929d.get(e0Var);
        if (qVar != null) {
            boolean onFailedToRecycleView = qVar.f3073c.onFailedToRecycleView(e0Var);
            this.f2929d.remove(e0Var);
            return onFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + e0Var + ", seems like it is not bound by this adapter: " + this);
    }
}

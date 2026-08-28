package z2;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import ic.q;
import java.util.List;
import jc.l;
import s2.j;
import s2.m;
import vb.p;
import wb.i;

/* compiled from: PlainListDialogAdapter.kt */
/* loaded from: classes.dex */
public final class c extends RecyclerView.h<d> implements b<CharSequence, q<? super s2.c, ? super Integer, ? super CharSequence, ? extends p>> {

    /* renamed from: f, reason: collision with root package name */
    public int[] f17262f;

    /* renamed from: g, reason: collision with root package name */
    public s2.c f17263g;

    /* renamed from: h, reason: collision with root package name */
    public List<? extends CharSequence> f17264h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17265i;

    /* renamed from: j, reason: collision with root package name */
    public q<? super s2.c, ? super Integer, ? super CharSequence, p> f17266j;

    public c(s2.c cVar, List<? extends CharSequence> list, int[] iArr, boolean z10, q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "dialog");
        l.g(list, "items");
        this.f17263g = cVar;
        this.f17264h = list;
        this.f17265i = z10;
        this.f17266j = qVar;
        this.f17262f = iArr == null ? new int[0] : iArr;
    }

    @Override // z2.b
    public void d() {
        Object obj = this.f17263g.e().get("activated_index");
        if (!(obj instanceof Integer)) {
            obj = null;
        }
        Integer num = (Integer) obj;
        if (num != null) {
            q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar = this.f17266j;
            if (qVar != null) {
                qVar.i(this.f17263g, num, this.f17264h.get(num.intValue()));
            }
            this.f17263g.e().remove("activated_index");
        }
    }

    public void e(int[] iArr) {
        l.g(iArr, "indices");
        this.f17262f = iArr;
        notifyDataSetChanged();
    }

    public final void f(int i10) {
        if (this.f17265i && t2.a.b(this.f17263g, m.POSITIVE)) {
            Object obj = this.f17263g.e().get("activated_index");
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            this.f17263g.e().put("activated_index", Integer.valueOf(i10));
            if (num != null) {
                notifyItemChanged(num.intValue());
            }
            notifyItemChanged(i10);
            return;
        }
        q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar = this.f17266j;
        if (qVar != null) {
            qVar.i(this.f17263g, Integer.valueOf(i10), this.f17264h.get(i10));
        }
        if (!this.f17263g.c() || t2.a.c(this.f17263g)) {
            return;
        }
        this.f17263g.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(d dVar, int i10) {
        l.g(dVar, "holder");
        View view = dVar.itemView;
        l.b(view, "holder.itemView");
        view.setEnabled(!i.n(this.f17262f, i10));
        dVar.a().setText(this.f17264h.get(i10));
        View view2 = dVar.itemView;
        l.b(view2, "holder.itemView");
        view2.setBackground(b3.a.c(this.f17263g));
        Object obj = this.f17263g.e().get("activated_index");
        if (!(obj instanceof Integer)) {
            obj = null;
        }
        Integer num = (Integer) obj;
        View view3 = dVar.itemView;
        l.b(view3, "holder.itemView");
        view3.setActivated(num != null && num.intValue() == i10);
        if (this.f17263g.d() != null) {
            dVar.a().setTypeface(this.f17263g.d());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f17264h.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public d onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.g(viewGroup, "parent");
        d3.e eVar = d3.e.f5611a;
        d dVar = new d(eVar.f(viewGroup, this.f17263g.i(), j.f13709e), this);
        d3.e.j(eVar, dVar.a(), this.f17263g.i(), Integer.valueOf(s2.f.f13665i), null, 4, null);
        return dVar;
    }

    public void i(List<? extends CharSequence> list, q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(list, "items");
        this.f17264h = list;
        if (qVar != null) {
            this.f17266j = qVar;
        }
        notifyDataSetChanged();
    }
}

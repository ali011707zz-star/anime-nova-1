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
import wb.t;

/* compiled from: SingleChoiceDialogAdapter.kt */
/* loaded from: classes.dex */
public final class e extends RecyclerView.h<f> implements b<CharSequence, q<? super s2.c, ? super Integer, ? super CharSequence, ? extends p>> {

    /* renamed from: f, reason: collision with root package name */
    public int f17269f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f17270g;

    /* renamed from: h, reason: collision with root package name */
    public s2.c f17271h;

    /* renamed from: i, reason: collision with root package name */
    public List<? extends CharSequence> f17272i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f17273j;

    /* renamed from: k, reason: collision with root package name */
    public q<? super s2.c, ? super Integer, ? super CharSequence, p> f17274k;

    public e(s2.c cVar, List<? extends CharSequence> list, int[] iArr, int i10, boolean z10, q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(cVar, "dialog");
        l.g(list, "items");
        this.f17271h = cVar;
        this.f17272i = list;
        this.f17273j = z10;
        this.f17274k = qVar;
        this.f17269f = i10;
        this.f17270g = iArr == null ? new int[0] : iArr;
    }

    @Override // z2.b
    public void d() {
        q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar;
        int i10 = this.f17269f;
        if (i10 <= -1 || (qVar = this.f17274k) == null) {
            return;
        }
        qVar.i(this.f17271h, Integer.valueOf(i10), this.f17272i.get(this.f17269f));
    }

    public void e(int[] iArr) {
        l.g(iArr, "indices");
        this.f17270g = iArr;
        notifyDataSetChanged();
    }

    public final void f(int i10) {
        k(i10);
        if (this.f17273j && t2.a.c(this.f17271h)) {
            t2.a.d(this.f17271h, m.POSITIVE, true);
            return;
        }
        q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar = this.f17274k;
        if (qVar != null) {
            qVar.i(this.f17271h, Integer.valueOf(i10), this.f17272i.get(i10));
        }
        if (!this.f17271h.c() || t2.a.c(this.f17271h)) {
            return;
        }
        this.f17271h.dismiss();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f fVar, int i10) {
        l.g(fVar, "holder");
        fVar.c(!i.n(this.f17270g, i10));
        fVar.a().setChecked(this.f17269f == i10);
        fVar.b().setText(this.f17272i.get(i10));
        View view = fVar.itemView;
        l.b(view, "holder.itemView");
        view.setBackground(b3.a.c(this.f17271h));
        if (this.f17271h.d() != null) {
            fVar.b().setTypeface(this.f17271h.d());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f17272i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f fVar, int i10, List<Object> list) {
        l.g(fVar, "holder");
        l.g(list, "payloads");
        Object B = t.B(list);
        if (l.a(B, a.f17261a)) {
            fVar.a().setChecked(true);
        } else if (l.a(B, g.f17278a)) {
            fVar.a().setChecked(false);
        } else {
            super.onBindViewHolder(fVar, i10, list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public f onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.g(viewGroup, "parent");
        d3.e eVar = d3.e.f5611a;
        f fVar = new f(eVar.f(viewGroup, this.f17271h.i(), j.f13710f), this);
        d3.e.j(eVar, fVar.b(), this.f17271h.i(), Integer.valueOf(s2.f.f13665i), null, 4, null);
        int[] e10 = d3.a.e(this.f17271h, new int[]{s2.f.f13667k, s2.f.f13668l}, null, 2, null);
        u0.d.c(fVar.a(), eVar.b(this.f17271h.i(), e10[1], e10[0]));
        return fVar;
    }

    public void j(List<? extends CharSequence> list, q<? super s2.c, ? super Integer, ? super CharSequence, p> qVar) {
        l.g(list, "items");
        this.f17272i = list;
        if (qVar != null) {
            this.f17274k = qVar;
        }
        notifyDataSetChanged();
    }

    public final void k(int i10) {
        int i11 = this.f17269f;
        if (i10 == i11) {
            return;
        }
        this.f17269f = i10;
        notifyItemChanged(i11, g.f17278a);
        notifyItemChanged(i10, a.f17261a);
    }
}

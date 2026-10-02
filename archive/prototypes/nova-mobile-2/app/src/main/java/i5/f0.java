package i5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import i5.f0;
import j4.t2;
import java.util.List;

/* compiled from: TopAnimeContributorsAdapter.kt */
/* loaded from: classes.dex */
public final class f0 extends RecyclerView.h<a> {

    /* renamed from: a, reason: collision with root package name */
    public final List<p4.r> f7628a;

    /* renamed from: b, reason: collision with root package name */
    public final ic.l<p4.r, vb.p> f7629b;

    /* compiled from: TopAnimeContributorsAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public p4.r f7630a;

        /* renamed from: b, reason: collision with root package name */
        public final t2 f7631b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, final ic.l<? super p4.r, vb.p> lVar) {
            super(view);
            jc.l.f(view, "view");
            jc.l.f(lVar, "onClick");
            t2 a10 = t2.a(view);
            jc.l.e(a10, "bind(view)");
            this.f7631b = a10;
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: i5.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    f0.a.b(ic.l.this, this, view2);
                }
            });
        }

        public static final void b(ic.l lVar, a aVar, View view) {
            jc.l.f(lVar, "$onClick");
            jc.l.f(aVar, "this$0");
            lVar.invoke(aVar.d());
        }

        public final void c(p4.r rVar) {
            jc.l.f(rVar, "contributor");
            e(rVar);
            this.f7631b.f8726d.setText(rVar.c());
            this.f7631b.f8724b.setText(this.itemView.getContext().getString(R.string.top_contributors_anime_edits, Integer.valueOf(rVar.a())));
            d4.a.a(this.itemView.getContext()).m(this.f7631b.f8725c);
            d4.a.a(this.itemView.getContext()).s(rVar.f()).g(r7.j.f12975d).T(android.R.color.transparent).G0().H0().u0(this.f7631b.f8725c);
        }

        public final p4.r d() {
            p4.r rVar = this.f7630a;
            if (rVar != null) {
                return rVar;
            }
            jc.l.v("contributor");
            return null;
        }

        public final void e(p4.r rVar) {
            jc.l.f(rVar, "<set-?>");
            this.f7630a = rVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f0(List<p4.r> list, ic.l<? super p4.r, vb.p> lVar) {
        jc.l.f(list, "contributors");
        jc.l.f(lVar, "onClick");
        this.f7628a = list;
        this.f7629b = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i10) {
        jc.l.f(aVar, "holder");
        aVar.c(this.f7628a.get(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.top_contriputors_anime_item, viewGroup, false);
        jc.l.e(inflate, "inflater.inflate(R.layou…nime_item, parent, false)");
        return new a(inflate, this.f7629b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f7628a.size();
    }
}

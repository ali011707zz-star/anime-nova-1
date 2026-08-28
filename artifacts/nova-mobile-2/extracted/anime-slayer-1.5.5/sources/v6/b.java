package v6;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import com.anslayer.R;
import ic.l;
import kotlin.NoWhenBranchMatchedException;
import p4.o;
import p4.p;

/* compiled from: ScheduleAdapter.kt */
/* loaded from: classes.dex */
public final class b extends o<p4.o, RecyclerView.e0> {

    /* renamed from: c, reason: collision with root package name */
    public final l<p, vb.p> f14844c;

    /* compiled from: ScheduleAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<p4.o> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p4.o oVar, p4.o oVar2) {
            jc.l.f(oVar, "oldItem");
            jc.l.f(oVar2, "newItem");
            return jc.l.a(oVar, oVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p4.o oVar, p4.o oVar2) {
            jc.l.f(oVar, "oldItem");
            jc.l.f(oVar2, "newItem");
            return ((oVar instanceof o.a) && (oVar2 instanceof o.a) && ((o.a) oVar).a().m() == ((o.a) oVar2).a().m()) || ((oVar instanceof o.b) && (oVar2 instanceof o.b) && jc.l.a(((o.b) oVar).a(), ((o.b) oVar2).a()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(l<? super p, vb.p> lVar) {
        super(new a());
        jc.l.f(lVar, "onClick");
        this.f14844c = lVar;
    }

    public static final void j(b bVar, p4.o oVar, View view) {
        jc.l.f(bVar, "this$0");
        jc.l.f(oVar, "$item");
        bVar.f14844c.invoke(((o.a) oVar).a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemViewType(int i10) {
        p4.o f10 = f(i10);
        if (f10 instanceof o.b) {
            return R.layout.schedule_separator_item;
        }
        if (f10 instanceof o.a) {
            return R.layout.adapter_series;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(RecyclerView.e0 e0Var, int i10) {
        jc.l.f(e0Var, "holder");
        final p4.o f10 = f(i10);
        if (f10 == null) {
            return;
        }
        if (f10 instanceof o.b) {
            ((f) e0Var).a((o.b) f10);
            ViewGroup.LayoutParams layoutParams = e0Var.itemView.getLayoutParams();
            StaggeredGridLayoutManager.c cVar = layoutParams instanceof StaggeredGridLayoutManager.c ? (StaggeredGridLayoutManager.c) layoutParams : null;
            if (cVar == null) {
                return;
            }
            cVar.i(true);
            return;
        }
        if (f10 instanceof o.a) {
            ((c) e0Var).a(((o.a) f10).a());
            e0Var.itemView.setOnClickListener(new View.OnClickListener() { // from class: v6.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.j(b.this, f10, view);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public RecyclerView.e0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        if (i10 == R.layout.schedule_separator_item) {
            return f.f14859b.a(viewGroup);
        }
        return c.f14845b.a(viewGroup);
    }
}

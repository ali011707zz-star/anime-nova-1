package g6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import j4.i1;
import k1.u;
import k1.v;

/* compiled from: LoadingAdapter.kt */
/* loaded from: classes.dex */
public final class u extends v<a> {

    /* renamed from: b, reason: collision with root package name */
    public final ic.a<vb.p> f7016b;

    /* compiled from: LoadingAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final i1 f7017a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(i1 i1Var) {
            super(i1Var.b());
            jc.l.f(i1Var, "binding");
            this.f7017a = i1Var;
        }

        public final i1 a() {
            return this.f7017a;
        }
    }

    public u(ic.a<vb.p> aVar) {
        jc.l.f(aVar, "retry");
        this.f7016b = aVar;
    }

    public static final void l(u uVar, View view) {
        jc.l.f(uVar, "this$0");
        uVar.f7016b.invoke();
    }

    @Override // k1.v
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public void g(a aVar, k1.u uVar) {
        jc.l.f(aVar, "holder");
        jc.l.f(uVar, "loadState");
        ViewGroup.LayoutParams layoutParams = aVar.itemView.getLayoutParams();
        StaggeredGridLayoutManager.c cVar = layoutParams instanceof StaggeredGridLayoutManager.c ? (StaggeredGridLayoutManager.c) layoutParams : null;
        if (cVar != null) {
            cVar.i(true);
        }
        ProgressBar progressBar = aVar.a().f8437c;
        jc.l.e(progressBar, "holder.binding.progressBar");
        Button button = aVar.a().f8436b;
        jc.l.e(button, "holder.binding.loadStateRetry");
        boolean z10 = uVar instanceof u.b;
        button.setVisibility(z10 ^ true ? 0 : 8);
        progressBar.setVisibility(z10 ? 0 : 8);
        button.setOnClickListener(new View.OnClickListener() { // from class: g6.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                u.l(u.this, view);
            }
        });
    }

    @Override // k1.v
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public a h(ViewGroup viewGroup, k1.u uVar) {
        jc.l.f(viewGroup, "parent");
        jc.l.f(uVar, "loadState");
        i1 c10 = i1.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new a(c10);
    }
}

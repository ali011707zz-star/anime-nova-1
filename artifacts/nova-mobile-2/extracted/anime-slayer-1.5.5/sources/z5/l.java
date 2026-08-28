package z5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import j4.t0;

/* compiled from: CustomListDetailsHeaderAdapter.kt */
/* loaded from: classes.dex */
public final class l extends RecyclerView.h<a> {

    /* renamed from: a, reason: collision with root package name */
    public String f17381a;

    /* renamed from: b, reason: collision with root package name */
    public String f17382b;

    /* renamed from: c, reason: collision with root package name */
    public t0 f17383c;

    /* compiled from: CustomListDetailsHeaderAdapter.kt */
    /* loaded from: classes.dex */
    public final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ l f17384a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, View view) {
            super(view);
            jc.l.f(lVar, "this$0");
            jc.l.f(view, "view");
            this.f17384a = lVar;
        }

        public final void a() {
            b(this.f17384a.g(), this.f17384a.f());
        }

        public final void b(String str, String str2) {
            this.f17384a.e().f8720d.setText(str);
            TextView textView = this.f17384a.e().f8718b;
            jc.l.e(textView, "binding.description");
            textView.setVisibility(str2 == null || str2.length() == 0 ? 8 : 0);
            this.f17384a.e().f8718b.setText(str2);
        }
    }

    public l(String str, String str2) {
        jc.l.f(str, "title");
        this.f17381a = str;
        this.f17382b = str2;
    }

    public final t0 e() {
        t0 t0Var = this.f17383c;
        if (t0Var != null) {
            return t0Var;
        }
        jc.l.v("binding");
        return null;
    }

    public final String f() {
        return this.f17382b;
    }

    public final String g() {
        return this.f17381a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i10) {
        jc.l.f(aVar, "holder");
        ViewGroup.LayoutParams layoutParams = aVar.itemView.getLayoutParams();
        StaggeredGridLayoutManager.c cVar = layoutParams instanceof StaggeredGridLayoutManager.c ? (StaggeredGridLayoutManager.c) layoutParams : null;
        if (cVar != null) {
            cVar.i(true);
        }
        aVar.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        t0 c10 = t0.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(LayoutInflater.f….context), parent, false)");
        j(c10);
        ConstraintLayout b10 = e().b();
        jc.l.e(b10, "binding.root");
        return new a(this, b10);
    }

    public final void j(t0 t0Var) {
        jc.l.f(t0Var, "<set-?>");
        this.f17383c = t0Var;
    }

    public final void k(String str, String str2) {
        jc.l.f(str, "title");
        this.f17381a = str;
        this.f17382b = str2;
        notifyDataSetChanged();
    }
}

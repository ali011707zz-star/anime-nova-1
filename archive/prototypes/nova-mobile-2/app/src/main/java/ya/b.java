package ya;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import jc.l;
import qa.d;
import qa.e;

/* compiled from: MenuAdapter.kt */
/* loaded from: classes.dex */
public final class b extends RecyclerView.h<a> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16793a;

    /* renamed from: b, reason: collision with root package name */
    public final List<xa.a> f16794b;

    /* compiled from: MenuAdapter.kt */
    /* loaded from: classes.dex */
    public final class a extends RecyclerView.e0 {

        /* renamed from: a, reason: collision with root package name */
        public final View f16795a;

        /* renamed from: b, reason: collision with root package name */
        public final TextView f16796b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ b f16797c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b bVar, View view) {
            super(view);
            l.f(bVar, "this$0");
            l.f(view, "root");
            this.f16797c = bVar;
            this.f16795a = view;
            View findViewById = view.findViewById(d.f12634l);
            l.e(findViewById, "root.findViewById(R.id.text)");
            this.f16796b = (TextView) findViewById;
        }

        public final View a() {
            return this.f16795a;
        }

        public final TextView b() {
            return this.f16796b;
        }
    }

    public b(Context context, List<xa.a> list) {
        l.f(context, "context");
        l.f(list, "menuItems");
        this.f16793a = context;
        this.f16794b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i10) {
        l.f(aVar, "holder");
        aVar.a().setOnClickListener(this.f16794b.get(i10).b());
        aVar.b().setText(this.f16794b.get(i10).c());
        Integer a10 = this.f16794b.get(i10).a();
        if (a10 == null) {
            return;
        }
        aVar.b().setCompoundDrawablesWithIntrinsicBounds(f0.a.f(this.f16793a, a10.intValue()), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public a onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(e.f12639b, viewGroup, false);
        l.e(inflate, "view");
        return new a(this, inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f16794b.size();
    }
}

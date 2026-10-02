package u6;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import ic.r;
import jc.l;
import k1.r0;
import vb.p;

/* compiled from: RecommendationAdapterNew.kt */
/* loaded from: classes.dex */
public final class c extends r0<u4.a, g> {

    /* renamed from: d, reason: collision with root package name */
    public final r<Long, String, Boolean, Boolean, p> f14434d;

    /* compiled from: RecommendationAdapterNew.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<u4.a> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(u4.a aVar, u4.a aVar2) {
            l.f(aVar, "oldItem");
            l.f(aVar2, "newItem");
            return l.a(aVar, aVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(u4.a aVar, u4.a aVar2) {
            l.f(aVar, "oldItem");
            l.f(aVar2, "newItem");
            return aVar.f() == aVar2.f();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(r<? super Long, ? super String, ? super Boolean, ? super Boolean, p> rVar) {
        super(new a(), null, null, 6, null);
        l.f(rVar, "block");
        this.f14434d = rVar;
    }

    public static final void p(c cVar, u4.a aVar, View view) {
        l.f(cVar, "this$0");
        l.f(aVar, "$item");
        cVar.f14434d.v(Long.valueOf(aVar.f()), aVar.g(), Boolean.valueOf(aVar.v()), Boolean.valueOf(aVar.w()));
    }

    public static final void q(c cVar, u4.a aVar, View view) {
        l.f(cVar, "this$0");
        l.f(aVar, "$item");
        cVar.f14434d.v(Long.valueOf(aVar.o()), aVar.p(), Boolean.valueOf(aVar.y()), Boolean.valueOf(aVar.w()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(g gVar, int i10) {
        l.f(gVar, "holder");
        final u4.a g10 = g(i10);
        if (g10 == null) {
            return;
        }
        gVar.b().f8819e.setOnClickListener(new View.OnClickListener() { // from class: u6.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.p(c.this, g10, view);
            }
        });
        gVar.b().f8820f.setOnClickListener(new View.OnClickListener() { // from class: u6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c.q(c.this, g10, view);
            }
        });
        gVar.a(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        return g.f14458b.a(viewGroup);
    }
}

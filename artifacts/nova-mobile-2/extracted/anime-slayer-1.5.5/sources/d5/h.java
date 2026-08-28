package d5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import j4.e0;
import p4.p;

/* compiled from: CharacterRelatedAnimeAdapter.kt */
/* loaded from: classes.dex */
public final class h extends o<p, i> {

    /* renamed from: c, reason: collision with root package name */
    public final ic.l<p, vb.p> f5656c;

    /* compiled from: CharacterRelatedAnimeAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<p> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p pVar, p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return jc.l.a(pVar, pVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p pVar, p pVar2) {
            jc.l.f(pVar, "oldItem");
            jc.l.f(pVar2, "newItem");
            return pVar.m() == pVar2.m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public h(ic.l<? super p, vb.p> lVar) {
        super(new a());
        jc.l.f(lVar, "block");
        this.f5656c = lVar;
    }

    public static final void k(h hVar, int i10, View view) {
        jc.l.f(hVar, "this$0");
        ic.l<p, vb.p> lVar = hVar.f5656c;
        p f10 = hVar.f(i10);
        jc.l.e(f10, "getItem(position)");
        lVar.invoke(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(i iVar, final int i10) {
        jc.l.f(iVar, "holder");
        iVar.b().f8274b.setOnClickListener(new View.OnClickListener() { // from class: d5.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                h.k(h.this, i10, view);
            }
        });
        p f10 = f(i10);
        jc.l.e(f10, "getItem(position)");
        iVar.a(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        e0 c10 = e0.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new i(c10);
    }
}

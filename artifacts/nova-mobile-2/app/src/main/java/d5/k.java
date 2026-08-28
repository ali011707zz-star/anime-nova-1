package d5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import j4.b3;
import p4.q;
import vb.p;

/* compiled from: VoiceActorAdapter.kt */
/* loaded from: classes.dex */
public final class k extends o<q, l> {

    /* renamed from: c, reason: collision with root package name */
    public final ic.l<q, p> f5660c;

    /* compiled from: VoiceActorAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<q> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(q qVar, q qVar2) {
            jc.l.f(qVar, "oldItem");
            jc.l.f(qVar2, "newItem");
            return jc.l.a(qVar, qVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(q qVar, q qVar2) {
            jc.l.f(qVar, "oldItem");
            jc.l.f(qVar2, "newItem");
            return qVar.a() == qVar2.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public k(ic.l<? super q, p> lVar) {
        super(new a());
        jc.l.f(lVar, "onClick");
        this.f5660c = lVar;
    }

    public static final void k(k kVar, q qVar, View view) {
        jc.l.f(kVar, "this$0");
        ic.l<q, p> lVar = kVar.f5660c;
        jc.l.e(qVar, "item");
        lVar.invoke(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(l lVar, int i10) {
        jc.l.f(lVar, "holder");
        final q f10 = f(i10);
        lVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: d5.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                k.k(k.this, f10, view);
            }
        });
        jc.l.e(f10, "item");
        lVar.a(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        b3 c10 = b3.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        jc.l.e(c10, "inflate(inflater, parent, false)");
        return new l(c10);
    }
}

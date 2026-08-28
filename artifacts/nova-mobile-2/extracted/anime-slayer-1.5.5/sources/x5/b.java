package x5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import com.anslayer.R;
import ic.p;
import jc.l;
import k1.r0;

/* compiled from: CustomListAdapter.kt */
/* loaded from: classes.dex */
public final class b extends r0<p4.j, i> {

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15988d;

    /* renamed from: e, reason: collision with root package name */
    public final p<p4.j, Boolean, vb.p> f15989e;

    /* compiled from: CustomListAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<p4.j> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p4.j jVar, p4.j jVar2) {
            l.f(jVar, "oldItem");
            l.f(jVar2, "newItem");
            return l.a(jVar, jVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p4.j jVar, p4.j jVar2) {
            l.f(jVar, "oldItem");
            l.f(jVar2, "newItem");
            return jVar.c() == jVar2.c();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(boolean z10, p<? super p4.j, ? super Boolean, vb.p> pVar) {
        super(new a(), null, null, 6, null);
        l.f(pVar, "onClick");
        this.f15988d = z10;
        this.f15989e = pVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(i iVar, int i10) {
        l.f(iVar, "holder");
        p4.j g10 = g(i10);
        if (g10 == null) {
            return;
        }
        iVar.e(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.custom_list_item, viewGroup, false);
        l.e(inflate, "inflater.inflate(R.layou…list_item, parent, false)");
        return new i(inflate, this.f15989e, this.f15988d);
    }

    public /* synthetic */ b(boolean z10, p pVar, int i10, jc.g gVar) {
        this((i10 & 1) != 0 ? false : z10, pVar);
    }
}

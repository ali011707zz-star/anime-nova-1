package w5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.o;
import com.anslayer.R;
import ic.l;
import p4.h;
import vb.p;

/* compiled from: TopContributorsAdapter.kt */
/* loaded from: classes.dex */
public final class d extends o<h, f> {

    /* renamed from: c, reason: collision with root package name */
    public final l<h, p> f15251c;

    /* compiled from: TopContributorsAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends j.f<h> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(h hVar, h hVar2) {
            jc.l.f(hVar, "oldItem");
            jc.l.f(hVar2, "newItem");
            return jc.l.a(hVar, hVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(h hVar, h hVar2) {
            jc.l.f(hVar, "oldItem");
            jc.l.f(hVar2, "newItem");
            return hVar.e() == hVar2.e();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public d(l<? super h, p> lVar) {
        super(new a());
        jc.l.f(lVar, "onClick");
        this.f15251c = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f fVar, int i10) {
        jc.l.f(fVar, "holder");
        h f10 = f(i10);
        if (f10 == null) {
            return;
        }
        fVar.c(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public f onCreateViewHolder(ViewGroup viewGroup, int i10) {
        jc.l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.top_contributers_item, viewGroup, false);
        jc.l.e(inflate, "inflater.inflate(R.layou…ters_item, parent, false)");
        return new f(inflate, this.f15251c);
    }
}

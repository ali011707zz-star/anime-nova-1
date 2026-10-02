package a6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import com.anslayer.R;
import jc.l;
import k1.r0;
import p4.p;

/* compiled from: AddAnimeAdapter.kt */
/* loaded from: classes.dex */
public final class a extends r0<p, f> {

    /* renamed from: d, reason: collision with root package name */
    public final b f406d;

    /* compiled from: AddAnimeAdapter.kt */
    /* renamed from: a6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0012a extends j.f<p> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p pVar, p pVar2) {
            l.f(pVar, "oldItem");
            l.f(pVar2, "newItem");
            return l.a(pVar, pVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p pVar, p pVar2) {
            l.f(pVar, "oldItem");
            l.f(pVar2, "newItem");
            return pVar.m() == pVar2.m();
        }
    }

    /* compiled from: AddAnimeAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void d(p pVar, int i10);

        void g(p pVar, int i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar) {
        super(new C0012a(), null, null, 6, null);
        l.f(cVar, "fragment");
        this.f406d = cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(f fVar, int i10) {
        l.f(fVar, "holder");
        p g10 = g(i10);
        if (g10 == null) {
            return;
        }
        fVar.e(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public f onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.add_anime_holder, viewGroup, false);
        l.e(inflate, "inflater.inflate(R.layou…me_holder, parent, false)");
        return new f(inflate, this.f406d);
    }
}

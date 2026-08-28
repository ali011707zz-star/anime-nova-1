package k6;

import android.view.ViewGroup;
import androidx.recyclerview.widget.j;
import jc.l;
import k1.r0;

/* compiled from: BrowseCharacterAdapter.kt */
/* loaded from: classes.dex */
public final class a extends r0<p4.e, d> {

    /* renamed from: d, reason: collision with root package name */
    public final b f10011d;

    /* compiled from: BrowseCharacterAdapter.kt */
    /* renamed from: k6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0212a extends j.f<p4.e> {
        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean a(p4.e eVar, p4.e eVar2) {
            l.f(eVar, "oldItem");
            l.f(eVar2, "newItem");
            return l.a(eVar, eVar2);
        }

        @Override // androidx.recyclerview.widget.j.f
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public boolean b(p4.e eVar, p4.e eVar2) {
            l.f(eVar, "oldItem");
            l.f(eVar2, "newItem");
            return eVar.b() == eVar2.b();
        }
    }

    /* compiled from: BrowseCharacterAdapter.kt */
    /* loaded from: classes.dex */
    public interface b {
        void j(p4.e eVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(k6.b bVar) {
        super(new C0212a(), null, null, 6, null);
        l.f(bVar, "fragment");
        this.f10011d = bVar;
    }

    public final b m() {
        return this.f10011d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(d dVar, int i10) {
        l.f(dVar, "holder");
        p4.e g10 = g(i10);
        if (g10 == null) {
            return;
        }
        dVar.c(g10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public d onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        return d.f10034d.a(viewGroup, this);
    }
}

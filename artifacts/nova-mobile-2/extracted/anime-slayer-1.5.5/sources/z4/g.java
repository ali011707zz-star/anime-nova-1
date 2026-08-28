package z4;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import io.wax911.support.custom.recycler.SupportViewHolder;
import j4.d0;
import jc.l;

/* compiled from: CharacterAnimeAdapter.kt */
/* loaded from: classes.dex */
public final class g extends n5.d<p4.c> {
    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public SupportViewHolder<p4.c> onCreateViewHolder(ViewGroup viewGroup, int i10) {
        l.f(viewGroup, "parent");
        d0 c10 = d0.c(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        l.e(c10, "inflate(inflater, parent, false)");
        return new j(c10);
    }
}

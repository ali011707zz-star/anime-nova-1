package l7;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* compiled from: ViewExtensions.kt */
/* loaded from: classes.dex */
public final class o extends RecyclerView.u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExtendedFloatingActionButton f10507a;

    public o(ExtendedFloatingActionButton extendedFloatingActionButton) {
        this.f10507a = extendedFloatingActionButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.u
    public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
        jc.l.f(recyclerView, "recyclerView");
        if (i11 <= 0) {
            this.f10507a.extend();
        } else {
            this.f10507a.shrink();
        }
    }
}

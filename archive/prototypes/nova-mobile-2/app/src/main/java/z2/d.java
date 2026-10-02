package z2;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import jc.l;
import kotlin.TypeCastException;

/* compiled from: PlainListDialogAdapter.kt */
/* loaded from: classes.dex */
public final class d extends RecyclerView.e0 implements View.OnClickListener {

    /* renamed from: f, reason: collision with root package name */
    public final TextView f17267f;

    /* renamed from: g, reason: collision with root package name */
    public final c f17268g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(View view, c cVar) {
        super(view);
        l.g(view, "itemView");
        l.g(cVar, "adapter");
        this.f17268g = cVar;
        view.setOnClickListener(this);
        View childAt = ((ViewGroup) view).getChildAt(0);
        if (childAt == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
        }
        this.f17267f = (TextView) childAt;
    }

    public final TextView a() {
        return this.f17267f;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.g(view, "view");
        this.f17268g.f(getAdapterPosition());
    }
}

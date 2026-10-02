package m1;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.u;

/* compiled from: PreferenceRecyclerViewAccessibilityDelegate.java */
@Deprecated
/* loaded from: classes.dex */
public class e extends u {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f10673a;

    /* renamed from: b, reason: collision with root package name */
    public final q0.a f10674b;

    /* renamed from: c, reason: collision with root package name */
    public final q0.a f10675c;

    /* compiled from: PreferenceRecyclerViewAccessibilityDelegate.java */
    /* loaded from: classes.dex */
    public class a extends q0.a {
        public a() {
        }

        @Override // q0.a
        public void onInitializeAccessibilityNodeInfo(View view, r0.c cVar) {
            Preference h10;
            e.this.f10674b.onInitializeAccessibilityNodeInfo(view, cVar);
            int childAdapterPosition = e.this.f10673a.getChildAdapterPosition(view);
            RecyclerView.h adapter = e.this.f10673a.getAdapter();
            if ((adapter instanceof androidx.preference.d) && (h10 = ((androidx.preference.d) adapter).h(childAdapterPosition)) != null) {
                h10.U(cVar);
            }
        }

        @Override // q0.a
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            return e.this.f10674b.performAccessibilityAction(view, i10, bundle);
        }
    }

    public e(RecyclerView recyclerView) {
        super(recyclerView);
        this.f10674b = super.getItemDelegate();
        this.f10675c = new a();
        this.f10673a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.u
    public q0.a getItemDelegate() {
        return this.f10675c;
    }
}

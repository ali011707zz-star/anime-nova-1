package d7;

import android.view.ActionMode;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ActionModeListener;
import java.util.ArrayList;
import java.util.List;
import jc.l;
import p4.p;

/* compiled from: ActionModeHelper.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ActionModeListener f5681a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5682b;

    /* renamed from: c, reason: collision with root package name */
    public ActionMode f5683c;

    /* renamed from: d, reason: collision with root package name */
    public RecyclerView.h<?> f5684d;

    /* renamed from: e, reason: collision with root package name */
    public final List<p> f5685e;

    public a(ActionModeListener actionModeListener, boolean z10) {
        this.f5681a = actionModeListener;
        this.f5682b = z10;
        this.f5685e = new ArrayList();
    }

    public final void a() {
        ActionMode actionMode = this.f5683c;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.f5685e.clear();
        RecyclerView.h<?> hVar = this.f5684d;
        if (hVar == null) {
            return;
        }
        hVar.notifyDataSetChanged();
    }

    public final void b(RecyclerView.e0 e0Var, p pVar) {
        ActionModeListener actionModeListener;
        this.f5685e.remove(pVar);
        h(e0Var, false);
        boolean isEmpty = this.f5685e.isEmpty();
        if (isEmpty) {
            ActionMode actionMode = this.f5683c;
            if (actionMode == null) {
                return;
            }
            actionMode.finish();
            return;
        }
        if (isEmpty || (actionModeListener = this.f5681a) == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.f5683c, this.f5685e.size());
    }

    public final List<p> c() {
        return this.f5685e;
    }

    public final boolean d(RecyclerView.e0 e0Var, p pVar) {
        l.f(e0Var, "viewHolder");
        l.f(pVar, "objectItem");
        if (this.f5682b) {
            if (this.f5685e.contains(pVar)) {
                b(e0Var, pVar);
            } else {
                g(e0Var, pVar);
            }
        }
        return true;
    }

    public final boolean e(RecyclerView.e0 e0Var, p pVar) {
        l.f(e0Var, "viewHolder");
        l.f(pVar, "objectItem");
        if (!this.f5682b || this.f5685e.isEmpty()) {
            return true;
        }
        if (this.f5685e.contains(pVar)) {
            b(e0Var, pVar);
            return false;
        }
        g(e0Var, pVar);
        return false;
    }

    public final void f(List<p> list) {
        l.f(list, "selectableItems");
        SupportExtentionKt.replaceWith(this.f5685e, list);
        RecyclerView.h<?> hVar = this.f5684d;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
        ActionModeListener actionModeListener = this.f5681a;
        if (actionModeListener == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.f5683c, this.f5685e.size());
    }

    public final void g(RecyclerView.e0 e0Var, p pVar) {
        k(e0Var);
        this.f5685e.add(pVar);
        h(e0Var, true);
        ActionModeListener actionModeListener = this.f5681a;
        if (actionModeListener == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.f5683c, this.f5685e.size());
    }

    public final void h(RecyclerView.e0 e0Var, boolean z10) {
        l.f(e0Var, "viewHolder");
        e0Var.itemView.getContext();
        if (z10) {
            e0Var.itemView.setBackgroundResource(R.drawable.selection_frame);
        } else {
            e0Var.itemView.setBackgroundColor(0);
        }
    }

    public final void i(boolean z10) {
        this.f5682b = z10;
    }

    public final void j(RecyclerView.h<?> hVar) {
        this.f5684d = hVar;
    }

    public final void k(RecyclerView.e0 e0Var) {
        if (this.f5685e.isEmpty()) {
            this.f5683c = e0Var.itemView.startActionMode(this.f5681a);
        }
    }

    public /* synthetic */ a(ActionModeListener actionModeListener, boolean z10, int i10, jc.g gVar) {
        this(actionModeListener, (i10 & 2) != 0 ? false : z10);
    }
}

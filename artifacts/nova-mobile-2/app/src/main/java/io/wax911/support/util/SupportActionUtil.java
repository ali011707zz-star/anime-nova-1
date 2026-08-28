package io.wax911.support.util;

import android.graphics.Color;
import android.view.ActionMode;
import android.view.View;
import android.widget.CheckBox;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import io.wax911.support.R;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.event.ActionModeListener;
import io.wax911.support.custom.recycler.SupportViewHolder;
import java.util.ArrayList;
import java.util.List;
import jc.g;
import jc.l;

/* compiled from: SupportActionUtil.kt */
/* loaded from: classes.dex */
public final class SupportActionUtil<T> {
    private ActionMode actionMode;
    private final ActionModeListener actionModeListener;
    private boolean isEnabled;
    private RecyclerView.h<?> recyclerAdapter;
    private final List<T> selectedItems;

    public SupportActionUtil(ActionModeListener actionModeListener, boolean z10) {
        this.actionModeListener = actionModeListener;
        this.isEnabled = z10;
        this.selectedItems = new ArrayList();
    }

    private final void deselectItem(SupportViewHolder<T> supportViewHolder, T t10) {
        ActionModeListener actionModeListener;
        this.selectedItems.remove(t10);
        setBackgroundColor(supportViewHolder, false);
        boolean isEmpty = this.selectedItems.isEmpty();
        if (isEmpty) {
            ActionMode actionMode = this.actionMode;
            if (actionMode == null) {
                return;
            }
            actionMode.finish();
            return;
        }
        if (isEmpty || (actionModeListener = this.actionModeListener) == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.actionMode, this.selectedItems.size());
    }

    private final void selectItem(SupportViewHolder<T> supportViewHolder, T t10) {
        startActionMode(supportViewHolder);
        this.selectedItems.add(t10);
        setBackgroundColor(supportViewHolder, true);
        ActionModeListener actionModeListener = this.actionModeListener;
        if (actionModeListener == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.actionMode, this.selectedItems.size());
    }

    private final void startActionMode(SupportViewHolder<T> supportViewHolder) {
        if (this.selectedItems.isEmpty()) {
            this.actionMode = supportViewHolder.itemView.startActionMode(this.actionModeListener);
        }
    }

    public final void clearSelection() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.selectedItems.clear();
        RecyclerView.h<?> hVar = this.recyclerAdapter;
        if (hVar == null) {
            return;
        }
        hVar.notifyDataSetChanged();
    }

    public final RecyclerView.h<?> getRecyclerAdapter() {
        return this.recyclerAdapter;
    }

    public final List<T> getSelectedItems() {
        return this.selectedItems;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isLongSelectionClickable(SupportViewHolder<T> supportViewHolder, T t10) {
        l.f(supportViewHolder, "viewHolder");
        if (this.isEnabled) {
            if (this.selectedItems.contains(t10)) {
                deselectItem(supportViewHolder, t10);
            } else {
                selectItem(supportViewHolder, t10);
            }
        }
        return true;
    }

    public final boolean isSelectionClickable(SupportViewHolder<T> supportViewHolder, T t10) {
        l.f(supportViewHolder, "viewHolder");
        if (!this.isEnabled || this.selectedItems.isEmpty()) {
            return true;
        }
        if (this.selectedItems.contains(t10)) {
            deselectItem(supportViewHolder, t10);
            return false;
        }
        selectItem(supportViewHolder, t10);
        return false;
    }

    public final void selectAllItems(List<? extends T> list) {
        l.f(list, "selectableItems");
        SupportExtentionKt.replaceWith(this.selectedItems, list);
        RecyclerView.h<?> hVar = this.recyclerAdapter;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
        ActionModeListener actionModeListener = this.actionModeListener;
        if (actionModeListener == null) {
            return;
        }
        actionModeListener.onSelectionChanged(this.actionMode, this.selectedItems.size());
    }

    public final void setBackgroundColor(SupportViewHolder<T> supportViewHolder, boolean z10) {
        l.f(supportViewHolder, "viewHolder");
        if (z10) {
            View view = supportViewHolder.itemView;
            if (view instanceof CardView) {
                ((CardView) view).setCardBackgroundColor(Color.parseColor("#bdbdbd"));
                return;
            } else if (view instanceof CheckBox) {
                ((CheckBox) view).setChecked(true);
                return;
            } else {
                view.setBackgroundResource(R.drawable.selection_frame);
                return;
            }
        }
        View view2 = supportViewHolder.itemView;
        if (view2 instanceof CardView) {
            ((CardView) view2).setCardBackgroundColor(SupportExtentionKt.getColorFromAttr(supportViewHolder.getContext(), R.attr.colorSurface));
        } else if (view2 instanceof CheckBox) {
            ((CheckBox) view2).setChecked(false);
        } else {
            view2.setBackgroundResource(0);
        }
    }

    public final void setEnabled(boolean z10) {
        this.isEnabled = z10;
    }

    public final void setRecyclerAdapter(RecyclerView.h<?> hVar) {
        this.recyclerAdapter = hVar;
    }

    public /* synthetic */ SupportActionUtil(ActionModeListener actionModeListener, boolean z10, int i10, g gVar) {
        this(actionModeListener, (i10 & 2) != 0 ? false : z10);
    }
}

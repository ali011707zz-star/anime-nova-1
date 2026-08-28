package io.wax911.support.custom.recycler;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.util.SupportActionUtil;
import jc.l;
import s3.c;
import vb.e;
import vb.f;

/* compiled from: SupportViewHolder.kt */
/* loaded from: classes.dex */
public abstract class SupportViewHolder<T> extends RecyclerView.e0 implements View.OnClickListener, View.OnLongClickListener {
    private ItemClickListener<T> clickListener;
    private final e context$delegate;
    private SupportActionUtil<T> supportActionUtil;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportViewHolder(View view) {
        super(view);
        l.f(view, "view");
        this.context$delegate = f.a(new SupportViewHolder$context$2(this));
    }

    private final boolean isClickable(T t10) {
        SupportActionUtil<T> supportActionUtil = this.supportActionUtil;
        if (supportActionUtil == null) {
            return true;
        }
        return supportActionUtil.isSelectionClickable(this, t10);
    }

    private final boolean isLongClickable(T t10) {
        SupportActionUtil<T> supportActionUtil = this.supportActionUtil;
        if (supportActionUtil == null) {
            return true;
        }
        return supportActionUtil.isLongSelectionClickable(this, t10);
    }

    private final c<Boolean> isValidIndexPair() {
        return new c<>(getBindingAdapterPosition(), Boolean.valueOf(getBindingAdapterPosition() != -1));
    }

    public final ItemClickListener<T> getClickListener() {
        return this.clickListener;
    }

    public final Context getContext() {
        Object value = this.context$delegate.getValue();
        l.e(value, "<get-context>(...)");
        return (Context) value;
    }

    public final SupportActionUtil<T> getSupportActionUtil() {
        return this.supportActionUtil;
    }

    public final SupportActionUtil<T> onBindSelectionState(T t10) {
        SupportActionUtil<T> supportActionUtil = this.supportActionUtil;
        if (supportActionUtil == null) {
            return null;
        }
        supportActionUtil.setBackgroundColor(this, supportActionUtil.getSelectedItems().contains(t10));
        return supportActionUtil;
    }

    public abstract void onBindViewHolder(T t10);

    public abstract void onClick(View view);

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return false;
    }

    public abstract void onViewRecycled();

    public final void performClick(T t10, View view) {
        ItemClickListener<T> itemClickListener;
        l.f(view, "v");
        c<Boolean> isValidIndexPair = isValidIndexPair();
        Boolean b10 = isValidIndexPair.b();
        l.e(b10, "pair.second");
        if (b10.booleanValue() && isClickable(t10) && (itemClickListener = this.clickListener) != null) {
            itemClickListener.onItemClick(view, new c<>(isValidIndexPair.a(), t10));
        }
    }

    public final boolean performLongClick(T t10, View view) {
        l.f(view, "v");
        c<Boolean> isValidIndexPair = isValidIndexPair();
        Boolean b10 = isValidIndexPair.b();
        l.e(b10, "pair.second");
        if (!(b10.booleanValue() && isLongClickable(t10))) {
            return false;
        }
        ItemClickListener<T> itemClickListener = this.clickListener;
        if (itemClickListener != null) {
            itemClickListener.onItemLongClick(view, new c<>(isValidIndexPair.a(), t10));
        }
        return true;
    }

    public final void setClickListener(ItemClickListener<T> itemClickListener) {
        this.clickListener = itemClickListener;
    }

    public final void setSupportActionUtil(SupportActionUtil<T> supportActionUtil) {
        this.supportActionUtil = supportActionUtil;
    }
}

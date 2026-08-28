package io.wax911.support.base.event;

import java.util.List;

/* compiled from: RecyclerChangeListener.kt */
/* loaded from: classes.dex */
public interface RecyclerChangeListener<T> {
    void onItemChanged(T t10);

    void onItemRangeChanged(List<? extends T> list);

    void onItemRangeInserted(List<? extends T> list);

    void onItemRemoved(T t10);

    void onItemsInserted(List<? extends T> list);
}

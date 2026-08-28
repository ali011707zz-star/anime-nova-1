package io.wax911.support.base.event;

import android.view.View;
import s3.c;

/* compiled from: ItemClickListener.kt */
/* loaded from: classes.dex */
public interface ItemClickListener<T> {
    void onItemClick(View view, c<T> cVar);

    void onItemLongClick(View view, c<T> cVar);
}

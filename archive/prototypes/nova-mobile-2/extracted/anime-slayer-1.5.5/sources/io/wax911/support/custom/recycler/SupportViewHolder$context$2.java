package io.wax911.support.custom.recycler;

import android.content.Context;
import ic.a;
import jc.m;

/* compiled from: SupportViewHolder.kt */
/* loaded from: classes.dex */
public final class SupportViewHolder$context$2 extends m implements a<Context> {
    public final /* synthetic */ SupportViewHolder<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportViewHolder$context$2(SupportViewHolder<T> supportViewHolder) {
        super(0);
        this.this$0 = supportViewHolder;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ic.a
    public final Context invoke() {
        return this.this$0.itemView.getContext().getApplicationContext();
    }
}

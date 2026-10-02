package io.wax911.support.custom.recycler;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.wax911.support.base.view.CustomView;
import jc.l;

/* compiled from: SupportRecyclerView.kt */
/* loaded from: classes.dex */
public final class SupportRecyclerView extends RecyclerView implements CustomView {
    private boolean isListenerPresent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRecyclerView(Context context) {
        super(context);
        l.f(context, "context");
        onInit();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void addOnScrollListener(RecyclerView.u uVar) {
        l.f(uVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        super.addOnScrollListener(uVar);
        this.isListenerPresent = true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void clearOnScrollListeners() {
        super.clearOnScrollListeners();
        this.isListenerPresent = false;
    }

    public final boolean hasOnScrollListener() {
        return this.isListenerPresent;
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        onInit();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportRecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        l.f(context, "context");
        onInit();
    }
}

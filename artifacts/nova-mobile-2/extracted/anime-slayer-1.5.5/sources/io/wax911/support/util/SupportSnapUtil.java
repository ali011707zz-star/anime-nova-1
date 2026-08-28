package io.wax911.support.util;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.t;
import io.wax911.support.base.view.CustomView;
import jc.l;

/* compiled from: SupportSnapUtil.kt */
/* loaded from: classes.dex */
public final class SupportSnapUtil extends t implements CustomView {
    private final PositionChangeListener positionChangeListener;

    /* compiled from: SupportSnapUtil.kt */
    /* loaded from: classes.dex */
    public interface PositionChangeListener {
        void onPageChanged(int i10);
    }

    public SupportSnapUtil(PositionChangeListener positionChangeListener) {
        this.positionChangeListener = positionChangeListener;
    }

    @Override // androidx.recyclerview.widget.t, androidx.recyclerview.widget.x
    public int findTargetSnapPosition(RecyclerView.p pVar, int i10, int i11) {
        l.f(pVar, "layoutManager");
        int findTargetSnapPosition = super.findTargetSnapPosition(pVar, i10, i11);
        PositionChangeListener positionChangeListener = this.positionChangeListener;
        if (positionChangeListener != null && findTargetSnapPosition != -1) {
            positionChangeListener.onPageChanged(findTargetSnapPosition + 1);
        }
        return findTargetSnapPosition;
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onInit() {
    }

    @Override // io.wax911.support.base.view.CustomView
    public void onViewRecycled() {
    }
}

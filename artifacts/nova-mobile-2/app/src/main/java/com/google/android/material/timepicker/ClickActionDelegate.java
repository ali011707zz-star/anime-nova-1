package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import q0.a;
import r0.c;

/* loaded from: classes.dex */
class ClickActionDelegate extends a {
    private final c.a clickAction;

    public ClickActionDelegate(Context context, int i10) {
        this.clickAction = new c.a(16, context.getString(i10));
    }

    @Override // q0.a
    public void onInitializeAccessibilityNodeInfo(View view, c cVar) {
        super.onInitializeAccessibilityNodeInfo(view, cVar);
        cVar.b(this.clickAction);
    }
}

package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class EndIconDelegate {
    public Context context;
    public CheckableImageButton endIconView;
    public TextInputLayout textInputLayout;

    public EndIconDelegate(TextInputLayout textInputLayout) {
        this.textInputLayout = textInputLayout;
        this.context = textInputLayout.getContext();
        this.endIconView = textInputLayout.getEndIconView();
    }

    public abstract void initialize();

    public boolean isBoxBackgroundModeSupported(int i10) {
        return true;
    }

    public void onSuffixVisibilityChanged(boolean z10) {
    }

    public boolean shouldTintIconOnError() {
        return false;
    }
}

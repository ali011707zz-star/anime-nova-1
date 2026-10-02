package com.google.android.material.textfield;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CustomEndIconDelegate extends EndIconDelegate {
    public CustomEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void initialize() {
        this.textInputLayout.setEndIconOnClickListener(null);
        this.textInputLayout.setEndIconOnLongClickListener(null);
    }
}

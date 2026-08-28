package com.twitter.sdk.android.core.models;

import ka.c;

/* loaded from: classes.dex */
public class SymbolEntity extends Entity {

    @c("text")
    public final String text;

    public SymbolEntity(String str, int i10, int i11) {
        super(i10, i11);
        this.text = str;
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }
}

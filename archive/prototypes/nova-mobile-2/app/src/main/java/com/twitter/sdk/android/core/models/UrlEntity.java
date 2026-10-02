package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.internal.ImagesContract;
import ka.c;

/* loaded from: classes.dex */
public class UrlEntity extends Entity {

    @c("display_url")
    public final String displayUrl;

    @c("expanded_url")
    public final String expandedUrl;

    @c(ImagesContract.URL)
    public final String url;

    public UrlEntity(String str, String str2, String str3, int i10, int i11) {
        super(i10, i11);
        this.url = str;
        this.expandedUrl = str2;
        this.displayUrl = str3;
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

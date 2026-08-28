package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.internal.ImagesContract;
import ka.c;

/* loaded from: classes.dex */
public class ImageValue {

    @c("alt")
    public final String alt;

    @c("height")
    public final int height;

    @c(ImagesContract.URL)
    public final String url;

    @c("width")
    public final int width;

    public ImageValue(int i10, int i11, String str, String str2) {
        this.height = i10;
        this.width = i11;
        this.url = str;
        this.alt = str2;
    }
}

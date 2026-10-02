package com.twitter.sdk.android.core.models;

import ka.c;

/* loaded from: classes.dex */
public class Media {

    @c("image")
    public final Image image;

    @c("media_id")
    public final long mediaId;

    @c("media_id_string")
    public final String mediaIdString;

    @c("size")
    public final long size;

    public Media(long j10, String str, long j11, Image image) {
        this.mediaId = j10;
        this.mediaIdString = str;
        this.size = j11;
        this.image = image;
    }
}

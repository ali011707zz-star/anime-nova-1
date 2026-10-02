package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.internal.ImagesContract;
import java.io.Serializable;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class VideoInfo implements Serializable {

    @c("aspect_ratio")
    public final List<Integer> aspectRatio;

    @c("duration_millis")
    public final long durationMillis;

    @c("variants")
    public final List<Variant> variants;

    /* loaded from: classes.dex */
    public static class Variant implements Serializable {

        @c("bitrate")
        public final long bitrate;

        @c("content_type")
        public final String contentType;

        @c(ImagesContract.URL)
        public final String url;

        public Variant(long j10, String str, String str2) {
            this.bitrate = j10;
            this.contentType = str;
            this.url = str2;
        }
    }

    public VideoInfo(List<Integer> list, long j10, List<Variant> list2) {
        this.aspectRatio = ModelUtils.getSafeList(list);
        this.durationMillis = j10;
        this.variants = ModelUtils.getSafeList(list2);
    }
}

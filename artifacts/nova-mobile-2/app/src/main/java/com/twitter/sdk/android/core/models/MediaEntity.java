package com.twitter.sdk.android.core.models;

import java.io.Serializable;
import ka.c;

/* loaded from: classes.dex */
public class MediaEntity extends UrlEntity {

    @c("ext_alt_text")
    public final String altText;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final long f4977id;

    @c("id_str")
    public final String idStr;

    @c("media_url")
    public final String mediaUrl;

    @c("media_url_https")
    public final String mediaUrlHttps;

    @c("sizes")
    public final Sizes sizes;

    @c("source_status_id")
    public final long sourceStatusId;

    @c("source_status_id_str")
    public final String sourceStatusIdStr;

    @c("type")
    public final String type;

    @c("video_info")
    public final VideoInfo videoInfo;

    /* loaded from: classes.dex */
    public static class Size implements Serializable {

        /* renamed from: h, reason: collision with root package name */
        @c("h")
        public final int f4978h;

        @c("resize")
        public final String resize;

        /* renamed from: w, reason: collision with root package name */
        @c("w")
        public final int f4979w;

        public Size(int i10, int i11, String str) {
            this.f4979w = i10;
            this.f4978h = i11;
            this.resize = str;
        }
    }

    /* loaded from: classes.dex */
    public static class Sizes implements Serializable {

        @c("large")
        public final Size large;

        @c("medium")
        public final Size medium;

        @c("small")
        public final Size small;

        @c("thumb")
        public final Size thumb;

        public Sizes(Size size, Size size2, Size size3, Size size4) {
            this.thumb = size;
            this.small = size2;
            this.medium = size3;
            this.large = size4;
        }
    }

    public MediaEntity(String str, String str2, String str3, int i10, int i11, long j10, String str4, String str5, String str6, Sizes sizes, long j11, String str7, String str8, VideoInfo videoInfo, String str9) {
        super(str, str2, str3, i10, i11);
        this.f4977id = j10;
        this.idStr = str4;
        this.mediaUrl = str5;
        this.mediaUrlHttps = str6;
        this.sizes = sizes;
        this.sourceStatusId = j11;
        this.sourceStatusIdStr = str7;
        this.type = str8;
        this.videoInfo = videoInfo;
        this.altText = str9;
    }
}

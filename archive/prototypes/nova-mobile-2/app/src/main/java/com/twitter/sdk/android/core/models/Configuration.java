package com.twitter.sdk.android.core.models;

import com.twitter.sdk.android.core.models.MediaEntity;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class Configuration {

    @c("dm_text_character_limit")
    public final int dmTextCharacterLimit;

    @c("non_username_paths")
    public final List<String> nonUsernamePaths;

    @c("photo_size_limit")
    public final long photoSizeLimit;

    @c("photo_sizes")
    public final MediaEntity.Sizes photoSizes;

    @c("short_url_length_https")
    public final int shortUrlLengthHttps;

    public Configuration(int i10, List<String> list, long j10, MediaEntity.Sizes sizes, int i11) {
        this.dmTextCharacterLimit = i10;
        this.nonUsernamePaths = ModelUtils.getSafeList(list);
        this.photoSizeLimit = j10;
        this.photoSizes = sizes;
        this.shortUrlLengthHttps = i11;
    }
}

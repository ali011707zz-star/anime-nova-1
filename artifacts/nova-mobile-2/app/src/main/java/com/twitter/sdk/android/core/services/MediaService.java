package com.twitter.sdk.android.core.services;

import com.twitter.sdk.android.core.models.Media;
import okhttp3.RequestBody;
import rd.b;
import td.l;
import td.o;
import td.q;

/* loaded from: classes.dex */
public interface MediaService {
    @o("https://upload.twitter.com/1.1/media/upload.json")
    @l
    b<Media> upload(@q("media") RequestBody requestBody, @q("media_data") RequestBody requestBody2, @q("additional_owners") RequestBody requestBody3);
}

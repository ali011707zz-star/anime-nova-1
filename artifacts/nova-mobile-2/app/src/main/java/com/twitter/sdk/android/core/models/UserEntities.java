package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class UserEntities {

    @c("description")
    public final UrlEntities description;

    @c(ImagesContract.URL)
    public final UrlEntities url;

    /* loaded from: classes.dex */
    public static class UrlEntities {

        @c("urls")
        public final List<UrlEntity> urls;

        public UrlEntities(List<UrlEntity> list) {
            this.urls = ModelUtils.getSafeList(list);
        }
    }

    public UserEntities(UrlEntities urlEntities, UrlEntities urlEntities2) {
        this.url = urlEntities;
        this.description = urlEntities2;
    }
}

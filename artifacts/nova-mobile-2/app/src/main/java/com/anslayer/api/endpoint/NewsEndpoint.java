package com.anslayer.api.endpoint;

import java.util.List;
import n4.c;
import n4.d;
import rd.b;
import s4.a;
import td.f;
import td.t;

/* compiled from: NewsEndpoint.kt */
/* loaded from: classes.dex */
public interface NewsEndpoint {
    @f("news/get-published-news")
    b<c<d<List<a>>>> getPublishedNews(@t("json") String str);

    @f("news/get-published-news")
    Object getPublishedNewsV2(@t("json") String str, ac.d<? super c<d<List<a>>>> dVar);
}

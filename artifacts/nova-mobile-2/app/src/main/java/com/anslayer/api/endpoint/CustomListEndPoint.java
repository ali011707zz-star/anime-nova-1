package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import p4.j;
import p4.p;
import td.c;
import td.e;
import td.f;
import td.h;
import td.o;
import wc.t;

/* compiled from: CustomListEndPoint.kt */
/* loaded from: classes.dex */
public interface CustomListEndPoint {
    @e
    @o("animes/add-to-custom-list")
    Object addAnimeToCustomList(@c("custom_list_id") long j10, @c("anime_id") long j11, d<? super ResponseBody> dVar);

    @e
    @o("animes/create-custom-list")
    Object addCustomList(@c("title") String str, @c("description") String str2, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "animes/remove-from-custom-list")
    Object deleteAnimeFromCustomList(@c("custom_list_id") long j10, @c("anime_id") String str, d<? super ResponseBody> dVar);

    @e
    @h(hasBody = t.f15537a, method = HttpDelete.METHOD_NAME, path = "animes/remove-custom-list")
    Object deleteCustomList(@c("custom_list_id") long j10, d<? super ResponseBody> dVar);

    @f("animes/get-custom-lists")
    Object getCustomList(@td.t("json") String str, d<? super n4.c<n4.d<List<j>>>> dVar);

    @f("animes/get-published-animes")
    Object getCustomListAnimes(@td.t("json") String str, d<? super n4.c<n4.d<List<p>>>> dVar);

    @e
    @td.p("animes/update-custom-list")
    Object updateCustomList(@c("custom_list_id") long j10, @c("title") String str, @c("description") String str2, d<? super ResponseBody> dVar);
}

package com.anslayer.api.endpoint;

import ac.d;
import java.util.List;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.apache.http.client.methods.HttpDelete;
import r4.i;
import rd.b;
import td.c;
import td.e;
import td.f;
import td.h;
import td.l;
import td.o;
import td.p;
import td.q;
import td.t;
import w4.a;

/* compiled from: UserEndpoint.kt */
/* loaded from: classes.dex */
public interface UserEndpoint {
    @e
    @o("user/update-email")
    Object addEmail(@c("email") String str, d<? super n4.c<i>> dVar);

    @e
    @o("users/block-user")
    Object blockUser(@c("user_id") long j10, d<? super ResponseBody> dVar);

    @e
    @p("user/change-username")
    Object changeFacebookUsername(@c("user_id") long j10, @c("username") String str, @c("token") String str2, @c("newUsername") String str3, d<? super n4.c<i>> dVar);

    @f("user/check-username")
    Object checkUsername(@t("user_handle") String str, d<? super ResponseBody> dVar);

    @e
    @o("user/create-user")
    Object createUser(@c("email") String str, @c("password") String str2, @c("confirm_password") String str3, @c("user_full_name") String str4, @c("device_id") String str5, d<? super n4.c<n4.d<w4.e>>> dVar);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "user/delete-user-notification")
    b<ResponseBody> deleteUsersNotification(@c("notification_id") Long l10, @c("all") String str);

    @f("users/get-blocked-users")
    Object getBlockedUsers(@t("json") String str, d<? super n4.c<n4.d<List<a>>>> dVar);

    @f("user/get-top-contributors")
    Object getContributors(d<? super n4.c<List<p4.h>>> dVar);

    @f("user/get-user")
    b<n4.c<w4.e>> getUser();

    @f("animes/get-users-lists")
    Object getUserList(@t("user_id") long j10, d<? super w4.c> dVar);

    @f("user/get-user-notifications")
    b<n4.c<n4.d<List<w4.b>>>> getUserNotifications(@t("json") String str);

    @f("user/get-user-status")
    b<n4.c<w4.e>> getUserStatus(@t("user_id") String str);

    @f("user/get-user-status")
    Object getUserStatusV2(@t("user_id") String str, d<? super n4.c<w4.e>> dVar);

    @f("user/get-user")
    Object getUserV2(d<? super n4.c<w4.e>> dVar);

    @td.b("user/delete-user-image")
    b<ResponseBody> removeUserImage();

    @e
    @o("users/profile-image-flag")
    Object reportUserImage(@c("user_id") long j10, d<? super ResponseBody> dVar);

    @e
    @o("user/send-activation-code")
    b<ResponseBody> sendActivationCode(@c("email") String str);

    @e
    @o("user/sync-fcm-token")
    b<ResponseBody> syncFCMToken(@c("device_id") String str, @c("fcm_token") String str2);

    @e
    @h(hasBody = wc.t.f15537a, method = HttpDelete.METHOD_NAME, path = "users/unblock-user")
    Object unblockUser(@c("user_id") long j10, d<? super ResponseBody> dVar);

    @o("user/update-profilev2")
    @l
    Object updateProfile(@q("user_full_name") RequestBody requestBody, @q("user_handle") RequestBody requestBody2, @q("bio") RequestBody requestBody3, @q("location") RequestBody requestBody4, @q("birthdate") RequestBody requestBody5, @q MultipartBody.Part part, @q MultipartBody.Part part2, d<? super n4.c<n4.d<w4.e>>> dVar);

    @e
    @p("user/update-user")
    b<n4.c<w4.e>> updateUser(@c("email") String str, @c("user_full_name") String str2, @c("user_favorite_notification") String str3, @c("user_news_notification") String str4, @c("show_mylist_details") String str5);

    @e
    @p("user/update-profile")
    Object updateUserFullName(@c("user_full_name") String str, d<? super n4.c<w4.e>> dVar);

    @e
    @p("user/update-user")
    Object updateUserV2(@c("email") String str, @c("user_full_name") String str2, @c("user_news_notification") String str3, @c("show_mylist_details") String str4, d<? super n4.c<w4.e>> dVar);

    @e
    @p("user/update-user-notification")
    b<ResponseBody> updateUsersNotification(@c("notification_id") Long l10, @c("unread") String str, @c("all") String str2);

    @f("user/is-user-already-exists")
    Object userExists(@t("email") String str, d<? super ResponseBody> dVar);
}

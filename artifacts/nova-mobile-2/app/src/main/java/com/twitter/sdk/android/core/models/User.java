package com.twitter.sdk.android.core.models;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.twitter.sdk.android.core.identity.AuthHandler;
import java.io.Serializable;
import java.util.List;
import ka.c;

/* loaded from: classes.dex */
public class User implements Serializable, Identifiable {
    public static final long INVALID_ID = -1;
    private static final long serialVersionUID = 4663450696842173958L;

    @c("contributors_enabled")
    public final boolean contributorsEnabled;

    @c("created_at")
    public final String createdAt;

    @c("default_profile")
    public final boolean defaultProfile;

    @c("default_profile_image")
    public final boolean defaultProfileImage;

    @c("description")
    public final String description;

    @c(Scopes.EMAIL)
    public final String email;

    @c("entities")
    public final UserEntities entities;

    @c("favourites_count")
    public final int favouritesCount;

    @c("follow_request_sent")
    public final boolean followRequestSent;

    @c("followers_count")
    public final int followersCount;

    @c("friends_count")
    public final int friendsCount;

    @c("geo_enabled")
    public final boolean geoEnabled;

    /* renamed from: id, reason: collision with root package name */
    @c("id")
    public final long f4985id;

    @c("id_str")
    public final String idStr;

    @c("is_translator")
    public final boolean isTranslator;

    @c("lang")
    public final String lang;

    @c("listed_count")
    public final int listedCount;

    @c("location")
    public final String location;

    @c(AppMeasurementSdk.ConditionalUserProperty.NAME)
    public final String name;

    @c("profile_background_color")
    public final String profileBackgroundColor;

    @c("profile_background_image_url")
    public final String profileBackgroundImageUrl;

    @c("profile_background_image_url_https")
    public final String profileBackgroundImageUrlHttps;

    @c("profile_background_tile")
    public final boolean profileBackgroundTile;

    @c("profile_banner_url")
    public final String profileBannerUrl;

    @c("profile_image_url")
    public final String profileImageUrl;

    @c("profile_image_url_https")
    public final String profileImageUrlHttps;

    @c("profile_link_color")
    public final String profileLinkColor;

    @c("profile_sidebar_border_color")
    public final String profileSidebarBorderColor;

    @c("profile_sidebar_fill_color")
    public final String profileSidebarFillColor;

    @c("profile_text_color")
    public final String profileTextColor;

    @c("profile_use_background_image")
    public final boolean profileUseBackgroundImage;

    @c("protected")
    public final boolean protectedUser;

    @c(AuthHandler.EXTRA_SCREEN_NAME)
    public final String screenName;

    @c("show_all_inline_media")
    public final boolean showAllInlineMedia;

    @c("status")
    public final Tweet status;

    @c("statuses_count")
    public final int statusesCount;

    @c("time_zone")
    public final String timeZone;

    @c(ImagesContract.URL)
    public final String url;

    @c("utc_offset")
    public final int utcOffset;

    @c("verified")
    public final boolean verified;

    @c("withheld_in_countries")
    public final List<String> withheldInCountries;

    @c("withheld_scope")
    public final String withheldScope;

    public User(boolean z10, String str, boolean z11, boolean z12, String str2, String str3, UserEntities userEntities, int i10, boolean z13, int i11, int i12, boolean z14, long j10, String str4, boolean z15, String str5, int i13, String str6, String str7, String str8, String str9, String str10, boolean z16, String str11, String str12, String str13, String str14, String str15, String str16, String str17, boolean z17, boolean z18, String str18, boolean z19, Tweet tweet, int i14, String str19, String str20, int i15, boolean z20, List<String> list, String str21) {
        this.contributorsEnabled = z10;
        this.createdAt = str;
        this.defaultProfile = z11;
        this.defaultProfileImage = z12;
        this.description = str2;
        this.email = str3;
        this.entities = userEntities;
        this.favouritesCount = i10;
        this.followRequestSent = z13;
        this.followersCount = i11;
        this.friendsCount = i12;
        this.geoEnabled = z14;
        this.f4985id = j10;
        this.idStr = str4;
        this.isTranslator = z15;
        this.lang = str5;
        this.listedCount = i13;
        this.location = str6;
        this.name = str7;
        this.profileBackgroundColor = str8;
        this.profileBackgroundImageUrl = str9;
        this.profileBackgroundImageUrlHttps = str10;
        this.profileBackgroundTile = z16;
        this.profileBannerUrl = str11;
        this.profileImageUrl = str12;
        this.profileImageUrlHttps = str13;
        this.profileLinkColor = str14;
        this.profileSidebarBorderColor = str15;
        this.profileSidebarFillColor = str16;
        this.profileTextColor = str17;
        this.profileUseBackgroundImage = z17;
        this.protectedUser = z18;
        this.screenName = str18;
        this.showAllInlineMedia = z19;
        this.status = tweet;
        this.statusesCount = i14;
        this.timeZone = str19;
        this.url = str20;
        this.utcOffset = i15;
        this.verified = z20;
        this.withheldInCountries = list;
        this.withheldScope = str21;
    }

    @Override // com.twitter.sdk.android.core.models.Identifiable
    public long getId() {
        return this.f4985id;
    }
}

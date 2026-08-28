package io.wax911.support.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import jc.g;
import jc.l;

/* compiled from: SocialUser.kt */
/* loaded from: classes.dex */
public final class SocialUser implements Parcelable {
    public static final Parcelable.Creator<SocialUser> CREATOR = new Creator();
    private String accessToken;
    private String email;
    private String fullName;
    private String pageLink;
    private String profilePictureUrl;
    private String secretToken;
    private String userId;
    private String username;

    /* compiled from: SocialUser.kt */
    /* loaded from: classes.dex */
    public static final class Creator implements Parcelable.Creator<SocialUser> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialUser createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new SocialUser(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SocialUser[] newArray(int i10) {
            return new SocialUser[i10];
        }
    }

    public SocialUser() {
        this(null, null, null, null, null, null, null, null, BaseProgressIndicator.MAX_ALPHA, null);
    }

    public SocialUser(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.userId = str;
        this.accessToken = str2;
        this.secretToken = str3;
        this.profilePictureUrl = str4;
        this.username = str5;
        this.fullName = str6;
        this.email = str7;
        this.pageLink = str8;
    }

    public final String component1() {
        return this.userId;
    }

    public final String component2() {
        return this.accessToken;
    }

    public final String component3() {
        return this.secretToken;
    }

    public final String component4() {
        return this.profilePictureUrl;
    }

    public final String component5() {
        return this.username;
    }

    public final String component6() {
        return this.fullName;
    }

    public final String component7() {
        return this.email;
    }

    public final String component8() {
        return this.pageLink;
    }

    public final SocialUser copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return new SocialUser(str, str2, str3, str4, str5, str6, str7, str8);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !l.a(SocialUser.class, obj.getClass())) {
            return false;
        }
        String str = this.userId;
        String str2 = ((SocialUser) obj).userId;
        return str != null ? l.a(str, str2) : str2 == null;
    }

    public final String getAccessToken() {
        return this.accessToken;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getFullName() {
        return this.fullName;
    }

    public final String getPageLink() {
        return this.pageLink;
    }

    public final String getProfilePictureUrl() {
        return this.profilePictureUrl;
    }

    public final String getSecretToken() {
        return this.secretToken;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.userId;
        if (str == null) {
            return 0;
        }
        l.c(str);
        return str.hashCode();
    }

    public final void setAccessToken(String str) {
        this.accessToken = str;
    }

    public final void setEmail(String str) {
        this.email = str;
    }

    public final void setFullName(String str) {
        this.fullName = str;
    }

    public final void setPageLink(String str) {
        this.pageLink = str;
    }

    public final void setProfilePictureUrl(String str) {
        this.profilePictureUrl = str;
    }

    public final void setSecretToken(String str) {
        this.secretToken = str;
    }

    public final void setUserId(String str) {
        this.userId = str;
    }

    public final void setUsername(String str) {
        this.username = str;
    }

    public String toString() {
        return "SocialUser(userId=" + ((Object) this.userId) + ", accessToken=" + ((Object) this.accessToken) + ", secretToken=" + ((Object) this.secretToken) + ", profilePictureUrl=" + ((Object) this.profilePictureUrl) + ", username=" + ((Object) this.username) + ", fullName=" + ((Object) this.fullName) + ", email=" + ((Object) this.email) + ", pageLink=" + ((Object) this.pageLink) + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeString(this.userId);
        parcel.writeString(this.accessToken);
        parcel.writeString(this.secretToken);
        parcel.writeString(this.profilePictureUrl);
        parcel.writeString(this.username);
        parcel.writeString(this.fullName);
        parcel.writeString(this.email);
        parcel.writeString(this.pageLink);
    }

    public /* synthetic */ SocialUser(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10, g gVar) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? null : str4, (i10 & 16) != 0 ? null : str5, (i10 & 32) != 0 ? null : str6, (i10 & 64) != 0 ? null : str7, (i10 & 128) == 0 ? str8 : null);
    }
}

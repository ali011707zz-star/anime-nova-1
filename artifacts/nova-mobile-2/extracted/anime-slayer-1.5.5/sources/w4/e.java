package w4;

import android.os.Parcel;
import android.os.Parcelable;
import jc.g;
import jc.l;

/* compiled from: User.kt */
/* loaded from: classes.dex */
public final class e implements Parcelable {
    private String bio;
    private String birthdate;
    private String blocked;
    private boolean facebook_linked;
    private final String full_name_updated_at;
    private boolean google_linked;
    private String location;
    private final String points;
    private final String role;
    private String show_mylist_details;
    private final Integer total_animes_user_dropped;
    private final Integer total_animes_user_episodes_watched;
    private final Integer total_animes_user_favorites;
    private final Integer total_animes_user_on_hold;
    private final Integer total_animes_user_plan_to_watch;
    private final Integer total_animes_user_watched;
    private final Integer total_animes_user_watching;
    private boolean twitter_linked;
    private String user_cover_url;
    private final String user_created_at;
    private String user_full_name;
    private String user_handle;
    private final long user_id;
    private String user_image_url;
    private String user_news_notification;
    private String username;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<e> CREATOR = new b();

    /* compiled from: User.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final e a() {
            return new e(0L, "", "", "", "", "", 0, 0, 0, 0, 0, 0, 0, "", "", "", false, false, false, "", "", "", "", "", "", "");
        }
    }

    /* compiled from: User.kt */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final e createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new e(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(long j10, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, String str6, String str7, String str8, boolean z10, boolean z11, boolean z12, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        l.f(str2, "user_full_name");
        l.f(str3, "user_image_url");
        l.f(str4, "user_cover_url");
        l.f(str9, "user_handle");
        l.f(str14, "user_created_at");
        this.user_id = j10;
        this.username = str;
        this.user_full_name = str2;
        this.user_image_url = str3;
        this.user_cover_url = str4;
        this.user_news_notification = str5;
        this.total_animes_user_favorites = num;
        this.total_animes_user_watching = num2;
        this.total_animes_user_plan_to_watch = num3;
        this.total_animes_user_watched = num4;
        this.total_animes_user_dropped = num5;
        this.total_animes_user_episodes_watched = num6;
        this.total_animes_user_on_hold = num7;
        this.blocked = str6;
        this.show_mylist_details = str7;
        this.full_name_updated_at = str8;
        this.facebook_linked = z10;
        this.twitter_linked = z11;
        this.google_linked = z12;
        this.user_handle = str9;
        this.role = str10;
        this.bio = str11;
        this.location = str12;
        this.birthdate = str13;
        this.user_created_at = str14;
        this.points = str15;
    }

    public final String A() {
        return this.user_created_at;
    }

    public final String B() {
        return this.user_full_name;
    }

    public final String C() {
        return this.user_handle;
    }

    public final long D() {
        return this.user_id;
    }

    public final String E() {
        return this.user_image_url;
    }

    public final String H() {
        return this.user_news_notification;
    }

    public final String I() {
        return this.username;
    }

    public final boolean J() {
        return this.user_id == 0;
    }

    public final void K(String str) {
        this.blocked = str;
    }

    public final void M(boolean z10) {
        this.google_linked = z10;
    }

    public final void O(String str) {
        this.show_mylist_details = str;
    }

    public final void P(boolean z10) {
        this.twitter_linked = z10;
    }

    public final void Q(String str) {
        this.user_news_notification = str;
    }

    public final e a(long j10, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Integer num6, Integer num7, String str6, String str7, String str8, boolean z10, boolean z11, boolean z12, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        l.f(str2, "user_full_name");
        l.f(str3, "user_image_url");
        l.f(str4, "user_cover_url");
        l.f(str9, "user_handle");
        l.f(str14, "user_created_at");
        return new e(j10, str, str2, str3, str4, str5, num, num2, num3, num4, num5, num6, num7, str6, str7, str8, z10, z11, z12, str9, str10, str11, str12, str13, str14, str15);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return l.m(" عدد الحلقات التي تم مشاهدتها : ", this.total_animes_user_episodes_watched);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.user_id == eVar.user_id && l.a(this.username, eVar.username) && l.a(this.user_full_name, eVar.user_full_name) && l.a(this.user_image_url, eVar.user_image_url) && l.a(this.user_cover_url, eVar.user_cover_url) && l.a(this.user_news_notification, eVar.user_news_notification) && l.a(this.total_animes_user_favorites, eVar.total_animes_user_favorites) && l.a(this.total_animes_user_watching, eVar.total_animes_user_watching) && l.a(this.total_animes_user_plan_to_watch, eVar.total_animes_user_plan_to_watch) && l.a(this.total_animes_user_watched, eVar.total_animes_user_watched) && l.a(this.total_animes_user_dropped, eVar.total_animes_user_dropped) && l.a(this.total_animes_user_episodes_watched, eVar.total_animes_user_episodes_watched) && l.a(this.total_animes_user_on_hold, eVar.total_animes_user_on_hold) && l.a(this.blocked, eVar.blocked) && l.a(this.show_mylist_details, eVar.show_mylist_details) && l.a(this.full_name_updated_at, eVar.full_name_updated_at) && this.facebook_linked == eVar.facebook_linked && this.twitter_linked == eVar.twitter_linked && this.google_linked == eVar.google_linked && l.a(this.user_handle, eVar.user_handle) && l.a(this.role, eVar.role) && l.a(this.bio, eVar.bio) && l.a(this.location, eVar.location) && l.a(this.birthdate, eVar.birthdate) && l.a(this.user_created_at, eVar.user_created_at) && l.a(this.points, eVar.points);
    }

    public final String f() {
        return this.bio;
    }

    public final String g() {
        return this.birthdate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a10 = m4.a.a(this.user_id) * 31;
        String str = this.username;
        int hashCode = (((((((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.user_full_name.hashCode()) * 31) + this.user_image_url.hashCode()) * 31) + this.user_cover_url.hashCode()) * 31;
        String str2 = this.user_news_notification;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.total_animes_user_favorites;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.total_animes_user_watching;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.total_animes_user_plan_to_watch;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.total_animes_user_watched;
        int hashCode6 = (hashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.total_animes_user_dropped;
        int hashCode7 = (hashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.total_animes_user_episodes_watched;
        int hashCode8 = (hashCode7 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.total_animes_user_on_hold;
        int hashCode9 = (hashCode8 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str3 = this.blocked;
        int hashCode10 = (hashCode9 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.show_mylist_details;
        int hashCode11 = (hashCode10 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.full_name_updated_at;
        int hashCode12 = (hashCode11 + (str5 == null ? 0 : str5.hashCode())) * 31;
        boolean z10 = this.facebook_linked;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode12 + i10) * 31;
        boolean z11 = this.twitter_linked;
        int i12 = z11;
        if (z11 != 0) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean z12 = this.google_linked;
        int hashCode13 = (((i13 + (z12 ? 1 : z12 ? 1 : 0)) * 31) + this.user_handle.hashCode()) * 31;
        String str6 = this.role;
        int hashCode14 = (hashCode13 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.bio;
        int hashCode15 = (hashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.location;
        int hashCode16 = (hashCode15 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.birthdate;
        int hashCode17 = (((hashCode16 + (str9 == null ? 0 : str9.hashCode())) * 31) + this.user_created_at.hashCode()) * 31;
        String str10 = this.points;
        return hashCode17 + (str10 != null ? str10.hashCode() : 0);
    }

    public final String i() {
        return this.blocked;
    }

    public final String j() {
        return this.full_name_updated_at;
    }

    public final boolean l() {
        return this.google_linked;
    }

    public final String m() {
        return this.location;
    }

    public final String n() {
        return this.points;
    }

    public final String o() {
        return this.role;
    }

    public final String p() {
        return this.show_mylist_details;
    }

    public final Integer q() {
        return this.total_animes_user_dropped;
    }

    public final Integer r() {
        return this.total_animes_user_favorites;
    }

    public final Integer s() {
        return this.total_animes_user_on_hold;
    }

    public final Integer t() {
        return this.total_animes_user_plan_to_watch;
    }

    public String toString() {
        return "User(user_id=" + this.user_id + ", username=" + ((Object) this.username) + ", user_full_name=" + this.user_full_name + ", user_image_url=" + this.user_image_url + ", user_cover_url=" + this.user_cover_url + ", user_news_notification=" + ((Object) this.user_news_notification) + ", total_animes_user_favorites=" + this.total_animes_user_favorites + ", total_animes_user_watching=" + this.total_animes_user_watching + ", total_animes_user_plan_to_watch=" + this.total_animes_user_plan_to_watch + ", total_animes_user_watched=" + this.total_animes_user_watched + ", total_animes_user_dropped=" + this.total_animes_user_dropped + ", total_animes_user_episodes_watched=" + this.total_animes_user_episodes_watched + ", total_animes_user_on_hold=" + this.total_animes_user_on_hold + ", blocked=" + ((Object) this.blocked) + ", show_mylist_details=" + ((Object) this.show_mylist_details) + ", full_name_updated_at=" + ((Object) this.full_name_updated_at) + ", facebook_linked=" + this.facebook_linked + ", twitter_linked=" + this.twitter_linked + ", google_linked=" + this.google_linked + ", user_handle=" + this.user_handle + ", role=" + ((Object) this.role) + ", bio=" + ((Object) this.bio) + ", location=" + ((Object) this.location) + ", birthdate=" + ((Object) this.birthdate) + ", user_created_at=" + this.user_created_at + ", points=" + ((Object) this.points) + ')';
    }

    public final Integer u() {
        return this.total_animes_user_watched;
    }

    public final Integer v() {
        return this.total_animes_user_watching;
    }

    public final boolean w() {
        return this.twitter_linked;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeLong(this.user_id);
        parcel.writeString(this.username);
        parcel.writeString(this.user_full_name);
        parcel.writeString(this.user_image_url);
        parcel.writeString(this.user_cover_url);
        parcel.writeString(this.user_news_notification);
        Integer num = this.total_animes_user_favorites;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.total_animes_user_watching;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.total_animes_user_plan_to_watch;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.total_animes_user_watched;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        Integer num5 = this.total_animes_user_dropped;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num5.intValue());
        }
        Integer num6 = this.total_animes_user_episodes_watched;
        if (num6 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num6.intValue());
        }
        Integer num7 = this.total_animes_user_on_hold;
        if (num7 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num7.intValue());
        }
        parcel.writeString(this.blocked);
        parcel.writeString(this.show_mylist_details);
        parcel.writeString(this.full_name_updated_at);
        parcel.writeInt(this.facebook_linked ? 1 : 0);
        parcel.writeInt(this.twitter_linked ? 1 : 0);
        parcel.writeInt(this.google_linked ? 1 : 0);
        parcel.writeString(this.user_handle);
        parcel.writeString(this.role);
        parcel.writeString(this.bio);
        parcel.writeString(this.location);
        parcel.writeString(this.birthdate);
        parcel.writeString(this.user_created_at);
        parcel.writeString(this.points);
    }

    public final String y() {
        return this.user_cover_url;
    }
}

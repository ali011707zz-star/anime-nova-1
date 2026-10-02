package r4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: AppConfig.kt */
/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    private final r4.a android_ads;
    private final String android_app_allow_bserver;
    private final String android_app_analytics;
    private final String android_app_anime_add_baseUrl;
    private final String android_app_direct;
    private final String android_app_key;
    private final String android_app_link;
    private final String android_app_note;
    private final String android_app_ol4;
    private final String android_app_ol4_regex;
    private final String android_app_ol4_str;
    private final String android_app_player;
    private final String android_app_player_ads_state;
    private final String android_app_player_all_servers;
    private final String android_app_player_huawei;
    private final String android_app_player_link;
    private final String android_app_player_package_name;
    private final int android_app_player_version_code;
    private final String android_app_version;
    private final String android_app_version_optional;
    private final int android_start_ad_interval;
    private final long configuration_id;

    /* compiled from: AppConfig.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new b(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : r4.a.CREATOR.createFromParcel(parcel), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    public b(long j10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, int i10, String str16, String str17, String str18, r4.a aVar, int i11) {
        jc.l.f(str4, "android_app_version");
        jc.l.f(str5, "android_app_version_optional");
        jc.l.f(str6, "android_app_link");
        jc.l.f(str8, "android_app_direct");
        jc.l.f(str9, "android_app_key");
        jc.l.f(str10, "android_app_player_huawei");
        jc.l.f(str11, "android_app_player_package_name");
        jc.l.f(str12, "android_app_allow_bserver");
        jc.l.f(str13, "android_app_player");
        jc.l.f(str14, "android_app_player_link");
        jc.l.f(str15, "android_app_player_all_servers");
        jc.l.f(str16, "android_app_player_ads_state");
        jc.l.f(str17, "android_app_anime_add_baseUrl");
        jc.l.f(str18, "android_app_analytics");
        this.configuration_id = j10;
        this.android_app_ol4 = str;
        this.android_app_ol4_str = str2;
        this.android_app_ol4_regex = str3;
        this.android_app_version = str4;
        this.android_app_version_optional = str5;
        this.android_app_link = str6;
        this.android_app_note = str7;
        this.android_app_direct = str8;
        this.android_app_key = str9;
        this.android_app_player_huawei = str10;
        this.android_app_player_package_name = str11;
        this.android_app_allow_bserver = str12;
        this.android_app_player = str13;
        this.android_app_player_link = str14;
        this.android_app_player_all_servers = str15;
        this.android_app_player_version_code = i10;
        this.android_app_player_ads_state = str16;
        this.android_app_anime_add_baseUrl = str17;
        this.android_app_analytics = str18;
        this.android_ads = aVar;
        this.android_start_ad_interval = i11;
    }

    public final r4.a a() {
        return this.android_ads;
    }

    public final String c() {
        return this.android_app_allow_bserver;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.android_app_analytics;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.configuration_id == bVar.configuration_id && jc.l.a(this.android_app_ol4, bVar.android_app_ol4) && jc.l.a(this.android_app_ol4_str, bVar.android_app_ol4_str) && jc.l.a(this.android_app_ol4_regex, bVar.android_app_ol4_regex) && jc.l.a(this.android_app_version, bVar.android_app_version) && jc.l.a(this.android_app_version_optional, bVar.android_app_version_optional) && jc.l.a(this.android_app_link, bVar.android_app_link) && jc.l.a(this.android_app_note, bVar.android_app_note) && jc.l.a(this.android_app_direct, bVar.android_app_direct) && jc.l.a(this.android_app_key, bVar.android_app_key) && jc.l.a(this.android_app_player_huawei, bVar.android_app_player_huawei) && jc.l.a(this.android_app_player_package_name, bVar.android_app_player_package_name) && jc.l.a(this.android_app_allow_bserver, bVar.android_app_allow_bserver) && jc.l.a(this.android_app_player, bVar.android_app_player) && jc.l.a(this.android_app_player_link, bVar.android_app_player_link) && jc.l.a(this.android_app_player_all_servers, bVar.android_app_player_all_servers) && this.android_app_player_version_code == bVar.android_app_player_version_code && jc.l.a(this.android_app_player_ads_state, bVar.android_app_player_ads_state) && jc.l.a(this.android_app_anime_add_baseUrl, bVar.android_app_anime_add_baseUrl) && jc.l.a(this.android_app_analytics, bVar.android_app_analytics) && jc.l.a(this.android_ads, bVar.android_ads) && this.android_start_ad_interval == bVar.android_start_ad_interval;
    }

    public final String f() {
        return this.android_app_anime_add_baseUrl;
    }

    public final String g() {
        return this.android_app_direct;
    }

    public int hashCode() {
        int a10 = m4.a.a(this.configuration_id) * 31;
        String str = this.android_app_ol4;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.android_app_ol4_str;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.android_app_ol4_regex;
        int hashCode3 = (((((((hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.android_app_version.hashCode()) * 31) + this.android_app_version_optional.hashCode()) * 31) + this.android_app_link.hashCode()) * 31;
        String str4 = this.android_app_note;
        int hashCode4 = (((((((((((((((((((((((((hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.android_app_direct.hashCode()) * 31) + this.android_app_key.hashCode()) * 31) + this.android_app_player_huawei.hashCode()) * 31) + this.android_app_player_package_name.hashCode()) * 31) + this.android_app_allow_bserver.hashCode()) * 31) + this.android_app_player.hashCode()) * 31) + this.android_app_player_link.hashCode()) * 31) + this.android_app_player_all_servers.hashCode()) * 31) + this.android_app_player_version_code) * 31) + this.android_app_player_ads_state.hashCode()) * 31) + this.android_app_anime_add_baseUrl.hashCode()) * 31) + this.android_app_analytics.hashCode()) * 31;
        r4.a aVar = this.android_ads;
        return ((hashCode4 + (aVar != null ? aVar.hashCode() : 0)) * 31) + this.android_start_ad_interval;
    }

    public final String i() {
        return this.android_app_key;
    }

    public final String j() {
        return this.android_app_link;
    }

    public final String l() {
        return this.android_app_note;
    }

    public final String m() {
        return this.android_app_player;
    }

    public final String n() {
        return this.android_app_player_ads_state;
    }

    public final String o() {
        return this.android_app_player_all_servers;
    }

    public final String p() {
        return this.android_app_player_package_name;
    }

    public final int q() {
        return this.android_app_player_version_code;
    }

    public final String r() {
        return this.android_app_version;
    }

    public final String s() {
        return this.android_app_version_optional;
    }

    public final int t() {
        return this.android_start_ad_interval;
    }

    public String toString() {
        return "AppConfig(configuration_id=" + this.configuration_id + ", android_app_ol4=" + ((Object) this.android_app_ol4) + ", android_app_ol4_str=" + ((Object) this.android_app_ol4_str) + ", android_app_ol4_regex=" + ((Object) this.android_app_ol4_regex) + ", android_app_version=" + this.android_app_version + ", android_app_version_optional=" + this.android_app_version_optional + ", android_app_link=" + this.android_app_link + ", android_app_note=" + ((Object) this.android_app_note) + ", android_app_direct=" + this.android_app_direct + ", android_app_key=" + this.android_app_key + ", android_app_player_huawei=" + this.android_app_player_huawei + ", android_app_player_package_name=" + this.android_app_player_package_name + ", android_app_allow_bserver=" + this.android_app_allow_bserver + ", android_app_player=" + this.android_app_player + ", android_app_player_link=" + this.android_app_player_link + ", android_app_player_all_servers=" + this.android_app_player_all_servers + ", android_app_player_version_code=" + this.android_app_player_version_code + ", android_app_player_ads_state=" + this.android_app_player_ads_state + ", android_app_anime_add_baseUrl=" + this.android_app_anime_add_baseUrl + ", android_app_analytics=" + this.android_app_analytics + ", android_ads=" + this.android_ads + ", android_start_ad_interval=" + this.android_start_ad_interval + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.configuration_id);
        parcel.writeString(this.android_app_ol4);
        parcel.writeString(this.android_app_ol4_str);
        parcel.writeString(this.android_app_ol4_regex);
        parcel.writeString(this.android_app_version);
        parcel.writeString(this.android_app_version_optional);
        parcel.writeString(this.android_app_link);
        parcel.writeString(this.android_app_note);
        parcel.writeString(this.android_app_direct);
        parcel.writeString(this.android_app_key);
        parcel.writeString(this.android_app_player_huawei);
        parcel.writeString(this.android_app_player_package_name);
        parcel.writeString(this.android_app_allow_bserver);
        parcel.writeString(this.android_app_player);
        parcel.writeString(this.android_app_player_link);
        parcel.writeString(this.android_app_player_all_servers);
        parcel.writeInt(this.android_app_player_version_code);
        parcel.writeString(this.android_app_player_ads_state);
        parcel.writeString(this.android_app_anime_add_baseUrl);
        parcel.writeString(this.android_app_analytics);
        r4.a aVar = this.android_ads;
        if (aVar == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            aVar.writeToParcel(parcel, i10);
        }
        parcel.writeInt(this.android_start_ad_interval);
    }
}

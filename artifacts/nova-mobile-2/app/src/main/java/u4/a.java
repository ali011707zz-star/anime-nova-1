package u4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import jc.g;
import jc.l;

/* compiled from: Recommendation.kt */
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0360a();
    private String anime_cover_image_url;
    private long anime_id;
    private String anime_name;
    private final long anime_recommendation_id;
    private final String anime_status;
    private final String just_info;
    private int likes_count;
    private int recommendationType;
    private String recommendation_comments;
    private final String recommendation_created_at;
    private final String recommendation_status;
    private String recommended_anime_cover_image_url;
    private long recommended_anime_id;
    private String recommended_anime_name;
    private final String recommended_anime_status;
    private final String user_full_name;
    private String user_has_liked;
    private final long user_id;
    private final String user_image_url;

    /* compiled from: Recommendation.kt */
    /* renamed from: u4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0360a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new a(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(long j10, String str, String str2, String str3, long j11, String str4, String str5, String str6, long j12, String str7, String str8, int i10, String str9, long j13, String str10, String str11, String str12, String str13) {
        l.f(str, "anime_name");
        l.f(str2, "anime_cover_image_url");
        l.f(str4, "recommended_anime_name");
        l.f(str5, "recommended_anime_cover_image_url");
        l.f(str7, "user_full_name");
        l.f(str8, "user_image_url");
        l.f(str10, "recommendation_comments");
        l.f(str11, "recommendation_created_at");
        l.f(str12, "recommendation_status");
        l.f(str13, "just_info");
        this.anime_id = j10;
        this.anime_name = str;
        this.anime_cover_image_url = str2;
        this.anime_status = str3;
        this.recommended_anime_id = j11;
        this.recommended_anime_name = str4;
        this.recommended_anime_cover_image_url = str5;
        this.recommended_anime_status = str6;
        this.user_id = j12;
        this.user_full_name = str7;
        this.user_image_url = str8;
        this.likes_count = i10;
        this.user_has_liked = str9;
        this.anime_recommendation_id = j13;
        this.recommendation_comments = str10;
        this.recommendation_created_at = str11;
        this.recommendation_status = str12;
        this.just_info = str13;
    }

    public final void A(String str) {
        l.f(str, "<set-?>");
        this.anime_cover_image_url = str;
    }

    public final void B(long j10) {
        this.anime_id = j10;
    }

    public final void C(String str) {
        l.f(str, "<set-?>");
        this.anime_name = str;
    }

    public final void D(int i10) {
        this.likes_count = i10;
    }

    public final void E(int i10) {
        this.recommendationType = i10;
    }

    public final void H(String str) {
        l.f(str, "<set-?>");
        this.recommendation_comments = str;
    }

    public final void I(String str) {
        l.f(str, "<set-?>");
        this.recommended_anime_cover_image_url = str;
    }

    public final void J(long j10) {
        this.recommended_anime_id = j10;
    }

    public final void K(String str) {
        l.f(str, "<set-?>");
        this.recommended_anime_name = str;
    }

    public final void M(String str) {
        this.user_has_liked = str;
    }

    public final a a(long j10, String str, String str2, String str3, long j11, String str4, String str5, String str6, long j12, String str7, String str8, int i10, String str9, long j13, String str10, String str11, String str12, String str13) {
        l.f(str, "anime_name");
        l.f(str2, "anime_cover_image_url");
        l.f(str4, "recommended_anime_name");
        l.f(str5, "recommended_anime_cover_image_url");
        l.f(str7, "user_full_name");
        l.f(str8, "user_image_url");
        l.f(str10, "recommendation_comments");
        l.f(str11, "recommendation_created_at");
        l.f(str12, "recommendation_status");
        l.f(str13, "just_info");
        return new a(j10, str, str2, str3, j11, str4, str5, str6, j12, str7, str8, i10, str9, j13, str10, str11, str12, str13);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.anime_cover_image_url;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.anime_id == aVar.anime_id && l.a(this.anime_name, aVar.anime_name) && l.a(this.anime_cover_image_url, aVar.anime_cover_image_url) && l.a(this.anime_status, aVar.anime_status) && this.recommended_anime_id == aVar.recommended_anime_id && l.a(this.recommended_anime_name, aVar.recommended_anime_name) && l.a(this.recommended_anime_cover_image_url, aVar.recommended_anime_cover_image_url) && l.a(this.recommended_anime_status, aVar.recommended_anime_status) && this.user_id == aVar.user_id && l.a(this.user_full_name, aVar.user_full_name) && l.a(this.user_image_url, aVar.user_image_url) && this.likes_count == aVar.likes_count && l.a(this.user_has_liked, aVar.user_has_liked) && this.anime_recommendation_id == aVar.anime_recommendation_id && l.a(this.recommendation_comments, aVar.recommendation_comments) && l.a(this.recommendation_created_at, aVar.recommendation_created_at) && l.a(this.recommendation_status, aVar.recommendation_status) && l.a(this.just_info, aVar.just_info);
    }

    public final long f() {
        return this.anime_id;
    }

    public final String g() {
        return this.anime_name;
    }

    public int hashCode() {
        int a10 = ((((m4.a.a(this.anime_id) * 31) + this.anime_name.hashCode()) * 31) + this.anime_cover_image_url.hashCode()) * 31;
        String str = this.anime_status;
        int hashCode = (((((((a10 + (str == null ? 0 : str.hashCode())) * 31) + m4.a.a(this.recommended_anime_id)) * 31) + this.recommended_anime_name.hashCode()) * 31) + this.recommended_anime_cover_image_url.hashCode()) * 31;
        String str2 = this.recommended_anime_status;
        int hashCode2 = (((((((((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + m4.a.a(this.user_id)) * 31) + this.user_full_name.hashCode()) * 31) + this.user_image_url.hashCode()) * 31) + this.likes_count) * 31;
        String str3 = this.user_has_liked;
        return ((((((((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + m4.a.a(this.anime_recommendation_id)) * 31) + this.recommendation_comments.hashCode()) * 31) + this.recommendation_created_at.hashCode()) * 31) + this.recommendation_status.hashCode()) * 31) + this.just_info.hashCode();
    }

    public final long i() {
        return this.anime_recommendation_id;
    }

    public final int j() {
        return this.likes_count;
    }

    public final int l() {
        return this.recommendationType;
    }

    public final String m() {
        return this.recommendation_comments;
    }

    public final String n() {
        return this.recommended_anime_cover_image_url;
    }

    public final long o() {
        return this.recommended_anime_id;
    }

    public final String p() {
        return this.recommended_anime_name;
    }

    public final String q() {
        return this.user_full_name;
    }

    public final String r() {
        return this.user_has_liked;
    }

    public final long s() {
        return this.user_id;
    }

    public final String t() {
        return this.user_image_url;
    }

    public String toString() {
        return "Recommendation(anime_id=" + this.anime_id + ", anime_name=" + this.anime_name + ", anime_cover_image_url=" + this.anime_cover_image_url + ", anime_status=" + ((Object) this.anime_status) + ", recommended_anime_id=" + this.recommended_anime_id + ", recommended_anime_name=" + this.recommended_anime_name + ", recommended_anime_cover_image_url=" + this.recommended_anime_cover_image_url + ", recommended_anime_status=" + ((Object) this.recommended_anime_status) + ", user_id=" + this.user_id + ", user_full_name=" + this.user_full_name + ", user_image_url=" + this.user_image_url + ", likes_count=" + this.likes_count + ", user_has_liked=" + ((Object) this.user_has_liked) + ", anime_recommendation_id=" + this.anime_recommendation_id + ", recommendation_comments=" + this.recommendation_comments + ", recommendation_created_at=" + this.recommendation_created_at + ", recommendation_status=" + this.recommendation_status + ", just_info=" + this.just_info + ')';
    }

    public final boolean u() {
        return l.a(this.recommendation_status, "Approved");
    }

    public final boolean v() {
        return l.a(this.anime_status, "Not Yet Aired");
    }

    public final boolean w() {
        return l.a(this.just_info, "Yes");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeLong(this.anime_id);
        parcel.writeString(this.anime_name);
        parcel.writeString(this.anime_cover_image_url);
        parcel.writeString(this.anime_status);
        parcel.writeLong(this.recommended_anime_id);
        parcel.writeString(this.recommended_anime_name);
        parcel.writeString(this.recommended_anime_cover_image_url);
        parcel.writeString(this.recommended_anime_status);
        parcel.writeLong(this.user_id);
        parcel.writeString(this.user_full_name);
        parcel.writeString(this.user_image_url);
        parcel.writeInt(this.likes_count);
        parcel.writeString(this.user_has_liked);
        parcel.writeLong(this.anime_recommendation_id);
        parcel.writeString(this.recommendation_comments);
        parcel.writeString(this.recommendation_created_at);
        parcel.writeString(this.recommendation_status);
        parcel.writeString(this.just_info);
    }

    public final boolean y() {
        return l.a(this.recommended_anime_status, "Not Yet Aired");
    }

    public /* synthetic */ a(long j10, String str, String str2, String str3, long j11, String str4, String str5, String str6, long j12, String str7, String str8, int i10, String str9, long j13, String str10, String str11, String str12, String str13, int i11, g gVar) {
        this(j10, str, str2, (i11 & 8) != 0 ? null : str3, j11, str4, str5, (i11 & 128) != 0 ? null : str6, j12, str7, str8, (i11 & RecyclerView.e0.FLAG_MOVED) != 0 ? 0 : i10, (i11 & RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? "No" : str9, j13, str10, str11, str12, (i11 & 131072) != 0 ? "No" : str13);
    }
}

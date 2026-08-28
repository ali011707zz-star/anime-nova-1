package s4;

import android.os.Parcel;
import android.os.Parcelable;
import jc.g;
import jc.l;

/* compiled from: News.kt */
/* loaded from: classes.dex */
public final class a implements Parcelable {
    private final Long anime_id;
    private final String anime_name;
    private final String news_created_at;
    private final String news_description;
    private final String news_description_html;
    private final long news_id;
    private final String news_image_url;
    private final String news_source_link;
    private final String news_title;
    private final String news_updated_at;
    private final String news_video_link;
    public static final C0339a Companion = new C0339a(null);
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* compiled from: News.kt */
    /* renamed from: s4.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0339a {
        public C0339a() {
        }

        public /* synthetic */ C0339a(g gVar) {
            this();
        }

        public final a a(long j10, String str, String str2, String str3, String str4, String str5, String str6) {
            l.f(str, "title");
            l.f(str2, "description");
            l.f(str3, "imageUrl");
            l.f(str4, "createdAt");
            return new a(j10, null, null, str, str2, str5, str6, str4, null, str3, null);
        }
    }

    /* compiled from: News.kt */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final a createFromParcel(Parcel parcel) {
            l.f(parcel, "parcel");
            return new a(parcel.readLong(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(long j10, Long l10, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        l.f(str2, "news_title");
        l.f(str3, "news_description");
        l.f(str8, "news_image_url");
        this.news_id = j10;
        this.anime_id = l10;
        this.anime_name = str;
        this.news_title = str2;
        this.news_description = str3;
        this.news_source_link = str4;
        this.news_video_link = str5;
        this.news_created_at = str6;
        this.news_updated_at = str7;
        this.news_image_url = str8;
        this.news_description_html = str9;
    }

    public final String a() {
        return this.news_created_at;
    }

    public final String c() {
        return this.news_description;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.news_description_html;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.news_id == aVar.news_id && l.a(this.anime_id, aVar.anime_id) && l.a(this.anime_name, aVar.anime_name) && l.a(this.news_title, aVar.news_title) && l.a(this.news_description, aVar.news_description) && l.a(this.news_source_link, aVar.news_source_link) && l.a(this.news_video_link, aVar.news_video_link) && l.a(this.news_created_at, aVar.news_created_at) && l.a(this.news_updated_at, aVar.news_updated_at) && l.a(this.news_image_url, aVar.news_image_url) && l.a(this.news_description_html, aVar.news_description_html);
    }

    public final long f() {
        return this.news_id;
    }

    public final String g() {
        return this.news_image_url;
    }

    public int hashCode() {
        int a10 = m4.a.a(this.news_id) * 31;
        Long l10 = this.anime_id;
        int hashCode = (a10 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str = this.anime_name;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.news_title.hashCode()) * 31) + this.news_description.hashCode()) * 31;
        String str2 = this.news_source_link;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.news_video_link;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.news_created_at;
        int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.news_updated_at;
        int hashCode6 = (((hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.news_image_url.hashCode()) * 31;
        String str6 = this.news_description_html;
        return hashCode6 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String i() {
        return this.news_source_link;
    }

    public final String j() {
        return this.news_title;
    }

    public final String l() {
        return this.news_video_link;
    }

    public String toString() {
        return "News(news_id=" + this.news_id + ", anime_id=" + this.anime_id + ", anime_name=" + ((Object) this.anime_name) + ", news_title=" + this.news_title + ", news_description=" + this.news_description + ", news_source_link=" + ((Object) this.news_source_link) + ", news_video_link=" + ((Object) this.news_video_link) + ", news_created_at=" + ((Object) this.news_created_at) + ", news_updated_at=" + ((Object) this.news_updated_at) + ", news_image_url=" + this.news_image_url + ", news_description_html=" + ((Object) this.news_description_html) + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        l.f(parcel, "out");
        parcel.writeLong(this.news_id);
        Long l10 = this.anime_id;
        if (l10 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeLong(l10.longValue());
        }
        parcel.writeString(this.anime_name);
        parcel.writeString(this.news_title);
        parcel.writeString(this.news_description);
        parcel.writeString(this.news_source_link);
        parcel.writeString(this.news_video_link);
        parcel.writeString(this.news_created_at);
        parcel.writeString(this.news_updated_at);
        parcel.writeString(this.news_image_url);
        parcel.writeString(this.news_description_html);
    }
}

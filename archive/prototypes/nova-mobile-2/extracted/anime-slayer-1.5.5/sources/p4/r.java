package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: Contributor.kt */
/* loaded from: classes.dex */
public final class r implements Parcelable {
    public static final Parcelable.Creator<r> CREATOR = new a();
    private final String anime_title;
    private final int cotributions;
    private final String user_full_name;
    private final long user_id;
    private final String user_image_url;

    /* compiled from: Contributor.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<r> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final r createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new r(parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final r[] newArray(int i10) {
            return new r[i10];
        }
    }

    public r(String str, int i10, long j10, String str2, String str3) {
        jc.l.f(str, "anime_title");
        jc.l.f(str2, "user_full_name");
        jc.l.f(str3, "user_image_url");
        this.anime_title = str;
        this.cotributions = i10;
        this.user_id = j10;
        this.user_full_name = str2;
        this.user_image_url = str3;
    }

    public final int a() {
        return this.cotributions;
    }

    public final String c() {
        return this.user_full_name;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final long e() {
        return this.user_id;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return jc.l.a(this.anime_title, rVar.anime_title) && this.cotributions == rVar.cotributions && this.user_id == rVar.user_id && jc.l.a(this.user_full_name, rVar.user_full_name) && jc.l.a(this.user_image_url, rVar.user_image_url);
    }

    public final String f() {
        return this.user_image_url;
    }

    public int hashCode() {
        return (((((((this.anime_title.hashCode() * 31) + this.cotributions) * 31) + m4.a.a(this.user_id)) * 31) + this.user_full_name.hashCode()) * 31) + this.user_image_url.hashCode();
    }

    public String toString() {
        return "TopContributor(anime_title=" + this.anime_title + ", cotributions=" + this.cotributions + ", user_id=" + this.user_id + ", user_full_name=" + this.user_full_name + ", user_image_url=" + this.user_image_url + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.anime_title);
        parcel.writeInt(this.cotributions);
        parcel.writeLong(this.user_id);
        parcel.writeString(this.user_full_name);
        parcel.writeString(this.user_image_url);
    }
}

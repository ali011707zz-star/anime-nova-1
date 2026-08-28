package r4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: Streamer.kt */
/* loaded from: classes.dex */
public final class l implements Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();
    private final long episode_server_id;
    private final String episode_server_name;
    private final String episode_server_status;
    private final String episode_url;
    private final long episode_url_id;

    /* compiled from: Streamer.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new l(parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final l[] newArray(int i10) {
            return new l[i10];
        }
    }

    public l(long j10, long j11, String str, String str2, String str3) {
        jc.l.f(str, "episode_server_name");
        jc.l.f(str3, "episode_url");
        this.episode_url_id = j10;
        this.episode_server_id = j11;
        this.episode_server_name = str;
        this.episode_server_status = str2;
        this.episode_url = str3;
    }

    public final String a() {
        return this.episode_server_name;
    }

    public final String c() {
        return this.episode_url;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.episode_url_id == lVar.episode_url_id && this.episode_server_id == lVar.episode_server_id && jc.l.a(this.episode_server_name, lVar.episode_server_name) && jc.l.a(this.episode_server_status, lVar.episode_server_status) && jc.l.a(this.episode_url, lVar.episode_url);
    }

    public int hashCode() {
        int a10 = ((((m4.a.a(this.episode_url_id) * 31) + m4.a.a(this.episode_server_id)) * 31) + this.episode_server_name.hashCode()) * 31;
        String str = this.episode_server_status;
        return ((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.episode_url.hashCode();
    }

    public String toString() {
        return this.episode_server_name;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.episode_url_id);
        parcel.writeLong(this.episode_server_id);
        parcel.writeString(this.episode_server_name);
        parcel.writeString(this.episode_server_status);
        parcel.writeString(this.episode_url);
    }
}

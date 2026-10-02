package r4;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: SubEpisode.kt */
/* loaded from: classes.dex */
public final class m implements Parcelable {
    public static final Parcelable.Creator<m> CREATOR = new a();
    private final long episode_id;
    private final String episode_name;

    /* compiled from: SubEpisode.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new m(parcel.readLong(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(long j10, String str) {
        jc.l.f(str, "episode_name");
        this.episode_id = j10;
        this.episode_name = str;
    }

    public final long a() {
        return this.episode_id;
    }

    public final String c() {
        return this.episode_name;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.episode_id == mVar.episode_id && jc.l.a(this.episode_name, mVar.episode_name);
    }

    public int hashCode() {
        return (m4.a.a(this.episode_id) * 31) + this.episode_name.hashCode();
    }

    public String toString() {
        return this.episode_name;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.episode_id);
        parcel.writeString(this.episode_name);
    }
}

package r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* compiled from: MediaItem.kt */
/* loaded from: classes.dex */
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* renamed from: id, reason: collision with root package name */
    private final long f12857id;
    private final String image;
    private final String name;

    /* compiled from: MediaItem.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final f createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new f(parcel.readLong(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(long j10, String str, String str2) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        jc.l.f(str2, "image");
        this.f12857id = j10;
        this.name = str;
        this.image = str2;
    }

    public final String a() {
        return this.image;
    }

    public final String c() {
        return this.name;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f12857id == fVar.f12857id && jc.l.a(this.name, fVar.name) && jc.l.a(this.image, fVar.image);
    }

    public int hashCode() {
        return (((m4.a.a(this.f12857id) * 31) + this.name.hashCode()) * 31) + this.image.hashCode();
    }

    public String toString() {
        return "MediaItem(id=" + this.f12857id + ", name=" + this.name + ", image=" + this.image + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeLong(this.f12857id);
        parcel.writeString(this.name);
        parcel.writeString(this.image);
    }
}

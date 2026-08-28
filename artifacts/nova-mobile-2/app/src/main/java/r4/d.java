package r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;

/* compiled from: AppConfig.kt */
/* loaded from: classes.dex */
public final class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a();
    private final String img;
    private final String url;

    /* compiled from: AppConfig.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final d createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new d(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, String str2) {
        jc.l.f(str, "img");
        jc.l.f(str2, ImagesContract.URL);
        this.img = str;
        this.url = str2;
    }

    public final String a() {
        return this.img;
    }

    public final String c() {
        return this.url;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return jc.l.a(this.img, dVar.img) && jc.l.a(this.url, dVar.url);
    }

    public int hashCode() {
        return (this.img.hashCode() * 31) + this.url.hashCode();
    }

    public String toString() {
        return "DetailsScreenAds(img=" + this.img + ", url=" + this.url + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.img);
        parcel.writeString(this.url);
    }
}

package r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;

/* compiled from: AppConfig.kt */
/* loaded from: classes.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new a();
    private final boolean force;
    private final String img;
    private final String url;

    /* compiled from: AppConfig.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<k> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final k createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new k(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final k[] newArray(int i10) {
            return new k[i10];
        }
    }

    public k(String str, String str2, boolean z10) {
        jc.l.f(str, "img");
        jc.l.f(str2, ImagesContract.URL);
        this.img = str;
        this.url = str2;
        this.force = z10;
    }

    public final boolean a() {
        return this.force;
    }

    public final String c() {
        return this.img;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String e() {
        return this.url;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return jc.l.a(this.img, kVar.img) && jc.l.a(this.url, kVar.url) && this.force == kVar.force;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.img.hashCode() * 31) + this.url.hashCode()) * 31;
        boolean z10 = this.force;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode + i10;
    }

    public String toString() {
        return "StartScreenAds(img=" + this.img + ", url=" + this.url + ", force=" + this.force + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.img);
        parcel.writeString(this.url);
        parcel.writeInt(this.force ? 1 : 0);
    }
}

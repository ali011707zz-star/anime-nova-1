package r4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;

/* compiled from: AppConfig.kt */
/* loaded from: classes.dex */
public final class j implements Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new a();
    private final boolean force;
    private final boolean gif;
    private final String img;
    private final String url;

    /* compiled from: AppConfig.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final j createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new j(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(String str, String str2, boolean z10, boolean z11) {
        jc.l.f(str, "img");
        jc.l.f(str2, ImagesContract.URL);
        this.img = str;
        this.url = str2;
        this.force = z10;
        this.gif = z11;
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
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jc.l.a(this.img, jVar.img) && jc.l.a(this.url, jVar.url) && this.force == jVar.force && this.gif == jVar.gif;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.img.hashCode() * 31) + this.url.hashCode()) * 31;
        boolean z10 = this.force;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        boolean z11 = this.gif;
        return i11 + (z11 ? 1 : z11 ? 1 : 0);
    }

    public String toString() {
        return "ScreenAd(img=" + this.img + ", url=" + this.url + ", force=" + this.force + ", gif=" + this.gif + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.img);
        parcel.writeString(this.url);
        parcel.writeInt(this.force ? 1 : 0);
        parcel.writeInt(this.gif ? 1 : 0);
    }
}

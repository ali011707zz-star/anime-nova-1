package p4;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ImagesContract;

/* compiled from: Quality.kt */
/* loaded from: classes.dex */
public final class n implements Parcelable {
    public static final Parcelable.Creator<n> CREATOR = new a();
    private final String title;
    private final String url;

    /* compiled from: Quality.kt */
    /* loaded from: classes.dex */
    public static final class a implements Parcelable.Creator<n> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final n createFromParcel(Parcel parcel) {
            jc.l.f(parcel, "parcel");
            return new n(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(String str, String str2) {
        jc.l.f(str, "title");
        jc.l.f(str2, ImagesContract.URL);
        this.title = str;
        this.url = str2;
    }

    public final String a() {
        return this.title;
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
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return jc.l.a(this.title, nVar.title) && jc.l.a(this.url, nVar.url);
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.url.hashCode();
    }

    public String toString() {
        return "Quality(title=" + this.title + ", url=" + this.url + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        jc.l.f(parcel, "out");
        parcel.writeString(this.title);
        parcel.writeString(this.url);
    }
}

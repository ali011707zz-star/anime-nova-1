package hb;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: AspectRatio.java */
/* loaded from: classes.dex */
public class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0145a();

    /* renamed from: f, reason: collision with root package name */
    public final String f7479f;

    /* renamed from: g, reason: collision with root package name */
    public final float f7480g;

    /* renamed from: h, reason: collision with root package name */
    public final float f7481h;

    /* compiled from: AspectRatio.java */
    /* renamed from: hb.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0145a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(String str, float f10, float f11) {
        this.f7479f = str;
        this.f7480g = f10;
        this.f7481h = f11;
    }

    public String a() {
        return this.f7479f;
    }

    public float c() {
        return this.f7480g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float e() {
        return this.f7481h;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f7479f);
        parcel.writeFloat(this.f7480g);
        parcel.writeFloat(this.f7481h);
    }

    public a(Parcel parcel) {
        this.f7479f = parcel.readString();
        this.f7480g = parcel.readFloat();
        this.f7481h = parcel.readFloat();
    }
}

package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public int f615f;

    /* renamed from: g, reason: collision with root package name */
    public int f616g;

    /* renamed from: h, reason: collision with root package name */
    public int f617h;

    /* renamed from: i, reason: collision with root package name */
    public int f618i;

    /* renamed from: j, reason: collision with root package name */
    public int f619j;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo[] newArray(int i10) {
            return new ParcelableVolumeInfo[i10];
        }
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f615f = parcel.readInt();
        this.f617h = parcel.readInt();
        this.f618i = parcel.readInt();
        this.f619j = parcel.readInt();
        this.f616g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f615f);
        parcel.writeInt(this.f617h);
        parcel.writeInt(this.f618i);
        parcel.writeInt(this.f619j);
        parcel.writeInt(this.f616g);
    }
}

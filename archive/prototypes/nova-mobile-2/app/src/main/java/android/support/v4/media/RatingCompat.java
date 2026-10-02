package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final int f601f;

    /* renamed from: g, reason: collision with root package name */
    public final float f602g;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<RatingCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i10) {
            return new RatingCompat[i10];
        }
    }

    public RatingCompat(int i10, float f10) {
        this.f601f = i10;
        this.f602g = f10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f601f;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Rating:style=");
        sb2.append(this.f601f);
        sb2.append(" rating=");
        float f10 = this.f602g;
        sb2.append(f10 < StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? "unrated" : String.valueOf(f10));
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f601f);
        parcel.writeFloat(this.f602g);
    }
}

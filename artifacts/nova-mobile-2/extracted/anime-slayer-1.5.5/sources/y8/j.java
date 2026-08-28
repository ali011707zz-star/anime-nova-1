package y8;

import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;

/* compiled from: Entry.java */
/* loaded from: classes.dex */
public class j extends g implements Parcelable {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* renamed from: i, reason: collision with root package name */
    public float f16775i;

    /* compiled from: Entry.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j() {
        this.f16775i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public float i() {
        return this.f16775i;
    }

    public String toString() {
        return "Entry, x: " + this.f16775i + " y: " + e();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeFloat(this.f16775i);
        parcel.writeFloat(e());
        if (a() != null) {
            if (a() instanceof Parcelable) {
                parcel.writeInt(1);
                parcel.writeParcelable((Parcelable) a(), i10);
                return;
            }
            throw new ParcelFormatException("Cannot parcel an Entry with non-parcelable data");
        }
        parcel.writeInt(0);
    }

    public j(float f10, float f11) {
        super(f11);
        this.f16775i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f16775i = f10;
    }

    public j(Parcel parcel) {
        this.f16775i = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        this.f16775i = parcel.readFloat();
        g(parcel.readFloat());
        if (parcel.readInt() == 1) {
            f(parcel.readParcelable(Object.class.getClassLoader()));
        }
    }
}

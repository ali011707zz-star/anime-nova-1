package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: ActivityResult.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0024a();

    /* renamed from: f, reason: collision with root package name */
    public final int f702f;

    /* renamed from: g, reason: collision with root package name */
    public final Intent f703g;

    /* compiled from: ActivityResult.java */
    /* renamed from: androidx.activity.result.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0024a implements Parcelable.Creator<a> {
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

    public a(int i10, Intent intent) {
        this.f702f = i10;
        this.f703g = intent;
    }

    public static String e(int i10) {
        return i10 != -1 ? i10 != 0 ? String.valueOf(i10) : "RESULT_CANCELED" : "RESULT_OK";
    }

    public Intent a() {
        return this.f703g;
    }

    public int c() {
        return this.f702f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + e(this.f702f) + ", data=" + this.f703g + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f702f);
        parcel.writeInt(this.f703g == null ? 0 : 1);
        Intent intent = this.f703g;
        if (intent != null) {
            intent.writeToParcel(parcel, i10);
        }
    }

    public a(Parcel parcel) {
        this.f702f = parcel.readInt();
        this.f703g = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}

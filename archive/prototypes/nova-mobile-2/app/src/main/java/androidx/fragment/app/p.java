package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

/* compiled from: FragmentManagerState.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<t> f2259f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList<String> f2260g;

    /* renamed from: h, reason: collision with root package name */
    public b[] f2261h;

    /* renamed from: i, reason: collision with root package name */
    public int f2262i;

    /* renamed from: j, reason: collision with root package name */
    public String f2263j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList<String> f2264k;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList<Bundle> f2265l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList<FragmentManager.m> f2266m;

    /* compiled from: FragmentManagerState.java */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<p> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public p createFromParcel(Parcel parcel) {
            return new p(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public p[] newArray(int i10) {
            return new p[i10];
        }
    }

    public p() {
        this.f2263j = null;
        this.f2264k = new ArrayList<>();
        this.f2265l = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.f2259f);
        parcel.writeStringList(this.f2260g);
        parcel.writeTypedArray(this.f2261h, i10);
        parcel.writeInt(this.f2262i);
        parcel.writeString(this.f2263j);
        parcel.writeStringList(this.f2264k);
        parcel.writeTypedList(this.f2265l);
        parcel.writeTypedList(this.f2266m);
    }

    public p(Parcel parcel) {
        this.f2263j = null;
        this.f2264k = new ArrayList<>();
        this.f2265l = new ArrayList<>();
        this.f2259f = parcel.createTypedArrayList(t.CREATOR);
        this.f2260g = parcel.createStringArrayList();
        this.f2261h = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f2262i = parcel.readInt();
        this.f2263j = parcel.readString();
        this.f2264k = parcel.createStringArrayList();
        this.f2265l = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f2266m = parcel.createTypedArrayList(FragmentManager.m.CREATOR);
    }
}

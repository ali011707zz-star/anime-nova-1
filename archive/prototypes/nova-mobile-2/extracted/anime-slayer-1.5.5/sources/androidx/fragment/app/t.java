package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: FragmentState.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class t implements Parcelable {
    public static final Parcelable.Creator<t> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final String f2275f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2276g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f2277h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2278i;

    /* renamed from: j, reason: collision with root package name */
    public final int f2279j;

    /* renamed from: k, reason: collision with root package name */
    public final String f2280k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f2281l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f2282m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f2283n;

    /* renamed from: o, reason: collision with root package name */
    public final Bundle f2284o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f2285p;

    /* renamed from: q, reason: collision with root package name */
    public final int f2286q;

    /* renamed from: r, reason: collision with root package name */
    public Bundle f2287r;

    /* compiled from: FragmentState.java */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<t> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public t createFromParcel(Parcel parcel) {
            return new t(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public t[] newArray(int i10) {
            return new t[i10];
        }
    }

    public t(Fragment fragment) {
        this.f2275f = fragment.getClass().getName();
        this.f2276g = fragment.mWho;
        this.f2277h = fragment.mFromLayout;
        this.f2278i = fragment.mFragmentId;
        this.f2279j = fragment.mContainerId;
        this.f2280k = fragment.mTag;
        this.f2281l = fragment.mRetainInstance;
        this.f2282m = fragment.mRemoving;
        this.f2283n = fragment.mDetached;
        this.f2284o = fragment.mArguments;
        this.f2285p = fragment.mHidden;
        this.f2286q = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f2275f);
        sb2.append(" (");
        sb2.append(this.f2276g);
        sb2.append(")}:");
        if (this.f2277h) {
            sb2.append(" fromLayout");
        }
        if (this.f2279j != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.f2279j));
        }
        String str = this.f2280k;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(this.f2280k);
        }
        if (this.f2281l) {
            sb2.append(" retainInstance");
        }
        if (this.f2282m) {
            sb2.append(" removing");
        }
        if (this.f2283n) {
            sb2.append(" detached");
        }
        if (this.f2285p) {
            sb2.append(" hidden");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f2275f);
        parcel.writeString(this.f2276g);
        parcel.writeInt(this.f2277h ? 1 : 0);
        parcel.writeInt(this.f2278i);
        parcel.writeInt(this.f2279j);
        parcel.writeString(this.f2280k);
        parcel.writeInt(this.f2281l ? 1 : 0);
        parcel.writeInt(this.f2282m ? 1 : 0);
        parcel.writeInt(this.f2283n ? 1 : 0);
        parcel.writeBundle(this.f2284o);
        parcel.writeInt(this.f2285p ? 1 : 0);
        parcel.writeBundle(this.f2287r);
        parcel.writeInt(this.f2286q);
    }

    public t(Parcel parcel) {
        this.f2275f = parcel.readString();
        this.f2276g = parcel.readString();
        this.f2277h = parcel.readInt() != 0;
        this.f2278i = parcel.readInt();
        this.f2279j = parcel.readInt();
        this.f2280k = parcel.readString();
        this.f2281l = parcel.readInt() != 0;
        this.f2282m = parcel.readInt() != 0;
        this.f2283n = parcel.readInt() != 0;
        this.f2284o = parcel.readBundle();
        this.f2285p = parcel.readInt() != 0;
        this.f2287r = parcel.readBundle();
        this.f2286q = parcel.readInt();
    }
}

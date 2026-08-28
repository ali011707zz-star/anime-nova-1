package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: IntentSenderRequest.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final IntentSender f704f;

    /* renamed from: g, reason: collision with root package name */
    public final Intent f705g;

    /* renamed from: h, reason: collision with root package name */
    public final int f706h;

    /* renamed from: i, reason: collision with root package name */
    public final int f707i;

    /* compiled from: IntentSenderRequest.java */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i10) {
            return new e[i10];
        }
    }

    /* compiled from: IntentSenderRequest.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public IntentSender f708a;

        /* renamed from: b, reason: collision with root package name */
        public Intent f709b;

        /* renamed from: c, reason: collision with root package name */
        public int f710c;

        /* renamed from: d, reason: collision with root package name */
        public int f711d;

        public b(IntentSender intentSender) {
            this.f708a = intentSender;
        }

        public e a() {
            return new e(this.f708a, this.f709b, this.f710c, this.f711d);
        }

        public b b(Intent intent) {
            this.f709b = intent;
            return this;
        }

        public b c(int i10, int i11) {
            this.f711d = i10;
            this.f710c = i11;
            return this;
        }
    }

    public e(IntentSender intentSender, Intent intent, int i10, int i11) {
        this.f704f = intentSender;
        this.f705g = intent;
        this.f706h = i10;
        this.f707i = i11;
    }

    public Intent a() {
        return this.f705g;
    }

    public int c() {
        return this.f706h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.f707i;
    }

    public IntentSender f() {
        return this.f704f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f704f, i10);
        parcel.writeParcelable(this.f705g, i10);
        parcel.writeInt(this.f706h);
        parcel.writeInt(this.f707i);
    }

    public e(Parcel parcel) {
        this.f704f = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f705g = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f706h = parcel.readInt();
        this.f707i = parcel.readInt();
    }
}

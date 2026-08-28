package a;

import a.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: ResultReceiver.java */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final boolean f1f = false;

    /* renamed from: g, reason: collision with root package name */
    public final Handler f2g = null;

    /* renamed from: h, reason: collision with root package name */
    public a.a f3h;

    /* compiled from: ResultReceiver.java */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i10) {
            return new b[i10];
        }
    }

    /* compiled from: ResultReceiver.java */
    /* renamed from: a.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class BinderC0002b extends a.AbstractBinderC0000a {
        public BinderC0002b() {
        }

        @Override // a.a
        public void q(int i10, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.f2g;
            if (handler != null) {
                handler.post(new c(i10, bundle));
            } else {
                bVar.a(i10, bundle);
            }
        }
    }

    /* compiled from: ResultReceiver.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final int f5f;

        /* renamed from: g, reason: collision with root package name */
        public final Bundle f6g;

        public c(int i10, Bundle bundle) {
            this.f5f = i10;
            this.f6g = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f5f, this.f6g);
        }
    }

    public b(Parcel parcel) {
        this.f3h = a.AbstractBinderC0000a.s(parcel.readStrongBinder());
    }

    public void a(int i10, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            if (this.f3h == null) {
                this.f3h = new BinderC0002b();
            }
            parcel.writeStrongBinder(this.f3h.asBinder());
        }
    }
}

package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: IMultiInstanceInvalidationCallback.java */
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* compiled from: IMultiInstanceInvalidationCallback.java */
    /* renamed from: androidx.room.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0051a extends Binder implements a {

        /* compiled from: IMultiInstanceInvalidationCallback.java */
        /* renamed from: androidx.room.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0052a implements a {

            /* renamed from: g, reason: collision with root package name */
            public static a f3109g;

            /* renamed from: f, reason: collision with root package name */
            public IBinder f3110f;

            public C0052a(IBinder iBinder) {
                this.f3110f = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3110f;
            }

            @Override // androidx.room.a
            public void i(String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    obtain.writeStringArray(strArr);
                    if (this.f3110f.transact(1, obtain, null, 1) || AbstractBinderC0051a.t() == null) {
                        return;
                    }
                    AbstractBinderC0051a.t().i(strArr);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC0051a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        public static a s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0052a(iBinder);
        }

        public static a t() {
            return C0052a.f3109g;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
                i(parcel.createStringArray());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
            return true;
        }
    }

    void i(String[] strArr) throws RemoteException;
}

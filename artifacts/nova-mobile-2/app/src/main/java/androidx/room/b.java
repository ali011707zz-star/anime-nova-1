package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.a;

/* compiled from: IMultiInstanceInvalidationService.java */
/* loaded from: classes.dex */
public interface b extends IInterface {

    /* compiled from: IMultiInstanceInvalidationService.java */
    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements b {

        /* compiled from: IMultiInstanceInvalidationService.java */
        /* renamed from: androidx.room.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0053a implements b {

            /* renamed from: g, reason: collision with root package name */
            public static b f3111g;

            /* renamed from: f, reason: collision with root package name */
            public IBinder f3112f;

            public C0053a(IBinder iBinder) {
                this.f3112f = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3112f;
            }

            @Override // androidx.room.b
            public int l(androidx.room.a aVar, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeString(str);
                    if (!this.f3112f.transact(1, obtain, obtain2, 0) && a.t() != null) {
                        return a.t().l(aVar, str);
                    }
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // androidx.room.b
            public void m(int i10, String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    obtain.writeInt(i10);
                    obtain.writeStringArray(strArr);
                    if (this.f3112f.transact(3, obtain, null, 1) || a.t() == null) {
                        return;
                    }
                    a.t().m(i10, strArr);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        public static b s(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0053a(iBinder);
        }

        public static b t() {
            return C0053a.f3111g;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int l10 = l(a.AbstractBinderC0051a.s(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(l10);
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                o(a.AbstractBinderC0051a.s(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 3) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                m(parcel.readInt(), parcel.createStringArray());
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
            return true;
        }
    }

    int l(androidx.room.a aVar, String str) throws RemoteException;

    void m(int i10, String[] strArr) throws RemoteException;

    void o(androidx.room.a aVar, int i10) throws RemoteException;
}

package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public interface IGmsServiceBroker extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IGmsServiceBroker {
        public Stub() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override // android.os.IInterface
        @RecentlyNonNull
        @KeepForSdk
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i10, @RecentlyNonNull Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            IGmsCallbacks zzzVar;
            if (i10 > 16777215) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzzVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                if (queryLocalInterface instanceof IGmsCallbacks) {
                    zzzVar = (IGmsCallbacks) queryLocalInterface;
                } else {
                    zzzVar = new zzz(readStrongBinder);
                }
            }
            if (i10 == 46) {
                getService(zzzVar, parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
                Preconditions.checkNotNull(parcel2);
                parcel2.writeNoException();
                return true;
            }
            if (i10 == 47) {
                if (parcel.readInt() != 0) {
                    zzai.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            }
            parcel.readInt();
            if (i10 != 4) {
                parcel.readString();
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 23 && i10 != 25 && i10 != 27) {
                        if (i10 != 30) {
                            if (i10 == 34) {
                                parcel.readString();
                            } else if (i10 != 41 && i10 != 43 && i10 != 37 && i10 != 38) {
                                switch (i10) {
                                    case 9:
                                        parcel.readString();
                                        parcel.createStringArray();
                                        parcel.readString();
                                        parcel.readStrongBinder();
                                        parcel.readString();
                                        if (parcel.readInt() != 0) {
                                            break;
                                        }
                                        break;
                                    case 10:
                                        parcel.readString();
                                        parcel.createStringArray();
                                        break;
                                    case 19:
                                        parcel.readStrongBinder();
                                        if (parcel.readInt() != 0) {
                                            break;
                                        }
                                        break;
                                }
                            }
                        }
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                    }
                    if (parcel.readInt() != 0) {
                    }
                } else {
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                    }
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    @KeepForSdk
    void getService(@RecentlyNonNull IGmsCallbacks iGmsCallbacks, GetServiceRequest getServiceRequest) throws RemoteException;
}

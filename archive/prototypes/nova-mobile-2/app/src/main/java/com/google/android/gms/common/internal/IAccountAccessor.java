package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public interface IAccountAccessor extends IInterface {

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    /* loaded from: classes.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IAccountAccessor {
        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        @RecentlyNonNull
        public static IAccountAccessor asInterface(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            if (queryLocalInterface instanceof IAccountAccessor) {
                return (IAccountAccessor) queryLocalInterface;
            }
            return new zzu(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i10, @RecentlyNonNull Parcel parcel, @RecentlyNonNull Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 2) {
                return false;
            }
            Account zzb = zzb();
            parcel2.writeNoException();
            com.google.android.gms.internal.common.zzc.zze(parcel2, zzb);
            return true;
        }
    }

    @RecentlyNonNull
    Account zzb() throws RemoteException;
}

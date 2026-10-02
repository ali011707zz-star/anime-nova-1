package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public interface IGmsCallbacks extends IInterface {
    void onPostInitComplete(int i10, @RecentlyNonNull IBinder iBinder, @RecentlyNonNull Bundle bundle) throws RemoteException;

    void zzb(int i10, @RecentlyNonNull Bundle bundle) throws RemoteException;

    void zzc(int i10, IBinder iBinder, zzi zziVar) throws RemoteException;
}

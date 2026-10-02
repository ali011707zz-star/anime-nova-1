package com.google.android.gms.auth.api.signin.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* loaded from: classes.dex */
public final class zzv extends com.google.android.gms.internal.p000authapi.zzc implements zzu {
    public zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzu
    public final void zzc(zzs zzsVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, zzsVar);
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, googleSignInOptions);
        transactAndReadExceptionReturnVoid(101, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzu
    public final void zzd(zzs zzsVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, zzsVar);
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, googleSignInOptions);
        transactAndReadExceptionReturnVoid(102, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzu
    public final void zze(zzs zzsVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, zzsVar);
        com.google.android.gms.internal.p000authapi.zze.zzc(obtainAndWriteInterfaceToken, googleSignInOptions);
        transactAndReadExceptionReturnVoid(103, obtainAndWriteInterfaceToken);
    }
}

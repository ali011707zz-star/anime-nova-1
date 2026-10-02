package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zza extends AsyncTask<Void, Void, Integer> {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ ProviderInstaller.ProviderInstallListener zzb;

    public zza(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.zza = context;
        this.zzb = providerInstallListener;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Integer doInBackground(Void[] voidArr) {
        int connectionStatusCode;
        try {
            ProviderInstaller.installIfNeeded(this.zza);
            connectionStatusCode = 0;
        } catch (GooglePlayServicesNotAvailableException e10) {
            connectionStatusCode = e10.errorCode;
        } catch (GooglePlayServicesRepairableException e11) {
            connectionStatusCode = e11.getConnectionStatusCode();
        }
        return Integer.valueOf(connectionStatusCode);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Integer num) {
        GoogleApiAvailabilityLight googleApiAvailabilityLight;
        Integer num2 = num;
        if (num2.intValue() == 0) {
            this.zzb.onProviderInstalled();
            return;
        }
        googleApiAvailabilityLight = ProviderInstaller.zza;
        this.zzb.onProviderInstallFailed(num2.intValue(), googleApiAvailabilityLight.getErrorResolutionIntent(this.zza, num2.intValue(), "pi"));
    }
}

package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.internal.cache.DiskLruCache;

@KeepForSdk
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class AdvertisingIdClient {

    @GuardedBy("this")
    private final Context mContext;

    @GuardedBy("this")
    private BlockingServiceConnection zze;

    @GuardedBy("this")
    private zze zzf;

    @GuardedBy("this")
    private boolean zzg;
    private final Object zzh;

    @GuardedBy("mAutoDisconnectTaskLock")
    private zza zzi;
    private final boolean zzj;
    private final long zzk;

    @KeepForSdkWithMembers
    /* loaded from: classes.dex */
    public static final class Info {
        private final String zzq;
        private final boolean zzr;

        public Info(String str, boolean z10) {
            this.zzq = str;
            this.zzr = z10;
        }

        public final String getId() {
            return this.zzq;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.zzr;
        }

        public final String toString() {
            String str = this.zzq;
            boolean z10 = this.zzr;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
            sb2.append("{");
            sb2.append(str);
            sb2.append("}");
            sb2.append(z10);
            return sb2.toString();
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class zza extends Thread {
        private WeakReference<AdvertisingIdClient> zzm;
        private long zzn;
        public CountDownLatch zzo = new CountDownLatch(1);
        public boolean zzp = false;

        public zza(AdvertisingIdClient advertisingIdClient, long j10) {
            this.zzm = new WeakReference<>(advertisingIdClient);
            this.zzn = j10;
            start();
        }

        private final void disconnect() {
            AdvertisingIdClient advertisingIdClient = this.zzm.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.zzp = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.zzo.await(this.zzn, TimeUnit.MILLISECONDS)) {
                    return;
                }
                disconnect();
            } catch (InterruptedException unused) {
                disconnect();
            }
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    @VisibleForTesting
    private AdvertisingIdClient(Context context, long j10, boolean z10, boolean z11) {
        Context applicationContext;
        this.zzh = new Object();
        Preconditions.checkNotNull(context);
        if (z10 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.mContext = context;
        this.zzg = false;
        this.zzk = j10;
        this.zzj = z11;
    }

    @KeepForSdk
    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb zzbVar = new zzb(context);
        boolean z10 = zzbVar.getBoolean("gads:ad_id_app_context:enabled", false);
        float f10 = zzbVar.getFloat("gads:ad_id_app_context:ping_ratio", StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        String string = zzbVar.getString("gads:ad_id_use_shared_preference:experiment_id", "");
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, z10, zzbVar.getBoolean("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zza(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z10, f10, SystemClock.elapsedRealtime() - elapsedRealtime, string, null);
            return info;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb zzbVar = new zzb(context);
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, zzbVar.getBoolean("gads:ad_id_app_context:enabled", false), zzbVar.getBoolean("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            advertisingIdClient.zza(false);
            return advertisingIdClient.zzb();
        } finally {
            advertisingIdClient.finish();
        }
    }

    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z10) {
    }

    private static BlockingServiceConnection zza(Context context, boolean z10) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                throw new IOException("Google Play services not available");
            }
            String str = z10 ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
            BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
            Intent intent = new Intent(str);
            intent.setPackage("com.google.android.gms");
            try {
                if (ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                    return blockingServiceConnection;
                }
                throw new IOException("Connection failure");
            } catch (Throwable th) {
                throw new IOException(th);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    @VisibleForTesting
    private static zze zza(Context context, BlockingServiceConnection blockingServiceConnection) throws IOException {
        try {
            return zzf.zza(blockingServiceConnection.getServiceWithTimeout(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private final void zza() {
        synchronized (this.zzh) {
            zza zzaVar = this.zzi;
            if (zzaVar != null) {
                zzaVar.zzo.countDown();
                try {
                    this.zzi.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.zzk > 0) {
                this.zzi = new zza(this, this.zzk);
            }
        }
    }

    @VisibleForTesting
    private final void zza(boolean z10) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzg) {
                finish();
            }
            BlockingServiceConnection zza2 = zza(this.mContext, this.zzj);
            this.zze = zza2;
            this.zzf = zza(this.mContext, zza2);
            this.zzg = true;
            if (z10) {
                zza();
            }
        }
    }

    @VisibleForTesting
    private final boolean zza(Info info, boolean z10, float f10, long j10, String str, Throwable th) {
        if (Math.random() > f10) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = DiskLruCache.VERSION_1;
        hashMap.put("app_context", z10 ? DiskLruCache.VERSION_1 : "0");
        if (info != null) {
            if (!info.isLimitAdTrackingEnabled()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (info != null && info.getId() != null) {
            hashMap.put("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j10));
        new com.google.android.gms.ads.identifier.zza(this, hashMap).start();
        return true;
    }

    private final boolean zzb() throws IOException {
        boolean zzc;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    zza zzaVar = this.zzi;
                    if (zzaVar == null || !zzaVar.zzp) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e10) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
                }
            }
            Preconditions.checkNotNull(this.zze);
            Preconditions.checkNotNull(this.zzf);
            try {
                zzc = this.zzf.zzc();
            } catch (RemoteException unused) {
                throw new IOException("Remote exception");
            }
        }
        zza();
        return zzc;
    }

    public void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public final void finish() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zze == null) {
                return;
            }
            try {
                if (this.zzg) {
                    ConnectionTracker.getInstance().unbindService(this.mContext, this.zze);
                }
            } catch (Throwable unused) {
            }
            this.zzg = false;
            this.zzf = null;
            this.zze = null;
        }
    }

    @KeepForSdk
    public Info getInfo() throws IOException {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzg) {
                synchronized (this.zzh) {
                    zza zzaVar = this.zzi;
                    if (zzaVar == null || !zzaVar.zzp) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zza(false);
                    if (!this.zzg) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e10) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
                }
            }
            Preconditions.checkNotNull(this.zze);
            Preconditions.checkNotNull(this.zzf);
            try {
                info = new Info(this.zzf.getId(), this.zzf.zzb(true));
            } catch (RemoteException unused) {
                throw new IOException("Remote exception");
            }
        }
        zza();
        return info;
    }

    @KeepForSdk
    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zza(true);
    }
}

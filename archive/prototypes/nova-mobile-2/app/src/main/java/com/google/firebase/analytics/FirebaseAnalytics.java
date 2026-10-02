package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzib;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallations;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-measurement-api@@19.0.2 */
/* loaded from: classes.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zza;
    private final zzee zzb;

    public FirebaseAnalytics(zzee zzeeVar) {
        Preconditions.checkNotNull(zzeeVar);
        this.zzb = zzeeVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (zza == null) {
            synchronized (FirebaseAnalytics.class) {
                if (zza == null) {
                    zza = new FirebaseAnalytics(zzee.zzg(context, null, null, null, null));
                }
            }
        }
        return zza;
    }

    @Keep
    public static zzib getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzee zzg = zzee.zzg(context, null, null, null, bundle);
        if (zzg == null) {
            return null;
        }
        return new zzc(zzg);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public void logEvent(String str, Bundle bundle) {
        this.zzb.zzx(str, bundle);
    }

    public void setAnalyticsCollectionEnabled(boolean z10) {
        this.zzb.zzK(Boolean.valueOf(z10));
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.zzb.zzG(activity, str, str2);
    }
}

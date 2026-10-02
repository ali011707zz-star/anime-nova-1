package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class zzp {
    private static zzp zzbn;

    @VisibleForTesting
    private Storage zzbo;

    @VisibleForTesting
    private GoogleSignInAccount zzbp;

    @VisibleForTesting
    private GoogleSignInOptions zzbq;

    private zzp(Context context) {
        Storage storage = Storage.getInstance(context);
        this.zzbo = storage;
        this.zzbp = storage.getSavedDefaultGoogleSignInAccount();
        this.zzbq = this.zzbo.getSavedDefaultGoogleSignInOptions();
    }

    public static synchronized zzp zzd(Context context) {
        zzp zze;
        synchronized (zzp.class) {
            zze = zze(context.getApplicationContext());
        }
        return zze;
    }

    private static synchronized zzp zze(Context context) {
        zzp zzpVar;
        synchronized (zzp.class) {
            if (zzbn == null) {
                zzbn = new zzp(context);
            }
            zzpVar = zzbn;
        }
        return zzpVar;
    }

    public final synchronized void clear() {
        this.zzbo.clear();
        this.zzbp = null;
        this.zzbq = null;
    }

    public final synchronized void zzc(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.zzbo.saveDefaultGoogleSignInAccount(googleSignInAccount, googleSignInOptions);
        this.zzbp = googleSignInAccount;
        this.zzbq = googleSignInOptions;
    }

    public final synchronized GoogleSignInAccount zzh() {
        return this.zzbp;
    }

    public final synchronized GoogleSignInOptions zzi() {
        return this.zzbq;
    }
}

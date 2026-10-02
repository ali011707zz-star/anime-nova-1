package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zacv<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> zag;
    private final zacu zah;
    private ResultTransform<? super R, ? extends Result> zaa = null;
    private zacv<? extends Result> zab = null;
    private volatile ResultCallbacks<? super R> zac = null;
    private PendingResult<R> zad = null;
    private final Object zae = new Object();
    private Status zaf = null;
    private boolean zai = false;

    public zacv(WeakReference<GoogleApiClient> weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.zag = weakReference;
        GoogleApiClient googleApiClient = weakReference.get();
        this.zah = new zacu(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    @GuardedBy("mSyncToken")
    private final void zaj() {
        if (this.zaa == null && this.zac == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.zag.get();
        if (!this.zai && this.zaa != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.zai = true;
        }
        Status status = this.zaf;
        if (status != null) {
            zal(status);
            return;
        }
        PendingResult<R> pendingResult = this.zad;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zak(Status status) {
        synchronized (this.zae) {
            this.zaf = status;
            zal(status);
        }
    }

    private final void zal(Status status) {
        synchronized (this.zae) {
            ResultTransform<? super R, ? extends Result> resultTransform = this.zaa;
            if (resultTransform != null) {
                ((zacv) Preconditions.checkNotNull(this.zab)).zak((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), "onFailure must not return null"));
            } else if (zam()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onFailure(status);
            }
        }
    }

    @GuardedBy("mSyncToken")
    private final boolean zam() {
        return (this.zac == null || this.zag.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zan(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(result);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
                sb2.append("Unable to release ");
                sb2.append(valueOf);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.zae) {
            boolean z10 = true;
            Preconditions.checkState(this.zac == null, "Cannot call andFinally() twice.");
            if (this.zaa != null) {
                z10 = false;
            }
            Preconditions.checkState(z10, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zac = resultCallbacks;
            zaj();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r10) {
        synchronized (this.zae) {
            if (!r10.getStatus().isSuccess()) {
                zak(r10.getStatus());
                zan(r10);
            } else if (this.zaa != null) {
                zacj.zaa().submit(new zact(this, r10));
            } else if (zam()) {
                ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onSuccess(r10);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zacv<? extends Result> zacvVar;
        synchronized (this.zae) {
            boolean z10 = true;
            Preconditions.checkState(this.zaa == null, "Cannot call then() twice.");
            if (this.zac != null) {
                z10 = false;
            }
            Preconditions.checkState(z10, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zaa = resultTransform;
            zacvVar = new zacv<>(this.zag);
            this.zab = zacvVar;
            zaj();
        }
        return zacvVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zaa(PendingResult<?> pendingResult) {
        synchronized (this.zae) {
            this.zad = pendingResult;
            zaj();
        }
    }

    public final void zab() {
        this.zac = null;
    }
}

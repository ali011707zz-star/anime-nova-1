package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zae<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zai {
    public final A zaa;

    public zae(int i10, A a10) {
        super(i10);
        this.zaa = (A) Preconditions.checkNotNull(a10, "Null methods are not runnable.");
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zac(Status status) {
        try {
            this.zaa.setFailedResult(status);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zad(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        StringBuilder sb2 = new StringBuilder(simpleName.length() + 2 + String.valueOf(localizedMessage).length());
        sb2.append(simpleName);
        sb2.append(": ");
        sb2.append(localizedMessage);
        try {
            this.zaa.setFailedResult(new Status(10, sb2.toString()));
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zae(zaaa zaaaVar, boolean z10) {
        zaaaVar.zaa(this.zaa, z10);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    public final void zaf(zabl<?> zablVar) throws DeadObjectException {
        try {
            this.zaa.run(zablVar.zaf());
        } catch (RuntimeException e10) {
            zad(e10);
        }
    }
}

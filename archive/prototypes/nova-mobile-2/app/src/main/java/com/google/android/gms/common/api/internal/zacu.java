package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zacu extends com.google.android.gms.internal.base.zap {
    public final /* synthetic */ zacv zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zacu(zacv zacvVar, Looper looper) {
        super(looper);
        this.zaa = zacvVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Object obj;
        zacv zacvVar;
        int i10 = message.what;
        if (i10 != 0) {
            if (i10 != 1) {
                StringBuilder sb2 = new StringBuilder(70);
                sb2.append("TransformationResultHandler received unknown message type: ");
                sb2.append(i10);
                return;
            } else {
                RuntimeException runtimeException = (RuntimeException) message.obj;
                String valueOf = String.valueOf(runtimeException.getMessage());
                if (valueOf.length() != 0) {
                    "Runtime exception on the transformation worker thread: ".concat(valueOf);
                    throw runtimeException;
                }
                throw runtimeException;
            }
        }
        PendingResult<?> pendingResult = (PendingResult) message.obj;
        obj = this.zaa.zae;
        synchronized (obj) {
            zacvVar = this.zaa.zab;
            zacv zacvVar2 = (zacv) Preconditions.checkNotNull(zacvVar);
            if (pendingResult == null) {
                zacvVar2.zak(new Status(13, "Transform returned null"));
            } else if (pendingResult instanceof zack) {
                zacvVar2.zak(((zack) pendingResult).zaa());
            } else {
                zacvVar2.zaa(pendingResult);
            }
        }
    }
}

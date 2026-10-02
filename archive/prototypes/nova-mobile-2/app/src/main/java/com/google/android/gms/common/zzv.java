package com.google.android.gms.common;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
final class zzv extends zzw {
    private final Callable<String> zzd;

    public /* synthetic */ zzv(Callable callable, zzu zzuVar) {
        super(false, null, null);
        this.zzd = callable;
    }

    @Override // com.google.android.gms.common.zzw
    public final String zza() {
        try {
            return this.zzd.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}

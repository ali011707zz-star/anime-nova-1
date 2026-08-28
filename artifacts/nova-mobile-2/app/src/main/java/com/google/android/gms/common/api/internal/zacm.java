package com.google.android.gms.common.api.internal;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
final class zacm implements Runnable {
    public final /* synthetic */ com.google.android.gms.signin.internal.zak zaa;
    public final /* synthetic */ zaco zab;

    public zacm(zaco zacoVar, com.google.android.gms.signin.internal.zak zakVar) {
        this.zab = zacoVar;
        this.zaa = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaco.zaf(this.zab, this.zaa);
    }
}

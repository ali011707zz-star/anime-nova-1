package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zabi implements Runnable {
    public final /* synthetic */ int zaa;
    public final /* synthetic */ zabl zab;

    public zabi(zabl zablVar, int i10) {
        this.zab = zablVar;
        this.zaa = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.zaC(this.zaa);
    }
}

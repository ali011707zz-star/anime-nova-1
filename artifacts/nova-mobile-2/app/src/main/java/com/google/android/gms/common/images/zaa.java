package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.Asserts;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
final class zaa implements Runnable {
    public final /* synthetic */ ImageManager zaa;
    private final Uri zab;
    private final ParcelFileDescriptor zac;

    public zaa(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        boolean z10;
        Handler handler;
        Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        ParcelFileDescriptor parcelFileDescriptor = this.zac;
        Bitmap bitmap2 = null;
        boolean z11 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError unused) {
                String valueOf = String.valueOf(this.zab);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 34);
                sb2.append("OOM while loading bitmap for uri: ");
                sb2.append(valueOf);
                z11 = true;
            }
            try {
                this.zac.close();
            } catch (IOException unused2) {
            }
            bitmap = bitmap2;
            z10 = z11;
        } else {
            bitmap = null;
            z10 = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        handler = this.zaa.zae;
        handler.post(new zac(this.zaa, this.zab, bitmap, z10, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused3) {
            String valueOf2 = String.valueOf(this.zab);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 32);
            sb3.append("Latch interrupted while posting ");
            sb3.append(valueOf2);
        }
    }
}

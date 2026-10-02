package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.internal.base.zao;
import com.google.android.gms.internal.base.zap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class ImageManager {
    private static final Object zaa = new Object();
    private static HashSet<Uri> zab = new HashSet<>();
    private static ImageManager zac;
    private final Context zad;
    private final Handler zae = new zap(Looper.getMainLooper());
    private final ExecutorService zaf = zao.zaa().zaa(4, 2);
    private final zak zag = new zak();
    private final Map<zag, ImageReceiver> zah = new HashMap();
    private final Map<Uri, ImageReceiver> zai = new HashMap();
    private final Map<Uri, Long> zaj = new HashMap();

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @KeepName
    /* loaded from: classes.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList<zag> zac;

        public ImageReceiver(Uri uri) {
            super(new zap(Looper.getMainLooper()));
            this.zab = uri;
            this.zac = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i10, Bundle bundle) {
            ImageManager.this.zaf.execute(new zaa(ImageManager.this, this.zab, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zaa(zag zagVar) {
            Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zac.add(zagVar);
        }

        public final void zab(zag zagVar) {
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zac.remove(zagVar);
        }

        public final void zac() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.setPackage("com.google.android.gms");
            intent.putExtra(Constants.EXTRA_URI, this.zab);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            ImageManager.this.zad.sendBroadcast(intent);
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    /* loaded from: classes.dex */
    public interface OnImageLoadedListener {
        void onImageLoaded(@RecentlyNonNull Uri uri, Drawable drawable, boolean z10);
    }

    private ImageManager(Context context, boolean z10) {
        this.zad = context.getApplicationContext();
    }

    @RecentlyNonNull
    public static ImageManager create(@RecentlyNonNull Context context) {
        if (zac == null) {
            zac = new ImageManager(context, false);
        }
        return zac;
    }

    public void loadImage(@RecentlyNonNull ImageView imageView, int i10) {
        zaa(new zae(imageView, i10));
    }

    public final void zaa(zag zagVar) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new zab(this, zagVar).run();
    }

    public void loadImage(@RecentlyNonNull ImageView imageView, @RecentlyNonNull Uri uri) {
        zaa(new zae(imageView, uri));
    }

    public void loadImage(@RecentlyNonNull ImageView imageView, @RecentlyNonNull Uri uri, int i10) {
        zae zaeVar = new zae(imageView, uri);
        zaeVar.zab = i10;
        zaa(zaeVar);
    }

    public void loadImage(@RecentlyNonNull OnImageLoadedListener onImageLoadedListener, @RecentlyNonNull Uri uri) {
        zaa(new zaf(onImageLoadedListener, uri));
    }

    public void loadImage(@RecentlyNonNull OnImageLoadedListener onImageLoadedListener, @RecentlyNonNull Uri uri, int i10) {
        zaf zafVar = new zaf(onImageLoadedListener, uri);
        zafVar.zab = i10;
        zaa(zafVar);
    }
}

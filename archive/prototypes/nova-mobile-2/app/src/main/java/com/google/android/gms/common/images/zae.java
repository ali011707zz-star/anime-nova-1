package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zai;
import com.google.android.gms.internal.base.zaj;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public final class zae extends zag {
    private final WeakReference<ImageView> zac;

    public zae(ImageView imageView, int i10) {
        super(Uri.EMPTY, i10);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference<>(imageView);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = this.zac.get();
        ImageView imageView2 = ((zae) obj).zac.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.common.images.zag
    public final void zaa(Drawable drawable, boolean z10, boolean z11, boolean z12) {
        ImageView imageView = this.zac.get();
        if (imageView != null) {
            if (!z11 && !z12 && (imageView instanceof zaj)) {
                throw null;
            }
            boolean z13 = false;
            if (!z11 && !z10) {
                z13 = true;
            }
            if (z13) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof zai) {
                    drawable2 = ((zai) drawable2).zab();
                }
                drawable = new zai(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof zaj) {
                throw null;
            }
            if (drawable == null || !z13) {
                return;
            }
            ((zai) drawable).zac(250);
        }
    }

    public zae(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.zac = new WeakReference<>(imageView);
    }
}

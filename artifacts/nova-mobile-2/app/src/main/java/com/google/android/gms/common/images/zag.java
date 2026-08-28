package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
/* loaded from: classes.dex */
public abstract class zag {
    public final zad zaa;
    public int zab;

    public zag(Uri uri, int i10) {
        this.zab = 0;
        this.zaa = new zad(uri);
        this.zab = i10;
    }

    public abstract void zaa(Drawable drawable, boolean z10, boolean z11, boolean z12);

    public final void zab(Context context, Bitmap bitmap, boolean z10) {
        Asserts.checkNotNull(bitmap);
        zaa(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }

    public final void zac(Context context, zak zakVar, boolean z10) {
        int i10 = this.zab;
        zaa(i10 != 0 ? context.getResources().getDrawable(i10) : null, z10, false, false);
    }
}

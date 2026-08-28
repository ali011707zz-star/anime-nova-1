package com.anslayer.data.glide;

import a8.c;
import android.content.Context;
import android.graphics.drawable.Drawable;
import com.anslayer.R;
import com.bumptech.glide.d;
import f8.a;
import io.wax911.support.SupportExtentionKt;
import java.io.File;
import jc.l;
import p7.b;
import s7.k;
import t7.f;
import t7.h;
import t7.j;

/* compiled from: GlideAppModule.kt */
/* loaded from: classes.dex */
public final class GlideAppModule extends a {
    @Override // f8.a, f8.b
    public void a(Context context, d dVar) {
        l.f(context, "context");
        l.f(dVar, "builder");
        boolean isLowRamDevice = SupportExtentionKt.isLowRamDevice(context);
        j a10 = new j.a(context).b(isLowRamDevice ? 1 : 2).a();
        double d10 = a10.d();
        Double.isNaN(d10);
        int i10 = (int) (d10 * 1.25d);
        double b10 = a10.b();
        Double.isNaN(b10);
        int i11 = (int) (b10 * 1.25d);
        int i12 = 367001600;
        if (context.getExternalCacheDir() != null) {
            File externalCacheDir = context.getExternalCacheDir();
            l.c(externalCacheDir);
            double totalSpace = externalCacheDir.getTotalSpace();
            Double.isNaN(totalSpace);
            i12 = (int) (totalSpace * 0.2d);
        }
        dVar.g(new h(i10));
        dVar.b(new k(i11));
        dVar.f(new f(context, i12));
        h8.h i13 = new h8.h().j(isLowRamDevice ? b.PREFER_RGB_565 : b.PREFER_ARGB_8888).d0(10000).g(r7.j.f12976e).i(SupportExtentionKt.getCompatDrawable(context, R.drawable.glide_error_icon));
        l.e(i13, "RequestOptions()\n       …awable.glide_error_icon))");
        dVar.d(i13);
        dVar.e(Drawable.class, c.i());
    }

    @Override // f8.a
    public boolean c() {
        return false;
    }
}

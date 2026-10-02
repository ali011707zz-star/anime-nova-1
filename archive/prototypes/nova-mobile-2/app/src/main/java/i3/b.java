package i3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import e3.g;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import q3.d;
import q3.h;

/* compiled from: ImageAssetManager.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: e, reason: collision with root package name */
    public static final Object f7550e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Context f7551a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7552b;

    /* renamed from: c, reason: collision with root package name */
    public e3.b f7553c;

    /* renamed from: d, reason: collision with root package name */
    public final Map<String, g> f7554d;

    public b(Drawable.Callback callback, String str, e3.b bVar, Map<String, g> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f7552b = str + '/';
        } else {
            this.f7552b = str;
        }
        if (!(callback instanceof View)) {
            d.c("LottieDrawable must be inside of a view for images to work.");
            this.f7554d = new HashMap();
            this.f7551a = null;
        } else {
            this.f7551a = ((View) callback).getContext();
            this.f7554d = map;
            d(bVar);
        }
    }

    public Bitmap a(String str) {
        g gVar = this.f7554d.get(str);
        if (gVar == null) {
            return null;
        }
        Bitmap a10 = gVar.a();
        if (a10 != null) {
            return a10;
        }
        e3.b bVar = this.f7553c;
        if (bVar != null) {
            Bitmap a11 = bVar.a(gVar);
            if (a11 != null) {
                c(str, a11);
            }
            return a11;
        }
        String b10 = gVar.b();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (b10.startsWith("data:") && b10.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(b10.substring(b10.indexOf(44) + 1), 0);
                return c(str, BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
            } catch (IllegalArgumentException e10) {
                d.d("data URL did not have correct base64 format.", e10);
                return null;
            }
        }
        try {
            if (!TextUtils.isEmpty(this.f7552b)) {
                try {
                    return c(str, h.l(BitmapFactory.decodeStream(this.f7551a.getAssets().open(this.f7552b + b10), null, options), gVar.e(), gVar.c()));
                } catch (IllegalArgumentException e11) {
                    d.d("Unable to decode image.", e11);
                    return null;
                }
            }
            throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
        } catch (IOException e12) {
            d.d("Unable to open asset.", e12);
            return null;
        }
    }

    public boolean b(Context context) {
        return (context == null && this.f7551a == null) || this.f7551a.equals(context);
    }

    public final Bitmap c(String str, Bitmap bitmap) {
        synchronized (f7550e) {
            this.f7554d.get(str).f(bitmap);
        }
        return bitmap;
    }

    public void d(e3.b bVar) {
        this.f7553c = bVar;
    }
}

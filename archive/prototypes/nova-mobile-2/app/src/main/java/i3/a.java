package i3;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import j3.i;
import java.util.HashMap;
import java.util.Map;
import q3.d;

/* compiled from: FontAssetManager.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: d, reason: collision with root package name */
    public final AssetManager f7548d;

    /* renamed from: a, reason: collision with root package name */
    public final i<String> f7545a = new i<>();

    /* renamed from: b, reason: collision with root package name */
    public final Map<i<String>, Typeface> f7546b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, Typeface> f7547c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public String f7549e = ".ttf";

    public a(Drawable.Callback callback, e3.a aVar) {
        if (!(callback instanceof View)) {
            d.c("LottieDrawable must be inside of a view for images to work.");
            this.f7548d = null;
        } else {
            this.f7548d = ((View) callback).getContext().getAssets();
        }
    }

    public final Typeface a(String str) {
        Typeface typeface = this.f7547c.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface createFromAsset = Typeface.createFromAsset(this.f7548d, "fonts/" + str + this.f7549e);
        this.f7547c.put(str, createFromAsset);
        return createFromAsset;
    }

    public Typeface b(String str, String str2) {
        this.f7545a.b(str, str2);
        Typeface typeface = this.f7546b.get(this.f7545a);
        if (typeface != null) {
            return typeface;
        }
        Typeface d10 = d(a(str), str2);
        this.f7546b.put(this.f7545a, d10);
        return d10;
    }

    public void c(e3.a aVar) {
    }

    public final Typeface d(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i10 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
        return typeface.getStyle() == i10 ? typeface : Typeface.create(typeface, i10);
    }
}

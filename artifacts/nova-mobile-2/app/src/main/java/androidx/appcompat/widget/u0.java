package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* compiled from: TintResources.java */
/* loaded from: classes.dex */
public class u0 extends m0 {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference<Context> f1491b;

    public u0(Context context, Resources resources) {
        super(resources);
        this.f1491b = new WeakReference<>(context);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i10) throws Resources.NotFoundException {
        Drawable a10 = a(i10);
        Context context = this.f1491b.get();
        if (a10 != null && context != null) {
            l0.h().x(context, i10, a10);
        }
        return a10;
    }
}

package j8;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import j8.d;

/* compiled from: DrawableCrossFadeTransition.java */
/* loaded from: classes.dex */
public class b implements d<Drawable> {

    /* renamed from: a, reason: collision with root package name */
    public final int f8928a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8929b;

    public b(int i10, boolean z10) {
        this.f8928a = i10;
        this.f8929b = z10;
    }

    @Override // j8.d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean a(Drawable drawable, d.a aVar) {
        Drawable d10 = aVar.d();
        if (d10 == null) {
            d10 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{d10, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f8929b);
        transitionDrawable.startTransition(this.f8928a);
        aVar.a(transitionDrawable);
        return true;
    }
}

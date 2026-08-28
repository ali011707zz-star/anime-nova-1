package x1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* compiled from: ViewOverlayApi18.java */
/* loaded from: classes.dex */
public class c0 implements d0 {

    /* renamed from: a, reason: collision with root package name */
    public final ViewOverlay f15722a;

    public c0(View view) {
        this.f15722a = view.getOverlay();
    }

    @Override // x1.d0
    public void add(Drawable drawable) {
        this.f15722a.add(drawable);
    }

    @Override // x1.d0
    public void remove(Drawable drawable) {
        this.f15722a.remove(drawable);
    }
}

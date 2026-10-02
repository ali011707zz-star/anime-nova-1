package x1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* compiled from: ViewGroupOverlayApi18.java */
/* loaded from: classes.dex */
public class x implements y {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroupOverlay f15831a;

    public x(ViewGroup viewGroup) {
        this.f15831a = viewGroup.getOverlay();
    }

    @Override // x1.d0
    public void add(Drawable drawable) {
        this.f15831a.add(drawable);
    }

    @Override // x1.d0
    public void remove(Drawable drawable) {
        this.f15831a.remove(drawable);
    }

    @Override // x1.y
    public void add(View view) {
        this.f15831a.add(view);
    }

    @Override // x1.y
    public void remove(View view) {
        this.f15831a.remove(view);
    }
}

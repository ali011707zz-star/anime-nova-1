package x1;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ViewGroupOverlayApi14.java */
/* loaded from: classes.dex */
public class w extends b0 implements y {
    public w(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    public static w c(ViewGroup viewGroup) {
        return (w) b0.a(viewGroup);
    }

    @Override // x1.y
    public void add(View view) {
        this.f15678a.b(view);
    }

    @Override // x1.y
    public void remove(View view) {
        this.f15678a.g(view);
    }
}

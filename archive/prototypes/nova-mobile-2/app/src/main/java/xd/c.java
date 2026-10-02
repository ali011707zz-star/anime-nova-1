package xd;

import android.content.Context;
import android.widget.Scroller;

/* compiled from: PreGingerScroller.java */
/* loaded from: classes2.dex */
public class c extends d {

    /* renamed from: a, reason: collision with root package name */
    public final Scroller f16255a;

    public c(Context context) {
        this.f16255a = new Scroller(context);
    }

    @Override // xd.d
    public boolean a() {
        return this.f16255a.computeScrollOffset();
    }

    @Override // xd.d
    public void b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        this.f16255a.fling(i10, i11, i12, i13, i14, i15, i16, i17);
    }

    @Override // xd.d
    public void c(boolean z10) {
        this.f16255a.forceFinished(z10);
    }

    @Override // xd.d
    public int d() {
        return this.f16255a.getCurrX();
    }

    @Override // xd.d
    public int e() {
        return this.f16255a.getCurrY();
    }

    @Override // xd.d
    public boolean g() {
        return this.f16255a.isFinished();
    }
}

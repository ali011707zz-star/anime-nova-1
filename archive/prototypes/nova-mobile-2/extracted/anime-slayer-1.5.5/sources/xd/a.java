package xd;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.OverScroller;

/* compiled from: GingerScroller.java */
@TargetApi(9)
/* loaded from: classes2.dex */
public class a extends d {

    /* renamed from: a, reason: collision with root package name */
    public final OverScroller f16253a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16254b = false;

    public a(Context context) {
        this.f16253a = new OverScroller(context);
    }

    @Override // xd.d
    public boolean a() {
        if (this.f16254b) {
            this.f16253a.computeScrollOffset();
            this.f16254b = false;
        }
        return this.f16253a.computeScrollOffset();
    }

    @Override // xd.d
    public void b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
        this.f16253a.fling(i10, i11, i12, i13, i14, i15, i16, i17, i18, i19);
    }

    @Override // xd.d
    public void c(boolean z10) {
        this.f16253a.forceFinished(z10);
    }

    @Override // xd.d
    public int d() {
        return this.f16253a.getCurrX();
    }

    @Override // xd.d
    public int e() {
        return this.f16253a.getCurrY();
    }

    @Override // xd.d
    public boolean g() {
        return this.f16253a.isFinished();
    }
}

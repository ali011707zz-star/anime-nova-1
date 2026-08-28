package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: LayoutState.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: b, reason: collision with root package name */
    public int f3060b;

    /* renamed from: c, reason: collision with root package name */
    public int f3061c;

    /* renamed from: d, reason: collision with root package name */
    public int f3062d;

    /* renamed from: e, reason: collision with root package name */
    public int f3063e;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3066h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3067i;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3059a = true;

    /* renamed from: f, reason: collision with root package name */
    public int f3064f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f3065g = 0;

    public boolean a(RecyclerView.b0 b0Var) {
        int i10 = this.f3061c;
        return i10 >= 0 && i10 < b0Var.b();
    }

    public View b(RecyclerView.w wVar) {
        View o10 = wVar.o(this.f3061c);
        this.f3061c += this.f3062d;
        return o10;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3060b + ", mCurrentPosition=" + this.f3061c + ", mItemDirection=" + this.f3062d + ", mLayoutDirection=" + this.f3063e + ", mStartLine=" + this.f3064f + ", mEndLine=" + this.f3065g + '}';
    }
}

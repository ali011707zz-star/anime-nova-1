package pd;

import android.view.View;
import jc.l;

/* compiled from: NestedScrollViewScrollChangeEventFlow.kt */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final View f12236a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12237b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12238c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12239d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12240e;

    public c(View view, int i10, int i11, int i12, int i13) {
        l.f(view, "view");
        this.f12236a = view;
        this.f12237b = i10;
        this.f12238c = i11;
        this.f12239d = i12;
        this.f12240e = i13;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return l.a(this.f12236a, cVar.f12236a) && this.f12237b == cVar.f12237b && this.f12238c == cVar.f12238c && this.f12239d == cVar.f12239d && this.f12240e == cVar.f12240e;
    }

    public int hashCode() {
        return (((((((this.f12236a.hashCode() * 31) + this.f12237b) * 31) + this.f12238c) * 31) + this.f12239d) * 31) + this.f12240e;
    }

    public String toString() {
        return "ScrollChangeEvent(view=" + this.f12236a + ", scrollX=" + this.f12237b + ", scrollY=" + this.f12238c + ", oldScrollX=" + this.f12239d + ", oldScrollY=" + this.f12240e + ")";
    }
}

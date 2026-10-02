package qd;

import androidx.recyclerview.widget.RecyclerView;
import jc.l;

/* compiled from: RecyclerViewScrollEventFlow.kt */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView f12710a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12711b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12712c;

    public a(RecyclerView recyclerView, int i10, int i11) {
        l.f(recyclerView, "view");
        this.f12710a = recyclerView;
        this.f12711b = i10;
        this.f12712c = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return l.a(this.f12710a, aVar.f12710a) && this.f12711b == aVar.f12711b && this.f12712c == aVar.f12712c;
    }

    public int hashCode() {
        return (((this.f12710a.hashCode() * 31) + this.f12711b) * 31) + this.f12712c;
    }

    public String toString() {
        return "RecyclerViewScrollEvent(view=" + this.f12710a + ", dx=" + this.f12711b + ", dy=" + this.f12712c + ")";
    }
}

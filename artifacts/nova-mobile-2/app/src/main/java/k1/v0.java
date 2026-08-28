package k1;

import java.util.List;
import k1.t0;

/* compiled from: PagingState.kt */
/* loaded from: classes.dex */
public final class v0<Key, Value> {

    /* renamed from: a, reason: collision with root package name */
    public final List<t0.b.C0202b<Key, Value>> f9821a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f9822b;

    /* renamed from: c, reason: collision with root package name */
    public final p0 f9823c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9824d;

    public v0(List<t0.b.C0202b<Key, Value>> list, Integer num, p0 p0Var, int i10) {
        jc.l.f(list, "pages");
        jc.l.f(p0Var, "config");
        this.f9821a = list;
        this.f9822b = num;
        this.f9823c = p0Var;
        this.f9824d = i10;
    }

    public final Integer a() {
        return this.f9822b;
    }

    public final List<t0.b.C0202b<Key, Value>> b() {
        return this.f9821a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof v0) {
            v0 v0Var = (v0) obj;
            if (jc.l.a(this.f9821a, v0Var.f9821a) && jc.l.a(this.f9822b, v0Var.f9822b) && jc.l.a(this.f9823c, v0Var.f9823c) && this.f9824d == v0Var.f9824d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f9821a.hashCode();
        Integer num = this.f9822b;
        return hashCode + (num != null ? num.hashCode() : 0) + this.f9823c.hashCode() + this.f9824d;
    }

    public String toString() {
        return "PagingState(pages=" + this.f9821a + ", anchorPosition=" + this.f9822b + ", config=" + this.f9823c + ", leadingPlaceholderCount=" + this.f9824d + ')';
    }
}

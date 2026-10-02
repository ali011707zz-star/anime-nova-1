package k3;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: BaseAnimatableValue.java */
/* loaded from: classes.dex */
public abstract class n<V, O> implements m<V, O> {

    /* renamed from: a, reason: collision with root package name */
    public final List<r3.a<V>> f9902a;

    public n(V v10) {
        this(Collections.singletonList(new r3.a(v10)));
    }

    @Override // k3.m
    public List<r3.a<V>> b() {
        return this.f9902a;
    }

    @Override // k3.m
    public boolean c() {
        return this.f9902a.isEmpty() || (this.f9902a.size() == 1 && this.f9902a.get(0).h());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.f9902a.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.f9902a.toArray()));
        }
        return sb2.toString();
    }

    public n(List<r3.a<V>> list) {
        this.f9902a = list;
    }
}

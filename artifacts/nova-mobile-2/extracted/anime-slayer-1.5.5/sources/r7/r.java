package r7;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Jobs.java */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Map<p7.e, l<?>> f13047a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map<p7.e, l<?>> f13048b = new HashMap();

    public l<?> a(p7.e eVar, boolean z10) {
        return b(z10).get(eVar);
    }

    public final Map<p7.e, l<?>> b(boolean z10) {
        return z10 ? this.f13048b : this.f13047a;
    }

    public void c(p7.e eVar, l<?> lVar) {
        b(lVar.p()).put(eVar, lVar);
    }

    public void d(p7.e eVar, l<?> lVar) {
        Map<p7.e, l<?>> b10 = b(lVar.p());
        if (lVar.equals(b10.get(eVar))) {
            b10.remove(eVar);
        }
    }
}

package ja;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: JsonArray.java */
/* loaded from: classes.dex */
public final class i extends l implements Iterable<l> {

    /* renamed from: f, reason: collision with root package name */
    public final List<l> f9140f = new ArrayList();

    @Override // ja.l
    public String d() {
        if (this.f9140f.size() == 1) {
            return this.f9140f.get(0).d();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof i) && ((i) obj).f9140f.equals(this.f9140f));
    }

    public int hashCode() {
        return this.f9140f.hashCode();
    }

    public void i(l lVar) {
        if (lVar == null) {
            lVar = m.f9141a;
        }
        this.f9140f.add(lVar);
    }

    @Override // java.lang.Iterable
    public Iterator<l> iterator() {
        return this.f9140f.iterator();
    }
}

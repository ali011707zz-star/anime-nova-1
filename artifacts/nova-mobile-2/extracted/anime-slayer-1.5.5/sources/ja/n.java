package ja;

import java.util.Map;
import java.util.Set;

/* compiled from: JsonObject.java */
/* loaded from: classes.dex */
public final class n extends l {

    /* renamed from: a, reason: collision with root package name */
    public final la.g<String, l> f9142a = new la.g<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof n) && ((n) obj).f9142a.equals(this.f9142a));
    }

    public int hashCode() {
        return this.f9142a.hashCode();
    }

    public void i(String str, l lVar) {
        la.g<String, l> gVar = this.f9142a;
        if (lVar == null) {
            lVar = m.f9141a;
        }
        gVar.put(str, lVar);
    }

    public void j(String str, String str2) {
        i(str, str2 == null ? m.f9141a : new o(str2));
    }

    public Set<Map.Entry<String, l>> k() {
        return this.f9142a.entrySet();
    }

    public l l(String str) {
        return this.f9142a.get(str);
    }

    public o m(String str) {
        return (o) this.f9142a.get(str);
    }

    public boolean n(String str) {
        return this.f9142a.containsKey(str);
    }
}

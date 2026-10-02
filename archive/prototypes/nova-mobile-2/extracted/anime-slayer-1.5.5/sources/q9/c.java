package q9;

import java.util.Map;
import q9.g;

/* compiled from: AutoValue_SchedulerConfig.java */
/* loaded from: classes.dex */
public final class c extends g {

    /* renamed from: a, reason: collision with root package name */
    public final t9.a f12554a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<h9.d, g.b> f12555b;

    public c(t9.a aVar, Map<h9.d, g.b> map) {
        if (aVar != null) {
            this.f12554a = aVar;
            if (map != null) {
                this.f12555b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // q9.g
    public t9.a e() {
        return this.f12554a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f12554a.equals(gVar.e()) && this.f12555b.equals(gVar.h());
    }

    @Override // q9.g
    public Map<h9.d, g.b> h() {
        return this.f12555b;
    }

    public int hashCode() {
        return ((this.f12554a.hashCode() ^ 1000003) * 1000003) ^ this.f12555b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f12554a + ", values=" + this.f12555b + "}";
    }
}

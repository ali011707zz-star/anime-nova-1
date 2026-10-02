package m2;

/* compiled from: Preference.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public String f10799a;

    /* renamed from: b, reason: collision with root package name */
    public Long f10800b;

    public d(String str, boolean z10) {
        this(str, z10 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f10799a.equals(dVar.f10799a)) {
            return false;
        }
        Long l10 = this.f10800b;
        Long l11 = dVar.f10800b;
        return l10 != null ? l10.equals(l11) : l11 == null;
    }

    public int hashCode() {
        int hashCode = this.f10799a.hashCode() * 31;
        Long l10 = this.f10800b;
        return hashCode + (l10 != null ? l10.hashCode() : 0);
    }

    public d(String str, long j10) {
        this.f10799a = str;
        this.f10800b = Long.valueOf(j10);
    }
}

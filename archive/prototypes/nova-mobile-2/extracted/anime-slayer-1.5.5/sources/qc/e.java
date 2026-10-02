package qc;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* compiled from: Regex.kt */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f12694a;

    /* renamed from: b, reason: collision with root package name */
    public final nc.e f12695b;

    public e(String str, nc.e eVar) {
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        jc.l.f(eVar, "range");
        this.f12694a = str;
        this.f12695b = eVar;
    }

    public final String a() {
        return this.f12694a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return jc.l.a(this.f12694a, eVar.f12694a) && jc.l.a(this.f12695b, eVar.f12695b);
    }

    public int hashCode() {
        return (this.f12694a.hashCode() * 31) + this.f12695b.hashCode();
    }

    public String toString() {
        return "MatchGroup(value=" + this.f12694a + ", range=" + this.f12695b + ')';
    }
}

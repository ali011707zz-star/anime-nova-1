package i6;

import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* compiled from: ProfileIconAdapter.kt */
/* loaded from: classes.dex */
public final class o extends b {

    /* renamed from: b, reason: collision with root package name */
    public final String f7882b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(String str) {
        super(str, null);
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        this.f7882b = str;
    }

    @Override // i6.b
    public String a() {
        return this.f7882b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && jc.l.a(a(), ((o) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return "Points(value=" + a() + ')';
    }
}

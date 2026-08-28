package w6;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import o4.a;

/* compiled from: FilterUtil.kt */
/* loaded from: classes.dex */
public class q extends a.AbstractC0289a {

    /* renamed from: a, reason: collision with root package name */
    public final String f15332a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(String str, String str2) {
        super(str, false, 2, null);
        jc.l.f(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        jc.l.f(str2, "id");
        this.f15332a = str2;
    }

    public final String d() {
        return this.f15332a;
    }

    public /* synthetic */ q(String str, String str2, int i10, jc.g gVar) {
        this(str, (i10 & 2) != 0 ? str : str2);
    }
}

package gc;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import jc.l;
import qc.u;

/* compiled from: Utils.kt */
/* loaded from: classes2.dex */
public class f extends e {
    public static final String a(File file) {
        l.f(file, "<this>");
        String name = file.getName();
        l.e(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        return u.j0(name, '.', "");
    }

    public static final String b(File file) {
        l.f(file, "<this>");
        String name = file.getName();
        l.e(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        return u.s0(name, ".", null, 2, null);
    }
}

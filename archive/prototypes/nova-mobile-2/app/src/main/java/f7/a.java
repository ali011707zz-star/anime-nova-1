package f7;

import androidx.preference.DialogPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import jc.l;

/* compiled from: PreferenceDSL.kt */
/* loaded from: classes.dex */
public final class a {
    public static final void a(DialogPreference dialogPreference) {
        l.f(dialogPreference, "dialogPreference");
        if (dialogPreference.K0() == null) {
            dialogPreference.N0(dialogPreference.B());
        }
    }

    public static final void b(Preference preference, Object obj) {
        l.f(preference, "<this>");
        preference.l0(obj);
    }

    public static final void c(ListPreference listPreference, Integer[] numArr) {
        l.f(listPreference, "<this>");
        l.f(numArr, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        ArrayList arrayList = new ArrayList(numArr.length);
        for (Integer num : numArr) {
            arrayList.add(listPreference.i().getString(num.intValue()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        l.d(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        listPreference.V0((CharSequence[]) array);
    }

    public static final void d(Preference preference, int i10) {
        l.f(preference, "<this>");
        preference.w0(i10);
    }

    public static final void e(Preference preference, int i10) {
        l.f(preference, "<this>");
        preference.z0(i10);
    }
}

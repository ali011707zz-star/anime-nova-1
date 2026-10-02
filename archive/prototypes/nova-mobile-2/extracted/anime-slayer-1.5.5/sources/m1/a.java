package m1;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ExpandButton.java */
/* loaded from: classes.dex */
public final class a extends Preference {
    public long V;

    public a(Context context, List<Preference> list, long j10) {
        super(context);
        H0();
        I0(list);
        this.V = j10 + 1000000;
    }

    public final void H0() {
        r0(k.f10701a);
        n0(i.f10694a);
        z0(l.f10706b);
        v0(999);
    }

    public final void I0(List<Preference> list) {
        ArrayList arrayList = new ArrayList();
        CharSequence charSequence = null;
        for (Preference preference : list) {
            CharSequence B = preference.B();
            boolean z10 = preference instanceof PreferenceGroup;
            if (z10 && !TextUtils.isEmpty(B)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.r())) {
                if (z10) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(B)) {
                charSequence = charSequence == null ? B : i().getString(l.f10709e, charSequence, B);
            }
        }
        x0(charSequence);
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        super.P(fVar);
        fVar.d(false);
    }

    @Override // androidx.preference.Preference
    public long m() {
        return this.V;
    }
}

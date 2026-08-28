package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.e;
import g0.i;
import m1.g;

/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: e0, reason: collision with root package name */
    public boolean f2604e0;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, i.a(context, g.f10687h, R.attr.preferenceScreenStyle));
        this.f2604e0 = true;
    }

    @Override // androidx.preference.PreferenceGroup
    public boolean N0() {
        return false;
    }

    @Override // androidx.preference.Preference
    public void Q() {
        e.b h10;
        if (n() != null || l() != null || M0() == 0 || (h10 = x().h()) == null) {
            return;
        }
        h10.t(this);
    }

    public boolean S0() {
        return this.f2604e0;
    }
}

package com.anslayer.widget.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.preference.ListPreference;
import jc.g;
import jc.l;

/* compiled from: IntListPreference.kt */
/* loaded from: classes.dex */
public final class IntListPreference extends ListPreference {
    public /* synthetic */ IntListPreference(Context context, AttributeSet attributeSet, int i10, g gVar) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    @Override // androidx.preference.Preference
    public boolean e0(String str) {
        return str != null && d0(Integer.parseInt(str));
    }

    @Override // androidx.preference.Preference
    public String u(String str) {
        int t10 = t(-2147483647);
        return t10 != -2147483647 ? String.valueOf(t10) : str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
    }
}

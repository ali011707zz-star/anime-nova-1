package com.anslayer.widget.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.PreferenceCategory;
import com.anslayer.R;
import io.wax911.support.SupportExtentionKt;
import jc.l;
import m1.f;

/* compiled from: SwitchPreferenceCategory.kt */
/* loaded from: classes.dex */
public final class SwitchPreferenceCategory extends PreferenceCategory implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4501e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4502f0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchPreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle);
        l.f(context, "context");
    }

    @Override // androidx.preference.PreferenceCategory, androidx.preference.Preference
    public boolean C0() {
        return false;
    }

    @Override // androidx.preference.PreferenceCategory, androidx.preference.Preference
    public boolean F() {
        return true;
    }

    @Override // androidx.preference.PreferenceCategory, androidx.preference.Preference
    public void P(f fVar) {
        l.f(fVar, "holder");
        super.P(fVar);
        View a10 = fVar.a(android.R.id.title);
        if (a10 != null) {
            Context i10 = i();
            l.e(i10, "context");
            ((TextView) a10).setTextColor(SupportExtentionKt.getColorFromAttr(i10, R.attr.colorAccent));
            V0(fVar);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
    }

    @Override // androidx.preference.Preference
    public void Q() {
        super.Q();
        boolean z10 = !S0();
        if (b(Boolean.valueOf(z10))) {
            T0(z10);
        }
    }

    public final boolean S0() {
        return this.f4501e0;
    }

    @Override // androidx.preference.Preference
    public Object T(TypedArray typedArray, int i10) {
        l.f(typedArray, "a");
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    public final void T0(boolean z10) {
        boolean z11 = this.f4501e0 != z10;
        if (z11 || !this.f4502f0) {
            this.f4501e0 = z10;
            this.f4502f0 = true;
            c0(z10);
            if (z11) {
                K(C0());
                J();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void U0(View view) {
        if (view instanceof Checkable) {
            Checkable checkable = (Checkable) view;
            if (checkable.isChecked() == this.f4501e0) {
                return;
            }
            boolean z10 = view instanceof SwitchCompat;
            if (z10) {
                ((SwitchCompat) view).setOnCheckedChangeListener(null);
            }
            checkable.toggle();
            if (z10) {
                ((SwitchCompat) view).setOnCheckedChangeListener(this);
            }
        }
    }

    public final void V0(f fVar) {
        View a10 = fVar.a(R.id.switchWidget);
        l.e(a10, "switchView");
        U0(a10);
    }

    @Override // androidx.preference.Preference
    public void Z(boolean z10, Object obj) {
        boolean booleanValue;
        if (z10) {
            booleanValue = s(this.f4501e0);
        } else if (obj != null) {
            booleanValue = ((Boolean) obj).booleanValue();
        } else {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
        }
        T0(booleanValue);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
        l.f(compoundButton, "buttonView");
        if (!b(Boolean.valueOf(z10))) {
            compoundButton.setChecked(!z10);
        } else {
            T0(z10);
        }
    }
}

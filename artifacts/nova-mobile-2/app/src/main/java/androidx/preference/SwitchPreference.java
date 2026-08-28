package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import g0.i;
import m1.f;
import m1.g;
import m1.n;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {

    /* renamed from: a0, reason: collision with root package name */
    public final a f2617a0;

    /* renamed from: b0, reason: collision with root package name */
    public CharSequence f2618b0;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence f2619c0;

    /* loaded from: classes.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!SwitchPreference.this.b(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                SwitchPreference.this.I0(z10);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2617a0 = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.E1, i10, i11);
        L0(i.o(obtainStyledAttributes, n.M1, n.F1));
        K0(i.o(obtainStyledAttributes, n.L1, n.G1));
        P0(i.o(obtainStyledAttributes, n.O1, n.I1));
        O0(i.o(obtainStyledAttributes, n.N1, n.J1));
        J0(i.b(obtainStyledAttributes, n.K1, n.H1, false));
        obtainStyledAttributes.recycle();
    }

    public void O0(CharSequence charSequence) {
        this.f2619c0 = charSequence;
        J();
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        super.P(fVar);
        Q0(fVar.a(R.id.switch_widget));
        N0(fVar);
    }

    public void P0(CharSequence charSequence) {
        this.f2618b0 = charSequence;
        J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q0(View view) {
        boolean z10 = view instanceof Switch;
        if (z10) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.V);
        }
        if (z10) {
            Switch r42 = (Switch) view;
            r42.setTextOn(this.f2618b0);
            r42.setTextOff(this.f2619c0);
            r42.setOnCheckedChangeListener(this.f2617a0);
        }
    }

    public final void R0(View view) {
        if (((AccessibilityManager) i().getSystemService("accessibility")).isEnabled()) {
            Q0(view.findViewById(R.id.switch_widget));
            M0(view.findViewById(R.id.summary));
        }
    }

    @Override // androidx.preference.Preference
    public void b0(View view) {
        super.b0(view);
        R0(view);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10692m, R.attr.switchPreferenceStyle));
    }
}

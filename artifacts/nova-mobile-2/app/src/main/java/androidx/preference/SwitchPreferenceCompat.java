package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import g0.i;
import m1.f;
import m1.g;
import m1.j;
import m1.n;

/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: a0, reason: collision with root package name */
    public final a f2621a0;

    /* renamed from: b0, reason: collision with root package name */
    public CharSequence f2622b0;

    /* renamed from: c0, reason: collision with root package name */
    public CharSequence f2623c0;

    /* loaded from: classes.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!SwitchPreferenceCompat.this.b(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                SwitchPreferenceCompat.this.I0(z10);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2621a0 = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.P1, i10, i11);
        L0(i.o(obtainStyledAttributes, n.X1, n.Q1));
        K0(i.o(obtainStyledAttributes, n.W1, n.R1));
        P0(i.o(obtainStyledAttributes, n.Z1, n.T1));
        O0(i.o(obtainStyledAttributes, n.Y1, n.U1));
        J0(i.b(obtainStyledAttributes, n.V1, n.S1, false));
        obtainStyledAttributes.recycle();
    }

    public void O0(CharSequence charSequence) {
        this.f2623c0 = charSequence;
        J();
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        super.P(fVar);
        Q0(fVar.a(j.f10700f));
        N0(fVar);
    }

    public void P0(CharSequence charSequence) {
        this.f2622b0 = charSequence;
        J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q0(View view) {
        boolean z10 = view instanceof SwitchCompat;
        if (z10) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.V);
        }
        if (z10) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.f2622b0);
            switchCompat.setTextOff(this.f2623c0);
            switchCompat.setOnCheckedChangeListener(this.f2621a0);
        }
    }

    public final void R0(View view) {
        if (((AccessibilityManager) i().getSystemService("accessibility")).isEnabled()) {
            Q0(view.findViewById(j.f10700f));
            M0(view.findViewById(R.id.summary));
        }
    }

    @Override // androidx.preference.Preference
    public void b0(View view) {
        super.b0(view);
        R0(view);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.f10691l);
    }

    public SwitchPreferenceCompat(Context context) {
        this(context, null);
    }
}

package androidx.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import g0.i;
import m1.f;
import m1.g;
import m1.n;

/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: a0, reason: collision with root package name */
    public final a f2552a0;

    /* loaded from: classes.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!CheckBoxPreference.this.b(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                CheckBoxPreference.this.I0(z10);
            }
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O0(View view) {
        boolean z10 = view instanceof CompoundButton;
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.V);
        }
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f2552a0);
        }
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        super.P(fVar);
        O0(fVar.a(R.id.checkbox));
        N0(fVar);
    }

    public final void P0(View view) {
        if (((AccessibilityManager) i().getSystemService("accessibility")).isEnabled()) {
            O0(view.findViewById(R.id.checkbox));
            M0(view.findViewById(R.id.summary));
        }
    }

    @Override // androidx.preference.Preference
    public void b0(View view) {
        super.b0(view);
        P0(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2552a0 = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f10770s, i10, i11);
        L0(i.o(obtainStyledAttributes, n.f10788y, n.f10773t));
        K0(i.o(obtainStyledAttributes, n.f10785x, n.f10776u));
        J0(i.b(obtainStyledAttributes, n.f10782w, n.f10779v, false));
        obtainStyledAttributes.recycle();
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, g.f10680a, R.attr.checkBoxPreferenceStyle));
    }
}

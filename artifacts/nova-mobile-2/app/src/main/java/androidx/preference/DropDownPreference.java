package androidx.preference;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import m1.f;
import m1.g;
import m1.j;

/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: g0, reason: collision with root package name */
    public final Context f2555g0;

    /* renamed from: h0, reason: collision with root package name */
    public final ArrayAdapter f2556h0;

    /* renamed from: i0, reason: collision with root package name */
    public Spinner f2557i0;

    /* renamed from: j0, reason: collision with root package name */
    public final AdapterView.OnItemSelectedListener f2558j0;

    /* loaded from: classes.dex */
    public class a implements AdapterView.OnItemSelectedListener {
        public a() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (i10 >= 0) {
                String charSequence = DropDownPreference.this.S0()[i10].toString();
                if (charSequence.equals(DropDownPreference.this.T0()) || !DropDownPreference.this.b(charSequence)) {
                    return;
                }
                DropDownPreference.this.X0(charSequence);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, g.f10683d);
    }

    @Override // androidx.preference.Preference
    public void J() {
        super.J();
        ArrayAdapter arrayAdapter = this.f2556h0;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public void P(f fVar) {
        Spinner spinner = (Spinner) fVar.itemView.findViewById(j.f10699e);
        this.f2557i0 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f2556h0);
        this.f2557i0.setOnItemSelectedListener(this.f2558j0);
        this.f2557i0.setSelection(Z0(T0()));
        super.P(fVar);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public void Q() {
        this.f2557i0.performClick();
    }

    @Override // androidx.preference.ListPreference
    public void V0(CharSequence[] charSequenceArr) {
        super.V0(charSequenceArr);
        a1();
    }

    public ArrayAdapter Y0() {
        return new ArrayAdapter(this.f2555g0, R.layout.simple_spinner_dropdown_item);
    }

    public final int Z0(String str) {
        CharSequence[] S0 = S0();
        if (str == null || S0 == null) {
            return -1;
        }
        for (int length = S0.length - 1; length >= 0; length--) {
            if (S0[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    public final void a1() {
        this.f2556h0.clear();
        if (Q0() != null) {
            for (CharSequence charSequence : Q0()) {
                this.f2556h0.add(charSequence.toString());
            }
        }
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f2558j0 = new a();
        this.f2555g0 = context;
        this.f2556h0 = Y0();
        a1();
    }
}

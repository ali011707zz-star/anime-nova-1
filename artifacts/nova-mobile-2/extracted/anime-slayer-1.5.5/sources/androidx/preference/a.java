package androidx.preference;

import android.R;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

/* compiled from: EditTextPreferenceDialogFragmentCompat.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: n, reason: collision with root package name */
    public EditText f2626n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence f2627o;

    public static a M(String str) {
        a aVar = new a();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        aVar.setArguments(bundle);
        return aVar;
    }

    @Override // androidx.preference.b
    public boolean F() {
        return true;
    }

    @Override // androidx.preference.b
    public void G(View view) {
        super.G(view);
        EditText editText = (EditText) view.findViewById(R.id.edit);
        this.f2626n = editText;
        if (editText != null) {
            editText.requestFocus();
            this.f2626n.setText(this.f2627o);
            EditText editText2 = this.f2626n;
            editText2.setSelection(editText2.getText().length());
            if (L().P0() != null) {
                L().P0().a(this.f2626n);
                return;
            }
            return;
        }
        throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
    }

    @Override // androidx.preference.b
    public void I(boolean z10) {
        if (z10) {
            String obj = this.f2626n.getText().toString();
            EditTextPreference L = L();
            if (L.b(obj)) {
                L.R0(obj);
            }
        }
    }

    public final EditTextPreference L() {
        return (EditTextPreference) E();
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.f2627o = L().Q0();
        } else {
            this.f2627o = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f2627o);
    }
}

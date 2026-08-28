package m1;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.d;
import androidx.preference.ListPreference;

/* compiled from: ListPreferenceDialogFragmentCompat.java */
/* loaded from: classes.dex */
public class b extends androidx.preference.b {

    /* renamed from: n, reason: collision with root package name */
    public int f10664n;

    /* renamed from: o, reason: collision with root package name */
    public CharSequence[] f10665o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence[] f10666p;

    /* compiled from: ListPreferenceDialogFragmentCompat.java */
    /* loaded from: classes.dex */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            b bVar = b.this;
            bVar.f10664n = i10;
            bVar.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public static b M(String str) {
        b bVar = new b();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // androidx.preference.b
    public void I(boolean z10) {
        int i10;
        if (!z10 || (i10 = this.f10664n) < 0) {
            return;
        }
        String charSequence = this.f10666p[i10].toString();
        ListPreference L = L();
        if (L.b(charSequence)) {
            L.X0(charSequence);
        }
    }

    @Override // androidx.preference.b
    public void J(d.a aVar) {
        super.J(aVar);
        aVar.setSingleChoiceItems(this.f10665o, this.f10664n, new a());
        aVar.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    public final ListPreference L() {
        return (ListPreference) E();
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ListPreference L = L();
            if (L.Q0() != null && L.S0() != null) {
                this.f10664n = L.P0(L.T0());
                this.f10665o = L.Q0();
                this.f10666p = L.S0();
                return;
            }
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f10664n = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.f10665o = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.f10666p = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f10664n);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f10665o);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f10666p);
    }
}

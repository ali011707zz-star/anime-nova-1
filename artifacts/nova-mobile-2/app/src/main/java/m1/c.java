package m1;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.d;
import androidx.preference.MultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MultiSelectListPreferenceDialogFragmentCompat.java */
/* loaded from: classes.dex */
public class c extends androidx.preference.b {

    /* renamed from: n, reason: collision with root package name */
    public Set<String> f10668n = new HashSet();

    /* renamed from: o, reason: collision with root package name */
    public boolean f10669o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence[] f10670p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence[] f10671q;

    /* compiled from: MultiSelectListPreferenceDialogFragmentCompat.java */
    /* loaded from: classes.dex */
    public class a implements DialogInterface.OnMultiChoiceClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public void onClick(DialogInterface dialogInterface, int i10, boolean z10) {
            if (z10) {
                c cVar = c.this;
                cVar.f10669o = cVar.f10668n.add(cVar.f10671q[i10].toString()) | cVar.f10669o;
            } else {
                c cVar2 = c.this;
                cVar2.f10669o = cVar2.f10668n.remove(cVar2.f10671q[i10].toString()) | cVar2.f10669o;
            }
        }
    }

    public static c M(String str) {
        c cVar = new c();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // androidx.preference.b
    public void I(boolean z10) {
        if (z10 && this.f10669o) {
            MultiSelectListPreference L = L();
            if (L.b(this.f10668n)) {
                L.S0(this.f10668n);
            }
        }
        this.f10669o = false;
    }

    @Override // androidx.preference.b
    public void J(d.a aVar) {
        super.J(aVar);
        int length = this.f10671q.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = this.f10668n.contains(this.f10671q[i10].toString());
        }
        aVar.setMultiChoiceItems(this.f10670p, zArr, new a());
    }

    public final MultiSelectListPreference L() {
        return (MultiSelectListPreference) E();
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            MultiSelectListPreference L = L();
            if (L.P0() != null && L.Q0() != null) {
                this.f10668n.clear();
                this.f10668n.addAll(L.R0());
                this.f10669o = false;
                this.f10670p = L.P0();
                this.f10671q = L.Q0();
                return;
            }
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        this.f10668n.clear();
        this.f10668n.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
        this.f10669o = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
        this.f10670p = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
        this.f10671q = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }

    @Override // androidx.preference.b, androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f10668n));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f10669o);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.f10670p);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.f10671q);
    }
}

package a7;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.PreferenceScreen;
import com.google.android.material.snackbar.Snackbar;

/* compiled from: SettingsFragment.kt */
/* loaded from: classes.dex */
public abstract class h extends androidx.preference.c {

    /* renamed from: o, reason: collision with root package name */
    public Snackbar f484o;

    @Override // androidx.preference.c
    public void M(Bundle bundle, String str) {
        PreferenceScreen a10 = H().a(getContext());
        S(a10);
        jc.l.e(a10, "screen");
        W(a10);
    }

    public String U() {
        CharSequence B;
        PreferenceScreen I = I();
        if (I == null || (B = I.B()) == null) {
            return null;
        }
        return B.toString();
    }

    public final void V() {
        androidx.fragment.app.e activity = getActivity();
        androidx.appcompat.app.e eVar = activity instanceof androidx.appcompat.app.e ? (androidx.appcompat.app.e) activity : null;
        androidx.appcompat.app.a supportActionBar = eVar != null ? eVar.getSupportActionBar() : null;
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.x(U());
    }

    public abstract PreferenceScreen W(PreferenceScreen preferenceScreen);

    @Override // androidx.preference.c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        jc.l.f(layoutInflater, "inflater");
        V();
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.preference.c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Snackbar snackbar = this.f484o;
        if (snackbar != null) {
            snackbar.dismiss();
        }
        this.f484o = null;
    }
}

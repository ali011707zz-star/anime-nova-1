package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: FragmentLoginBinding.java */
/* loaded from: classes.dex */
public final class c1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8187a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f8188b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f8189c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialButton f8190d;

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatEditText f8191e;

    /* renamed from: f, reason: collision with root package name */
    public final TextInputLayout f8192f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressLayout f8193g;

    /* renamed from: h, reason: collision with root package name */
    public final AppCompatEditText f8194h;

    /* renamed from: i, reason: collision with root package name */
    public final TextInputLayout f8195i;

    public c1(ProgressLayout progressLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, MaterialButton materialButton, AppCompatEditText appCompatEditText, TextInputLayout textInputLayout, ProgressLayout progressLayout2, AppCompatEditText appCompatEditText2, TextInputLayout textInputLayout2) {
        this.f8187a = progressLayout;
        this.f8188b = appCompatTextView;
        this.f8189c = appCompatTextView2;
        this.f8190d = materialButton;
        this.f8191e = appCompatEditText;
        this.f8192f = textInputLayout;
        this.f8193g = progressLayout2;
        this.f8194h = appCompatEditText2;
        this.f8195i = textInputLayout2;
    }

    public static c1 a(View view) {
        int i10 = R.id.action_forgot_password;
        AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.action_forgot_password);
        if (appCompatTextView != null) {
            i10 = R.id.action_resend_activation;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) a2.b.a(view, R.id.action_resend_activation);
            if (appCompatTextView2 != null) {
                i10 = R.id.action_sign_in;
                MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.action_sign_in);
                if (materialButton != null) {
                    i10 = R.id.password;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) a2.b.a(view, R.id.password);
                    if (appCompatEditText != null) {
                        i10 = R.id.password_container;
                        TextInputLayout textInputLayout = (TextInputLayout) a2.b.a(view, R.id.password_container);
                        if (textInputLayout != null) {
                            ProgressLayout progressLayout = (ProgressLayout) view;
                            i10 = R.id.username;
                            AppCompatEditText appCompatEditText2 = (AppCompatEditText) a2.b.a(view, R.id.username);
                            if (appCompatEditText2 != null) {
                                i10 = R.id.username_container;
                                TextInputLayout textInputLayout2 = (TextInputLayout) a2.b.a(view, R.id.username_container);
                                if (textInputLayout2 != null) {
                                    return new c1(progressLayout, appCompatTextView, appCompatTextView2, materialButton, appCompatEditText, textInputLayout, progressLayout, appCompatEditText2, textInputLayout2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_login, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8187a;
    }
}

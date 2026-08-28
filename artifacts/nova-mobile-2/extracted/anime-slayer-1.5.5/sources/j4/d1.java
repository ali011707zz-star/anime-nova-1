package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import com.anslayer.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: FragmentRegisterBinding.java */
/* loaded from: classes.dex */
public final class d1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8241a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialButton f8242b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatEditText f8243c;

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f8244d;

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatEditText f8245e;

    /* renamed from: f, reason: collision with root package name */
    public final TextInputLayout f8246f;

    /* renamed from: g, reason: collision with root package name */
    public final AppCompatEditText f8247g;

    /* renamed from: h, reason: collision with root package name */
    public final AppCompatEditText f8248h;

    /* renamed from: i, reason: collision with root package name */
    public final TextInputLayout f8249i;

    /* renamed from: j, reason: collision with root package name */
    public final TextInputLayout f8250j;

    /* renamed from: k, reason: collision with root package name */
    public final ProgressLayout f8251k;

    public d1(ProgressLayout progressLayout, MaterialButton materialButton, AppCompatEditText appCompatEditText, TextInputLayout textInputLayout, AppCompatEditText appCompatEditText2, TextInputLayout textInputLayout2, AppCompatEditText appCompatEditText3, AppCompatEditText appCompatEditText4, TextInputLayout textInputLayout3, TextInputLayout textInputLayout4, ProgressLayout progressLayout2) {
        this.f8241a = progressLayout;
        this.f8242b = materialButton;
        this.f8243c = appCompatEditText;
        this.f8244d = textInputLayout;
        this.f8245e = appCompatEditText2;
        this.f8246f = textInputLayout2;
        this.f8247g = appCompatEditText3;
        this.f8248h = appCompatEditText4;
        this.f8249i = textInputLayout3;
        this.f8250j = textInputLayout4;
        this.f8251k = progressLayout2;
    }

    public static d1 a(View view) {
        int i10 = R.id.action_sign_up;
        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.action_sign_up);
        if (materialButton != null) {
            i10 = R.id.email;
            AppCompatEditText appCompatEditText = (AppCompatEditText) a2.b.a(view, R.id.email);
            if (appCompatEditText != null) {
                i10 = R.id.email_container;
                TextInputLayout textInputLayout = (TextInputLayout) a2.b.a(view, R.id.email_container);
                if (textInputLayout != null) {
                    i10 = R.id.full_name;
                    AppCompatEditText appCompatEditText2 = (AppCompatEditText) a2.b.a(view, R.id.full_name);
                    if (appCompatEditText2 != null) {
                        i10 = R.id.full_name_container;
                        TextInputLayout textInputLayout2 = (TextInputLayout) a2.b.a(view, R.id.full_name_container);
                        if (textInputLayout2 != null) {
                            i10 = R.id.password;
                            AppCompatEditText appCompatEditText3 = (AppCompatEditText) a2.b.a(view, R.id.password);
                            if (appCompatEditText3 != null) {
                                i10 = R.id.password_confirm;
                                AppCompatEditText appCompatEditText4 = (AppCompatEditText) a2.b.a(view, R.id.password_confirm);
                                if (appCompatEditText4 != null) {
                                    i10 = R.id.password_confirm_container;
                                    TextInputLayout textInputLayout3 = (TextInputLayout) a2.b.a(view, R.id.password_confirm_container);
                                    if (textInputLayout3 != null) {
                                        i10 = R.id.password_container;
                                        TextInputLayout textInputLayout4 = (TextInputLayout) a2.b.a(view, R.id.password_container);
                                        if (textInputLayout4 != null) {
                                            ProgressLayout progressLayout = (ProgressLayout) view;
                                            return new d1(progressLayout, materialButton, appCompatEditText, textInputLayout, appCompatEditText2, textInputLayout2, appCompatEditText3, appCompatEditText4, textInputLayout3, textInputLayout4, progressLayout);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_register, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ProgressLayout b() {
        return this.f8241a;
    }
}

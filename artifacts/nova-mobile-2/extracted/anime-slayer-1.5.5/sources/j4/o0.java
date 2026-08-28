package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: CreateCustomListActivityBinding.java */
/* loaded from: classes.dex */
public final class o0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8591a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialButton f8592b;

    /* renamed from: c, reason: collision with root package name */
    public final AppBarLayout f8593c;

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f8594d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8595e;

    /* renamed from: f, reason: collision with root package name */
    public final TextInputLayout f8596f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8597g;

    /* renamed from: h, reason: collision with root package name */
    public final MaterialToolbar f8598h;

    public o0(ConstraintLayout constraintLayout, MaterialButton materialButton, AppBarLayout appBarLayout, TextInputLayout textInputLayout, TextView textView, TextInputLayout textInputLayout2, TextView textView2, MaterialToolbar materialToolbar) {
        this.f8591a = constraintLayout;
        this.f8592b = materialButton;
        this.f8593c = appBarLayout;
        this.f8594d = textInputLayout;
        this.f8595e = textView;
        this.f8596f = textInputLayout2;
        this.f8597g = textView2;
        this.f8598h = materialToolbar;
    }

    public static o0 a(View view) {
        int i10 = R.id.add_list;
        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.add_list);
        if (materialButton != null) {
            i10 = R.id.app_bar;
            AppBarLayout appBarLayout = (AppBarLayout) a2.b.a(view, R.id.app_bar);
            if (appBarLayout != null) {
                i10 = R.id.list_description;
                TextInputLayout textInputLayout = (TextInputLayout) a2.b.a(view, R.id.list_description);
                if (textInputLayout != null) {
                    i10 = R.id.list_description_header;
                    TextView textView = (TextView) a2.b.a(view, R.id.list_description_header);
                    if (textView != null) {
                        i10 = R.id.list_name;
                        TextInputLayout textInputLayout2 = (TextInputLayout) a2.b.a(view, R.id.list_name);
                        if (textInputLayout2 != null) {
                            i10 = R.id.list_name_header;
                            TextView textView2 = (TextView) a2.b.a(view, R.id.list_name_header);
                            if (textView2 != null) {
                                i10 = R.id.toolbar;
                                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                if (materialToolbar != null) {
                                    return new o0((ConstraintLayout) view, materialButton, appBarLayout, textInputLayout, textView, textInputLayout2, textView2, materialToolbar);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.create_custom_list_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8591a;
    }
}

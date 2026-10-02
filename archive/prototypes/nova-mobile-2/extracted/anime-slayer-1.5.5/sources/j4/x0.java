package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: EditProfileActivityBinding.java */
/* loaded from: classes.dex */
public final class x0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8793a;

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f8794b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8795c;

    /* renamed from: d, reason: collision with root package name */
    public final TextInputLayout f8796d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8797e;

    /* renamed from: f, reason: collision with root package name */
    public final TextInputLayout f8798f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8799g;

    /* renamed from: h, reason: collision with root package name */
    public final TextInputLayout f8800h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f8801i;

    /* renamed from: j, reason: collision with root package name */
    public final ConstraintLayout f8802j;

    /* renamed from: k, reason: collision with root package name */
    public final NestedScrollView f8803k;

    /* renamed from: l, reason: collision with root package name */
    public final MaterialToolbar f8804l;

    /* renamed from: m, reason: collision with root package name */
    public final AppCompatImageView f8805m;

    /* renamed from: n, reason: collision with root package name */
    public final ShapeableImageView f8806n;

    /* renamed from: o, reason: collision with root package name */
    public final TextInputLayout f8807o;

    /* renamed from: p, reason: collision with root package name */
    public final TextView f8808p;

    public x0(LinearLayout linearLayout, TextInputLayout textInputLayout, TextView textView, TextInputLayout textInputLayout2, TextView textView2, TextInputLayout textInputLayout3, TextView textView3, TextInputLayout textInputLayout4, TextView textView4, ConstraintLayout constraintLayout, NestedScrollView nestedScrollView, MaterialToolbar materialToolbar, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, TextInputLayout textInputLayout5, TextView textView5) {
        this.f8793a = linearLayout;
        this.f8794b = textInputLayout;
        this.f8795c = textView;
        this.f8796d = textInputLayout2;
        this.f8797e = textView2;
        this.f8798f = textInputLayout3;
        this.f8799g = textView3;
        this.f8800h = textInputLayout4;
        this.f8801i = textView4;
        this.f8802j = constraintLayout;
        this.f8803k = nestedScrollView;
        this.f8804l = materialToolbar;
        this.f8805m = appCompatImageView;
        this.f8806n = shapeableImageView;
        this.f8807o = textInputLayout5;
        this.f8808p = textView5;
    }

    public static x0 a(View view) {
        int i10 = R.id.bio;
        TextInputLayout textInputLayout = (TextInputLayout) a2.b.a(view, R.id.bio);
        if (textInputLayout != null) {
            i10 = R.id.bio_header;
            TextView textView = (TextView) a2.b.a(view, R.id.bio_header);
            if (textView != null) {
                i10 = R.id.birthday;
                TextInputLayout textInputLayout2 = (TextInputLayout) a2.b.a(view, R.id.birthday);
                if (textInputLayout2 != null) {
                    i10 = R.id.birthday_header;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.birthday_header);
                    if (textView2 != null) {
                        i10 = R.id.full_name;
                        TextInputLayout textInputLayout3 = (TextInputLayout) a2.b.a(view, R.id.full_name);
                        if (textInputLayout3 != null) {
                            i10 = R.id.full_name_header;
                            TextView textView3 = (TextView) a2.b.a(view, R.id.full_name_header);
                            if (textView3 != null) {
                                i10 = R.id.location;
                                TextInputLayout textInputLayout4 = (TextInputLayout) a2.b.a(view, R.id.location);
                                if (textInputLayout4 != null) {
                                    i10 = R.id.location_header;
                                    TextView textView4 = (TextView) a2.b.a(view, R.id.location_header);
                                    if (textView4 != null) {
                                        i10 = R.id.main_content;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) a2.b.a(view, R.id.main_content);
                                        if (constraintLayout != null) {
                                            i10 = R.id.nested_scroll_view;
                                            NestedScrollView nestedScrollView = (NestedScrollView) a2.b.a(view, R.id.nested_scroll_view);
                                            if (nestedScrollView != null) {
                                                i10 = R.id.toolbar;
                                                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                                if (materialToolbar != null) {
                                                    i10 = R.id.user_cover;
                                                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.user_cover);
                                                    if (appCompatImageView != null) {
                                                        i10 = R.id.user_image;
                                                        ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.user_image);
                                                        if (shapeableImageView != null) {
                                                            i10 = R.id.username;
                                                            TextInputLayout textInputLayout5 = (TextInputLayout) a2.b.a(view, R.id.username);
                                                            if (textInputLayout5 != null) {
                                                                i10 = R.id.username_header;
                                                                TextView textView5 = (TextView) a2.b.a(view, R.id.username_header);
                                                                if (textView5 != null) {
                                                                    return new x0((LinearLayout) view, textInputLayout, textView, textInputLayout2, textView2, textInputLayout3, textView3, textInputLayout4, textView4, constraintLayout, nestedScrollView, materialToolbar, appCompatImageView, shapeableImageView, textInputLayout5, textView5);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    public static x0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.edit_profile_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8793a;
    }
}

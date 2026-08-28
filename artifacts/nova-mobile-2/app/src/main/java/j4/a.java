package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: ActivityAboutBinding.java */
/* loaded from: classes.dex */
public final class a implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8115a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8116b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8117c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8118d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8119e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8120f;

    /* renamed from: g, reason: collision with root package name */
    public final LottieAnimationView f8121g;

    /* renamed from: h, reason: collision with root package name */
    public final ScrollView f8122h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f8123i;

    /* renamed from: j, reason: collision with root package name */
    public final MaterialToolbar f8124j;

    /* renamed from: k, reason: collision with root package name */
    public final LinearLayout f8125k;

    public a(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, LottieAnimationView lottieAnimationView, ScrollView scrollView, TextView textView6, MaterialToolbar materialToolbar, LinearLayout linearLayout2) {
        this.f8115a = linearLayout;
        this.f8116b = textView;
        this.f8117c = textView2;
        this.f8118d = textView3;
        this.f8119e = textView4;
        this.f8120f = textView5;
        this.f8121g = lottieAnimationView;
        this.f8122h = scrollView;
        this.f8123i = textView6;
        this.f8124j = materialToolbar;
        this.f8125k = linearLayout2;
    }

    public static a a(View view) {
        int i10 = R.id.app_contect_us;
        TextView textView = (TextView) a2.b.a(view, R.id.app_contect_us);
        if (textView != null) {
            i10 = R.id.app_facebook;
            TextView textView2 = (TextView) a2.b.a(view, R.id.app_facebook);
            if (textView2 != null) {
                i10 = R.id.app_twitter;
                TextView textView3 = (TextView) a2.b.a(view, R.id.app_twitter);
                if (textView3 != null) {
                    i10 = R.id.app_version;
                    TextView textView4 = (TextView) a2.b.a(view, R.id.app_version);
                    if (textView4 != null) {
                        i10 = R.id.app_website;
                        TextView textView5 = (TextView) a2.b.a(view, R.id.app_website);
                        if (textView5 != null) {
                            i10 = R.id.lav_sub2;
                            LottieAnimationView lottieAnimationView = (LottieAnimationView) a2.b.a(view, R.id.lav_sub2);
                            if (lottieAnimationView != null) {
                                i10 = R.id.scrollView;
                                ScrollView scrollView = (ScrollView) a2.b.a(view, R.id.scrollView);
                                if (scrollView != null) {
                                    i10 = R.id.text;
                                    TextView textView6 = (TextView) a2.b.a(view, R.id.text);
                                    if (textView6 != null) {
                                        i10 = R.id.toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                                        if (materialToolbar != null) {
                                            i10 = R.id.transitions;
                                            LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.transitions);
                                            if (linearLayout != null) {
                                                return new a((LinearLayout) view, textView, textView2, textView3, textView4, textView5, lottieAnimationView, scrollView, textView6, materialToolbar, linearLayout);
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

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_about, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8115a;
    }
}

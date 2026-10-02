package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.anslayer.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.nguyenhoanglam.progresslayout.ProgressLayout;

/* compiled from: FragmentAuthSelectionBinding.java */
/* loaded from: classes.dex */
public final class y0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8829a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8830b;

    /* renamed from: c, reason: collision with root package name */
    public final FloatingActionButton f8831c;

    /* renamed from: d, reason: collision with root package name */
    public final LottieAnimationView f8832d;

    /* renamed from: e, reason: collision with root package name */
    public final ProgressLayout f8833e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8834f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearLayout f8835g;

    /* renamed from: h, reason: collision with root package name */
    public final FloatingActionButton f8836h;

    public y0(ProgressLayout progressLayout, TextView textView, FloatingActionButton floatingActionButton, LottieAnimationView lottieAnimationView, ProgressLayout progressLayout2, TextView textView2, LinearLayout linearLayout, FloatingActionButton floatingActionButton2) {
        this.f8829a = progressLayout;
        this.f8830b = textView;
        this.f8831c = floatingActionButton;
        this.f8832d = lottieAnimationView;
        this.f8833e = progressLayout2;
        this.f8834f = textView2;
        this.f8835g = linearLayout;
        this.f8836h = floatingActionButton2;
    }

    public static y0 a(View view) {
        int i10 = R.id.action_use_email;
        TextView textView = (TextView) a2.b.a(view, R.id.action_use_email);
        if (textView != null) {
            i10 = R.id.googleLoginFab;
            FloatingActionButton floatingActionButton = (FloatingActionButton) a2.b.a(view, R.id.googleLoginFab);
            if (floatingActionButton != null) {
                i10 = R.id.lav_sub2;
                LottieAnimationView lottieAnimationView = (LottieAnimationView) a2.b.a(view, R.id.lav_sub2);
                if (lottieAnimationView != null) {
                    ProgressLayout progressLayout = (ProgressLayout) view;
                    i10 = R.id.text;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.text);
                    if (textView2 != null) {
                        i10 = R.id.transitions_container;
                        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.transitions_container);
                        if (linearLayout != null) {
                            i10 = R.id.twitterLoginFab;
                            FloatingActionButton floatingActionButton2 = (FloatingActionButton) a2.b.a(view, R.id.twitterLoginFab);
                            if (floatingActionButton2 != null) {
                                return new y0(progressLayout, textView, floatingActionButton, lottieAnimationView, progressLayout, textView2, linearLayout, floatingActionButton2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

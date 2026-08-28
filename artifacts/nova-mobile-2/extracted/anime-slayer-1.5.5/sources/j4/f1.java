package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.anslayer.R;

/* compiled from: FragmentSplashBinding.java */
/* loaded from: classes.dex */
public final class f1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8348a;

    /* renamed from: b, reason: collision with root package name */
    public final ConstraintLayout f8349b;

    /* renamed from: c, reason: collision with root package name */
    public final LottieAnimationView f8350c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8351d;

    /* renamed from: e, reason: collision with root package name */
    public final LinearLayout f8352e;

    public f1(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, LottieAnimationView lottieAnimationView, TextView textView, LinearLayout linearLayout) {
        this.f8348a = constraintLayout;
        this.f8349b = constraintLayout2;
        this.f8350c = lottieAnimationView;
        this.f8351d = textView;
        this.f8352e = linearLayout;
    }

    public static f1 a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R.id.lav_sub2;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) a2.b.a(view, R.id.lav_sub2);
        if (lottieAnimationView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) a2.b.a(view, R.id.text);
            if (textView != null) {
                i10 = R.id.transitions_container;
                LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.transitions_container);
                if (linearLayout != null) {
                    return new f1(constraintLayout, constraintLayout, lottieAnimationView, textView, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_splash, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8348a;
    }
}

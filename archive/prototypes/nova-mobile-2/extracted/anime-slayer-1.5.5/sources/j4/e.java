package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.FitWindowsFrameLayout;
import com.anslayer.R;

/* compiled from: ActivitySplashBinding.java */
/* loaded from: classes.dex */
public final class e implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FitWindowsFrameLayout f8271a;

    /* renamed from: b, reason: collision with root package name */
    public final FitWindowsFrameLayout f8272b;

    public e(FitWindowsFrameLayout fitWindowsFrameLayout, FitWindowsFrameLayout fitWindowsFrameLayout2) {
        this.f8271a = fitWindowsFrameLayout;
        this.f8272b = fitWindowsFrameLayout2;
    }

    public static e a(View view) {
        if (view != null) {
            FitWindowsFrameLayout fitWindowsFrameLayout = (FitWindowsFrameLayout) view;
            return new e(fitWindowsFrameLayout, fitWindowsFrameLayout);
        }
        throw new NullPointerException("rootView");
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_splash, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FitWindowsFrameLayout b() {
        return this.f8271a;
    }
}

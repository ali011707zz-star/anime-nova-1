package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;

/* compiled from: SeasonsFragmentBinding.java */
/* loaded from: classes.dex */
public final class z1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ViewPager f8872a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager f8873b;

    public z1(ViewPager viewPager, ViewPager viewPager2) {
        this.f8872a = viewPager;
        this.f8873b = viewPager2;
    }

    public static z1 a(View view) {
        if (view != null) {
            ViewPager viewPager = (ViewPager) view;
            return new z1(viewPager, viewPager);
        }
        throw new NullPointerException("rootView");
    }

    public static z1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.seasons_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ViewPager b() {
        return this.f8872a;
    }
}

package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;

/* compiled from: AnimelistRankingFragmentBinding.java */
/* loaded from: classes.dex */
public final class v implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ViewPager f8759a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager f8760b;

    public v(ViewPager viewPager, ViewPager viewPager2) {
        this.f8759a = viewPager;
        this.f8760b = viewPager2;
    }

    public static v a(View view) {
        if (view != null) {
            ViewPager viewPager = (ViewPager) view;
            return new v(viewPager, viewPager);
        }
        throw new NullPointerException("rootView");
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.animelist_ranking_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ViewPager b() {
        return this.f8759a;
    }
}

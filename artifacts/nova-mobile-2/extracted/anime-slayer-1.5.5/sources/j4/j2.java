package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.tabs.TabLayout;

/* compiled from: SeriesActivityBinding.java */
/* loaded from: classes.dex */
public final class j2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8475a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager f8476b;

    /* renamed from: c, reason: collision with root package name */
    public final TabLayout f8477c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialToolbar f8478d;

    public j2(LinearLayout linearLayout, ViewPager viewPager, TabLayout tabLayout, MaterialToolbar materialToolbar) {
        this.f8475a = linearLayout;
        this.f8476b = viewPager;
        this.f8477c = tabLayout;
        this.f8478d = materialToolbar;
    }

    public static j2 a(View view) {
        int i10 = R.id.pager;
        ViewPager viewPager = (ViewPager) a2.b.a(view, R.id.pager);
        if (viewPager != null) {
            i10 = R.id.tabs;
            TabLayout tabLayout = (TabLayout) a2.b.a(view, R.id.tabs);
            if (tabLayout != null) {
                i10 = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                if (materialToolbar != null) {
                    return new j2((LinearLayout) view, viewPager, tabLayout, materialToolbar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.series_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8475a;
    }
}

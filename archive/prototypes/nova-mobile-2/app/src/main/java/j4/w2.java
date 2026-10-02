package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.anslayer.R;

/* compiled from: UserListPagerFragmentBinding.java */
/* loaded from: classes.dex */
public final class w2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ViewPager f8788a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager f8789b;

    public w2(ViewPager viewPager, ViewPager viewPager2) {
        this.f8788a = viewPager;
        this.f8789b = viewPager2;
    }

    public static w2 a(View view) {
        if (view != null) {
            ViewPager viewPager = (ViewPager) view;
            return new w2(viewPager, viewPager);
        }
        throw new NullPointerException("rootView");
    }

    public static w2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_list_pager_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ViewPager b() {
        return this.f8788a;
    }
}

package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;

/* compiled from: PeopleProfileActivityBinding.java */
/* loaded from: classes.dex */
public final class m1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8542a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8543b;

    public m1(LinearLayout linearLayout, FragmentContainerView fragmentContainerView) {
        this.f8542a = linearLayout;
        this.f8543b = fragmentContainerView;
    }

    public static m1 a(View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            return new m1((LinearLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_container_view)));
    }

    public static m1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.people_profile_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8542a;
    }
}

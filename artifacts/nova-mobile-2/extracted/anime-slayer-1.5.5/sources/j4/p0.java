package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;

/* compiled from: CustomListDetailsActivityBinding.java */
/* loaded from: classes.dex */
public final class p0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8618a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8619b;

    public p0(LinearLayout linearLayout, FragmentContainerView fragmentContainerView) {
        this.f8618a = linearLayout;
        this.f8619b = fragmentContainerView;
    }

    public static p0 a(View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            return new p0((LinearLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_container_view)));
    }

    public static p0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.custom_list_details_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8618a;
    }
}

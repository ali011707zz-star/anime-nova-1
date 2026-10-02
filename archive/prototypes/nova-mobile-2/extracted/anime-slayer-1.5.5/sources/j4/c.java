package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;

/* compiled from: ActivityFilterBinding.java */
/* loaded from: classes.dex */
public final class c implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8166a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8167b;

    public c(LinearLayout linearLayout, FragmentContainerView fragmentContainerView) {
        this.f8166a = linearLayout;
        this.f8167b = fragmentContainerView;
    }

    public static c a(View view) {
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            return new c((LinearLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.fragment_container_view)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8166a;
    }
}

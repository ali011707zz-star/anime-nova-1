package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;

/* compiled from: ServerActivityBinding.java */
/* loaded from: classes.dex */
public final class k2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8497a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8498b;

    /* renamed from: c, reason: collision with root package name */
    public final Toolbar f8499c;

    public k2(CoordinatorLayout coordinatorLayout, FragmentContainerView fragmentContainerView, Toolbar toolbar) {
        this.f8497a = coordinatorLayout;
        this.f8498b = fragmentContainerView;
        this.f8499c = toolbar;
    }

    public static k2 a(View view) {
        int i10 = R.id.fragment_container_view;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            i10 = R.id.toolbar;
            Toolbar toolbar = (Toolbar) a2.b.a(view, R.id.toolbar);
            if (toolbar != null) {
                return new k2((CoordinatorLayout) view, fragmentContainerView, toolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.server_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CoordinatorLayout b() {
        return this.f8497a;
    }
}

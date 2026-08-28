package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: BaseActivityBinding.java */
/* loaded from: classes.dex */
public final class z implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8862a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8863b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialToolbar f8864c;

    public z(LinearLayout linearLayout, FragmentContainerView fragmentContainerView, MaterialToolbar materialToolbar) {
        this.f8862a = linearLayout;
        this.f8863b = fragmentContainerView;
        this.f8864c = materialToolbar;
    }

    public static z a(View view) {
        int i10 = R.id.fragment_container_view;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            i10 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
            if (materialToolbar != null) {
                return new z((LinearLayout) view, fragmentContainerView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.base_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8862a;
    }
}

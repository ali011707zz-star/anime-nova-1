package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: SeasonArchiveActivityBinding.java */
/* loaded from: classes.dex */
public final class v1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8773a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8774b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialToolbar f8775c;

    public v1(LinearLayout linearLayout, FragmentContainerView fragmentContainerView, MaterialToolbar materialToolbar) {
        this.f8773a = linearLayout;
        this.f8774b = fragmentContainerView;
        this.f8775c = materialToolbar;
    }

    public static v1 a(View view) {
        int i10 = R.id.fragment_container_view;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            i10 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
            if (materialToolbar != null) {
                return new v1((LinearLayout) view, fragmentContainerView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.season_archive_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8773a;
    }
}

package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: SettingsActivityBinding.java */
/* loaded from: classes.dex */
public final class l2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8519a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentContainerView f8520b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialToolbar f8521c;

    public l2(LinearLayout linearLayout, FragmentContainerView fragmentContainerView, MaterialToolbar materialToolbar) {
        this.f8519a = linearLayout;
        this.f8520b = fragmentContainerView;
        this.f8521c = materialToolbar;
    }

    public static l2 a(View view) {
        int i10 = R.id.fragment_container_view;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
        if (fragmentContainerView != null) {
            i10 = R.id.supportToolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.supportToolbar);
            if (materialToolbar != null) {
                return new l2((LinearLayout) view, fragmentContainerView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.settings_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8519a;
    }
}

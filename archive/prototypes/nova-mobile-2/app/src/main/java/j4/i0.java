package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.FragmentContainerView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: CharacterSearchActivityBinding.java */
/* loaded from: classes.dex */
public final class i0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8429a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageButton f8430b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentContainerView f8431c;

    /* renamed from: d, reason: collision with root package name */
    public final ProgressBar f8432d;

    /* renamed from: e, reason: collision with root package name */
    public final SearchView f8433e;

    /* renamed from: f, reason: collision with root package name */
    public final MaterialToolbar f8434f;

    public i0(LinearLayout linearLayout, ImageButton imageButton, FragmentContainerView fragmentContainerView, ProgressBar progressBar, SearchView searchView, MaterialToolbar materialToolbar) {
        this.f8429a = linearLayout;
        this.f8430b = imageButton;
        this.f8431c = fragmentContainerView;
        this.f8432d = progressBar;
        this.f8433e = searchView;
        this.f8434f = materialToolbar;
    }

    public static i0 a(View view) {
        int i10 = R.id.action_filter;
        ImageButton imageButton = (ImageButton) a2.b.a(view, R.id.action_filter);
        if (imageButton != null) {
            i10 = R.id.fragment_container_view;
            FragmentContainerView fragmentContainerView = (FragmentContainerView) a2.b.a(view, R.id.fragment_container_view);
            if (fragmentContainerView != null) {
                i10 = R.id.progress;
                ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                if (progressBar != null) {
                    i10 = R.id.search_query;
                    SearchView searchView = (SearchView) a2.b.a(view, R.id.search_query);
                    if (searchView != null) {
                        i10 = R.id.search_toolbar;
                        MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.search_toolbar);
                        if (materialToolbar != null) {
                            return new i0((LinearLayout) view, imageButton, fragmentContainerView, progressBar, searchView, materialToolbar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_search_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8429a;
    }
}

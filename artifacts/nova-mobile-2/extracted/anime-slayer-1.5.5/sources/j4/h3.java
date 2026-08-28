package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: WordsBlockingActivityBinding.java */
/* loaded from: classes.dex */
public final class h3 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8419a;

    /* renamed from: b, reason: collision with root package name */
    public final FloatingActionButton f8420b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f8421c;

    /* renamed from: d, reason: collision with root package name */
    public final MaterialToolbar f8422d;

    public h3(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, RecyclerView recyclerView, MaterialToolbar materialToolbar) {
        this.f8419a = coordinatorLayout;
        this.f8420b = floatingActionButton;
        this.f8421c = recyclerView;
        this.f8422d = materialToolbar;
    }

    public static h3 a(View view) {
        int i10 = R.id.fab;
        FloatingActionButton floatingActionButton = (FloatingActionButton) a2.b.a(view, R.id.fab);
        if (floatingActionButton != null) {
            i10 = R.id.recycler;
            RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
            if (recyclerView != null) {
                i10 = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
                if (materialToolbar != null) {
                    return new h3((CoordinatorLayout) view, floatingActionButton, recyclerView, materialToolbar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h3 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h3 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.words_blocking_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CoordinatorLayout b() {
        return this.f8419a;
    }
}

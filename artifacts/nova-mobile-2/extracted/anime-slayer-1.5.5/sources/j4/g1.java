package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;
import uk.co.senab.photoview.PhotoView;

/* compiled from: FullscreenImageActivityBinding.java */
/* loaded from: classes.dex */
public final class g1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CoordinatorLayout f8383a;

    /* renamed from: b, reason: collision with root package name */
    public final PhotoView f8384b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialToolbar f8385c;

    public g1(CoordinatorLayout coordinatorLayout, PhotoView photoView, MaterialToolbar materialToolbar) {
        this.f8383a = coordinatorLayout;
        this.f8384b = photoView;
        this.f8385c = materialToolbar;
    }

    public static g1 a(View view) {
        int i10 = R.id.image_full;
        PhotoView photoView = (PhotoView) a2.b.a(view, R.id.image_full);
        if (photoView != null) {
            i10 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
            if (materialToolbar != null) {
                return new g1((CoordinatorLayout) view, photoView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fullscreen_image_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CoordinatorLayout b() {
        return this.f8383a;
    }
}

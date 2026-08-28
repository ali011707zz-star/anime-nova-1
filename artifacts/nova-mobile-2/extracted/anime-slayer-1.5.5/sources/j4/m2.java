package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;

/* compiled from: SpoilerContainerBinding.java */
/* loaded from: classes.dex */
public final class m2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8544a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatImageView f8545b;

    public m2(FrameLayout frameLayout, AppCompatImageView appCompatImageView) {
        this.f8544a = frameLayout;
        this.f8545b = appCompatImageView;
    }

    public static m2 a(View view) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.image);
        if (appCompatImageView != null) {
            return new m2((FrameLayout) view, appCompatImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }

    public static m2 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.spoiler_container, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8544a;
    }
}

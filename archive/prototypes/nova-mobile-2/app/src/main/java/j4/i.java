package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.anslayer.R;

/* compiled from: AdapterEpisodeBinding.java */
/* loaded from: classes.dex */
public final class i implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8423a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f8424b;

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatImageView f8425c;

    /* renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f8426d;

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatTextView f8427e;

    /* renamed from: f, reason: collision with root package name */
    public final AppCompatImageView f8428f;

    public i(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView2) {
        this.f8423a = frameLayout;
        this.f8424b = frameLayout2;
        this.f8425c = appCompatImageView;
        this.f8426d = appCompatTextView;
        this.f8427e = appCompatTextView2;
        this.f8428f = appCompatImageView2;
    }

    public static i a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.episodeComment;
        AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.episodeComment);
        if (appCompatImageView != null) {
            i10 = R.id.episodeFiller;
            AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.episodeFiller);
            if (appCompatTextView != null) {
                i10 = R.id.episodeName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) a2.b.a(view, R.id.episodeName);
                if (appCompatTextView2 != null) {
                    i10 = R.id.episodeWatchedIndicator;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) a2.b.a(view, R.id.episodeWatchedIndicator);
                    if (appCompatImageView2 != null) {
                        return new i(frameLayout, frameLayout, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatImageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_episode, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8423a;
    }
}

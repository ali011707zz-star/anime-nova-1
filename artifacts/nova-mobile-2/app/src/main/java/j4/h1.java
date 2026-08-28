package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.pierfrancescosoffritti.androidyoutubeplayer.core.player.views.YouTubePlayerView;

/* compiled from: FullscreenVideoActivityBinding.java */
/* loaded from: classes.dex */
public final class h1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8411a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8412b;

    /* renamed from: c, reason: collision with root package name */
    public final CircularProgressIndicator f8413c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f8414d;

    /* renamed from: e, reason: collision with root package name */
    public final YouTubePlayerView f8415e;

    public h1(ConstraintLayout constraintLayout, ImageView imageView, CircularProgressIndicator circularProgressIndicator, ImageView imageView2, YouTubePlayerView youTubePlayerView) {
        this.f8411a = constraintLayout;
        this.f8412b = imageView;
        this.f8413c = circularProgressIndicator;
        this.f8414d = imageView2;
        this.f8415e = youTubePlayerView;
    }

    public static h1 a(View view) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.close);
        if (imageView != null) {
            i10 = R.id.progress;
            CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) a2.b.a(view, R.id.progress);
            if (circularProgressIndicator != null) {
                i10 = R.id.thumbnail;
                ImageView imageView2 = (ImageView) a2.b.a(view, R.id.thumbnail);
                if (imageView2 != null) {
                    i10 = R.id.youtube_player_view;
                    YouTubePlayerView youTubePlayerView = (YouTubePlayerView) a2.b.a(view, R.id.youtube_player_view);
                    if (youTubePlayerView != null) {
                        return new h1((ConstraintLayout) view, imageView, circularProgressIndicator, imageView2, youTubePlayerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fullscreen_video_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8411a;
    }
}

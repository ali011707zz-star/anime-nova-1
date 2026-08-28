package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import com.xw.repo.BubbleSeekBar;

/* compiled from: ContentServerBinding.java */
/* loaded from: classes.dex */
public final class n0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8551a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8552b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressLayout f8553c;

    /* renamed from: d, reason: collision with root package name */
    public final BubbleSeekBar f8554d;

    /* renamed from: e, reason: collision with root package name */
    public final RecyclerView f8555e;

    /* renamed from: f, reason: collision with root package name */
    public final ProgressBar f8556f;

    public n0(LinearLayout linearLayout, TextView textView, ProgressLayout progressLayout, BubbleSeekBar bubbleSeekBar, RecyclerView recyclerView, ProgressBar progressBar) {
        this.f8551a = linearLayout;
        this.f8552b = textView;
        this.f8553c = progressLayout;
        this.f8554d = bubbleSeekBar;
        this.f8555e = recyclerView;
        this.f8556f = progressBar;
    }

    public static n0 a(View view) {
        int i10 = R.id.episodeCommunityRating;
        TextView textView = (TextView) a2.b.a(view, R.id.episodeCommunityRating);
        if (textView != null) {
            i10 = R.id.episodeRatingProgressLayout;
            ProgressLayout progressLayout = (ProgressLayout) a2.b.a(view, R.id.episodeRatingProgressLayout);
            if (progressLayout != null) {
                i10 = R.id.episodeRatingSeekBar;
                BubbleSeekBar bubbleSeekBar = (BubbleSeekBar) a2.b.a(view, R.id.episodeRatingSeekBar);
                if (bubbleSeekBar != null) {
                    i10 = R.id.listServer;
                    RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.listServer);
                    if (recyclerView != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                        if (progressBar != null) {
                            return new n0((LinearLayout) view, textView, progressLayout, bubbleSeekBar, recyclerView, progressBar);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.content_server, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8551a;
    }
}

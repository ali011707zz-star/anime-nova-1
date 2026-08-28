package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.anslayer.R;

/* compiled from: SeasonArchiveFragmentBinding.java */
/* loaded from: classes.dex */
public final class w1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8785a;

    /* renamed from: b, reason: collision with root package name */
    public final ProgressBar f8786b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewStub f8787c;

    public w1(LinearLayout linearLayout, ProgressBar progressBar, ViewStub viewStub) {
        this.f8785a = linearLayout;
        this.f8786b = progressBar;
        this.f8787c = viewStub;
    }

    public static w1 a(View view) {
        int i10 = R.id.progress;
        ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
        if (progressBar != null) {
            i10 = R.id.stub_recycler;
            ViewStub viewStub = (ViewStub) a2.b.a(view, R.id.stub_recycler);
            if (viewStub != null) {
                return new w1((LinearLayout) view, progressBar, viewStub);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.season_archive_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8785a;
    }
}

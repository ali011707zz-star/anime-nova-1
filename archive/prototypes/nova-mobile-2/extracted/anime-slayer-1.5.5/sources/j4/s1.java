package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;

/* compiled from: ScheduleFragmentBinding.java */
/* loaded from: classes.dex */
public final class s1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8708a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8709b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8710c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f8711d;

    public s1(FrameLayout frameLayout, ErrorView errorView, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f8708a = frameLayout;
        this.f8709b = errorView;
        this.f8710c = progressBar;
        this.f8711d = recyclerView;
    }

    public static s1 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
            if (progressBar != null) {
                i10 = R.id.recycler;
                RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                if (recyclerView != null) {
                    return new s1((FrameLayout) view, errorView, progressBar, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.schedule_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8708a;
    }
}

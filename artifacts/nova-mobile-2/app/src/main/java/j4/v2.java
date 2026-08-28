package j4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;

/* compiled from: UserCustomListFragmentBinding.java */
/* loaded from: classes.dex */
public final class v2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8776a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8777b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8778c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f8779d;

    public v2(FrameLayout frameLayout, ErrorView errorView, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f8776a = frameLayout;
        this.f8777b = errorView;
        this.f8778c = progressBar;
        this.f8779d = recyclerView;
    }

    public static v2 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
            if (progressBar != null) {
                i10 = R.id.recycler;
                RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                if (recyclerView != null) {
                    return new v2((FrameLayout) view, errorView, progressBar, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

package j4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;
import com.anslayer.widget.ErrorView;

/* compiled from: PeopleListFragmentBinding.java */
/* loaded from: classes.dex */
public final class l1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8515a;

    /* renamed from: b, reason: collision with root package name */
    public final ErrorView f8516b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f8517c;

    /* renamed from: d, reason: collision with root package name */
    public final RecyclerView f8518d;

    public l1(FrameLayout frameLayout, ErrorView errorView, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f8515a = frameLayout;
        this.f8516b = errorView;
        this.f8517c = progressBar;
        this.f8518d = recyclerView;
    }

    public static l1 a(View view) {
        int i10 = R.id.error_view;
        ErrorView errorView = (ErrorView) a2.b.a(view, R.id.error_view);
        if (errorView != null) {
            i10 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
            if (progressBar != null) {
                i10 = R.id.recycler;
                RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
                if (recyclerView != null) {
                    return new l1((FrameLayout) view, errorView, progressBar, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

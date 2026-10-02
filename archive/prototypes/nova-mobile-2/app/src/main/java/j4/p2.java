package j4;

import android.view.View;
import com.anslayer.R;
import com.anslayer.widget.SupportRefreshLayout;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: SupportListBinding.java */
/* loaded from: classes.dex */
public final class p2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ProgressLayout f8636a;

    /* renamed from: b, reason: collision with root package name */
    public final ProgressLayout f8637b;

    /* renamed from: c, reason: collision with root package name */
    public final SupportRecyclerView f8638c;

    /* renamed from: d, reason: collision with root package name */
    public final SupportRefreshLayout f8639d;

    public p2(ProgressLayout progressLayout, ProgressLayout progressLayout2, SupportRecyclerView supportRecyclerView, SupportRefreshLayout supportRefreshLayout) {
        this.f8636a = progressLayout;
        this.f8637b = progressLayout2;
        this.f8638c = supportRecyclerView;
        this.f8639d = supportRefreshLayout;
    }

    public static p2 a(View view) {
        ProgressLayout progressLayout = (ProgressLayout) view;
        int i10 = R.id.supportRecyclerView;
        SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.supportRecyclerView);
        if (supportRecyclerView != null) {
            i10 = R.id.supportRefreshLayout;
            SupportRefreshLayout supportRefreshLayout = (SupportRefreshLayout) a2.b.a(view, R.id.supportRefreshLayout);
            if (supportRefreshLayout != null) {
                return new p2(progressLayout, progressLayout, supportRecyclerView, supportRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

package j4;

import android.view.View;
import android.widget.LinearLayout;
import com.anslayer.R;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: SectionRelatedSeriesBinding.java */
/* loaded from: classes.dex */
public final class g2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8386a;

    /* renamed from: b, reason: collision with root package name */
    public final SupportRecyclerView f8387b;

    public g2(LinearLayout linearLayout, SupportRecyclerView supportRecyclerView) {
        this.f8386a = linearLayout;
        this.f8387b = supportRecyclerView;
    }

    public static g2 a(View view) {
        SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.seriesRelated);
        if (supportRecyclerView != null) {
            return new g2((LinearLayout) view, supportRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.seriesRelated)));
    }

    public LinearLayout b() {
        return this.f8386a;
    }
}

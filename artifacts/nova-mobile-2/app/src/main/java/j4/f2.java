package j4;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.anslayer.R;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: SectionRelatedNewsBinding.java */
/* loaded from: classes.dex */
public final class f2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayoutCompat f8353a;

    /* renamed from: b, reason: collision with root package name */
    public final SupportRecyclerView f8354b;

    public f2(LinearLayoutCompat linearLayoutCompat, SupportRecyclerView supportRecyclerView) {
        this.f8353a = linearLayoutCompat;
        this.f8354b = supportRecyclerView;
    }

    public static f2 a(View view) {
        SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.seriesRelatedNews);
        if (supportRecyclerView != null) {
            return new f2((LinearLayoutCompat) view, supportRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.seriesRelatedNews)));
    }

    public LinearLayoutCompat b() {
        return this.f8353a;
    }
}

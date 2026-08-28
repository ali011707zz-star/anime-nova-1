package j4;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.anslayer.R;
import io.wax911.support.custom.recycler.SupportRecyclerView;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: SectionSuggestionSeriesBinding.java */
/* loaded from: classes.dex */
public final class h2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayoutCompat f8416a;

    /* renamed from: b, reason: collision with root package name */
    public final SingleLineTextView f8417b;

    /* renamed from: c, reason: collision with root package name */
    public final SupportRecyclerView f8418c;

    public h2(LinearLayoutCompat linearLayoutCompat, SingleLineTextView singleLineTextView, SupportRecyclerView supportRecyclerView) {
        this.f8416a = linearLayoutCompat;
        this.f8417b = singleLineTextView;
        this.f8418c = supportRecyclerView;
    }

    public static h2 a(View view) {
        int i10 = R.id.headerLoadMore;
        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.headerLoadMore);
        if (singleLineTextView != null) {
            i10 = R.id.seriesSuggestions;
            SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.seriesSuggestions);
            if (supportRecyclerView != null) {
                return new h2((LinearLayoutCompat) view, singleLineTextView, supportRecyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public LinearLayoutCompat b() {
        return this.f8416a;
    }
}

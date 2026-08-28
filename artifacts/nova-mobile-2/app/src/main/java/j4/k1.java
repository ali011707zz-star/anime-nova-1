package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;
import io.wax911.support.custom.recycler.SupportRecyclerView;

/* compiled from: PeopleListAnimeItemBinding.java */
/* loaded from: classes.dex */
public final class k1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8492a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8493b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8494c;

    /* renamed from: d, reason: collision with root package name */
    public final SupportRecyclerView f8495d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8496e;

    public k1(LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, SupportRecyclerView supportRecyclerView, TextView textView2) {
        this.f8492a = linearLayout;
        this.f8493b = linearLayout2;
        this.f8494c = textView;
        this.f8495d = supportRecyclerView;
        this.f8496e = textView2;
    }

    public static k1 a(View view) {
        int i10 = R.id.container;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.container);
        if (linearLayout != null) {
            i10 = R.id.header;
            TextView textView = (TextView) a2.b.a(view, R.id.header);
            if (textView != null) {
                i10 = R.id.recycler;
                SupportRecyclerView supportRecyclerView = (SupportRecyclerView) a2.b.a(view, R.id.recycler);
                if (supportRecyclerView != null) {
                    i10 = R.id.see_more;
                    TextView textView2 = (TextView) a2.b.a(view, R.id.see_more);
                    if (textView2 != null) {
                        return new k1((LinearLayout) view, linearLayout, textView, supportRecyclerView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

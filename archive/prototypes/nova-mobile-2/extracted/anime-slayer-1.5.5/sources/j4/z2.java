package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;

/* compiled from: UserStaticsFragmentBinding.java */
/* loaded from: classes.dex */
public final class z2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8874a;

    /* renamed from: b, reason: collision with root package name */
    public final RecyclerView f8875b;

    public z2(LinearLayout linearLayout, RecyclerView recyclerView) {
        this.f8874a = linearLayout;
        this.f8875b = recyclerView;
    }

    public static z2 a(View view) {
        RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
        if (recyclerView != null) {
            return new z2((LinearLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycler)));
    }

    public static z2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_statics_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8874a;
    }
}

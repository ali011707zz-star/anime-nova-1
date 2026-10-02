package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;

/* compiled from: FragmentDownloadsBinding.java */
/* loaded from: classes.dex */
public final class b1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8156a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8157b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f8158c;

    public b1(FrameLayout frameLayout, TextView textView, RecyclerView recyclerView) {
        this.f8156a = frameLayout;
        this.f8157b = textView;
        this.f8158c = recyclerView;
    }

    public static b1 a(View view) {
        int i10 = R.id.empty_text;
        TextView textView = (TextView) a2.b.a(view, R.id.empty_text);
        if (textView != null) {
            i10 = R.id.recycler;
            RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
            if (recyclerView != null) {
                return new b1((FrameLayout) view, textView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_downloads, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8156a;
    }
}

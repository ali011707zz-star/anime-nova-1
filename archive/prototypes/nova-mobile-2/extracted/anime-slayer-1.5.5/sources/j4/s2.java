package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.anslayer.R;

/* compiled from: TopContriputorsAnimeDialogBinding.java */
/* loaded from: classes.dex */
public final class s2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8712a;

    /* renamed from: b, reason: collision with root package name */
    public final RecyclerView f8713b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8714c;

    public s2(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView) {
        this.f8712a = linearLayout;
        this.f8713b = recyclerView;
        this.f8714c = textView;
    }

    public static s2 a(View view) {
        int i10 = R.id.recycler;
        RecyclerView recyclerView = (RecyclerView) a2.b.a(view, R.id.recycler);
        if (recyclerView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) a2.b.a(view, R.id.title);
            if (textView != null) {
                return new s2((LinearLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s2 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.top_contriputors_anime_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8712a;
    }
}

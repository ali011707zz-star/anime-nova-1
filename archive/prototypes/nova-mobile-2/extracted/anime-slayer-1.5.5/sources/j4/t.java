package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.anslayer.R;

/* compiled from: AnimeCoverSheetBinding.java */
/* loaded from: classes.dex */
public final class t implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8715a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8716b;

    public t(LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.f8715a = linearLayout;
        this.f8716b = linearLayout2;
    }

    public static t a(View view) {
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.save_layout);
        if (linearLayout != null) {
            return new t((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.save_layout)));
    }

    public static t c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.anime_cover_sheet, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8715a;
    }
}

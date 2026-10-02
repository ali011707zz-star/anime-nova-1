package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: CustomlistDetailsHeaderItemBinding.java */
/* loaded from: classes.dex */
public final class t0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8717a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8718b;

    /* renamed from: c, reason: collision with root package name */
    public final View f8719c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8720d;

    public t0(ConstraintLayout constraintLayout, TextView textView, View view, TextView textView2) {
        this.f8717a = constraintLayout;
        this.f8718b = textView;
        this.f8719c = view;
        this.f8720d = textView2;
    }

    public static t0 a(View view) {
        int i10 = R.id.description;
        TextView textView = (TextView) a2.b.a(view, R.id.description);
        if (textView != null) {
            i10 = R.id.divider;
            View a10 = a2.b.a(view, R.id.divider);
            if (a10 != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) a2.b.a(view, R.id.title);
                if (textView2 != null) {
                    return new t0((ConstraintLayout) view, textView, a10, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.customlist_details_header_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8717a;
    }
}

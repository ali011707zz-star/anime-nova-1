package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;
import com.google.android.material.appbar.MaterialToolbar;

/* compiled from: ActivityDisclaimerBinding.java */
/* loaded from: classes.dex */
public final class b implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8149a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8150b;

    /* renamed from: c, reason: collision with root package name */
    public final MaterialToolbar f8151c;

    public b(LinearLayout linearLayout, TextView textView, MaterialToolbar materialToolbar) {
        this.f8149a = linearLayout;
        this.f8150b = textView;
        this.f8151c = materialToolbar;
    }

    public static b a(View view) {
        int i10 = R.id.textView2;
        TextView textView = (TextView) a2.b.a(view, R.id.textView2);
        if (textView != null) {
            i10 = R.id.toolbar;
            MaterialToolbar materialToolbar = (MaterialToolbar) a2.b.a(view, R.id.toolbar);
            if (materialToolbar != null) {
                return new b((LinearLayout) view, textView, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_disclaimer, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8149a;
    }
}

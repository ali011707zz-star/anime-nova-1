package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: StaffGridItemBinding.java */
/* loaded from: classes.dex */
public final class n2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8575a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8576b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8577c;

    /* renamed from: d, reason: collision with root package name */
    public final View f8578d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8579e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8580f;

    public n2(FrameLayout frameLayout, ImageView imageView, FrameLayout frameLayout2, View view, TextView textView, TextView textView2) {
        this.f8575a = frameLayout;
        this.f8576b = imageView;
        this.f8577c = frameLayout2;
        this.f8578d = view;
        this.f8579e = textView;
        this.f8580f = textView2;
    }

    public static n2 a(View view) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.card;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card);
            if (frameLayout != null) {
                i10 = R.id.gradient;
                View a10 = a2.b.a(view, R.id.gradient);
                if (a10 != null) {
                    i10 = R.id.job;
                    TextView textView = (TextView) a2.b.a(view, R.id.job);
                    if (textView != null) {
                        i10 = R.id.name;
                        TextView textView2 = (TextView) a2.b.a(view, R.id.name);
                        if (textView2 != null) {
                            return new n2((FrameLayout) view, imageView, frameLayout, a10, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n2 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.staff_grid_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8575a;
    }
}

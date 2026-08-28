package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: StaffListItemBinding.java */
/* loaded from: classes.dex */
public final class o2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8601a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8602b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8603c;

    /* renamed from: d, reason: collision with root package name */
    public final View f8604d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8605e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8606f;

    public o2(FrameLayout frameLayout, ImageView imageView, FrameLayout frameLayout2, View view, TextView textView, TextView textView2) {
        this.f8601a = frameLayout;
        this.f8602b = imageView;
        this.f8603c = frameLayout2;
        this.f8604d = view;
        this.f8605e = textView;
        this.f8606f = textView2;
    }

    public static o2 a(View view) {
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
                            return new o2((FrameLayout) view, imageView, frameLayout, a10, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o2 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.staff_list_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8601a;
    }
}

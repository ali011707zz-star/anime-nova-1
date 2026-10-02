package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;

/* compiled from: CharacterGridItemBinding.java */
/* loaded from: classes.dex */
public final class g0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8375a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8376b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8377c;

    /* renamed from: d, reason: collision with root package name */
    public final View f8378d;

    /* renamed from: e, reason: collision with root package name */
    public final View f8379e;

    /* renamed from: f, reason: collision with root package name */
    public final LinearLayout f8380f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8381g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f8382h;

    public g0(FrameLayout frameLayout, ImageView imageView, FrameLayout frameLayout2, View view, View view2, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.f8375a = frameLayout;
        this.f8376b = imageView;
        this.f8377c = frameLayout2;
        this.f8378d = view;
        this.f8379e = view2;
        this.f8380f = linearLayout;
        this.f8381g = textView;
        this.f8382h = textView2;
    }

    public static g0 a(View view) {
        int i10 = R.id.avatar;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.avatar);
        if (imageView != null) {
            i10 = R.id.card;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card);
            if (frameLayout != null) {
                i10 = R.id.gradient;
                View a10 = a2.b.a(view, R.id.gradient);
                if (a10 != null) {
                    i10 = R.id.gradient_2;
                    View a11 = a2.b.a(view, R.id.gradient_2);
                    if (a11 != null) {
                        i10 = R.id.heart_content;
                        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.heart_content);
                        if (linearLayout != null) {
                            i10 = R.id.heart_count;
                            TextView textView = (TextView) a2.b.a(view, R.id.heart_count);
                            if (textView != null) {
                                i10 = R.id.name;
                                TextView textView2 = (TextView) a2.b.a(view, R.id.name);
                                if (textView2 != null) {
                                    return new g0((FrameLayout) view, imageView, frameLayout, a10, a11, linearLayout, textView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_grid_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8375a;
    }
}

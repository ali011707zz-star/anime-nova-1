package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.anslayer.R;

/* compiled from: TrackingBottomSheetBinding.java */
/* loaded from: classes.dex */
public final class u2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayout f8748a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8749b;

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f8750c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayout f8751d;

    /* renamed from: e, reason: collision with root package name */
    public final LinearLayout f8752e;

    /* renamed from: f, reason: collision with root package name */
    public final LinearLayout f8753f;

    /* renamed from: g, reason: collision with root package name */
    public final ImageView f8754g;

    /* renamed from: h, reason: collision with root package name */
    public final ImageView f8755h;

    /* renamed from: i, reason: collision with root package name */
    public final ImageView f8756i;

    /* renamed from: j, reason: collision with root package name */
    public final ImageView f8757j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f8758k;

    public u2(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5) {
        this.f8748a = linearLayout;
        this.f8749b = linearLayout2;
        this.f8750c = linearLayout3;
        this.f8751d = linearLayout4;
        this.f8752e = linearLayout5;
        this.f8753f = linearLayout6;
        this.f8754g = imageView;
        this.f8755h = imageView2;
        this.f8756i = imageView3;
        this.f8757j = imageView4;
        this.f8758k = imageView5;
    }

    public static u2 a(View view) {
        int i10 = R.id.btn_dropped;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.btn_dropped);
        if (linearLayout != null) {
            i10 = R.id.btn_on_hold;
            LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.btn_on_hold);
            if (linearLayout2 != null) {
                i10 = R.id.btn_plan_to_watch;
                LinearLayout linearLayout3 = (LinearLayout) a2.b.a(view, R.id.btn_plan_to_watch);
                if (linearLayout3 != null) {
                    i10 = R.id.btn_watched;
                    LinearLayout linearLayout4 = (LinearLayout) a2.b.a(view, R.id.btn_watched);
                    if (linearLayout4 != null) {
                        i10 = R.id.btn_watching;
                        LinearLayout linearLayout5 = (LinearLayout) a2.b.a(view, R.id.btn_watching);
                        if (linearLayout5 != null) {
                            i10 = R.id.check_dropped;
                            ImageView imageView = (ImageView) a2.b.a(view, R.id.check_dropped);
                            if (imageView != null) {
                                i10 = R.id.check_on_hold;
                                ImageView imageView2 = (ImageView) a2.b.a(view, R.id.check_on_hold);
                                if (imageView2 != null) {
                                    i10 = R.id.check_plan_to_watch;
                                    ImageView imageView3 = (ImageView) a2.b.a(view, R.id.check_plan_to_watch);
                                    if (imageView3 != null) {
                                        i10 = R.id.check_watched;
                                        ImageView imageView4 = (ImageView) a2.b.a(view, R.id.check_watched);
                                        if (imageView4 != null) {
                                            i10 = R.id.check_watching;
                                            ImageView imageView5 = (ImageView) a2.b.a(view, R.id.check_watching);
                                            if (imageView5 != null) {
                                                return new u2((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, imageView, imageView2, imageView3, imageView4, imageView5);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u2 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u2 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.tracking_bottom_sheet, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public LinearLayout b() {
        return this.f8748a;
    }
}

package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterSeriesBinding.java */
/* loaded from: classes.dex */
public final class p implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8607a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8608b;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f8609c;

    /* renamed from: d, reason: collision with root package name */
    public final FrameLayout f8610d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8611e;

    /* renamed from: f, reason: collision with root package name */
    public final SlayerImage f8612f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8613g;

    /* renamed from: h, reason: collision with root package name */
    public final SingleLineTextView f8614h;

    /* renamed from: i, reason: collision with root package name */
    public final SingleLineTextView f8615i;

    /* renamed from: j, reason: collision with root package name */
    public final TextView f8616j;

    /* renamed from: k, reason: collision with root package name */
    public final AppCompatImageView f8617k;

    public p(FrameLayout frameLayout, LinearLayout linearLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, TextView textView, SlayerImage slayerImage, SingleLineTextView singleLineTextView, SingleLineTextView singleLineTextView2, SingleLineTextView singleLineTextView3, TextView textView2, AppCompatImageView appCompatImageView) {
        this.f8607a = frameLayout;
        this.f8608b = linearLayout;
        this.f8609c = frameLayout2;
        this.f8610d = frameLayout3;
        this.f8611e = textView;
        this.f8612f = slayerImage;
        this.f8613g = singleLineTextView;
        this.f8614h = singleLineTextView2;
        this.f8615i = singleLineTextView3;
        this.f8616j = textView2;
        this.f8617k = appCompatImageView;
    }

    public static p a(View view) {
        int i10 = R.id.badge;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.badge);
        if (linearLayout != null) {
            i10 = R.id.card;
            FrameLayout frameLayout = (FrameLayout) a2.b.a(view, R.id.card);
            if (frameLayout != null) {
                FrameLayout frameLayout2 = (FrameLayout) view;
                i10 = R.id.relation_text;
                TextView textView = (TextView) a2.b.a(view, R.id.relation_text);
                if (textView != null) {
                    i10 = R.id.seriesImage;
                    SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                    if (slayerImage != null) {
                        i10 = R.id.seriesRating;
                        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.seriesRating);
                        if (singleLineTextView != null) {
                            i10 = R.id.seriesTitle;
                            SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
                            if (singleLineTextView2 != null) {
                                i10 = R.id.seriesType;
                                SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.seriesType);
                                if (singleLineTextView3 != null) {
                                    i10 = R.id.seriesYear;
                                    TextView textView2 = (TextView) a2.b.a(view, R.id.seriesYear);
                                    if (textView2 != null) {
                                        i10 = R.id.star;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.star);
                                        if (appCompatImageView != null) {
                                            return new p(frameLayout2, linearLayout, frameLayout, frameLayout2, textView, slayerImage, singleLineTextView, singleLineTextView2, singleLineTextView3, textView2, appCompatImageView);
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

    public static p c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_series, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8607a;
    }
}

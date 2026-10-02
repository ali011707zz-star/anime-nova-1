package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterSeriesAlternativeBinding.java */
/* loaded from: classes.dex */
public final class o implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f8581a;

    /* renamed from: b, reason: collision with root package name */
    public final FrameLayout f8582b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8583c;

    /* renamed from: d, reason: collision with root package name */
    public final SlayerImage f8584d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8585e;

    /* renamed from: f, reason: collision with root package name */
    public final SingleLineTextView f8586f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8587g;

    /* renamed from: h, reason: collision with root package name */
    public final SingleLineTextView f8588h;

    /* renamed from: i, reason: collision with root package name */
    public final SingleLineTextView f8589i;

    /* renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f8590j;

    public o(FrameLayout frameLayout, FrameLayout frameLayout2, SingleLineTextView singleLineTextView, SlayerImage slayerImage, SingleLineTextView singleLineTextView2, SingleLineTextView singleLineTextView3, SingleLineTextView singleLineTextView4, SingleLineTextView singleLineTextView5, SingleLineTextView singleLineTextView6, AppCompatImageView appCompatImageView) {
        this.f8581a = frameLayout;
        this.f8582b = frameLayout2;
        this.f8583c = singleLineTextView;
        this.f8584d = slayerImage;
        this.f8585e = singleLineTextView2;
        this.f8586f = singleLineTextView3;
        this.f8587g = singleLineTextView4;
        this.f8588h = singleLineTextView5;
        this.f8589i = singleLineTextView6;
        this.f8590j = appCompatImageView;
    }

    public static o a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R.id.seriesGenres;
        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.seriesGenres);
        if (singleLineTextView != null) {
            i10 = R.id.seriesImage;
            SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
            if (slayerImage != null) {
                i10 = R.id.seriesRating;
                SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.seriesRating);
                if (singleLineTextView2 != null) {
                    i10 = R.id.seriesSeason;
                    SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.seriesSeason);
                    if (singleLineTextView3 != null) {
                        i10 = R.id.seriesState;
                        SingleLineTextView singleLineTextView4 = (SingleLineTextView) a2.b.a(view, R.id.seriesState);
                        if (singleLineTextView4 != null) {
                            i10 = R.id.seriesTitle;
                            SingleLineTextView singleLineTextView5 = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
                            if (singleLineTextView5 != null) {
                                i10 = R.id.seriesType;
                                SingleLineTextView singleLineTextView6 = (SingleLineTextView) a2.b.a(view, R.id.seriesType);
                                if (singleLineTextView6 != null) {
                                    i10 = R.id.star;
                                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.star);
                                    if (appCompatImageView != null) {
                                        return new o(frameLayout, frameLayout, singleLineTextView, slayerImage, singleLineTextView2, singleLineTextView3, singleLineTextView4, singleLineTextView5, singleLineTextView6, appCompatImageView);
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

    public static o c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_series_alternative, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public FrameLayout b() {
        return this.f8581a;
    }
}

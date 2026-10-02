package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.anslayer.R;
import com.anslayer.widget.SlayerCard;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterRecommendBinding.java */
/* loaded from: classes.dex */
public final class l implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final SlayerCard f8500a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8501b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8502c;

    /* renamed from: d, reason: collision with root package name */
    public final SingleLineTextView f8503d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8504e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8505f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8506g;

    /* renamed from: h, reason: collision with root package name */
    public final SlayerImage f8507h;

    /* renamed from: i, reason: collision with root package name */
    public final SlayerImage f8508i;

    /* renamed from: j, reason: collision with root package name */
    public final SingleLineTextView f8509j;

    public l(SlayerCard slayerCard, ImageView imageView, ImageView imageView2, SingleLineTextView singleLineTextView, SingleLineTextView singleLineTextView2, TextView textView, SingleLineTextView singleLineTextView3, SlayerImage slayerImage, SlayerImage slayerImage2, SingleLineTextView singleLineTextView4) {
        this.f8500a = slayerCard;
        this.f8501b = imageView;
        this.f8502c = imageView2;
        this.f8503d = singleLineTextView;
        this.f8504e = singleLineTextView2;
        this.f8505f = textView;
        this.f8506g = singleLineTextView3;
        this.f8507h = slayerImage;
        this.f8508i = slayerImage2;
        this.f8509j = singleLineTextView4;
    }

    public static l a(View view) {
        int i10 = R.id.approved;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.approved);
        if (imageView != null) {
            i10 = R.id.delete;
            ImageView imageView2 = (ImageView) a2.b.a(view, R.id.delete);
            if (imageView2 != null) {
                i10 = R.id.recommendSeriesTitle;
                SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.recommendSeriesTitle);
                if (singleLineTextView != null) {
                    i10 = R.id.recommendationAuthor;
                    SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.recommendationAuthor);
                    if (singleLineTextView2 != null) {
                        i10 = R.id.recommendationComment;
                        TextView textView = (TextView) a2.b.a(view, R.id.recommendationComment);
                        if (textView != null) {
                            i10 = R.id.recommendationReadMore;
                            SingleLineTextView singleLineTextView3 = (SingleLineTextView) a2.b.a(view, R.id.recommendationReadMore);
                            if (singleLineTextView3 != null) {
                                i10 = R.id.seriesImage;
                                SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                                if (slayerImage != null) {
                                    i10 = R.id.seriesImageRecommended;
                                    SlayerImage slayerImage2 = (SlayerImage) a2.b.a(view, R.id.seriesImageRecommended);
                                    if (slayerImage2 != null) {
                                        i10 = R.id.seriesTitle;
                                        SingleLineTextView singleLineTextView4 = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
                                        if (singleLineTextView4 != null) {
                                            return new l((SlayerCard) view, imageView, imageView2, singleLineTextView, singleLineTextView2, textView, singleLineTextView3, slayerImage, slayerImage2, singleLineTextView4);
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

    public static l c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_recommend, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public SlayerCard b() {
        return this.f8500a;
    }
}

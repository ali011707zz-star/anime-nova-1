package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.anslayer.R;
import com.anslayer.widget.SlayerCard;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterRecommendHeaderBinding.java */
/* loaded from: classes.dex */
public final class n implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final SlayerCard f8546a;

    /* renamed from: b, reason: collision with root package name */
    public final SingleLineTextView f8547b;

    /* renamed from: c, reason: collision with root package name */
    public final SlayerImage f8548c;

    /* renamed from: d, reason: collision with root package name */
    public final SlayerImage f8549d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8550e;

    public n(SlayerCard slayerCard, SingleLineTextView singleLineTextView, SlayerImage slayerImage, SlayerImage slayerImage2, SingleLineTextView singleLineTextView2) {
        this.f8546a = slayerCard;
        this.f8547b = singleLineTextView;
        this.f8548c = slayerImage;
        this.f8549d = slayerImage2;
        this.f8550e = singleLineTextView2;
    }

    public static n a(View view) {
        int i10 = R.id.recommendSeriesTitle;
        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.recommendSeriesTitle);
        if (singleLineTextView != null) {
            i10 = R.id.seriesImage;
            SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
            if (slayerImage != null) {
                i10 = R.id.seriesImageRecommended;
                SlayerImage slayerImage2 = (SlayerImage) a2.b.a(view, R.id.seriesImageRecommended);
                if (slayerImage2 != null) {
                    i10 = R.id.seriesTitle;
                    SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
                    if (singleLineTextView2 != null) {
                        return new n((SlayerCard) view, singleLineTextView, slayerImage, slayerImage2, singleLineTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_recommend_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public SlayerCard b() {
        return this.f8546a;
    }
}

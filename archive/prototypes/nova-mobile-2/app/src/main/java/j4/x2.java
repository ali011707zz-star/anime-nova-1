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

/* compiled from: UserRecommendationItemBinding.java */
/* loaded from: classes.dex */
public final class x2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final SlayerCard f8815a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8816b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8817c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8818d;

    /* renamed from: e, reason: collision with root package name */
    public final SlayerImage f8819e;

    /* renamed from: f, reason: collision with root package name */
    public final SlayerImage f8820f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8821g;

    public x2(SlayerCard slayerCard, ImageView imageView, SingleLineTextView singleLineTextView, TextView textView, SlayerImage slayerImage, SlayerImage slayerImage2, SingleLineTextView singleLineTextView2) {
        this.f8815a = slayerCard;
        this.f8816b = imageView;
        this.f8817c = singleLineTextView;
        this.f8818d = textView;
        this.f8819e = slayerImage;
        this.f8820f = slayerImage2;
        this.f8821g = singleLineTextView2;
    }

    public static x2 a(View view) {
        int i10 = R.id.approved;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.approved);
        if (imageView != null) {
            i10 = R.id.recommendSeriesTitle;
            SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.recommendSeriesTitle);
            if (singleLineTextView != null) {
                i10 = R.id.recommendationComment;
                TextView textView = (TextView) a2.b.a(view, R.id.recommendationComment);
                if (textView != null) {
                    i10 = R.id.seriesImage;
                    SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                    if (slayerImage != null) {
                        i10 = R.id.seriesImageRecommended;
                        SlayerImage slayerImage2 = (SlayerImage) a2.b.a(view, R.id.seriesImageRecommended);
                        if (slayerImage2 != null) {
                            i10 = R.id.seriesTitle;
                            SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.seriesTitle);
                            if (singleLineTextView2 != null) {
                                return new x2((SlayerCard) view, imageView, singleLineTextView, textView, slayerImage, slayerImage2, singleLineTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x2 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.user_recommendation_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public SlayerCard b() {
        return this.f8815a;
    }
}

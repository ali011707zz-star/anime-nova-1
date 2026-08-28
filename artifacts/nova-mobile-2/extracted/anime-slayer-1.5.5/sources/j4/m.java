package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.anslayer.R;
import com.anslayer.widget.SlayerAvatar;
import com.anslayer.widget.SlayerCard;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: AdapterRecommendBodyBinding.java */
/* loaded from: classes.dex */
public final class m implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final SlayerCard f8522a;

    /* renamed from: b, reason: collision with root package name */
    public final SingleLineTextView f8523b;

    /* renamed from: c, reason: collision with root package name */
    public final SlayerAvatar f8524c;

    /* renamed from: d, reason: collision with root package name */
    public final AppCompatTextView f8525d;

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatImageView f8526e;

    /* renamed from: f, reason: collision with root package name */
    public final SingleLineTextView f8527f;

    public m(SlayerCard slayerCard, SingleLineTextView singleLineTextView, SlayerAvatar slayerAvatar, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView, SingleLineTextView singleLineTextView2) {
        this.f8522a = slayerCard;
        this.f8523b = singleLineTextView;
        this.f8524c = slayerAvatar;
        this.f8525d = appCompatTextView;
        this.f8526e = appCompatImageView;
        this.f8527f = singleLineTextView2;
    }

    public static m a(View view) {
        int i10 = R.id.full_name;
        SingleLineTextView singleLineTextView = (SingleLineTextView) a2.b.a(view, R.id.full_name);
        if (singleLineTextView != null) {
            i10 = R.id.recommendationAuthorAvatar;
            SlayerAvatar slayerAvatar = (SlayerAvatar) a2.b.a(view, R.id.recommendationAuthorAvatar);
            if (slayerAvatar != null) {
                i10 = R.id.recommendationComment;
                AppCompatTextView appCompatTextView = (AppCompatTextView) a2.b.a(view, R.id.recommendationComment);
                if (appCompatTextView != null) {
                    i10 = R.id.recommendationLikeButton;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) a2.b.a(view, R.id.recommendationLikeButton);
                    if (appCompatImageView != null) {
                        i10 = R.id.recommendationLikeCounts;
                        SingleLineTextView singleLineTextView2 = (SingleLineTextView) a2.b.a(view, R.id.recommendationLikeCounts);
                        if (singleLineTextView2 != null) {
                            return new m((SlayerCard) view, singleLineTextView, slayerAvatar, appCompatTextView, appCompatImageView, singleLineTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_recommend_body, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public SlayerCard b() {
        return this.f8522a;
    }
}

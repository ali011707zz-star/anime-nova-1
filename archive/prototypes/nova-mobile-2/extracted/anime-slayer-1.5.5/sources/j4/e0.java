package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;
import io.wax911.support.custom.widget.SingleLineTextView;

/* compiled from: CharacterAnimeRelatedItemBinding.java */
/* loaded from: classes.dex */
public final class e0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final CardView f8273a;

    /* renamed from: b, reason: collision with root package name */
    public final CardView f8274b;

    /* renamed from: c, reason: collision with root package name */
    public final SingleLineTextView f8275c;

    /* renamed from: d, reason: collision with root package name */
    public final SlayerImage f8276d;

    /* renamed from: e, reason: collision with root package name */
    public final SingleLineTextView f8277e;

    /* renamed from: f, reason: collision with root package name */
    public final SingleLineTextView f8278f;

    /* renamed from: g, reason: collision with root package name */
    public final SingleLineTextView f8279g;

    /* renamed from: h, reason: collision with root package name */
    public final SingleLineTextView f8280h;

    /* renamed from: i, reason: collision with root package name */
    public final SingleLineTextView f8281i;

    /* renamed from: j, reason: collision with root package name */
    public final AppCompatImageView f8282j;

    public e0(CardView cardView, CardView cardView2, SingleLineTextView singleLineTextView, SlayerImage slayerImage, SingleLineTextView singleLineTextView2, SingleLineTextView singleLineTextView3, SingleLineTextView singleLineTextView4, SingleLineTextView singleLineTextView5, SingleLineTextView singleLineTextView6, AppCompatImageView appCompatImageView) {
        this.f8273a = cardView;
        this.f8274b = cardView2;
        this.f8275c = singleLineTextView;
        this.f8276d = slayerImage;
        this.f8277e = singleLineTextView2;
        this.f8278f = singleLineTextView3;
        this.f8279g = singleLineTextView4;
        this.f8280h = singleLineTextView5;
        this.f8281i = singleLineTextView6;
        this.f8282j = appCompatImageView;
    }

    public static e0 a(View view) {
        CardView cardView = (CardView) view;
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
                                        return new e0(cardView, cardView, singleLineTextView, slayerImage, singleLineTextView2, singleLineTextView3, singleLineTextView4, singleLineTextView5, singleLineTextView6, appCompatImageView);
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

    public static e0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.character_anime_related_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public CardView b() {
        return this.f8273a;
    }
}

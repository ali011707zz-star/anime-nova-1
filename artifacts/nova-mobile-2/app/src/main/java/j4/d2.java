package j4;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.anslayer.widget.SlayerImage;

/* compiled from: SectionOverviewBinding.java */
/* loaded from: classes.dex */
public final class d2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8252a;

    /* renamed from: b, reason: collision with root package name */
    public final View f8253b;

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f8254c;

    /* renamed from: d, reason: collision with root package name */
    public final ImageView f8255d;

    /* renamed from: e, reason: collision with root package name */
    public final View f8256e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8257f;

    /* renamed from: g, reason: collision with root package name */
    public final View f8258g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f8259h;

    /* renamed from: i, reason: collision with root package name */
    public final SlayerImage f8260i;

    /* renamed from: j, reason: collision with root package name */
    public final e2 f8261j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f8262k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8263l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f8264m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f8265n;

    public d2(ConstraintLayout constraintLayout, View view, LinearLayout linearLayout, ImageView imageView, View view2, TextView textView, View view3, TextView textView2, SlayerImage slayerImage, e2 e2Var, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.f8252a = constraintLayout;
        this.f8253b = view;
        this.f8254c = linearLayout;
        this.f8255d = imageView;
        this.f8256e = view2;
        this.f8257f = textView;
        this.f8258g = view3;
        this.f8259h = textView2;
        this.f8260i = slayerImage;
        this.f8261j = e2Var;
        this.f8262k = textView3;
        this.f8263l = textView4;
        this.f8264m = textView5;
        this.f8265n = textView6;
    }

    public static d2 a(View view) {
        int i10 = R.id.ageRatingSeperator;
        View a10 = a2.b.a(view, R.id.ageRatingSeperator);
        if (a10 != null) {
            i10 = R.id.anime_info;
            LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.anime_info);
            if (linearLayout != null) {
                i10 = R.id.backdrop;
                ImageView imageView = (ImageView) a2.b.a(view, R.id.backdrop);
                if (imageView != null) {
                    i10 = R.id.backdrop_overlay;
                    View a11 = a2.b.a(view, R.id.backdrop_overlay);
                    if (a11 != null) {
                        i10 = R.id.episodeNumber;
                        TextView textView = (TextView) a2.b.a(view, R.id.episodeNumber);
                        if (textView != null) {
                            i10 = R.id.epsiodeNumberSperator;
                            View a12 = a2.b.a(view, R.id.epsiodeNumberSperator);
                            if (a12 != null) {
                                i10 = R.id.seriesAgeRating;
                                TextView textView2 = (TextView) a2.b.a(view, R.id.seriesAgeRating);
                                if (textView2 != null) {
                                    i10 = R.id.seriesImage;
                                    SlayerImage slayerImage = (SlayerImage) a2.b.a(view, R.id.seriesImage);
                                    if (slayerImage != null) {
                                        i10 = R.id.seriesRatingSection;
                                        View a13 = a2.b.a(view, R.id.seriesRatingSection);
                                        if (a13 != null) {
                                            e2 a14 = e2.a(a13);
                                            i10 = R.id.seriesStatus;
                                            TextView textView3 = (TextView) a2.b.a(view, R.id.seriesStatus);
                                            if (textView3 != null) {
                                                i10 = R.id.seriesTitle;
                                                TextView textView4 = (TextView) a2.b.a(view, R.id.seriesTitle);
                                                if (textView4 != null) {
                                                    i10 = R.id.seriesType;
                                                    TextView textView5 = (TextView) a2.b.a(view, R.id.seriesType);
                                                    if (textView5 != null) {
                                                        i10 = R.id.seriesYear;
                                                        TextView textView6 = (TextView) a2.b.a(view, R.id.seriesYear);
                                                        if (textView6 != null) {
                                                            return new d2((ConstraintLayout) view, a10, linearLayout, imageView, a11, textView, a12, textView2, slayerImage, a14, textView3, textView4, textView5, textView6);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

package j4;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: SectionRatingBinding.java */
/* loaded from: classes.dex */
public final class e2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8297a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8298b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8299c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayout f8300d;

    /* renamed from: e, reason: collision with root package name */
    public final LinearLayout f8301e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8302f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8303g;

    /* renamed from: h, reason: collision with root package name */
    public final LinearLayout f8304h;

    /* renamed from: i, reason: collision with root package name */
    public final LinearLayout f8305i;

    /* renamed from: j, reason: collision with root package name */
    public final LinearLayout f8306j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f8307k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8308l;

    /* renamed from: m, reason: collision with root package name */
    public final TextView f8309m;

    /* renamed from: n, reason: collision with root package name */
    public final ImageView f8310n;

    /* renamed from: o, reason: collision with root package name */
    public final TextView f8311o;

    /* renamed from: p, reason: collision with root package name */
    public final ImageView f8312p;

    /* renamed from: q, reason: collision with root package name */
    public final TextView f8313q;

    /* renamed from: r, reason: collision with root package name */
    public final TextView f8314r;

    /* renamed from: s, reason: collision with root package name */
    public final TextView f8315s;

    /* renamed from: t, reason: collision with root package name */
    public final LinearLayout f8316t;

    /* renamed from: u, reason: collision with root package name */
    public final LinearLayout f8317u;

    /* renamed from: v, reason: collision with root package name */
    public final ProgressBar f8318v;

    public e2(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView3, TextView textView4, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, TextView textView5, TextView textView6, TextView textView7, ImageView imageView, TextView textView8, ImageView imageView2, TextView textView9, TextView textView10, TextView textView11, LinearLayout linearLayout6, LinearLayout linearLayout7, ProgressBar progressBar) {
        this.f8297a = constraintLayout;
        this.f8298b = textView;
        this.f8299c = textView2;
        this.f8300d = linearLayout;
        this.f8301e = linearLayout2;
        this.f8302f = textView3;
        this.f8303g = textView4;
        this.f8304h = linearLayout3;
        this.f8305i = linearLayout4;
        this.f8306j = linearLayout5;
        this.f8307k = textView5;
        this.f8308l = textView6;
        this.f8309m = textView7;
        this.f8310n = imageView;
        this.f8311o = textView8;
        this.f8312p = imageView2;
        this.f8313q = textView9;
        this.f8314r = textView10;
        this.f8315s = textView11;
        this.f8316t = linearLayout6;
        this.f8317u = linearLayout7;
        this.f8318v = progressBar;
    }

    public static e2 a(View view) {
        int i10 = R.id.as_out_of_10;
        TextView textView = (TextView) a2.b.a(view, R.id.as_out_of_10);
        if (textView != null) {
            i10 = R.id.as_rating;
            TextView textView2 = (TextView) a2.b.a(view, R.id.as_rating);
            if (textView2 != null) {
                i10 = R.id.as_rating_details_group;
                LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.as_rating_details_group);
                if (linearLayout != null) {
                    i10 = R.id.as_rating_group;
                    LinearLayout linearLayout2 = (LinearLayout) a2.b.a(view, R.id.as_rating_group);
                    if (linearLayout2 != null) {
                        i10 = R.id.mal_out_of_10;
                        TextView textView3 = (TextView) a2.b.a(view, R.id.mal_out_of_10);
                        if (textView3 != null) {
                            i10 = R.id.mal_rating;
                            TextView textView4 = (TextView) a2.b.a(view, R.id.mal_rating);
                            if (textView4 != null) {
                                i10 = R.id.mal_rating_details_group;
                                LinearLayout linearLayout3 = (LinearLayout) a2.b.a(view, R.id.mal_rating_details_group);
                                if (linearLayout3 != null) {
                                    i10 = R.id.mal_rating_group;
                                    LinearLayout linearLayout4 = (LinearLayout) a2.b.a(view, R.id.mal_rating_group);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.mylist_group;
                                        LinearLayout linearLayout5 = (LinearLayout) a2.b.a(view, R.id.mylist_group);
                                        if (linearLayout5 != null) {
                                            i10 = R.id.num_as_ratings;
                                            TextView textView5 = (TextView) a2.b.a(view, R.id.num_as_ratings);
                                            if (textView5 != null) {
                                                i10 = R.id.num_mal_ratings;
                                                TextView textView6 = (TextView) a2.b.a(view, R.id.num_mal_ratings);
                                                if (textView6 != null) {
                                                    i10 = R.id.rate_this;
                                                    TextView textView7 = (TextView) a2.b.a(view, R.id.rate_this);
                                                    if (textView7 != null) {
                                                        i10 = R.id.star_your;
                                                        ImageView imageView = (ImageView) a2.b.a(view, R.id.star_your);
                                                        if (imageView != null) {
                                                            i10 = R.id.track_head;
                                                            TextView textView8 = (TextView) a2.b.a(view, R.id.track_head);
                                                            if (textView8 != null) {
                                                                i10 = R.id.track_icon;
                                                                ImageView imageView2 = (ImageView) a2.b.a(view, R.id.track_icon);
                                                                if (imageView2 != null) {
                                                                    i10 = R.id.track_title;
                                                                    TextView textView9 = (TextView) a2.b.a(view, R.id.track_title);
                                                                    if (textView9 != null) {
                                                                        i10 = R.id.your_rating;
                                                                        TextView textView10 = (TextView) a2.b.a(view, R.id.your_rating);
                                                                        if (textView10 != null) {
                                                                            i10 = R.id.your_rating_caption;
                                                                            TextView textView11 = (TextView) a2.b.a(view, R.id.your_rating_caption);
                                                                            if (textView11 != null) {
                                                                                i10 = R.id.your_rating_group;
                                                                                LinearLayout linearLayout6 = (LinearLayout) a2.b.a(view, R.id.your_rating_group);
                                                                                if (linearLayout6 != null) {
                                                                                    i10 = R.id.your_rating_label_group;
                                                                                    LinearLayout linearLayout7 = (LinearLayout) a2.b.a(view, R.id.your_rating_label_group);
                                                                                    if (linearLayout7 != null) {
                                                                                        i10 = R.id.your_rating_loading;
                                                                                        ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.your_rating_loading);
                                                                                        if (progressBar != null) {
                                                                                            return new e2((ConstraintLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, textView4, linearLayout3, linearLayout4, linearLayout5, textView5, textView6, textView7, imageView, textView8, imageView2, textView9, textView10, textView11, linearLayout6, linearLayout7, progressBar);
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

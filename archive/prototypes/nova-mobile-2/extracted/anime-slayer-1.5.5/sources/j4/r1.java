package j4;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: RowContentRatingBinding.java */
/* loaded from: classes.dex */
public final class r1 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8682a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8683b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8684c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8685d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8686e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f8687f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressBar f8688g;

    public r1(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, ProgressBar progressBar) {
        this.f8682a = constraintLayout;
        this.f8683b = imageView;
        this.f8684c = textView;
        this.f8685d = textView2;
        this.f8686e = textView3;
        this.f8687f = textView4;
        this.f8688g = progressBar;
    }

    public static r1 a(View view) {
        int i10 = R.id.add_rating;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.add_rating);
        if (imageView != null) {
            i10 = R.id.content_rating_color;
            TextView textView = (TextView) a2.b.a(view, R.id.content_rating_color);
            if (textView != null) {
                i10 = R.id.content_rating_level;
                TextView textView2 = (TextView) a2.b.a(view, R.id.content_rating_level);
                if (textView2 != null) {
                    i10 = R.id.content_rating_type;
                    TextView textView3 = (TextView) a2.b.a(view, R.id.content_rating_type);
                    if (textView3 != null) {
                        i10 = R.id.content_rating_votes_count;
                        TextView textView4 = (TextView) a2.b.a(view, R.id.content_rating_votes_count);
                        if (textView4 != null) {
                            i10 = R.id.progress;
                            ProgressBar progressBar = (ProgressBar) a2.b.a(view, R.id.progress);
                            if (progressBar != null) {
                                return new r1((ConstraintLayout) view, imageView, textView, textView2, textView3, textView4, progressBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public ConstraintLayout b() {
        return this.f8682a;
    }
}

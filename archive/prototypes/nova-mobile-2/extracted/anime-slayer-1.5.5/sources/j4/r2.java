package j4;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.imageview.ShapeableImageView;

/* compiled from: TopContributersItemBinding.java */
/* loaded from: classes.dex */
public final class r2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8689a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8690b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8691c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8692d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f8693e;

    /* renamed from: f, reason: collision with root package name */
    public final ShapeableImageView f8694f;

    /* renamed from: g, reason: collision with root package name */
    public final TextView f8695g;

    /* renamed from: h, reason: collision with root package name */
    public final Barrier f8696h;

    public r2(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, ShapeableImageView shapeableImageView, TextView textView5, Barrier barrier) {
        this.f8689a = constraintLayout;
        this.f8690b = textView;
        this.f8691c = textView2;
        this.f8692d = textView3;
        this.f8693e = textView4;
        this.f8694f = shapeableImageView;
        this.f8695g = textView5;
        this.f8696h = barrier;
    }

    public static r2 a(View view) {
        int i10 = R.id.edits_label;
        TextView textView = (TextView) a2.b.a(view, R.id.edits_label);
        if (textView != null) {
            i10 = R.id.points;
            TextView textView2 = (TextView) a2.b.a(view, R.id.points);
            if (textView2 != null) {
                i10 = R.id.rank;
                TextView textView3 = (TextView) a2.b.a(view, R.id.rank);
                if (textView3 != null) {
                    i10 = R.id.total_edits;
                    TextView textView4 = (TextView) a2.b.a(view, R.id.total_edits);
                    if (textView4 != null) {
                        i10 = R.id.user_image;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.user_image);
                        if (shapeableImageView != null) {
                            i10 = R.id.user_name;
                            TextView textView5 = (TextView) a2.b.a(view, R.id.user_name);
                            if (textView5 != null) {
                                i10 = R.id.user_name_barrier;
                                Barrier barrier = (Barrier) a2.b.a(view, R.id.user_name_barrier);
                                if (barrier != null) {
                                    return new r2((ConstraintLayout) view, textView, textView2, textView3, textView4, shapeableImageView, textView5, barrier);
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

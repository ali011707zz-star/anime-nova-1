package j4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: SectionTrailerBinding.java */
/* loaded from: classes.dex */
public final class i2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8438a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f8439b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8440c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8441d;

    public i2(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, TextView textView) {
        this.f8438a = constraintLayout;
        this.f8439b = imageView;
        this.f8440c = imageView2;
        this.f8441d = textView;
    }

    public static i2 a(View view) {
        int i10 = R.id.play_icon;
        ImageView imageView = (ImageView) a2.b.a(view, R.id.play_icon);
        if (imageView != null) {
            i10 = R.id.thumbnail;
            ImageView imageView2 = (ImageView) a2.b.a(view, R.id.thumbnail);
            if (imageView2 != null) {
                i10 = R.id.trailer_head;
                TextView textView = (TextView) a2.b.a(view, R.id.trailer_head);
                if (textView != null) {
                    return new i2((ConstraintLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public ConstraintLayout b() {
        return this.f8438a;
    }
}

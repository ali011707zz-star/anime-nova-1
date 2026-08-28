package j4;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.google.android.material.imageview.ShapeableImageView;

/* compiled from: TopContriputorsAnimeItemBinding.java */
/* loaded from: classes.dex */
public final class t2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8723a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8724b;

    /* renamed from: c, reason: collision with root package name */
    public final ShapeableImageView f8725c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8726d;

    public t2(ConstraintLayout constraintLayout, TextView textView, ShapeableImageView shapeableImageView, TextView textView2) {
        this.f8723a = constraintLayout;
        this.f8724b = textView;
        this.f8725c = shapeableImageView;
        this.f8726d = textView2;
    }

    public static t2 a(View view) {
        int i10 = R.id.edits;
        TextView textView = (TextView) a2.b.a(view, R.id.edits);
        if (textView != null) {
            i10 = R.id.user_image;
            ShapeableImageView shapeableImageView = (ShapeableImageView) a2.b.a(view, R.id.user_image);
            if (shapeableImageView != null) {
                i10 = R.id.user_name;
                TextView textView2 = (TextView) a2.b.a(view, R.id.user_name);
                if (textView2 != null) {
                    return new t2((ConstraintLayout) view, textView, shapeableImageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}

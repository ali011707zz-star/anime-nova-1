package j4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;

/* compiled from: SectionAdBinding.java */
/* loaded from: classes.dex */
public final class a2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8137a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8138b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageView f8139c;

    public a2(ConstraintLayout constraintLayout, TextView textView, ImageView imageView) {
        this.f8137a = constraintLayout;
        this.f8138b = textView;
        this.f8139c = imageView;
    }

    public static a2 a(View view) {
        int i10 = R.id.header;
        TextView textView = (TextView) a2.b.a(view, R.id.header);
        if (textView != null) {
            i10 = R.id.thumbnail;
            ImageView imageView = (ImageView) a2.b.a(view, R.id.thumbnail);
            if (imageView != null) {
                return new a2((ConstraintLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public ConstraintLayout b() {
        return this.f8137a;
    }
}

package j4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;
import com.google.android.material.card.MaterialCardView;

/* compiled from: SectionContentRatingBinding.java */
/* loaded from: classes.dex */
public final class b2 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialCardView f8159a;

    /* renamed from: b, reason: collision with root package name */
    public final LinearLayout f8160b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8161c;

    public b2(MaterialCardView materialCardView, LinearLayout linearLayout, TextView textView) {
        this.f8159a = materialCardView;
        this.f8160b = linearLayout;
        this.f8161c = textView;
    }

    public static b2 a(View view) {
        int i10 = R.id.content_rating_container;
        LinearLayout linearLayout = (LinearLayout) a2.b.a(view, R.id.content_rating_container);
        if (linearLayout != null) {
            i10 = R.id.content_rating_header;
            TextView textView = (TextView) a2.b.a(view, R.id.content_rating_header);
            if (textView != null) {
                return new b2((MaterialCardView) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public MaterialCardView b() {
        return this.f8159a;
    }
}
